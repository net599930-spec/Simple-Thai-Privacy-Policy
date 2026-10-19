


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE OR REPLACE FUNCTION "public"."handle_new_user"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
begin
  insert into public.users (id, email, display_name, created_at)
  values (
    new.id,
    new.email,
    coalesce(new.raw_user_meta_data ->> 'full_name', new.raw_user_meta_data ->> 'name'),
    now()
  )
  on conflict (id) do nothing;
  return new;
end;
$$;


ALTER FUNCTION "public"."handle_new_user"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."handle_user_email_update"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
BEGIN
    UPDATE public.users SET email = NEW.email WHERE id = NEW.id;
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."handle_user_email_update"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."increment_version"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    NEW.version := OLD.version + 1;
    NEW.updated_at := now();
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."increment_version"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."is_admin"() RETURNS boolean
    LANGUAGE "sql" STABLE SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
  select coalesce(
    (select is_admin from public.users where id = auth.uid()),
    false
  );
$$;


ALTER FUNCTION "public"."is_admin"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."prevent_is_admin_self_elevation"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
begin
  if not public.is_admin() and new.is_admin is distinct from old.is_admin then
    new.is_admin := old.is_admin;
  end if;
  return new;
end;
$$;


ALTER FUNCTION "public"."prevent_is_admin_self_elevation"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."publish_component_meanings"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
begin
  if tg_table_name = 'definitions' then
    if new.published and (tg_op = 'INSERT' or not old.published) then
      update public.definitions set published = true
      where not published and id in (
        select component_definition_id from public.word_components
        where compound_definition_id = new.id);
    end if;
  else
    if exists (select 1 from public.definitions d
               where d.id = new.compound_definition_id and d.published) then
      update public.definitions set published = true
      where not published and id = new.component_definition_id;
    end if;
  end if;
  return new;
end;
$$;


ALTER FUNCTION "public"."publish_component_meanings"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."publish_sentence_meanings"() RETURNS "trigger"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
begin
  if tg_table_name = 'sentences' then
    if new.published and (tg_op = 'INSERT' or not old.published) then
      update public.definitions set published = true
      where not published and id in (
        select definition_id from public.sentence_tokens
        where sentence_id = new.id);
    end if;
  else
    if exists (select 1 from public.sentences s
               where s.id = new.sentence_id and s.published) then
      update public.definitions set published = true
      where not published and id = new.definition_id;
    end if;
  end if;
  return new;
end;
$$;


ALTER FUNCTION "public"."publish_sentence_meanings"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."publish_unit"("p_tag_id" "uuid") RETURNS "void"
    LANGUAGE "plpgsql" SECURITY DEFINER
    SET "search_path" TO 'public'
    AS $$
begin
  if not public.is_admin() then
    raise exception 'Only admins can publish';
  end if;
  update public.tags set published = true where id = p_tag_id;
  update public.sentences set published = true
  where id in (select sentence_id from public.tag_sentences
               where tag_id = p_tag_id);
  update public.definitions set published = true
  where not published and id in (
    select definition_id from public.tag_definitions
    where tag_id = p_tag_id
    union
    select st.definition_id
    from public.tag_sentences ts
    join public.sentence_tokens st on st.sentence_id = ts.sentence_id
    where ts.tag_id = p_tag_id
  );
end;
$$;


ALTER FUNCTION "public"."publish_unit"("p_tag_id" "uuid") OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."record_spelling_time"("p_item_type" "text", "p_item_id" "uuid", "p_mode" "text", "p_time_ms" integer) RETURNS integer
    LANGUAGE "plpgsql"
    SET "search_path" TO 'public'
    AS $$
declare
  v_previous integer;
begin
  if auth.uid() is null then
    raise exception 'not signed in';
  end if;

  if p_item_type = 'word' then
    select best_time_ms into v_previous
      from user_word_spelling
     where user_id = auth.uid() and word_id = p_item_id and mode = p_mode;

    insert into user_word_spelling (user_id, word_id, mode, best_time_ms)
    values (auth.uid(), p_item_id, p_mode, p_time_ms)
    on conflict (user_id, word_id, mode) do update set
      attempts       = user_word_spelling.attempts + 1,
      last_played_at = now(),
      best_at        = case when excluded.best_time_ms < user_word_spelling.best_time_ms
                            then now() else user_word_spelling.best_at end,
      best_time_ms   = least(user_word_spelling.best_time_ms, excluded.best_time_ms);

  elsif p_item_type = 'sentence' then
    select best_time_ms into v_previous
      from user_sentence_spelling
     where user_id = auth.uid() and sentence_id = p_item_id and mode = p_mode;

    insert into user_sentence_spelling (user_id, sentence_id, mode, best_time_ms)
    values (auth.uid(), p_item_id, p_mode, p_time_ms)
    on conflict (user_id, sentence_id, mode) do update set
      attempts       = user_sentence_spelling.attempts + 1,
      last_played_at = now(),
      best_at        = case when excluded.best_time_ms < user_sentence_spelling.best_time_ms
                            then now() else user_sentence_spelling.best_at end,
      best_time_ms   = least(user_sentence_spelling.best_time_ms, excluded.best_time_ms);

  else
    raise exception 'unknown item type: %', p_item_type;
  end if;

  return v_previous;
end;
$$;


ALTER FUNCTION "public"."record_spelling_time"("p_item_type" "text", "p_item_id" "uuid", "p_mode" "text", "p_time_ms" integer) OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_bookmarked_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  IF NEW.bookmarked IS TRUE AND (TG_OP = 'INSERT' OR OLD.bookmarked IS DISTINCT FROM NEW.bookmarked) THEN
    NEW.bookmarked_at := now();
  ELSIF NEW.bookmarked IS FALSE THEN
    NEW.bookmarked_at := NULL;
  END IF;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."set_bookmarked_at"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_tag_definition_position"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  IF NEW.position = 0 THEN
    SELECT COALESCE(MAX(position), 0) + 1 INTO NEW.position
    FROM public.tag_definitions
    WHERE tag_id = NEW.tag_id;
  END IF;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."set_tag_definition_position"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_tag_sentence_position"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  IF NEW.position = 0 THEN
    SELECT COALESCE(MAX(position), 0) + 1 INTO NEW.position
    FROM public.tag_sentences
    WHERE tag_id = NEW.tag_id;
  END IF;
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."set_tag_sentence_position"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."set_user_tag_completion_timestamps"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
  IF NEW.completed IS TRUE AND (TG_OP = 'INSERT' OR OLD.completed IS DISTINCT FROM NEW.completed) THEN
    NEW.completed_at := now();
  ELSIF NEW.completed IS FALSE THEN
    NEW.completed_at := NULL;
  END IF;
  NEW.updated_at := now();
  RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."set_user_tag_completion_timestamps"() OWNER TO "postgres";


CREATE OR REPLACE FUNCTION "public"."touch_updated_at"() RETURNS "trigger"
    LANGUAGE "plpgsql"
    AS $$
BEGIN
    NEW.updated_at := now();
    RETURN NEW;
END;
$$;


ALTER FUNCTION "public"."touch_updated_at"() OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."characters" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "name_thai" "text",
    "avatar_url" "text",
    "color" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."characters" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."definition_relations" (
    "definition_id" "uuid" NOT NULL,
    "related_definition_id" "uuid" NOT NULL,
    "relation_type" "text" DEFAULT 'synonym'::"text" NOT NULL,
    "notes" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "definition_relations_no_self" CHECK (("definition_id" <> "related_definition_id")),
    CONSTRAINT "definition_relations_relation_type_check" CHECK (("relation_type" = ANY (ARRAY['synonym'::"text", 'related'::"text", 'antonym'::"text"])))
);


ALTER TABLE "public"."definition_relations" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."definitions" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "word_id" "uuid" NOT NULL,
    "english" "text" NOT NULL,
    "part_of_speech" "text",
    "notes" "text",
    "version" integer DEFAULT 1 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "published" boolean DEFAULT false NOT NULL
);


ALTER TABLE "public"."definitions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."knowledge_levels" (
    "id" smallint NOT NULL,
    "name" "text" NOT NULL,
    "default_light_color" "text" NOT NULL,
    "default_dark_color" "text" NOT NULL
);


ALTER TABLE "public"."knowledge_levels" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."rules" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "explanation" "text" NOT NULL,
    "category" "text",
    "version" integer DEFAULT 1 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."rules" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."sentence_tokens" (
    "sentence_id" "uuid" NOT NULL,
    "position" integer NOT NULL,
    "definition_id" "uuid" NOT NULL,
    "suffix" "text" DEFAULT ''::"text" NOT NULL,
    "featured_example" boolean DEFAULT true NOT NULL,
    CONSTRAINT "sentence_tokens_position_check" CHECK (("position" >= 0))
);


ALTER TABLE "public"."sentence_tokens" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."sentences" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "thai" "text",
    "english" "text",
    "version" integer DEFAULT 1 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "phonetics" "text",
    "published" boolean DEFAULT false NOT NULL,
    "notes" "text"
);


ALTER TABLE "public"."sentences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."stories" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "title" "text" NOT NULL,
    "title_thai" "text",
    "description" "text",
    "version" integer DEFAULT 1 NOT NULL,
    "public" boolean DEFAULT false NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."stories" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."story_sentences" (
    "story_id" "uuid" NOT NULL,
    "sentence_id" "uuid" NOT NULL,
    "position" integer NOT NULL,
    "paragraph" integer DEFAULT 0 NOT NULL,
    "speaker_id" "uuid",
    CONSTRAINT "story_sentences_paragraph_check" CHECK (("paragraph" >= 0)),
    CONSTRAINT "story_sentences_position_check" CHECK (("position" >= 0))
);


ALTER TABLE "public"."story_sentences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."tag_definitions" (
    "tag_id" "uuid" NOT NULL,
    "definition_id" "uuid" NOT NULL,
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "public"."tag_definitions" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."tag_sentences" (
    "tag_id" "uuid" NOT NULL,
    "sentence_id" "uuid" NOT NULL,
    "position" integer DEFAULT 0 NOT NULL
);


ALTER TABLE "public"."tag_sentences" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."tag_stories" (
    "tag_id" "uuid" NOT NULL,
    "story_id" "uuid" NOT NULL
);


ALTER TABLE "public"."tag_stories" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."tags" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "name" "text" NOT NULL,
    "unit_name" "text",
    "unit_order" integer,
    "primary_goal" "text",
    "description" "text",
    "published" boolean DEFAULT false NOT NULL,
    CONSTRAINT "tags_primary_goal_check" CHECK (("primary_goal" = ANY (ARRAY['grammar'::"text", 'vocabulary'::"text"])))
);


ALTER TABLE "public"."tags" OWNER TO "postgres";


COMMENT ON COLUMN "public"."tags"."unit_name" IS 'Display name shown in the Units view. NULL = this is a plain tag, not a unit.';



COMMENT ON COLUMN "public"."tags"."unit_order" IS 'Sort order for the Units view (so "Unit 10" doesn''t sort before "Unit 2"). Only meaningful when unit_name is set.';



COMMENT ON COLUMN "public"."tags"."primary_goal" IS 'What the tag is primarily teaching. NULL = unspecified/mixed.';



COMMENT ON COLUMN "public"."tags"."description" IS 'Rich-text/HTML explanation of the tag (e.g. a grammar write-up). Sanitize before rendering — untrusted HTML stored raw is an XSS risk.';



CREATE TABLE IF NOT EXISTS "public"."user_definition_knowledge" (
    "user_id" "uuid" NOT NULL,
    "definition_id" "uuid" NOT NULL,
    "rating" smallint DEFAULT 1 NOT NULL,
    "review_count" integer DEFAULT 1 NOT NULL,
    "last_reviewed_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "bookmarked" boolean DEFAULT false NOT NULL,
    "bookmarked_at" timestamp with time zone
);


ALTER TABLE "public"."user_definition_knowledge" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_level_colors" (
    "user_id" "uuid" NOT NULL,
    "level_id" smallint NOT NULL,
    "light_color" "text" NOT NULL,
    "dark_color" "text" NOT NULL
);


ALTER TABLE "public"."user_level_colors" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_sentence_knowledge" (
    "user_id" "uuid" NOT NULL,
    "sentence_id" "uuid" NOT NULL,
    "rating" smallint DEFAULT 1 NOT NULL,
    "review_count" integer DEFAULT 1 NOT NULL,
    "last_reviewed_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "bookmarked" boolean DEFAULT false NOT NULL,
    "bookmarked_at" timestamp with time zone
);


ALTER TABLE "public"."user_sentence_knowledge" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_sentence_spelling" (
    "user_id" "uuid" NOT NULL,
    "sentence_id" "uuid" NOT NULL,
    "mode" "text" NOT NULL,
    "best_time_ms" integer NOT NULL,
    "attempts" integer DEFAULT 1 NOT NULL,
    "best_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "last_played_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "user_sentence_spelling_best_time_ms_check" CHECK (("best_time_ms" > 0)),
    CONSTRAINT "user_sentence_spelling_mode_check" CHECK (("mode" = ANY (ARRAY['keyboard'::"text", 'tiles'::"text"])))
);


ALTER TABLE "public"."user_sentence_spelling" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_story_progress" (
    "user_id" "uuid" NOT NULL,
    "story_id" "uuid" NOT NULL,
    "status" "text" DEFAULT 'not_started'::"text" NOT NULL,
    "last_read_at" timestamp with time zone,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "user_story_progress_status_check" CHECK (("status" = ANY (ARRAY['not_started'::"text", 'in_progress'::"text", 'completed'::"text"])))
);


ALTER TABLE "public"."user_story_progress" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_tag_completion" (
    "user_id" "uuid" NOT NULL,
    "tag_id" "uuid" NOT NULL,
    "completed" boolean DEFAULT false NOT NULL,
    "completed_at" timestamp with time zone,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."user_tag_completion" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_unit_bookmarks" (
    "user_id" "uuid" NOT NULL,
    "tag_id" "uuid" NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."user_unit_bookmarks" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."user_word_spelling" (
    "user_id" "uuid" NOT NULL,
    "word_id" "uuid" NOT NULL,
    "mode" "text" NOT NULL,
    "best_time_ms" integer NOT NULL,
    "attempts" integer DEFAULT 1 NOT NULL,
    "best_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "last_played_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    CONSTRAINT "user_word_spelling_best_time_ms_check" CHECK (("best_time_ms" > 0)),
    CONSTRAINT "user_word_spelling_mode_check" CHECK (("mode" = ANY (ARRAY['keyboard'::"text", 'tiles'::"text"])))
);


ALTER TABLE "public"."user_word_spelling" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "email" "text",
    "display_name" "text",
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "multi_sense_strategy" "text" DEFAULT 'lowest'::"text" NOT NULL,
    "is_admin" boolean DEFAULT false NOT NULL,
    CONSTRAINT "users_multi_sense_strategy_check" CHECK (("multi_sense_strategy" = ANY (ARRAY['lowest'::"text", 'highest'::"text"])))
);


ALTER TABLE "public"."users" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."word_components" (
    "compound_definition_id" "uuid" NOT NULL,
    "position" integer NOT NULL,
    "component_definition_id" "uuid" NOT NULL,
    "suffix" "text" DEFAULT ''::"text" NOT NULL,
    CONSTRAINT "word_components_no_self" CHECK (("compound_definition_id" <> "component_definition_id")),
    CONSTRAINT "word_components_position_check" CHECK (("position" >= 0))
);


ALTER TABLE "public"."word_components" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."word_rule_application_chars" (
    "application_id" "uuid" NOT NULL,
    "char_index" integer NOT NULL,
    CONSTRAINT "word_rule_application_chars_char_index_check" CHECK (("char_index" >= 0))
);


ALTER TABLE "public"."word_rule_application_chars" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."word_rule_applications" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "word_id" "uuid" NOT NULL,
    "rule_id" "uuid" NOT NULL,
    "notes" "text",
    "sort_order" integer DEFAULT 0 NOT NULL,
    "word_version" integer NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."word_rule_applications" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."words" (
    "id" "uuid" DEFAULT "gen_random_uuid"() NOT NULL,
    "thai" "text" NOT NULL,
    "phonetic" "text",
    "version" integer DEFAULT 1 NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp with time zone DEFAULT "now"() NOT NULL
);


ALTER TABLE "public"."words" OWNER TO "postgres";


ALTER TABLE ONLY "public"."characters"
    ADD CONSTRAINT "characters_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."definition_relations"
    ADD CONSTRAINT "definition_relations_pkey" PRIMARY KEY ("definition_id", "related_definition_id", "relation_type");



ALTER TABLE ONLY "public"."definitions"
    ADD CONSTRAINT "definitions_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."knowledge_levels"
    ADD CONSTRAINT "knowledge_levels_name_key" UNIQUE ("name");



ALTER TABLE ONLY "public"."knowledge_levels"
    ADD CONSTRAINT "knowledge_levels_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."rules"
    ADD CONSTRAINT "rules_name_key" UNIQUE ("name");



ALTER TABLE ONLY "public"."rules"
    ADD CONSTRAINT "rules_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."sentence_tokens"
    ADD CONSTRAINT "sentence_tokens_pkey" PRIMARY KEY ("sentence_id", "position", "definition_id");



ALTER TABLE ONLY "public"."sentences"
    ADD CONSTRAINT "sentences_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."stories"
    ADD CONSTRAINT "stories_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."story_sentences"
    ADD CONSTRAINT "story_sentences_pkey" PRIMARY KEY ("story_id", "position");



ALTER TABLE ONLY "public"."tag_definitions"
    ADD CONSTRAINT "tag_definitions_pkey" PRIMARY KEY ("tag_id", "definition_id");



ALTER TABLE ONLY "public"."tag_sentences"
    ADD CONSTRAINT "tag_sentences_pkey" PRIMARY KEY ("tag_id", "sentence_id");



ALTER TABLE ONLY "public"."tag_stories"
    ADD CONSTRAINT "tag_stories_pkey" PRIMARY KEY ("tag_id", "story_id");



ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_name_key" UNIQUE ("name");



ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."tags"
    ADD CONSTRAINT "tags_unit_name_key" UNIQUE ("unit_name");



ALTER TABLE ONLY "public"."user_definition_knowledge"
    ADD CONSTRAINT "user_definition_knowledge_pkey" PRIMARY KEY ("user_id", "definition_id");



ALTER TABLE ONLY "public"."user_level_colors"
    ADD CONSTRAINT "user_level_colors_pkey" PRIMARY KEY ("user_id", "level_id");



ALTER TABLE ONLY "public"."user_sentence_knowledge"
    ADD CONSTRAINT "user_sentence_knowledge_pkey" PRIMARY KEY ("user_id", "sentence_id");



ALTER TABLE ONLY "public"."user_sentence_spelling"
    ADD CONSTRAINT "user_sentence_spelling_pkey" PRIMARY KEY ("user_id", "sentence_id", "mode");



ALTER TABLE ONLY "public"."user_story_progress"
    ADD CONSTRAINT "user_story_progress_pkey" PRIMARY KEY ("user_id", "story_id");



ALTER TABLE ONLY "public"."user_tag_completion"
    ADD CONSTRAINT "user_tag_completion_pkey" PRIMARY KEY ("user_id", "tag_id");



ALTER TABLE ONLY "public"."user_unit_bookmarks"
    ADD CONSTRAINT "user_unit_bookmarks_pkey" PRIMARY KEY ("user_id", "tag_id");



ALTER TABLE ONLY "public"."user_word_spelling"
    ADD CONSTRAINT "user_word_spelling_pkey" PRIMARY KEY ("user_id", "word_id", "mode");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_email_key" UNIQUE ("email");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."word_components"
    ADD CONSTRAINT "word_components_pkey" PRIMARY KEY ("compound_definition_id", "position", "component_definition_id");



ALTER TABLE ONLY "public"."word_rule_application_chars"
    ADD CONSTRAINT "word_rule_application_chars_pkey" PRIMARY KEY ("application_id", "char_index");



ALTER TABLE ONLY "public"."word_rule_applications"
    ADD CONSTRAINT "word_rule_applications_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."words"
    ADD CONSTRAINT "words_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."words"
    ADD CONSTRAINT "words_thai_key" UNIQUE ("thai");



CREATE INDEX "definition_relations_related_definition_id_idx" ON "public"."definition_relations" USING "btree" ("related_definition_id");



CREATE INDEX "idx_definitions_word" ON "public"."definitions" USING "btree" ("word_id");



CREATE INDEX "idx_sentence_tokens_definition" ON "public"."sentence_tokens" USING "btree" ("definition_id");



CREATE INDEX "idx_udk_definition" ON "public"."user_definition_knowledge" USING "btree" ("definition_id");



CREATE INDEX "idx_user_definition_knowledge_bookmarked" ON "public"."user_definition_knowledge" USING "btree" ("user_id") WHERE ("bookmarked" = true);



CREATE INDEX "idx_user_sentence_knowledge_bookmarked" ON "public"."user_sentence_knowledge" USING "btree" ("user_id") WHERE ("bookmarked" = true);



CREATE INDEX "idx_user_tag_completion_tag_id" ON "public"."user_tag_completion" USING "btree" ("tag_id");



CREATE INDEX "idx_user_unit_bookmarks_tag_id" ON "public"."user_unit_bookmarks" USING "btree" ("tag_id");



CREATE INDEX "idx_usk_sentence" ON "public"."user_sentence_knowledge" USING "btree" ("sentence_id");



CREATE INDEX "idx_word_rule_applications_rule_id" ON "public"."word_rule_applications" USING "btree" ("rule_id");



CREATE INDEX "idx_word_rule_applications_word_id" ON "public"."word_rule_applications" USING "btree" ("word_id");



CREATE INDEX "word_components_component_definition_id_idx" ON "public"."word_components" USING "btree" ("component_definition_id");



CREATE OR REPLACE TRIGGER "definitions_publish_components" AFTER INSERT OR UPDATE OF "published" ON "public"."definitions" FOR EACH ROW EXECUTE FUNCTION "public"."publish_component_meanings"();



CREATE OR REPLACE TRIGGER "sentence_tokens_publish_meanings" AFTER INSERT ON "public"."sentence_tokens" FOR EACH ROW EXECUTE FUNCTION "public"."publish_sentence_meanings"();



CREATE OR REPLACE TRIGGER "sentences_publish_meanings" AFTER INSERT OR UPDATE OF "published" ON "public"."sentences" FOR EACH ROW EXECUTE FUNCTION "public"."publish_sentence_meanings"();



CREATE OR REPLACE TRIGGER "tag_definitions_set_position" BEFORE INSERT ON "public"."tag_definitions" FOR EACH ROW EXECUTE FUNCTION "public"."set_tag_definition_position"();



CREATE OR REPLACE TRIGGER "tag_sentences_set_position" BEFORE INSERT ON "public"."tag_sentences" FOR EACH ROW EXECUTE FUNCTION "public"."set_tag_sentence_position"();



CREATE OR REPLACE TRIGGER "trg_definitions_version" BEFORE UPDATE ON "public"."definitions" FOR EACH ROW EXECUTE FUNCTION "public"."increment_version"();



CREATE OR REPLACE TRIGGER "trg_prevent_is_admin_self_elevation" BEFORE UPDATE ON "public"."users" FOR EACH ROW EXECUTE FUNCTION "public"."prevent_is_admin_self_elevation"();



CREATE OR REPLACE TRIGGER "trg_sentences_version" BEFORE UPDATE ON "public"."sentences" FOR EACH ROW EXECUTE FUNCTION "public"."increment_version"();



CREATE OR REPLACE TRIGGER "trg_udk_touch" BEFORE UPDATE ON "public"."user_definition_knowledge" FOR EACH ROW EXECUTE FUNCTION "public"."touch_updated_at"();



CREATE OR REPLACE TRIGGER "trg_user_definition_knowledge_bookmarked_at" BEFORE INSERT OR UPDATE ON "public"."user_definition_knowledge" FOR EACH ROW EXECUTE FUNCTION "public"."set_bookmarked_at"();



CREATE OR REPLACE TRIGGER "trg_user_sentence_knowledge_bookmarked_at" BEFORE INSERT OR UPDATE ON "public"."user_sentence_knowledge" FOR EACH ROW EXECUTE FUNCTION "public"."set_bookmarked_at"();



CREATE OR REPLACE TRIGGER "trg_user_tag_completion_timestamps" BEFORE INSERT OR UPDATE ON "public"."user_tag_completion" FOR EACH ROW EXECUTE FUNCTION "public"."set_user_tag_completion_timestamps"();



CREATE OR REPLACE TRIGGER "trg_usk_touch" BEFORE UPDATE ON "public"."user_sentence_knowledge" FOR EACH ROW EXECUTE FUNCTION "public"."touch_updated_at"();



CREATE OR REPLACE TRIGGER "trg_words_version" BEFORE UPDATE ON "public"."words" FOR EACH ROW EXECUTE FUNCTION "public"."increment_version"();



CREATE OR REPLACE TRIGGER "word_components_publish_components" AFTER INSERT ON "public"."word_components" FOR EACH ROW EXECUTE FUNCTION "public"."publish_component_meanings"();



ALTER TABLE ONLY "public"."definition_relations"
    ADD CONSTRAINT "definition_relations_definition_id_fkey" FOREIGN KEY ("definition_id") REFERENCES "public"."definitions"("id");



ALTER TABLE ONLY "public"."definition_relations"
    ADD CONSTRAINT "definition_relations_related_definition_id_fkey" FOREIGN KEY ("related_definition_id") REFERENCES "public"."definitions"("id");



ALTER TABLE ONLY "public"."definitions"
    ADD CONSTRAINT "definitions_word_id_fkey" FOREIGN KEY ("word_id") REFERENCES "public"."words"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."sentence_tokens"
    ADD CONSTRAINT "sentence_tokens_definition_id_fkey" FOREIGN KEY ("definition_id") REFERENCES "public"."definitions"("id");



ALTER TABLE ONLY "public"."sentence_tokens"
    ADD CONSTRAINT "sentence_tokens_sentence_id_fkey" FOREIGN KEY ("sentence_id") REFERENCES "public"."sentences"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."story_sentences"
    ADD CONSTRAINT "story_sentences_sentence_id_fkey" FOREIGN KEY ("sentence_id") REFERENCES "public"."sentences"("id");



ALTER TABLE ONLY "public"."story_sentences"
    ADD CONSTRAINT "story_sentences_speaker_id_fkey" FOREIGN KEY ("speaker_id") REFERENCES "public"."characters"("id");



ALTER TABLE ONLY "public"."story_sentences"
    ADD CONSTRAINT "story_sentences_story_id_fkey" FOREIGN KEY ("story_id") REFERENCES "public"."stories"("id");



ALTER TABLE ONLY "public"."tag_definitions"
    ADD CONSTRAINT "tag_definitions_definition_id_fkey" FOREIGN KEY ("definition_id") REFERENCES "public"."definitions"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."tag_definitions"
    ADD CONSTRAINT "tag_definitions_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."tag_sentences"
    ADD CONSTRAINT "tag_sentences_sentence_id_fkey" FOREIGN KEY ("sentence_id") REFERENCES "public"."sentences"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."tag_sentences"
    ADD CONSTRAINT "tag_sentences_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."tag_stories"
    ADD CONSTRAINT "tag_stories_story_id_fkey" FOREIGN KEY ("story_id") REFERENCES "public"."stories"("id");



ALTER TABLE ONLY "public"."tag_stories"
    ADD CONSTRAINT "tag_stories_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id");



ALTER TABLE ONLY "public"."user_definition_knowledge"
    ADD CONSTRAINT "udk_rating_fk" FOREIGN KEY ("rating") REFERENCES "public"."knowledge_levels"("id");



ALTER TABLE ONLY "public"."user_definition_knowledge"
    ADD CONSTRAINT "user_definition_knowledge_definition_id_fkey" FOREIGN KEY ("definition_id") REFERENCES "public"."definitions"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_definition_knowledge"
    ADD CONSTRAINT "user_definition_knowledge_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_level_colors"
    ADD CONSTRAINT "user_level_colors_level_id_fkey" FOREIGN KEY ("level_id") REFERENCES "public"."knowledge_levels"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_level_colors"
    ADD CONSTRAINT "user_level_colors_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_sentence_knowledge"
    ADD CONSTRAINT "user_sentence_knowledge_sentence_id_fkey" FOREIGN KEY ("sentence_id") REFERENCES "public"."sentences"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_sentence_knowledge"
    ADD CONSTRAINT "user_sentence_knowledge_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_sentence_spelling"
    ADD CONSTRAINT "user_sentence_spelling_sentence_id_fkey" FOREIGN KEY ("sentence_id") REFERENCES "public"."sentences"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_sentence_spelling"
    ADD CONSTRAINT "user_sentence_spelling_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_story_progress"
    ADD CONSTRAINT "user_story_progress_story_id_fkey" FOREIGN KEY ("story_id") REFERENCES "public"."stories"("id");



ALTER TABLE ONLY "public"."user_story_progress"
    ADD CONSTRAINT "user_story_progress_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."user_tag_completion"
    ADD CONSTRAINT "user_tag_completion_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id");



ALTER TABLE ONLY "public"."user_tag_completion"
    ADD CONSTRAINT "user_tag_completion_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."user_unit_bookmarks"
    ADD CONSTRAINT "user_unit_bookmarks_tag_id_fkey" FOREIGN KEY ("tag_id") REFERENCES "public"."tags"("id");



ALTER TABLE ONLY "public"."user_unit_bookmarks"
    ADD CONSTRAINT "user_unit_bookmarks_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id");



ALTER TABLE ONLY "public"."user_word_spelling"
    ADD CONSTRAINT "user_word_spelling_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_word_spelling"
    ADD CONSTRAINT "user_word_spelling_word_id_fkey" FOREIGN KEY ("word_id") REFERENCES "public"."words"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."user_sentence_knowledge"
    ADD CONSTRAINT "usk_rating_fk" FOREIGN KEY ("rating") REFERENCES "public"."knowledge_levels"("id");



ALTER TABLE ONLY "public"."word_components"
    ADD CONSTRAINT "word_components_component_definition_id_fkey" FOREIGN KEY ("component_definition_id") REFERENCES "public"."definitions"("id");



ALTER TABLE ONLY "public"."word_components"
    ADD CONSTRAINT "word_components_compound_definition_id_fkey" FOREIGN KEY ("compound_definition_id") REFERENCES "public"."definitions"("id");



ALTER TABLE ONLY "public"."word_rule_application_chars"
    ADD CONSTRAINT "word_rule_application_chars_application_id_fkey" FOREIGN KEY ("application_id") REFERENCES "public"."word_rule_applications"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."word_rule_applications"
    ADD CONSTRAINT "word_rule_applications_rule_id_fkey" FOREIGN KEY ("rule_id") REFERENCES "public"."rules"("id") ON DELETE CASCADE;



ALTER TABLE ONLY "public"."word_rule_applications"
    ADD CONSTRAINT "word_rule_applications_word_id_fkey" FOREIGN KEY ("word_id") REFERENCES "public"."words"("id") ON DELETE CASCADE;



CREATE POLICY "Admins can update all rows" ON "public"."users" FOR UPDATE USING ("public"."is_admin"());



CREATE POLICY "Admins can view all rows" ON "public"."users" FOR SELECT USING ("public"."is_admin"());



CREATE POLICY "Users can update own row" ON "public"."users" FOR UPDATE USING (("auth"."uid"() = "id"));



CREATE POLICY "Users can view own row" ON "public"."users" FOR SELECT USING (("auth"."uid"() = "id"));



CREATE POLICY "admins_can_write" ON "public"."characters" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."definition_relations" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."definitions" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."knowledge_levels" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."rules" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."sentence_tokens" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."sentences" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."stories" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."story_sentences" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."tag_definitions" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."tag_sentences" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."tag_stories" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."tags" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."word_components" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."word_rule_application_chars" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."word_rule_applications" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_can_write" ON "public"."words" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_full_access" ON "public"."user_definition_knowledge" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_full_access" ON "public"."user_level_colors" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_full_access" ON "public"."user_sentence_knowledge" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



CREATE POLICY "admins_full_access" ON "public"."user_story_progress" USING ("public"."is_admin"()) WITH CHECK ("public"."is_admin"());



ALTER TABLE "public"."characters" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."definition_relations" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."definitions" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."knowledge_levels" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "own completion - insert" ON "public"."user_tag_completion" FOR INSERT WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "own completion - select" ON "public"."user_tag_completion" FOR SELECT USING (("auth"."uid"() = "user_id"));



CREATE POLICY "own completion - update" ON "public"."user_tag_completion" FOR UPDATE USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "own sentence spelling - insert" ON "public"."user_sentence_spelling" FOR INSERT WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "own sentence spelling - select" ON "public"."user_sentence_spelling" FOR SELECT USING (("auth"."uid"() = "user_id"));



CREATE POLICY "own sentence spelling - update" ON "public"."user_sentence_spelling" FOR UPDATE USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "own tag completion rows only" ON "public"."user_tag_completion" USING (("user_id" = "auth"."uid"())) WITH CHECK (("user_id" = "auth"."uid"()));



CREATE POLICY "own unit bookmark rows only" ON "public"."user_unit_bookmarks" USING (("user_id" = "auth"."uid"())) WITH CHECK (("user_id" = "auth"."uid"()));



CREATE POLICY "own word spelling - insert" ON "public"."user_word_spelling" FOR INSERT WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "own word spelling - select" ON "public"."user_word_spelling" FOR SELECT USING (("auth"."uid"() = "user_id"));



CREATE POLICY "own word spelling - update" ON "public"."user_word_spelling" FOR UPDATE USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "owner_full_access" ON "public"."user_definition_knowledge" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "owner_full_access" ON "public"."user_level_colors" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "owner_full_access" ON "public"."user_sentence_knowledge" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "owner_full_access" ON "public"."user_story_progress" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "public_can_read" ON "public"."characters" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."definition_relations" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."definitions" FOR SELECT USING ("published");



CREATE POLICY "public_can_read" ON "public"."knowledge_levels" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."rules" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."sentence_tokens" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."sentences" FOR SELECT USING ("published");



CREATE POLICY "public_can_read" ON "public"."stories" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."story_sentences" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."tag_definitions" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."tag_sentences" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."tag_stories" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."tags" FOR SELECT USING ("published");



CREATE POLICY "public_can_read" ON "public"."word_components" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."word_rule_application_chars" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."word_rule_applications" FOR SELECT USING (true);



CREATE POLICY "public_can_read" ON "public"."words" FOR SELECT USING ((EXISTS ( SELECT 1
   FROM "public"."definitions" "d"
  WHERE (("d"."word_id" = "words"."id") AND "d"."published"))));



ALTER TABLE "public"."rules" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."sentence_tokens" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."sentences" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."stories" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."story_sentences" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."tag_definitions" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."tag_sentences" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."tag_stories" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."tags" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "udk_own" ON "public"."user_definition_knowledge" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



CREATE POLICY "ulc_own" ON "public"."user_level_colors" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



ALTER TABLE "public"."user_definition_knowledge" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_level_colors" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_sentence_knowledge" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_sentence_spelling" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_story_progress" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_tag_completion" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_unit_bookmarks" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."user_word_spelling" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."users" ENABLE ROW LEVEL SECURITY;


CREATE POLICY "users_read_own" ON "public"."users" FOR SELECT USING (("auth"."uid"() = "id"));



CREATE POLICY "users_update_own" ON "public"."users" FOR UPDATE USING (("auth"."uid"() = "id")) WITH CHECK (("auth"."uid"() = "id"));



CREATE POLICY "usk_own" ON "public"."user_sentence_knowledge" USING (("auth"."uid"() = "user_id")) WITH CHECK (("auth"."uid"() = "user_id"));



ALTER TABLE "public"."word_components" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."word_rule_application_chars" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."word_rule_applications" ENABLE ROW LEVEL SECURITY;


ALTER TABLE "public"."words" ENABLE ROW LEVEL SECURITY;




ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";






















































































































































GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_new_user"() TO "service_role";



GRANT ALL ON FUNCTION "public"."handle_user_email_update"() TO "anon";
GRANT ALL ON FUNCTION "public"."handle_user_email_update"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."handle_user_email_update"() TO "service_role";



GRANT ALL ON FUNCTION "public"."increment_version"() TO "anon";
GRANT ALL ON FUNCTION "public"."increment_version"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."increment_version"() TO "service_role";



GRANT ALL ON FUNCTION "public"."is_admin"() TO "anon";
GRANT ALL ON FUNCTION "public"."is_admin"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."is_admin"() TO "service_role";



GRANT ALL ON FUNCTION "public"."prevent_is_admin_self_elevation"() TO "anon";
GRANT ALL ON FUNCTION "public"."prevent_is_admin_self_elevation"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."prevent_is_admin_self_elevation"() TO "service_role";



GRANT ALL ON FUNCTION "public"."publish_component_meanings"() TO "anon";
GRANT ALL ON FUNCTION "public"."publish_component_meanings"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."publish_component_meanings"() TO "service_role";



GRANT ALL ON FUNCTION "public"."publish_sentence_meanings"() TO "anon";
GRANT ALL ON FUNCTION "public"."publish_sentence_meanings"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."publish_sentence_meanings"() TO "service_role";



REVOKE ALL ON FUNCTION "public"."publish_unit"("p_tag_id" "uuid") FROM PUBLIC;
GRANT ALL ON FUNCTION "public"."publish_unit"("p_tag_id" "uuid") TO "authenticated";
GRANT ALL ON FUNCTION "public"."publish_unit"("p_tag_id" "uuid") TO "service_role";



REVOKE ALL ON FUNCTION "public"."record_spelling_time"("p_item_type" "text", "p_item_id" "uuid", "p_mode" "text", "p_time_ms" integer) FROM PUBLIC;
GRANT ALL ON FUNCTION "public"."record_spelling_time"("p_item_type" "text", "p_item_id" "uuid", "p_mode" "text", "p_time_ms" integer) TO "anon";
GRANT ALL ON FUNCTION "public"."record_spelling_time"("p_item_type" "text", "p_item_id" "uuid", "p_mode" "text", "p_time_ms" integer) TO "authenticated";
GRANT ALL ON FUNCTION "public"."record_spelling_time"("p_item_type" "text", "p_item_id" "uuid", "p_mode" "text", "p_time_ms" integer) TO "service_role";



GRANT ALL ON FUNCTION "public"."set_bookmarked_at"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_bookmarked_at"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_bookmarked_at"() TO "service_role";



GRANT ALL ON FUNCTION "public"."set_tag_definition_position"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_tag_definition_position"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_tag_definition_position"() TO "service_role";



GRANT ALL ON FUNCTION "public"."set_tag_sentence_position"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_tag_sentence_position"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_tag_sentence_position"() TO "service_role";



GRANT ALL ON FUNCTION "public"."set_user_tag_completion_timestamps"() TO "anon";
GRANT ALL ON FUNCTION "public"."set_user_tag_completion_timestamps"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."set_user_tag_completion_timestamps"() TO "service_role";



GRANT ALL ON FUNCTION "public"."touch_updated_at"() TO "anon";
GRANT ALL ON FUNCTION "public"."touch_updated_at"() TO "authenticated";
GRANT ALL ON FUNCTION "public"."touch_updated_at"() TO "service_role";


















GRANT ALL ON TABLE "public"."characters" TO "anon";
GRANT ALL ON TABLE "public"."characters" TO "authenticated";
GRANT ALL ON TABLE "public"."characters" TO "service_role";



GRANT ALL ON TABLE "public"."definition_relations" TO "anon";
GRANT ALL ON TABLE "public"."definition_relations" TO "authenticated";
GRANT ALL ON TABLE "public"."definition_relations" TO "service_role";



GRANT ALL ON TABLE "public"."definitions" TO "anon";
GRANT ALL ON TABLE "public"."definitions" TO "authenticated";
GRANT ALL ON TABLE "public"."definitions" TO "service_role";



GRANT ALL ON TABLE "public"."knowledge_levels" TO "anon";
GRANT ALL ON TABLE "public"."knowledge_levels" TO "authenticated";
GRANT ALL ON TABLE "public"."knowledge_levels" TO "service_role";



GRANT ALL ON TABLE "public"."rules" TO "anon";
GRANT ALL ON TABLE "public"."rules" TO "authenticated";
GRANT ALL ON TABLE "public"."rules" TO "service_role";



GRANT ALL ON TABLE "public"."sentence_tokens" TO "anon";
GRANT ALL ON TABLE "public"."sentence_tokens" TO "authenticated";
GRANT ALL ON TABLE "public"."sentence_tokens" TO "service_role";



GRANT ALL ON TABLE "public"."sentences" TO "anon";
GRANT ALL ON TABLE "public"."sentences" TO "authenticated";
GRANT ALL ON TABLE "public"."sentences" TO "service_role";



GRANT ALL ON TABLE "public"."stories" TO "anon";
GRANT ALL ON TABLE "public"."stories" TO "authenticated";
GRANT ALL ON TABLE "public"."stories" TO "service_role";



GRANT ALL ON TABLE "public"."story_sentences" TO "anon";
GRANT ALL ON TABLE "public"."story_sentences" TO "authenticated";
GRANT ALL ON TABLE "public"."story_sentences" TO "service_role";



GRANT ALL ON TABLE "public"."tag_definitions" TO "anon";
GRANT ALL ON TABLE "public"."tag_definitions" TO "authenticated";
GRANT ALL ON TABLE "public"."tag_definitions" TO "service_role";



GRANT ALL ON TABLE "public"."tag_sentences" TO "anon";
GRANT ALL ON TABLE "public"."tag_sentences" TO "authenticated";
GRANT ALL ON TABLE "public"."tag_sentences" TO "service_role";



GRANT ALL ON TABLE "public"."tag_stories" TO "anon";
GRANT ALL ON TABLE "public"."tag_stories" TO "authenticated";
GRANT ALL ON TABLE "public"."tag_stories" TO "service_role";



GRANT ALL ON TABLE "public"."tags" TO "anon";
GRANT ALL ON TABLE "public"."tags" TO "authenticated";
GRANT ALL ON TABLE "public"."tags" TO "service_role";



GRANT ALL ON TABLE "public"."user_definition_knowledge" TO "anon";
GRANT ALL ON TABLE "public"."user_definition_knowledge" TO "authenticated";
GRANT ALL ON TABLE "public"."user_definition_knowledge" TO "service_role";



GRANT ALL ON TABLE "public"."user_level_colors" TO "anon";
GRANT ALL ON TABLE "public"."user_level_colors" TO "authenticated";
GRANT ALL ON TABLE "public"."user_level_colors" TO "service_role";



GRANT ALL ON TABLE "public"."user_sentence_knowledge" TO "anon";
GRANT ALL ON TABLE "public"."user_sentence_knowledge" TO "authenticated";
GRANT ALL ON TABLE "public"."user_sentence_knowledge" TO "service_role";



GRANT ALL ON TABLE "public"."user_sentence_spelling" TO "anon";
GRANT ALL ON TABLE "public"."user_sentence_spelling" TO "authenticated";
GRANT ALL ON TABLE "public"."user_sentence_spelling" TO "service_role";



GRANT ALL ON TABLE "public"."user_story_progress" TO "anon";
GRANT ALL ON TABLE "public"."user_story_progress" TO "authenticated";
GRANT ALL ON TABLE "public"."user_story_progress" TO "service_role";



GRANT ALL ON TABLE "public"."user_tag_completion" TO "anon";
GRANT ALL ON TABLE "public"."user_tag_completion" TO "authenticated";
GRANT ALL ON TABLE "public"."user_tag_completion" TO "service_role";



GRANT ALL ON TABLE "public"."user_unit_bookmarks" TO "anon";
GRANT ALL ON TABLE "public"."user_unit_bookmarks" TO "authenticated";
GRANT ALL ON TABLE "public"."user_unit_bookmarks" TO "service_role";



GRANT ALL ON TABLE "public"."user_word_spelling" TO "anon";
GRANT ALL ON TABLE "public"."user_word_spelling" TO "authenticated";
GRANT ALL ON TABLE "public"."user_word_spelling" TO "service_role";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";



GRANT ALL ON TABLE "public"."word_components" TO "anon";
GRANT ALL ON TABLE "public"."word_components" TO "authenticated";
GRANT ALL ON TABLE "public"."word_components" TO "service_role";



GRANT ALL ON TABLE "public"."word_rule_application_chars" TO "anon";
GRANT ALL ON TABLE "public"."word_rule_application_chars" TO "authenticated";
GRANT ALL ON TABLE "public"."word_rule_application_chars" TO "service_role";



GRANT ALL ON TABLE "public"."word_rule_applications" TO "anon";
GRANT ALL ON TABLE "public"."word_rule_applications" TO "authenticated";
GRANT ALL ON TABLE "public"."word_rule_applications" TO "service_role";



GRANT ALL ON TABLE "public"."words" TO "anon";
GRANT ALL ON TABLE "public"."words" TO "authenticated";
GRANT ALL ON TABLE "public"."words" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";































