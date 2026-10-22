SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict jogv9fE6fxdSkfzpsjkXrE8VwW437WHQYpegZMR1ipdQOVsWJQrfVajdKsQAJZv

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	4d232a2d-8098-49d9-bc3b-de632f24baf5	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-12 15:18:52.557023+00	{}	{}	\N	2026-07-12 15:18:52.531108+00	2026-07-14 18:29:17.373109+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	f9fe9e25-fdd7-47bd-98f4-37341fe62e8e	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-11 21:09:11.180493+00	{}	{}	\N	2026-07-11 21:09:11.166004+00	2026-07-11 21:09:11.201971+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	b249485c-b7a9-40fd-bc98-776588cc987d	authenticated	authenticated	ftp000000000@gmail.com		2026-09-22 12:12:04.517486+00	\N		\N		\N			\N	2026-10-15 13:24:38.487072+00	{"provider": "google", "providers": ["google"]}	{"iss": "https://accounts.google.com", "sub": "104508877633006661616", "name": "P FT", "email": "ftp000000000@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKTvhQ0CJ8P7ajtEGjPjk7OSHmCuMoy_mBW6vqQqHuYtvVBKA=s96-c", "full_name": "P FT", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKTvhQ0CJ8P7ajtEGjPjk7OSHmCuMoy_mBW6vqQqHuYtvVBKA=s96-c", "provider_id": "104508877633006661616", "email_verified": true, "phone_verified": false}	\N	2026-09-22 11:59:23.60322+00	2026-10-15 21:11:45.941108+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	40338319-8c0e-45aa-ad33-2f5d09f61308	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-11 22:45:08.412357+00	{}	{}	\N	2026-07-11 22:45:08.379519+00	2026-08-11 20:18:03.233154+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	3924c36d-82d6-4b65-b441-61a63256cf68	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-18 15:47:52.532962+00	{}	{}	\N	2026-08-18 15:47:52.485895+00	2026-08-18 15:47:52.576384+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	fd7a6f33-1b42-40f9-b0f1-663e60124ee3	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-10-04 12:10:46.356467+00	{}	{}	\N	2026-10-04 12:10:46.335832+00	2026-10-06 17:32:02.036287+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	9a569501-5d48-4347-86c9-af1ae3ecf848	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-02 16:43:25.506782+00	{}	{}	\N	2026-08-02 16:43:25.304611+00	2026-08-04 14:33:33.34263+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	e8d4db78-2746-4f26-9981-0d62cc2b2638	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-16 12:56:50.162188+00	{}	{}	\N	2026-07-16 12:56:50.085706+00	2026-07-17 13:12:51.1917+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	b068ddfe-ae63-4528-9156-ca6285630043	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-10-14 12:17:27.693066+00	{}	{}	\N	2026-10-14 12:17:27.653537+00	2026-10-14 12:17:27.704279+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	71b295da-88b8-4214-91c2-72ed945b6a36	authenticated	authenticated	thail3arning@gmail.com	\N	2026-10-15 10:04:08.363805+00	\N		\N		\N			\N	2026-10-15 10:04:08.367855+00	{"provider": "google", "providers": ["google"]}	{"iss": "https://accounts.google.com", "sub": "109026788797474174770", "name": "Thai 101", "email": "thail3arning@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKfzNT1kWlZeAye_LDKTgtVqLX174bY_hfRMqdFG24hahwKWQ=s96-c", "full_name": "Thai 101", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKfzNT1kWlZeAye_LDKTgtVqLX174bY_hfRMqdFG24hahwKWQ=s96-c", "provider_id": "109026788797474174770", "email_verified": true, "phone_verified": false}	\N	2026-10-15 10:04:08.335629+00	2026-10-15 10:04:08.372804+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	78a889a2-77ed-4084-912b-825ac3ec4a68	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-14 21:29:57.921458+00	{}	{}	\N	2026-07-14 21:29:57.894951+00	2026-07-15 03:45:46.199267+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	557bc788-cc94-4bae-b085-9e3d2d9d08db	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-19 19:06:24.580317+00	{}	{}	\N	2026-07-19 19:06:24.529177+00	2026-07-23 18:08:55.386788+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	82c82a35-06a3-429b-a2b7-9893d9906642	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-05 10:20:44.89093+00	{}	{}	\N	2026-08-05 10:20:44.823168+00	2026-08-05 10:20:44.938704+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	7f5327b5-9f53-42d5-ba8e-395ec0566747	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-17 19:11:41.16377+00	{}	{}	\N	2026-07-17 19:11:41.019364+00	2026-07-19 17:59:25.834327+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-15 11:14:18.733103+00	{}	{}	\N	2026-07-15 11:14:18.565959+00	2026-07-16 11:25:43.239054+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	b4bccc57-39f2-48ff-a63d-2f590207bf63	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-11 21:36:43.632778+00	{}	{}	\N	2026-07-11 21:36:43.60937+00	2026-07-16 12:07:01.69319+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	c5a07f1b-a1ab-4619-a6f2-f001e7c9f528	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-16 12:08:48.220579+00	{}	{}	\N	2026-07-16 12:08:48.172759+00	2026-07-16 12:08:48.238174+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	7c56c105-48c3-4ef7-bd63-79a7f7119fcb	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-04 20:24:29.800068+00	{}	{}	\N	2026-08-04 20:24:29.733998+00	2026-08-07 11:48:42.386243+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	8c09d9b3-25fb-4c72-9c8f-34362bc2a3d0	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-19 18:40:10.193567+00	{}	{}	\N	2026-07-19 18:40:10.156273+00	2026-07-19 18:40:10.216356+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	7d16cba3-cb8c-406c-89ee-0c428708a28a	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-19 18:50:24.283028+00	{}	{}	\N	2026-07-19 18:50:24.237742+00	2026-07-19 18:50:24.292757+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	ef11a1ae-bebd-4d41-aa6a-1f3d0163b1ff	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 11:52:57.444696+00	{}	{}	\N	2026-08-11 11:52:57.367058+00	2026-08-11 11:52:57.473032+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	ce7d15f3-d6c3-4b3d-9d93-8a29d6463e40	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 12:23:00.906082+00	{}	{}	\N	2026-08-11 12:23:00.860321+00	2026-08-11 12:23:00.926037+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	75c2e1f8-3b60-427a-8cc2-57c936d08817	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-04 15:38:46.408881+00	{}	{}	\N	2026-08-04 15:38:46.258908+00	2026-08-11 13:35:29.019497+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	812d3580-0fda-4153-a95a-ee525eb036ef	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-11 21:58:05.694986+00	{}	{}	\N	2026-07-11 21:58:05.670246+00	2026-08-11 16:54:09.198629+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-07-30 20:16:09.620147+00	{}	{}	\N	2026-07-30 20:16:09.453529+00	2026-08-01 12:17:56.778996+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	4c88da46-917b-4ca3-b740-b95a4e509ee1	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 16:59:07.272295+00	{}	{}	\N	2026-08-11 16:59:07.232577+00	2026-08-11 16:59:07.281996+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	c76fb13a-017f-49e1-9ac9-70dc3c6d7682	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 21:08:17.992536+00	{}	{}	\N	2026-08-11 21:08:17.951851+00	2026-10-09 07:59:40.716275+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	2a4787e2-5250-4c78-b7fa-7d5175151c08	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 17:20:54.117128+00	{}	{}	\N	2026-08-11 17:20:54.112953+00	2026-08-11 17:20:54.119584+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	2b645b06-8f0f-460a-a5ed-351a21396cca	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 20:16:02.879629+00	{}	{}	\N	2026-08-11 20:16:02.739722+00	2026-08-11 20:16:02.921491+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	09b1cc4a-f01d-4d65-b4b4-df31801b16ba	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 20:20:42.522149+00	{}	{}	\N	2026-08-11 20:20:42.498003+00	2026-08-11 20:20:42.531403+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	9bef0cde-6915-43cb-a0d7-37b590f7f151	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 20:44:58.316597+00	{}	{}	\N	2026-08-11 20:44:58.285915+00	2026-08-11 20:44:58.339723+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	687cbee6-3f81-49a1-9915-c7babd17b096	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-21 13:16:29.028963+00	{}	{}	\N	2026-08-21 13:16:28.944984+00	2026-08-21 19:36:42.493639+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	46fae9b4-ed74-4139-ba79-c207e73da2fb	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 21:12:21.989447+00	{}	{}	\N	2026-08-11 21:12:21.945509+00	2026-08-11 21:12:22.007931+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	40ac697c-48ff-4f3a-b479-0e8c6d6ea3a0	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 20:55:25.739898+00	{}	{}	\N	2026-08-11 20:55:25.704179+00	2026-08-12 04:29:18.058513+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	45f6b261-2c1b-4c01-8e24-703d7bbc7f74	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 21:21:26.064478+00	{}	{}	\N	2026-08-11 21:21:26.024363+00	2026-08-11 21:21:26.071885+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	f544881d-7515-4568-a8f0-bb620f4cec66	authenticated	authenticated	k.black000000@gmail.com	$2a$10$bDPVWR5ZaWsENLZXG/NHt.wBWS7oCrM95ZXESEQVHA4p/IR5TcKky	2026-08-11 20:53:22.112694+00	\N		\N		\N			2026-08-11 20:52:42.835465+00	2026-08-11 21:22:41.513734+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2026-08-11 20:51:57.589137+00	2026-08-11 21:22:41.536237+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	8acd1e7c-40e6-400c-8429-9a7ba473299c	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-08-11 21:30:06.225714+00	{}	{}	\N	2026-08-11 21:30:06.190124+00	2026-08-11 21:30:06.235212+00	\N	\N			\N		0	\N		\N	f	\N	t
00000000-0000-0000-0000-000000000000	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	authenticated	authenticated	net599930@gmail.com	$2a$06$Eo8NC9VMIANJrrEqeyeSPOFAl/lzl0SD3dceo7c2xrhPDOWBeL5Ei	2026-08-11 17:19:49.844626+00	\N		\N		2026-08-13 17:01:15.014302+00			\N	2026-10-20 10:01:56.805003+00	{"provider": "google", "providers": ["google"]}	{"iss": "https://accounts.google.com", "sub": "106277885919894158810", "name": "Net", "email": "net599930@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLhHrDEpyzZihYjs04cErpiCrKJxHI4d4NC_7pqUIO1DFk4gw=s96-c", "full_name": "Net", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocLhHrDEpyzZihYjs04cErpiCrKJxHI4d4NC_7pqUIO1DFk4gw=s96-c", "provider_id": "106277885919894158810", "email_verified": true, "phone_verified": false}	\N	2026-08-11 17:19:49.813218+00	2026-10-22 00:16:13.436961+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	215928c5-9268-4e42-9560-3426b3b63a41	authenticated	authenticated	nthings778@gmail.com	$2a$06$BfZDfPZd1lOkkahd9vvvdeS.bwV1KdAtOICA7pIgsKBQqbKCRqw5q	2026-08-13 16:34:33.402592+00	\N		\N		\N			\N	2026-10-17 15:26:25.220325+00	{"provider": "google", "providers": ["google"]}	{"iss": "https://accounts.google.com", "sub": "113966731598849692412", "name": "New Things", "email": "nthings778@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocJ9fC0zCS-l_abRFnieQ2jTwFCjCFfXKs2FwA1gvXIXgy9JtA=s96-c", "full_name": "New Things", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocJ9fC0zCS-l_abRFnieQ2jTwFCjCFfXKs2FwA1gvXIXgy9JtA=s96-c", "provider_id": "113966731598849692412", "email_verified": true, "phone_verified": false}	\N	2026-08-13 16:34:33.366996+00	2026-10-21 19:09:14.26134+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	74c3ff16-f356-4a1d-8476-79a04cdc3940	authenticated	authenticated	\N		\N	\N		\N		\N			\N	2026-10-04 11:16:31.916176+00	{}	{}	\N	2026-10-04 11:16:31.877953+00	2026-10-04 11:16:31.923674+00	\N	\N			\N		0	\N		\N	f	\N	t
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
109026788797474174770	71b295da-88b8-4214-91c2-72ed945b6a36	{"iss": "https://accounts.google.com", "sub": "109026788797474174770", "name": "Thai 101", "email": "thail3arning@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKfzNT1kWlZeAye_LDKTgtVqLX174bY_hfRMqdFG24hahwKWQ=s96-c", "full_name": "Thai 101", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKfzNT1kWlZeAye_LDKTgtVqLX174bY_hfRMqdFG24hahwKWQ=s96-c", "provider_id": "109026788797474174770", "email_verified": true, "phone_verified": false}	google	2026-10-15 10:04:08.355418+00	2026-10-15 10:04:08.355495+00	2026-10-15 10:04:08.355495+00	2bdb5f59-3ca8-43c3-8a2e-616cce06ef13
f544881d-7515-4568-a8f0-bb620f4cec66	f544881d-7515-4568-a8f0-bb620f4cec66	{"sub": "f544881d-7515-4568-a8f0-bb620f4cec66", "email": "k.black000000@gmail.com", "email_verified": true, "phone_verified": false}	email	2026-08-11 20:53:22.105718+00	2026-08-11 20:53:22.105768+00	2026-08-11 20:53:22.115395+00	8131e83e-0000-405a-898b-054dcc9a7b7a
104508877633006661616	b249485c-b7a9-40fd-bc98-776588cc987d	{"iss": "https://accounts.google.com", "sub": "104508877633006661616", "name": "P FT", "email": "ftp000000000@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKTvhQ0CJ8P7ajtEGjPjk7OSHmCuMoy_mBW6vqQqHuYtvVBKA=s96-c", "full_name": "P FT", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKTvhQ0CJ8P7ajtEGjPjk7OSHmCuMoy_mBW6vqQqHuYtvVBKA=s96-c", "provider_id": "104508877633006661616", "email_verified": true, "phone_verified": false}	google	2026-09-22 12:12:04.472959+00	2026-09-22 12:12:04.47385+00	2026-10-15 13:24:38.475076+00	f116d5ec-3fbb-4aff-b4d7-2522cfa372a9
113966731598849692412	215928c5-9268-4e42-9560-3426b3b63a41	{"iss": "https://accounts.google.com", "sub": "113966731598849692412", "name": "New Things", "email": "nthings778@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocJ9fC0zCS-l_abRFnieQ2jTwFCjCFfXKs2FwA1gvXIXgy9JtA=s96-c", "full_name": "New Things", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocJ9fC0zCS-l_abRFnieQ2jTwFCjCFfXKs2FwA1gvXIXgy9JtA=s96-c", "provider_id": "113966731598849692412", "email_verified": true, "phone_verified": false}	google	2026-08-13 16:34:33.385599+00	2026-08-13 16:34:33.385661+00	2026-10-17 15:26:25.204605+00	ff1afe59-ba60-4a0f-b040-0adca83df427
106277885919894158810	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	{"iss": "https://accounts.google.com", "sub": "106277885919894158810", "name": "Net", "email": "net599930@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLhHrDEpyzZihYjs04cErpiCrKJxHI4d4NC_7pqUIO1DFk4gw=s96-c", "full_name": "Net", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocLhHrDEpyzZihYjs04cErpiCrKJxHI4d4NC_7pqUIO1DFk4gw=s96-c", "provider_id": "106277885919894158810", "email_verified": true, "phone_verified": false}	google	2026-08-11 17:19:49.837655+00	2026-08-11 17:19:49.837723+00	2026-10-20 10:01:56.786229+00	ab2a6704-0d72-490c-9899-a05a62cd13a3
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
14d797c6-7f0b-4747-93bf-691c9440bc03	f9fe9e25-fdd7-47bd-98f4-37341fe62e8e	2026-07-11 21:09:11.182107+00	2026-07-11 21:09:11.182107+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.67.224	\N	\N	\N	\N	\N
f5e0dda1-3777-4e04-9404-e0981c25b79d	e8d4db78-2746-4f26-9981-0d62cc2b2638	2026-07-16 12:56:50.163414+00	2026-07-17 13:12:51.208505+00	\N	aal1	\N	2026-07-17 13:12:51.208338	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
805ab050-4790-4ab2-a8f2-2bec83048402	ef11a1ae-bebd-4d41-aa6a-1f3d0163b1ff	2026-08-11 11:52:57.44612+00	2026-08-11 11:52:57.44612+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
b8373be1-287c-4e5b-8e6a-bb380db2cebf	ce7d15f3-d6c3-4b3d-9d93-8a29d6463e40	2026-08-11 12:23:00.907286+00	2026-08-11 12:23:00.907286+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
e9bc0f07-205b-413b-b035-2a05532396fb	75c2e1f8-3b60-427a-8cc2-57c936d08817	2026-08-04 15:38:46.410099+00	2026-08-11 13:35:29.037226+00	\N	aal1	\N	2026-08-11 13:35:29.037085	Dart/3.12 (dart:io)	46.122.68.23	\N	\N	\N	\N	\N
6e01311b-eb9c-4664-8462-86f4f21c65e0	78a889a2-77ed-4084-912b-825ac3ec4a68	2026-07-14 21:29:57.921579+00	2026-07-15 03:45:46.219674+00	\N	aal1	\N	2026-07-15 03:45:46.219551	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
67934114-a680-4329-9655-02d314300c50	812d3580-0fda-4153-a95a-ee525eb036ef	2026-07-11 21:58:05.696872+00	2026-08-11 16:54:09.217626+00	\N	aal1	\N	2026-08-11 16:54:09.217507	Dart/3.12 (dart:io)	46.122.68.23	\N	\N	\N	\N	\N
4c74b30a-7a55-49c5-9602-45aa63f2cd0f	9a569501-5d48-4347-86c9-af1ae3ecf848	2026-08-02 16:43:25.508157+00	2026-08-04 14:33:33.3588+00	\N	aal1	\N	2026-08-04 14:33:33.358678	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
c36f5650-def5-478e-b953-d9a819649443	82c82a35-06a3-429b-a2b7-9893d9906642	2026-08-05 10:20:44.892103+00	2026-08-05 10:20:44.892103+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.68.23	\N	\N	\N	\N	\N
b0532c57-b5dc-4d6b-b068-f9ba81f19bfa	557bc788-cc94-4bae-b085-9e3d2d9d08db	2026-07-19 19:06:24.581578+00	2026-07-23 18:08:55.402626+00	\N	aal1	\N	2026-07-23 18:08:55.402504	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
a408942a-29bc-4895-b13c-ee2ba76ea896	7c56c105-48c3-4ef7-bd63-79a7f7119fcb	2026-08-04 20:24:29.801422+00	2026-08-07 11:48:42.406857+00	\N	aal1	\N	2026-08-07 11:48:42.406704	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
0654af1f-d185-4596-bd15-d1ecefbde8d6	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	2026-07-15 11:14:18.734503+00	2026-07-16 11:25:43.257448+00	\N	aal1	\N	2026-07-16 11:25:43.256687	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
f868bad4-e139-4199-85bf-1968160a367c	b4bccc57-39f2-48ff-a63d-2f590207bf63	2026-07-11 21:36:43.634107+00	2026-07-16 12:07:01.712907+00	\N	aal1	\N	2026-07-16 12:07:01.712698	Dart/3.12 (dart:io)	46.122.66.213	\N	\N	\N	\N	\N
0b47d052-ae8f-4f69-b937-7bcfc2686cc3	c5a07f1b-a1ab-4619-a6f2-f001e7c9f528	2026-07-16 12:08:48.224615+00	2026-07-16 12:08:48.224615+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
5f99c6b3-6aef-4673-8120-2b397b2fc4ff	7f5327b5-9f53-42d5-ba8e-395ec0566747	2026-07-17 19:11:41.165055+00	2026-07-19 17:59:25.850097+00	\N	aal1	\N	2026-07-19 17:59:25.849991	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
d5e16a62-3c8d-406f-96de-ea9abf776721	8c09d9b3-25fb-4c72-9c8f-34362bc2a3d0	2026-07-19 18:40:10.194876+00	2026-07-19 18:40:10.194876+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
f2f7f3a6-a425-4604-b7e5-e2916f7d27f7	7d16cba3-cb8c-406c-89ee-0c428708a28a	2026-07-19 18:50:24.285876+00	2026-07-19 18:50:24.285876+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
bf3d1ada-8e84-4bde-9329-de21e01d81f7	2b645b06-8f0f-460a-a5ed-351a21396cca	2026-08-11 20:16:02.882607+00	2026-08-11 20:16:02.882607+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
735073a8-d87a-4768-aeca-729a8d08c829	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-13 17:01:44.899032+00	2026-08-13 17:01:44.899032+00	\N	aal1	\N	\N	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36	46.122.97.44	\N	\N	\N	\N	\N
94d45a00-9d37-40cc-a67c-27730ca19012	09b1cc4a-f01d-4d65-b4b4-df31801b16ba	2026-08-11 20:20:42.524759+00	2026-08-11 20:20:42.524759+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0	46.122.68.23	\N	\N	\N	\N	\N
a6b3ea90-f9c7-4a07-be4b-b2d255980206	9bef0cde-6915-43cb-a0d7-37b590f7f151	2026-08-11 20:44:58.31796+00	2026-08-11 20:44:58.31796+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
8610f14d-6de5-4a0b-80c8-b06a64fc7b51	4d232a2d-8098-49d9-bc3b-de632f24baf5	2026-07-12 15:18:52.558212+00	2026-07-14 18:29:17.394199+00	\N	aal1	\N	2026-07-14 18:29:17.394023	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.66.213	\N	\N	\N	\N	\N
43b09ba7-cd36-4597-9e56-2917533fa0db	f544881d-7515-4568-a8f0-bb620f4cec66	2026-08-11 20:51:57.609436+00	2026-08-11 20:51:57.609436+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
a703e005-fac4-4c11-827a-d94f574674c7	f544881d-7515-4568-a8f0-bb620f4cec66	2026-08-11 20:53:22.118649+00	2026-08-11 20:53:22.118649+00	\N	aal1	\N	\N	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
543bfc50-e611-4926-b5aa-94e8638863ab	f544881d-7515-4568-a8f0-bb620f4cec66	2026-08-11 20:56:55.850472+00	2026-08-11 20:56:55.850472+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
08d92a17-6171-4c51-948e-89ee34781fa5	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	2026-07-30 20:16:09.621539+00	2026-08-01 12:17:56.795276+00	\N	aal1	\N	2026-08-01 12:17:56.795165	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
6f968b00-0f7d-41d9-9742-06c77df9c35e	40ac697c-48ff-4f3a-b479-0e8c6d6ea3a0	2026-08-11 20:55:25.742236+00	2026-08-12 04:29:18.080346+00	\N	aal1	\N	2026-08-12 04:29:18.080228	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
84bdb9dc-12e6-4359-ac79-01b30c7bcf83	46fae9b4-ed74-4139-ba79-c207e73da2fb	2026-08-11 21:12:21.990735+00	2026-08-11 21:12:21.990735+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
c488e040-ce58-4b56-a1fa-040e44cadb1f	f544881d-7515-4568-a8f0-bb620f4cec66	2026-08-11 21:12:57.878322+00	2026-08-11 21:12:57.878322+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.23	\N	\N	\N	\N	\N
880033f0-9ba8-47bd-8f94-31c51eb40c0e	45f6b261-2c1b-4c01-8e24-703d7bbc7f74	2026-08-11 21:21:26.065846+00	2026-08-11 21:21:26.065846+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.68.23	\N	\N	\N	\N	\N
5338a484-d8f0-4d5b-bc62-d2cfc70c9318	f544881d-7515-4568-a8f0-bb620f4cec66	2026-08-11 21:22:41.514451+00	2026-08-11 21:22:41.514451+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.68.23	\N	\N	\N	\N	\N
d3aae800-200c-4ef7-a4b5-f28069e2c3ff	8acd1e7c-40e6-400c-8429-9a7ba473299c	2026-08-11 21:30:06.226508+00	2026-08-11 21:30:06.226508+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.68.23	\N	\N	\N	\N	\N
9a09387c-e53c-490b-a460-eb440a93a7a3	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-11 17:22:12.689759+00	2026-08-13 18:03:44.711202+00	\N	aal1	\N	2026-08-13 18:03:44.711084	Dart/3.12 (dart:io)	46.122.97.44	\N	\N	\N	\N	\N
267c996b-35c1-4a37-b434-438cda291b74	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-13 17:03:52.698601+00	2026-08-13 17:03:52.698601+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.97.44	\N	\N	\N	\N	\N
3066099a-c9b5-4313-830a-cca5ab53ff17	215928c5-9268-4e42-9560-3426b3b63a41	2026-08-13 17:18:59.351158+00	2026-08-13 17:18:59.351158+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.97.44	\N	\N	\N	\N	\N
fe66afeb-e08e-4f1a-950e-0f17a9f99f91	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-13 17:20:10.726876+00	2026-08-13 17:20:10.726876+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.97.44	\N	\N	\N	\N	\N
ce058dce-9ebf-4ecb-8415-0e593476faf3	215928c5-9268-4e42-9560-3426b3b63a41	2026-08-13 16:34:33.411203+00	2026-08-15 16:46:12.853229+00	\N	aal1	\N	2026-08-15 16:46:12.853106	Dart/3.12 (dart:io)	46.122.97.44	\N	\N	\N	\N	\N
21e63306-e497-44d2-96a3-bf4cfc641765	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-13 20:46:58.598538+00	2026-08-15 15:20:03.6964+00	\N	aal1	\N	2026-08-15 15:20:03.696287	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.97.44	\N	\N	\N	\N	\N
f5b9a55e-1c8c-423b-9d6f-8b60571c3030	215928c5-9268-4e42-9560-3426b3b63a41	2026-08-13 18:20:26.0026+00	2026-08-25 12:08:53.618236+00	\N	aal1	\N	2026-08-25 12:08:53.618116	Dart/3.12 (dart:io)	46.122.68.154	\N	\N	\N	\N	\N
d89e57be-edff-480c-86af-6716b32f2396	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-16 16:14:36.709681+00	2026-08-17 21:32:35.986412+00	\N	aal1	\N	2026-08-17 21:32:35.986292	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
d4d3bf27-21d4-4805-8453-6a25c2fa794d	c76fb13a-017f-49e1-9ac9-70dc3c6d7682	2026-08-11 21:08:17.993719+00	2026-10-09 07:59:40.73848+00	\N	aal1	\N	2026-10-09 07:59:40.73837	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
ac715bd2-b28d-4800-a4f6-96318f5d8e4d	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-17 21:53:01.629877+00	2026-08-17 21:53:01.629877+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
5154d804-b988-47b5-b0a6-7945e02bfb2b	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-17 22:46:15.242208+00	2026-08-18 11:19:40.11699+00	\N	aal1	\N	2026-08-18 11:19:40.116869	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
1e4631ce-8bd6-4705-8d34-591c80570fdf	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-18 11:24:38.654582+00	2026-08-18 12:24:01.213878+00	\N	aal1	\N	2026-08-18 12:24:01.213707	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
719a71a0-e133-4519-885b-4d8edf5c63ef	3924c36d-82d6-4b65-b441-61a63256cf68	2026-08-18 15:47:52.53439+00	2026-08-18 15:47:52.53439+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
bc327a9c-dbd3-4758-8c67-86de68305e73	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-18 15:52:02.550246+00	2026-08-18 15:52:02.550246+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
eed7f488-b534-4ea9-bfca-558a737fe9cb	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-18 16:32:28.644276+00	2026-08-18 16:32:28.644276+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
c6769c9f-b7bf-481c-adf3-b4fcaaf4527f	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-18 16:40:58.948102+00	2026-08-18 16:40:58.948102+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
59fc7fff-d53a-4388-b632-0b2b9ed1bb76	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-25 19:50:33.628322+00	2026-08-26 15:06:37.023201+00	\N	aal1	\N	2026-08-26 15:06:37.022491	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
7115385d-0578-4399-a7ee-058d5e271002	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-09-21 12:09:15.709401+00	2026-09-21 12:09:15.709401+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36	46.122.96.252	\N	\N	\N	\N	\N
e578eb17-2f80-4ceb-a5ca-4f52bdd66087	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-10-14 16:12:48.082469+00	2026-10-15 08:58:07.302021+00	\N	aal1	\N	2026-10-15 08:58:07.301911	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
0d3830d7-465e-4271-847e-777dd464da42	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-18 16:54:33.156981+00	2026-08-20 11:52:39.298035+00	\N	aal1	\N	2026-08-20 11:52:39.297858	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	146.212.99.143	\N	\N	\N	\N	\N
4742f997-6b4a-420f-ba96-2f65c3fe0258	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-21 12:54:16.937243+00	2026-08-21 12:54:16.937243+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
4de59ee5-e70d-4156-b3df-7cb9275af4f4	74c3ff16-f356-4a1d-8476-79a04cdc3940	2026-10-04 11:16:31.917406+00	2026-10-04 11:16:31.917406+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36	46.122.71.238	\N	\N	\N	\N	\N
f9df35fb-6c6b-4de9-aa0b-8cf606e72e3c	687cbee6-3f81-49a1-9915-c7babd17b096	2026-08-21 13:16:29.030547+00	2026-08-21 19:36:42.516901+00	\N	aal1	\N	2026-08-21 19:36:42.516754	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
4b75bcda-6ca6-43f0-9e72-238a0dcf120c	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-09-19 11:23:17.4545+00	2026-10-04 11:58:46.159997+00	\N	aal1	\N	2026-10-04 11:58:46.15987	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
8c83dafa-a112-4838-b0d8-70ae6f7d5a9d	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-21 20:14:53.691044+00	2026-08-22 18:23:16.834068+00	\N	aal1	\N	2026-08-22 18:23:16.833949	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
bf39c2de-cf36-4fd3-85db-bde8a03af94f	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-09-30 11:47:30.984698+00	2026-10-01 06:49:29.370927+00	\N	aal1	\N	2026-10-01 06:49:29.370802	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36	46.122.71.238	\N	\N	\N	\N	\N
5af4d3b0-8389-4df3-ba5c-280bc3e9a759	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-25 12:07:24.923319+00	2026-08-25 16:54:24.278334+00	\N	aal1	\N	2026-08-25 16:54:24.277467	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
7d76fbf9-3160-491d-bd82-4e33ec819fa3	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-25 17:19:09.925241+00	2026-08-25 17:19:09.925241+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
49e0ecc1-8f7b-4396-a0f3-1dde64ccd989	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-25 17:25:25.898973+00	2026-08-25 19:48:16.798139+00	\N	aal1	\N	2026-08-25 19:48:16.798006	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
b419d00b-1b6d-4227-a989-9f8a8b45e348	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-09-21 12:28:58.911488+00	2026-09-22 11:24:21.837903+00	\N	aal1	\N	2026-09-22 11:24:21.837777	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36	46.122.96.252	\N	\N	\N	\N	\N
f035b5d2-bf99-4c29-90e8-432e988e7eb2	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-28 20:25:38.975803+00	2026-08-29 20:01:45.002789+00	\N	aal1	\N	2026-08-29 20:01:45.002673	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36	46.122.68.154	\N	\N	\N	\N	\N
bab684e8-64cf-47b6-973a-b1ca907d88cd	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-09-22 11:31:54.75851+00	2026-09-22 11:31:54.75851+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.0.0 Safari/537.36	46.122.96.252	\N	\N	\N	\N	\N
68382044-2a13-4b72-83c4-20eccadb1f7c	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-08-25 12:17:03.909533+00	2026-09-02 18:20:22.215376+00	\N	aal1	\N	2026-09-02 18:20:22.215255	Dart/3.12 (dart:io)	46.122.101.160	\N	\N	\N	\N	\N
1caf2bd2-bfa9-4e5c-88cb-9b639f989ff2	b249485c-b7a9-40fd-bc98-776588cc987d	2026-09-22 11:59:23.679526+00	2026-09-22 11:59:23.679526+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.96.252	\N	\N	\N	\N	\N
4f6e2acb-69d3-4e51-b788-0f0d2ebe76a7	b249485c-b7a9-40fd-bc98-776588cc987d	2026-09-22 12:12:04.533473+00	2026-09-26 13:20:45.246856+00	\N	aal1	\N	2026-09-26 13:20:45.246732	Dart/3.12 (dart:io)	46.122.96.252	\N	\N	\N	\N	\N
223323a2-7820-484d-9669-a2a1e9c8d39c	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-09-04 13:35:00.675757+00	2026-09-05 14:24:13.073059+00	\N	aal1	\N	2026-09-05 14:24:13.072942	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36	46.122.69.171	\N	\N	\N	\N	\N
eea0881d-1346-4eab-b369-db7a76144b4e	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-10-01 19:03:42.380672+00	2026-10-05 13:35:06.608103+00	\N	aal1	\N	2026-10-05 13:35:06.607991	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36	46.122.71.238	\N	\N	\N	\N	\N
b1bbe088-5401-43a5-b81e-325008cc9272	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-09-26 13:27:12.320194+00	2026-10-04 12:46:19.47022+00	\N	aal1	\N	2026-10-04 12:46:19.470091	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
1ef22c45-e47d-4b06-a4b5-c43a10c08e9d	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-10-04 12:54:35.439183+00	2026-10-14 15:14:09.214956+00	\N	aal1	\N	2026-10-14 15:14:09.214755	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
3177d3a5-0d45-47f0-bba5-87477759534b	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-10-04 11:06:57.199156+00	2026-10-04 11:06:57.199156+00	\N	aal1	\N	\N	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36	46.122.71.238	\N	\N	\N	\N	\N
d88c8e35-6b23-4f79-9e18-d57dd9e03f2c	fd7a6f33-1b42-40f9-b0f1-663e60124ee3	2026-10-04 12:10:46.356585+00	2026-10-06 17:32:02.062374+00	\N	aal1	\N	2026-10-06 17:32:02.062258	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
afc032ef-8773-4f22-b1bf-051be097b354	215928c5-9268-4e42-9560-3426b3b63a41	2026-10-06 18:03:39.144701+00	2026-10-14 12:12:06.815876+00	\N	aal1	\N	2026-10-14 12:12:06.815746	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
253ec1ff-fd20-433f-8dec-e8b721305907	b068ddfe-ae63-4528-9156-ca6285630043	2026-10-14 12:17:27.694259+00	2026-10-14 12:17:27.694259+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
181b9a72-1b30-41a9-9337-4c45b44ecfd0	215928c5-9268-4e42-9560-3426b3b63a41	2026-10-14 13:35:26.490995+00	2026-10-14 13:35:26.490995+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
e94c548d-7582-4c99-b518-62b401435a74	b249485c-b7a9-40fd-bc98-776588cc987d	2026-10-15 13:24:38.487173+00	2026-10-15 21:11:45.959323+00	\N	aal1	\N	2026-10-15 21:11:45.959168	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
46d9279f-0b12-4bf7-bf68-b006e47447f1	215928c5-9268-4e42-9560-3426b3b63a41	2026-10-17 15:26:25.221546+00	2026-10-21 19:09:14.283818+00	\N	aal1	\N	2026-10-21 19:09:14.28364	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
0e7900b6-06f6-42e4-bcc1-3947bfa87c43	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-10-15 23:02:38.969727+00	2026-10-15 23:02:38.969727+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
f7600d22-7ea9-497f-a5bd-775514a7f3ca	215928c5-9268-4e42-9560-3426b3b63a41	2026-10-16 11:11:44.764436+00	2026-10-17 13:40:29.694183+00	\N	aal1	\N	2026-10-17 13:40:29.694063	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
623d4725-6708-4c51-a4a7-be5370bc4e19	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-10-15 11:02:37.809822+00	2026-10-22 00:16:13.459248+00	\N	aal1	\N	2026-10-22 00:16:13.459129	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
1517ebcc-683d-4679-b7bc-078bd35ed7af	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2026-10-19 22:18:53.971025+00	2026-10-19 22:18:53.971025+00	\N	aal1	\N	\N	Dart/3.12 (dart:io)	46.122.71.238	\N	\N	\N	\N	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
14d797c6-7f0b-4747-93bf-691c9440bc03	2026-07-11 21:09:11.202835+00	2026-07-11 21:09:11.202835+00	anonymous	fb892493-7484-476e-92f2-498d1a7ad838
f868bad4-e139-4199-85bf-1968160a367c	2026-07-11 21:36:43.641949+00	2026-07-11 21:36:43.641949+00	anonymous	a58cd7aa-dbff-4ad8-ba71-746b77b2ca9b
67934114-a680-4329-9655-02d314300c50	2026-07-11 21:58:05.708682+00	2026-07-11 21:58:05.708682+00	anonymous	b94063b7-bd40-45da-9acc-3a58714e9902
8610f14d-6de5-4a0b-80c8-b06a64fc7b51	2026-07-12 15:18:52.5816+00	2026-07-12 15:18:52.5816+00	anonymous	4161f4e3-b48a-4455-9cf7-6c9f1583860a
6e01311b-eb9c-4664-8462-86f4f21c65e0	2026-07-14 21:29:57.936849+00	2026-07-14 21:29:57.936849+00	anonymous	1d2bfa01-7907-40e4-acb0-8edfd9825b6a
0654af1f-d185-4596-bd15-d1ecefbde8d6	2026-07-15 11:14:18.772314+00	2026-07-15 11:14:18.772314+00	anonymous	50be5f3f-e553-4431-a63f-b37af7630b32
0b47d052-ae8f-4f69-b937-7bcfc2686cc3	2026-07-16 12:08:48.239691+00	2026-07-16 12:08:48.239691+00	anonymous	5c5d4834-1d83-4dd2-805e-873333b57d0f
f5e0dda1-3777-4e04-9404-e0981c25b79d	2026-07-16 12:56:50.196195+00	2026-07-16 12:56:50.196195+00	anonymous	025c1191-2cda-4ddf-889a-924d35781249
5f99c6b3-6aef-4673-8120-2b397b2fc4ff	2026-07-17 19:11:41.213747+00	2026-07-17 19:11:41.213747+00	anonymous	deb75393-63c0-4b9b-b011-8b07ff1b4765
d5e16a62-3c8d-406f-96de-ea9abf776721	2026-07-19 18:40:10.217902+00	2026-07-19 18:40:10.217902+00	anonymous	b9ea3327-beb9-462c-a97f-2a0943544168
f2f7f3a6-a425-4604-b7e5-e2916f7d27f7	2026-07-19 18:50:24.293355+00	2026-07-19 18:50:24.293355+00	anonymous	67cd161d-fa0a-47bb-8be8-e1d6b78eb01b
b0532c57-b5dc-4d6b-b068-f9ba81f19bfa	2026-07-19 19:06:24.593462+00	2026-07-19 19:06:24.593462+00	anonymous	894fe324-5ac8-43f0-a3ba-e716978ac615
08d92a17-6171-4c51-948e-89ee34781fa5	2026-07-30 20:16:09.673771+00	2026-07-30 20:16:09.673771+00	anonymous	78896c91-70a0-41a5-8832-e833ebeb3c6a
4c74b30a-7a55-49c5-9602-45aa63f2cd0f	2026-08-02 16:43:25.573534+00	2026-08-02 16:43:25.573534+00	anonymous	bd2b3dac-fc9f-4950-98e6-e7b38d4bc62e
e9bc0f07-205b-413b-b035-2a05532396fb	2026-08-04 15:38:46.434202+00	2026-08-04 15:38:46.434202+00	anonymous	85ed5926-717a-48e2-86ca-268a5974d8ea
a408942a-29bc-4895-b13c-ee2ba76ea896	2026-08-04 20:24:29.83673+00	2026-08-04 20:24:29.83673+00	anonymous	6341521f-6587-4abd-a378-5aca8f264208
c36f5650-def5-478e-b953-d9a819649443	2026-08-05 10:20:44.940617+00	2026-08-05 10:20:44.940617+00	anonymous	d59e7c30-bd8b-4afe-a3c3-675674e8628e
805ab050-4790-4ab2-a8f2-2bec83048402	2026-08-11 11:52:57.474703+00	2026-08-11 11:52:57.474703+00	anonymous	bf900c06-08b7-4f98-b47b-635210f43876
b8373be1-287c-4e5b-8e6a-bb380db2cebf	2026-08-11 12:23:00.927615+00	2026-08-11 12:23:00.927615+00	anonymous	64fc922b-ba97-4332-856f-3c49bb8dae4e
9a09387c-e53c-490b-a460-eb440a93a7a3	2026-08-11 17:22:12.6968+00	2026-08-11 17:22:12.6968+00	oauth	425d5bc5-6385-4f15-b29f-10d31091a17b
bf3d1ada-8e84-4bde-9329-de21e01d81f7	2026-08-11 20:16:02.923145+00	2026-08-11 20:16:02.923145+00	anonymous	f21716e6-02f5-4ed7-b7b4-bb7a0cd0f5dd
94d45a00-9d37-40cc-a67c-27730ca19012	2026-08-11 20:20:42.532185+00	2026-08-11 20:20:42.532185+00	anonymous	4111aa9c-7261-4900-a7a6-2e5bc5cbd1d5
a6b3ea90-f9c7-4a07-be4b-b2d255980206	2026-08-11 20:44:58.34143+00	2026-08-11 20:44:58.34143+00	anonymous	04e8da7b-91e9-421d-ba76-8d7efab145be
43b09ba7-cd36-4597-9e56-2917533fa0db	2026-08-11 20:51:57.616116+00	2026-08-11 20:51:57.616116+00	anonymous	49365b7e-08aa-4496-bb0b-d7ddc1536132
a703e005-fac4-4c11-827a-d94f574674c7	2026-08-11 20:53:22.127526+00	2026-08-11 20:53:22.127526+00	otp	5c38000f-2a0a-4679-b2ca-65467c162952
6f968b00-0f7d-41d9-9742-06c77df9c35e	2026-08-11 20:55:25.750751+00	2026-08-11 20:55:25.750751+00	anonymous	a63f2fc1-1d27-45fd-9569-8c17379ba021
543bfc50-e611-4926-b5aa-94e8638863ab	2026-08-11 20:56:55.873144+00	2026-08-11 20:56:55.873144+00	password	8e42ff05-13b2-4044-b740-0cdc14cb62aa
d4d3bf27-21d4-4805-8453-6a25c2fa794d	2026-08-11 21:08:18.009337+00	2026-08-11 21:08:18.009337+00	anonymous	2be41984-d0f0-4e45-9448-b7345707f534
84bdb9dc-12e6-4359-ac79-01b30c7bcf83	2026-08-11 21:12:22.009453+00	2026-08-11 21:12:22.009453+00	anonymous	5ed87d3f-bf54-40d5-b0be-f7c23ad846d7
c488e040-ce58-4b56-a1fa-040e44cadb1f	2026-08-11 21:12:57.884607+00	2026-08-11 21:12:57.884607+00	password	4efd59bd-43e4-4aef-83f1-a8450ad69e84
880033f0-9ba8-47bd-8f94-31c51eb40c0e	2026-08-11 21:21:26.073615+00	2026-08-11 21:21:26.073615+00	anonymous	7517f911-4672-4c1a-8cd9-c745bd52d926
5338a484-d8f0-4d5b-bc62-d2cfc70c9318	2026-08-11 21:22:41.544116+00	2026-08-11 21:22:41.544116+00	password	68f2ce4c-7bc8-46ab-8c24-7d9175e8309b
d3aae800-200c-4ef7-a4b5-f28069e2c3ff	2026-08-11 21:30:06.236898+00	2026-08-11 21:30:06.236898+00	anonymous	30f55f93-7fc6-4605-84bb-1fe93c857f36
ce058dce-9ebf-4ecb-8415-0e593476faf3	2026-08-13 16:34:33.431782+00	2026-08-13 16:34:33.431782+00	oauth	e8c0fa65-4e56-4642-8384-533e7e907410
735073a8-d87a-4768-aeca-729a8d08c829	2026-08-13 17:01:44.920255+00	2026-08-13 17:01:44.920255+00	otp	2bced8be-7eb4-4d39-a7c7-d6defc71f9b7
267c996b-35c1-4a37-b434-438cda291b74	2026-08-13 17:03:52.7088+00	2026-08-13 17:03:52.7088+00	password	557be58a-c2f2-4947-b82f-61b688cbd89d
3066099a-c9b5-4313-830a-cca5ab53ff17	2026-08-13 17:18:59.372539+00	2026-08-13 17:18:59.372539+00	password	bd359c7b-d36b-4dc1-bd53-3067973137b5
fe66afeb-e08e-4f1a-950e-0f17a9f99f91	2026-08-13 17:20:10.746624+00	2026-08-13 17:20:10.746624+00	password	b9bc9a30-f3a9-49a9-8f58-b35348751bd1
f5b9a55e-1c8c-423b-9d6f-8b60571c3030	2026-08-13 18:20:26.037931+00	2026-08-13 18:20:26.037931+00	oauth	6ce40527-d168-49b7-8fe4-ec828e7705b1
21e63306-e497-44d2-96a3-bf4cfc641765	2026-08-13 20:46:58.666946+00	2026-08-13 20:46:58.666946+00	password	dfcf4a5c-f8b8-45d8-9d1f-fa7cc091fefc
d89e57be-edff-480c-86af-6716b32f2396	2026-08-16 16:14:36.789634+00	2026-08-16 16:14:36.789634+00	password	9701841f-6ace-4593-bd13-da9ee2a38b04
ac715bd2-b28d-4800-a4f6-96318f5d8e4d	2026-08-17 21:53:01.658836+00	2026-08-17 21:53:01.658836+00	password	a7066e31-31da-401c-a8e8-edd8bf4d11d0
5154d804-b988-47b5-b0a6-7945e02bfb2b	2026-08-17 22:46:15.288328+00	2026-08-17 22:46:15.288328+00	password	cfd5e796-eb88-49ed-96d4-ea8717653270
1e4631ce-8bd6-4705-8d34-591c80570fdf	2026-08-18 11:24:38.68086+00	2026-08-18 11:24:38.68086+00	password	50f0ad16-c27b-4e74-806f-00b213ffb816
719a71a0-e133-4519-885b-4d8edf5c63ef	2026-08-18 15:47:52.577923+00	2026-08-18 15:47:52.577923+00	anonymous	f4d9b67a-eb01-457f-8b97-5d0d96bb70de
bc327a9c-dbd3-4758-8c67-86de68305e73	2026-08-18 15:52:02.572801+00	2026-08-18 15:52:02.572801+00	password	3530cd51-cadd-4952-962a-639d1def6e40
eed7f488-b534-4ea9-bfca-558a737fe9cb	2026-08-18 16:32:28.717873+00	2026-08-18 16:32:28.717873+00	password	62ca0cbc-e757-4cc4-ac95-c6dac1b2d910
c6769c9f-b7bf-481c-adf3-b4fcaaf4527f	2026-08-18 16:40:58.967348+00	2026-08-18 16:40:58.967348+00	password	391a3b7a-7dbe-4558-8794-e49ff7628922
0d3830d7-465e-4271-847e-777dd464da42	2026-08-18 16:54:33.207754+00	2026-08-18 16:54:33.207754+00	password	a7f3073a-0050-486f-8217-29703b306855
4742f997-6b4a-420f-ba96-2f65c3fe0258	2026-08-21 12:54:17.036536+00	2026-08-21 12:54:17.036536+00	password	eb287d0f-56e2-4fd3-8e52-084b18d79080
f9df35fb-6c6b-4de9-aa0b-8cf606e72e3c	2026-08-21 13:16:29.045651+00	2026-08-21 13:16:29.045651+00	anonymous	0295daf6-7d97-4c42-b7c1-1ebecb404033
8c83dafa-a112-4838-b0d8-70ae6f7d5a9d	2026-08-21 20:14:53.728287+00	2026-08-21 20:14:53.728287+00	password	4cf6545e-a165-4134-9663-fde3f61a9d98
5af4d3b0-8389-4df3-ba5c-280bc3e9a759	2026-08-25 12:07:24.998196+00	2026-08-25 12:07:24.998196+00	password	9f117ee4-4495-4f7c-8222-3c596eaa5c9b
68382044-2a13-4b72-83c4-20eccadb1f7c	2026-08-25 12:17:03.941533+00	2026-08-25 12:17:03.941533+00	password	b0d1ab40-af87-4222-86d0-30ff86013cbf
7d76fbf9-3160-491d-bd82-4e33ec819fa3	2026-08-25 17:19:09.960332+00	2026-08-25 17:19:09.960332+00	password	55c50e2d-c908-43c5-99fe-f8f651793cdc
49e0ecc1-8f7b-4396-a0f3-1dde64ccd989	2026-08-25 17:25:25.956488+00	2026-08-25 17:25:25.956488+00	password	ca091713-2b63-4091-ad4d-570ed9c46c30
59fc7fff-d53a-4388-b632-0b2b9ed1bb76	2026-08-25 19:50:33.649342+00	2026-08-25 19:50:33.649342+00	password	85aba17b-412c-4875-bbb1-63a78ca81a0c
f035b5d2-bf99-4c29-90e8-432e988e7eb2	2026-08-28 20:25:39.046741+00	2026-08-28 20:25:39.046741+00	password	bda414d6-4a03-4f97-a0d3-18867e3892c5
223323a2-7820-484d-9669-a2a1e9c8d39c	2026-09-04 13:35:00.763853+00	2026-09-04 13:35:00.763853+00	password	16934301-6a67-4692-a1ab-ee01ec475c7f
4b75bcda-6ca6-43f0-9e72-238a0dcf120c	2026-09-19 11:23:17.532248+00	2026-09-19 11:23:17.532248+00	password	62d160d9-8869-4de0-ae2b-3c077e031789
7115385d-0578-4399-a7ee-058d5e271002	2026-09-21 12:09:15.770418+00	2026-09-21 12:09:15.770418+00	password	98e96ac7-d524-4437-b0bf-2e30bb3cb59b
b419d00b-1b6d-4227-a989-9f8a8b45e348	2026-09-21 12:28:58.963659+00	2026-09-21 12:28:58.963659+00	password	ecb81a6b-c043-4259-9aad-9fb04dc631aa
bab684e8-64cf-47b6-973a-b1ca907d88cd	2026-09-22 11:31:54.800887+00	2026-09-22 11:31:54.800887+00	password	c22995fd-827e-4620-b6d3-d5b2408175a7
1caf2bd2-bfa9-4e5c-88cb-9b639f989ff2	2026-09-22 11:59:23.710707+00	2026-09-22 11:59:23.710707+00	anonymous	6ef0b85d-7d19-4c0a-b8bb-3712d8a90123
4f6e2acb-69d3-4e51-b788-0f0d2ebe76a7	2026-09-22 12:12:04.550007+00	2026-09-22 12:12:04.550007+00	oauth	e6ca4836-32d5-428e-88b8-24428f516f7c
b1bbe088-5401-43a5-b81e-325008cc9272	2026-09-26 13:27:12.331216+00	2026-09-26 13:27:12.331216+00	oauth	2728e634-1f09-4301-bbd5-01db65ff361c
bf39c2de-cf36-4fd3-85db-bde8a03af94f	2026-09-30 11:47:31.077357+00	2026-09-30 11:47:31.077357+00	password	afeab5da-c8c4-405b-a880-986812bf2037
eea0881d-1346-4eab-b369-db7a76144b4e	2026-10-01 19:03:42.443957+00	2026-10-01 19:03:42.443957+00	password	493b2efd-969e-4b85-ae0c-13d0e672093a
3177d3a5-0d45-47f0-bba5-87477759534b	2026-10-04 11:06:57.23337+00	2026-10-04 11:06:57.23337+00	password	41d63ff0-458e-488e-89ec-ed6909ed8657
4de59ee5-e70d-4156-b3df-7cb9275af4f4	2026-10-04 11:16:31.925075+00	2026-10-04 11:16:31.925075+00	anonymous	49096317-8e8c-4f5f-93c8-fa576868ed1e
d88c8e35-6b23-4f79-9e18-d57dd9e03f2c	2026-10-04 12:10:46.368296+00	2026-10-04 12:10:46.368296+00	anonymous	fbf49b0f-98e1-4238-952f-3cb9f2f5d104
1ef22c45-e47d-4b06-a4b5-c43a10c08e9d	2026-10-04 12:54:35.461386+00	2026-10-04 12:54:35.461386+00	oauth	a870052c-cd9e-454f-b0ed-cabe800e7aeb
afc032ef-8773-4f22-b1bf-051be097b354	2026-10-06 18:03:39.182873+00	2026-10-06 18:03:39.182873+00	oauth	1cd397d9-490b-43c9-8296-5937a25b9d35
253ec1ff-fd20-433f-8dec-e8b721305907	2026-10-14 12:17:27.705778+00	2026-10-14 12:17:27.705778+00	anonymous	11376d0e-1ed8-4caa-af8c-965e7a563853
181b9a72-1b30-41a9-9337-4c45b44ecfd0	2026-10-14 13:35:26.532142+00	2026-10-14 13:35:26.532142+00	oauth	3b791772-9b09-462f-84dd-8cab5b6e2d71
e578eb17-2f80-4ceb-a5ca-4f52bdd66087	2026-10-14 16:12:48.0927+00	2026-10-14 16:12:48.0927+00	oauth	cd6a25dc-9185-4caf-9215-213eaa541100
623d4725-6708-4c51-a4a7-be5370bc4e19	2026-10-15 11:02:37.881388+00	2026-10-15 11:02:37.881388+00	password	a69026b0-7e7c-40d2-8bcc-8951209d2226
e94c548d-7582-4c99-b518-62b401435a74	2026-10-15 13:24:38.499049+00	2026-10-15 13:24:38.499049+00	oauth	46b72f58-ccd1-4c44-b8b8-59e2a3628fc3
0e7900b6-06f6-42e4-bcc1-3947bfa87c43	2026-10-15 23:02:39.017537+00	2026-10-15 23:02:39.017537+00	oauth	c923860e-92a9-4031-b792-fb58fc758f29
f7600d22-7ea9-497f-a5bd-775514a7f3ca	2026-10-16 11:11:44.805427+00	2026-10-16 11:11:44.805427+00	oauth	97c570c8-47d4-4e0f-8294-68e024cc60d4
46d9279f-0b12-4bf7-bf68-b006e47447f1	2026-10-17 15:26:25.268255+00	2026-10-17 15:26:25.268255+00	oauth	ecafb5f0-d555-4ecc-b9e2-286b5bb64972
1517ebcc-683d-4679-b7bc-078bd35ed7af	2026-10-19 22:18:54.023144+00	2026-10-19 22:18:54.023144+00	oauth	bc4456f2-e62f-49c3-aff7-85196ae25c9a
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: mfa_recovery_code_sets; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_recovery_code_sets" ("id", "user_id", "mfa_factor_id", "failed_verification_count", "verification_locked_until", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: mfa_recovery_codes; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_recovery_codes" ("id", "mfa_recovery_code_set_id", "code_hash", "consumed_at", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	1	4kxm4hvbqzex	f9fe9e25-fdd7-47bd-98f4-37341fe62e8e	f	2026-07-11 21:09:11.190081+00	2026-07-11 21:09:11.190081+00	\N	14d797c6-7f0b-4747-93bf-691c9440bc03
00000000-0000-0000-0000-000000000000	283	r3qw67vq4fqg	3924c36d-82d6-4b65-b441-61a63256cf68	f	2026-08-18 15:47:52.550176+00	2026-08-18 15:47:52.550176+00	\N	719a71a0-e133-4519-885b-4d8edf5c63ef
00000000-0000-0000-0000-000000000000	2	crohsde6f4es	b4bccc57-39f2-48ff-a63d-2f590207bf63	t	2026-07-11 21:36:43.637069+00	2026-07-11 22:36:07.465889+00	\N	f868bad4-e139-4199-85bf-1968160a367c
00000000-0000-0000-0000-000000000000	288	chsj6ztcxssi	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-19 11:58:31.045413+00	2026-08-19 12:57:58.02654+00	w5ehlumaph5j	0d3830d7-465e-4271-847e-777dd464da42
00000000-0000-0000-0000-000000000000	3	fqecjz4pjcnq	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-11 21:58:05.701151+00	2026-07-11 23:10:23.15594+00	\N	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	290	albillvyjz75	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-19 13:57:31.45703+00	2026-08-19 14:56:58.105212+00	xi2jesicmoyl	0d3830d7-465e-4271-847e-777dd464da42
00000000-0000-0000-0000-000000000000	292	box2q2ctlrlv	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-20 07:47:29.341053+00	2026-08-20 11:52:39.245362+00	bsf2kff2iz2n	0d3830d7-465e-4271-847e-777dd464da42
00000000-0000-0000-0000-000000000000	6	dflm4ls4opoq	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-11 23:10:23.162932+00	2026-07-12 00:36:36.523185+00	fqecjz4pjcnq	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	294	e3ayh67mgnzp	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-21 12:54:16.982359+00	2026-08-21 12:54:16.982359+00	\N	4742f997-6b4a-420f-ba96-2f65c3fe0258
00000000-0000-0000-0000-000000000000	296	z3bdn7ti7cy2	687cbee6-3f81-49a1-9915-c7babd17b096	t	2026-08-21 18:37:20.760371+00	2026-08-21 19:36:42.467479+00	fotsjpmwxczz	f9df35fb-6c6b-4de9-aa0b-8cf606e72e3c
00000000-0000-0000-0000-000000000000	8	muatvej72y54	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-12 00:36:36.533192+00	2026-07-12 11:49:24.737038+00	dflm4ls4opoq	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	11	kohzurmo4vv5	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-12 11:49:24.738247+00	2026-07-12 12:48:46.111681+00	muatvej72y54	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	12	725kjezqzxha	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-12 12:48:46.121366+00	2026-07-12 14:51:57.710981+00	kohzurmo4vv5	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	16	u6yny4no5ksg	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-12 15:18:52.566531+00	2026-07-12 16:18:12.710725+00	\N	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	15	bemh43fvhzcw	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-12 14:51:57.719629+00	2026-07-12 16:48:06.611513+00	725kjezqzxha	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	17	qpjp22wdh65u	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-12 16:18:12.717746+00	2026-07-12 18:19:58.489374+00	u6yny4no5ksg	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	18	tsadur74u7g3	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-12 16:48:06.621298+00	2026-07-12 18:53:40.635319+00	bemh43fvhzcw	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	19	bjmsoobv6y3r	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-12 18:19:58.503695+00	2026-07-12 19:19:24.644896+00	qpjp22wdh65u	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	20	6a67jivw546g	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-12 18:53:40.645505+00	2026-07-12 20:02:01.623649+00	tsadur74u7g3	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	21	w5bhut2zgkjl	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-12 19:19:24.649529+00	2026-07-12 20:18:50.055672+00	bjmsoobv6y3r	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	22	whjlkikqu65o	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-12 20:02:01.637415+00	2026-07-12 21:25:10.158207+00	6a67jivw546g	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	23	qrej55i6zw4m	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-12 20:18:50.06294+00	2026-07-13 05:42:07.70578+00	w5bhut2zgkjl	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	25	uprvqkwpvu7u	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-13 05:42:07.721734+00	2026-07-13 11:24:36.349908+00	qrej55i6zw4m	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	26	p6fo3wszt3om	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-13 11:24:36.366377+00	2026-07-13 12:24:06.195168+00	uprvqkwpvu7u	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	27	zs6dv25wsndq	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-13 12:24:06.20544+00	2026-07-13 13:39:20.023363+00	p6fo3wszt3om	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	28	whbij7dwqzhr	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-13 13:39:20.029421+00	2026-07-13 19:36:47.452856+00	zs6dv25wsndq	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	29	qmoa72f7eogi	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-13 19:36:47.469444+00	2026-07-14 01:31:43.70495+00	whbij7dwqzhr	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	30	j3ojns6sul53	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-14 01:31:43.717379+00	2026-07-14 12:32:43.91339+00	qmoa72f7eogi	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	31	lh72gnygiwaw	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-14 12:32:43.93953+00	2026-07-14 13:32:06.522227+00	j3ojns6sul53	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	32	hpty64quazfv	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-14 13:32:06.53511+00	2026-07-14 14:31:36.165704+00	lh72gnygiwaw	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	33	tdi2wclz6slz	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-14 14:31:36.173268+00	2026-07-14 15:30:58.572053+00	hpty64quazfv	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	34	oaqis66dl7i6	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-14 15:30:58.582269+00	2026-07-14 16:30:21.924407+00	tdi2wclz6slz	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	4	i3jkjujjdihd	b4bccc57-39f2-48ff-a63d-2f590207bf63	t	2026-07-11 22:36:07.476885+00	2026-07-14 17:11:14.699673+00	crohsde6f4es	f868bad4-e139-4199-85bf-1968160a367c
00000000-0000-0000-0000-000000000000	35	shltlgszmhtt	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-14 16:30:21.952571+00	2026-07-14 17:29:50.021402+00	oaqis66dl7i6	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	37	yci7r3bg2vf3	4d232a2d-8098-49d9-bc3b-de632f24baf5	t	2026-07-14 17:29:50.029528+00	2026-07-14 18:29:17.361328+00	shltlgszmhtt	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	38	2q6vte6aweze	4d232a2d-8098-49d9-bc3b-de632f24baf5	f	2026-07-14 18:29:17.368973+00	2026-07-14 18:29:17.368973+00	yci7r3bg2vf3	8610f14d-6de5-4a0b-80c8-b06a64fc7b51
00000000-0000-0000-0000-000000000000	36	aq4ufqfxtasu	b4bccc57-39f2-48ff-a63d-2f590207bf63	t	2026-07-14 17:11:14.707791+00	2026-07-14 18:34:33.280116+00	i3jkjujjdihd	f868bad4-e139-4199-85bf-1968160a367c
00000000-0000-0000-0000-000000000000	24	5smwxxttn7ms	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-12 21:25:10.173655+00	2026-07-14 18:43:27.558794+00	whjlkikqu65o	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	39	e3q33vdvfrpf	b4bccc57-39f2-48ff-a63d-2f590207bf63	t	2026-07-14 18:34:33.285216+00	2026-07-14 21:24:43.093632+00	aq4ufqfxtasu	f868bad4-e139-4199-85bf-1968160a367c
00000000-0000-0000-0000-000000000000	40	233euuw44qbv	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-14 18:43:27.560224+00	2026-07-14 21:46:17.857401+00	5smwxxttn7ms	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	42	nentdsvuc32w	78a889a2-77ed-4084-912b-825ac3ec4a68	t	2026-07-14 21:29:57.933343+00	2026-07-14 22:29:21.667564+00	\N	6e01311b-eb9c-4664-8462-86f4f21c65e0
00000000-0000-0000-0000-000000000000	44	kfmnz3cmhzts	78a889a2-77ed-4084-912b-825ac3ec4a68	t	2026-07-14 22:29:21.681237+00	2026-07-14 23:34:45.77904+00	nentdsvuc32w	6e01311b-eb9c-4664-8462-86f4f21c65e0
00000000-0000-0000-0000-000000000000	41	ozdzhaz7sw36	b4bccc57-39f2-48ff-a63d-2f590207bf63	t	2026-07-14 21:24:43.108923+00	2026-07-14 23:35:17.591393+00	e3q33vdvfrpf	f868bad4-e139-4199-85bf-1968160a367c
00000000-0000-0000-0000-000000000000	45	wipcgwb7h4y3	78a889a2-77ed-4084-912b-825ac3ec4a68	t	2026-07-14 23:34:45.795902+00	2026-07-15 01:09:02.278257+00	kfmnz3cmhzts	6e01311b-eb9c-4664-8462-86f4f21c65e0
00000000-0000-0000-0000-000000000000	47	mvdhbxb7b3pr	78a889a2-77ed-4084-912b-825ac3ec4a68	t	2026-07-15 01:09:02.295329+00	2026-07-15 03:45:46.172995+00	wipcgwb7h4y3	6e01311b-eb9c-4664-8462-86f4f21c65e0
00000000-0000-0000-0000-000000000000	48	zngoegpg4poo	78a889a2-77ed-4084-912b-825ac3ec4a68	f	2026-07-15 03:45:46.189193+00	2026-07-15 03:45:46.189193+00	mvdhbxb7b3pr	6e01311b-eb9c-4664-8462-86f4f21c65e0
00000000-0000-0000-0000-000000000000	46	6dhz2cnsjyxg	b4bccc57-39f2-48ff-a63d-2f590207bf63	t	2026-07-14 23:35:17.591883+00	2026-07-15 10:03:00.295941+00	ozdzhaz7sw36	f868bad4-e139-4199-85bf-1968160a367c
00000000-0000-0000-0000-000000000000	50	z35uy5od6l3o	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 11:14:18.755432+00	2026-07-15 12:13:51.193902+00	\N	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	49	cihjxaubtgys	b4bccc57-39f2-48ff-a63d-2f590207bf63	t	2026-07-15 10:03:00.312314+00	2026-07-16 12:07:01.67601+00	6dhz2cnsjyxg	f868bad4-e139-4199-85bf-1968160a367c
00000000-0000-0000-0000-000000000000	43	qylgdrotalv4	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-14 21:46:17.865785+00	2026-07-17 00:46:38.770717+00	233euuw44qbv	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	70	wm4smmre4hge	e8d4db78-2746-4f26-9981-0d62cc2b2638	t	2026-07-17 04:01:11.364097+00	2026-07-17 11:41:15.281106+00	ffrkzvt3f4lc	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	51	n7fvzyhknhpv	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 12:13:51.212355+00	2026-07-15 13:13:15.623441+00	z35uy5od6l3o	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	71	uj7sonsef5x4	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-17 09:47:18.611787+00	2026-07-17 12:29:34.323966+00	nipyxeoutbnu	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	52	kfewigdfokfz	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 13:13:15.637254+00	2026-07-15 14:12:44.914599+00	n7fvzyhknhpv	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	53	de3wkdok34h2	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 14:12:44.92506+00	2026-07-15 15:12:10.738706+00	kfewigdfokfz	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	72	bxhvmznhtqex	e8d4db78-2746-4f26-9981-0d62cc2b2638	t	2026-07-17 11:41:15.291667+00	2026-07-17 13:12:51.163543+00	wm4smmre4hge	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	54	npsrds736wol	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 15:12:10.754067+00	2026-07-15 16:11:41.996877+00	de3wkdok34h2	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	74	7k3g23qh25yu	e8d4db78-2746-4f26-9981-0d62cc2b2638	f	2026-07-17 13:12:51.183901+00	2026-07-17 13:12:51.183901+00	bxhvmznhtqex	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	55	7f2jqa74cgls	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 16:11:42.009934+00	2026-07-15 17:11:12.794262+00	npsrds736wol	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	56	s7nvb4ie5wed	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 17:11:12.815321+00	2026-07-15 18:10:39.453982+00	7f2jqa74cgls	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	75	3zngfp2r42gi	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-17 19:11:41.189536+00	2026-07-17 20:11:10.50719+00	\N	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	57	kumcvwxzqidc	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 18:10:39.47735+00	2026-07-15 19:10:09.608913+00	s7nvb4ie5wed	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	58	3kxcr73ri2c4	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 19:10:09.6212+00	2026-07-15 20:09:40.454866+00	kumcvwxzqidc	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	76	gxuaoz746kh7	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-17 20:11:10.51453+00	2026-07-17 21:10:31.591446+00	3zngfp2r42gi	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	59	n24ac6hg6zpt	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	t	2026-07-15 20:09:40.465081+00	2026-07-16 11:25:43.216909+00	3kxcr73ri2c4	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	60	vqdjcqrn6hnj	ba3a20fc-8852-4f3c-bcde-15a0f571d3cd	f	2026-07-16 11:25:43.232589+00	2026-07-16 11:25:43.232589+00	n24ac6hg6zpt	0654af1f-d185-4596-bd15-d1ecefbde8d6
00000000-0000-0000-0000-000000000000	61	b2z5q7o5lgc4	b4bccc57-39f2-48ff-a63d-2f590207bf63	f	2026-07-16 12:07:01.689757+00	2026-07-16 12:07:01.689757+00	cihjxaubtgys	f868bad4-e139-4199-85bf-1968160a367c
00000000-0000-0000-0000-000000000000	62	bvb5vzfxwjdx	c5a07f1b-a1ab-4619-a6f2-f001e7c9f528	f	2026-07-16 12:08:48.234676+00	2026-07-16 12:08:48.234676+00	\N	0b47d052-ae8f-4f69-b937-7bcfc2686cc3
00000000-0000-0000-0000-000000000000	63	uzpf7ob4govx	e8d4db78-2746-4f26-9981-0d62cc2b2638	t	2026-07-16 12:56:50.180697+00	2026-07-16 13:56:15.586324+00	\N	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	77	hy4obudyy3mk	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-17 21:10:31.603709+00	2026-07-18 00:07:25.265963+00	gxuaoz746kh7	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	64	p5f3cm2sw52u	e8d4db78-2746-4f26-9981-0d62cc2b2638	t	2026-07-16 13:56:15.607148+00	2026-07-16 19:20:09.801661+00	uzpf7ob4govx	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	65	oovlvlfjwwe3	e8d4db78-2746-4f26-9981-0d62cc2b2638	t	2026-07-16 19:20:09.822738+00	2026-07-16 20:19:37.946104+00	p5f3cm2sw52u	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	73	q2ri4xpjr7k7	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-17 12:29:34.336944+00	2026-07-18 00:56:56.541546+00	uj7sonsef5x4	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	66	osf7wptwhjch	e8d4db78-2746-4f26-9981-0d62cc2b2638	t	2026-07-16 20:19:37.95415+00	2026-07-16 21:19:03.205302+00	oovlvlfjwwe3	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	67	7ikrybdjobsz	e8d4db78-2746-4f26-9981-0d62cc2b2638	t	2026-07-16 21:19:03.2137+00	2026-07-16 22:18:29.824237+00	osf7wptwhjch	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	78	at6av3cpdmcf	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-18 00:07:25.278674+00	2026-07-18 11:11:44.824175+00	hy4obudyy3mk	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	68	ffrkzvt3f4lc	e8d4db78-2746-4f26-9981-0d62cc2b2638	t	2026-07-16 22:18:29.838723+00	2026-07-17 04:01:11.343105+00	7ikrybdjobsz	f5e0dda1-3777-4e04-9404-e0981c25b79d
00000000-0000-0000-0000-000000000000	69	nipyxeoutbnu	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-17 00:46:38.781126+00	2026-07-17 09:47:18.593909+00	qylgdrotalv4	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	80	r34q4ewfhy4t	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-18 11:11:44.849059+00	2026-07-18 15:43:26.873279+00	at6av3cpdmcf	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	81	b3y43gzougrw	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-18 15:43:26.890574+00	2026-07-18 20:48:48.289021+00	r34q4ewfhy4t	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	82	urbdt5alwzsp	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-18 20:48:48.309422+00	2026-07-18 22:12:45.912446+00	b3y43gzougrw	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	83	4l3lpxnsw6bx	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-18 22:12:45.928559+00	2026-07-19 11:25:44.708335+00	urbdt5alwzsp	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	79	fe7oajsr5khp	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-18 00:56:56.548345+00	2026-07-19 11:35:45.064784+00	q2ri4xpjr7k7	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	84	lcxswhpq7lkm	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-19 11:25:44.723792+00	2026-07-19 12:25:12.923036+00	4l3lpxnsw6bx	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	86	4qv7gccy7s7i	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-19 12:25:12.937569+00	2026-07-19 13:24:43.318211+00	lcxswhpq7lkm	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	87	c5burozq4ntv	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-19 13:24:43.327643+00	2026-07-19 14:24:11.580197+00	4qv7gccy7s7i	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	88	5wmd52pj3zul	7f5327b5-9f53-42d5-ba8e-395ec0566747	t	2026-07-19 14:24:11.595607+00	2026-07-19 17:59:25.806379+00	c5burozq4ntv	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	89	2rx42gaikxi6	7f5327b5-9f53-42d5-ba8e-395ec0566747	f	2026-07-19 17:59:25.824847+00	2026-07-19 17:59:25.824847+00	5wmd52pj3zul	5f99c6b3-6aef-4673-8120-2b397b2fc4ff
00000000-0000-0000-0000-000000000000	90	yxvcjj7552qp	8c09d9b3-25fb-4c72-9c8f-34362bc2a3d0	f	2026-07-19 18:40:10.207637+00	2026-07-19 18:40:10.207637+00	\N	d5e16a62-3c8d-406f-96de-ea9abf776721
00000000-0000-0000-0000-000000000000	91	6d5fnm6ub3lx	7d16cba3-cb8c-406c-89ee-0c428708a28a	f	2026-07-19 18:50:24.289991+00	2026-07-19 18:50:24.289991+00	\N	f2f7f3a6-a425-4604-b7e5-e2916f7d27f7
00000000-0000-0000-0000-000000000000	92	k3arzngancou	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-19 19:06:24.588511+00	2026-07-19 20:05:49.823013+00	\N	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	93	epqbtyzi35ql	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-19 20:05:49.832931+00	2026-07-19 21:05:13.396549+00	k3arzngancou	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	94	ywldhyruwexx	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-19 21:05:13.409132+00	2026-07-19 23:53:56.797143+00	epqbtyzi35ql	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	85	jbn5pzrcoys3	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-19 11:35:45.070605+00	2026-07-20 06:11:47.991777+00	fe7oajsr5khp	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	95	nwu742l3nabe	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-19 23:53:56.807957+00	2026-07-20 10:50:26.58525+00	ywldhyruwexx	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	97	zshjxb76rrlj	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-20 10:50:26.598932+00	2026-07-20 14:40:07.007697+00	nwu742l3nabe	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	98	pgtd6gm6sdyu	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-20 14:40:07.020161+00	2026-07-20 15:39:34.37868+00	zshjxb76rrlj	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	99	jlwe472gn2ru	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-20 15:39:34.395708+00	2026-07-20 16:44:20.377737+00	pgtd6gm6sdyu	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	100	6tonzil4fmqv	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-20 16:44:20.400168+00	2026-07-20 18:22:09.062325+00	jlwe472gn2ru	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	101	ex6e5upgbhvk	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-20 18:22:09.076403+00	2026-07-20 23:54:48.318269+00	6tonzil4fmqv	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	96	lrsjsip25tuh	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-20 06:11:48.009563+00	2026-07-30 21:22:47.814043+00	jbn5pzrcoys3	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	162	yhxhx77nk6nz	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 18:42:07.343654+00	2026-08-08 22:05:20.7321+00	k4kz4db566lf	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	102	ac5hckwmr4dk	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-20 23:54:48.335961+00	2026-07-21 08:40:19.770903+00	ex6e5upgbhvk	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	284	k53wxqvtxtm3	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-18 15:52:02.56176+00	2026-08-18 15:52:02.56176+00	\N	bc327a9c-dbd3-4758-8c67-86de68305e73
00000000-0000-0000-0000-000000000000	103	homcdonbrcav	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-21 08:40:19.784628+00	2026-07-21 11:31:35.348364+00	ac5hckwmr4dk	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	104	f6xh3r4mabgw	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-21 11:31:35.360985+00	2026-07-21 12:31:04.911831+00	homcdonbrcav	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	105	44mifejsia6b	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-21 12:31:04.927638+00	2026-07-22 14:12:59.817498+00	f6xh3r4mabgw	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	106	y5migzx7dc3n	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-22 14:12:59.839068+00	2026-07-22 15:12:26.195349+00	44mifejsia6b	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	107	xushmck27oyv	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-22 15:12:26.201333+00	2026-07-22 16:11:48.020307+00	y5migzx7dc3n	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	108	mkvgwn6bjimd	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-22 16:11:48.031186+00	2026-07-23 14:03:30.341555+00	xushmck27oyv	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	109	jxghtkuspxhj	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-23 14:03:30.358451+00	2026-07-23 15:02:56.092526+00	mkvgwn6bjimd	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	110	in45ka644idr	557bc788-cc94-4bae-b085-9e3d2d9d08db	t	2026-07-23 15:02:56.103089+00	2026-07-23 18:08:55.361079+00	jxghtkuspxhj	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	111	32jeh42524s5	557bc788-cc94-4bae-b085-9e3d2d9d08db	f	2026-07-23 18:08:55.378791+00	2026-07-23 18:08:55.378791+00	in45ka644idr	b0532c57-b5dc-4d6b-b068-f9ba81f19bfa
00000000-0000-0000-0000-000000000000	112	epzevzha4k46	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-07-30 20:16:09.645692+00	2026-07-30 21:15:37.322985+00	\N	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	113	zgievjprjkmw	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-07-30 21:15:37.334605+00	2026-07-31 00:04:24.884726+00	epzevzha4k46	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	114	oyl5bsv3x2m6	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-30 21:22:47.827775+00	2026-07-31 00:44:22.286665+00	lrsjsip25tuh	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	115	e3dwz4gflr47	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-07-31 00:04:24.908571+00	2026-07-31 04:16:55.990123+00	zgievjprjkmw	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	117	skoc3t5m2aq7	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-07-31 04:16:56.009073+00	2026-07-31 09:20:48.898807+00	e3dwz4gflr47	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	118	ng4bytxmvz5c	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-07-31 09:20:48.911073+00	2026-07-31 11:15:51.467887+00	skoc3t5m2aq7	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	119	aylvrkrt3vxu	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-07-31 11:15:51.480125+00	2026-08-01 09:19:29.393678+00	ng4bytxmvz5c	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	120	hz6snfvyxlac	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-08-01 09:19:29.416303+00	2026-08-01 10:18:58.654947+00	aylvrkrt3vxu	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	121	76ygespn2z57	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-08-01 10:18:58.671253+00	2026-08-01 11:18:26.674553+00	hz6snfvyxlac	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	122	k5d324mqpjw2	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	t	2026-08-01 11:18:26.685278+00	2026-08-01 12:17:56.758742+00	76ygespn2z57	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	123	aw4chwi5qnv3	4347c4e3-ded6-44c5-9bf6-68cc8f0a116b	f	2026-08-01 12:17:56.771714+00	2026-08-01 12:17:56.771714+00	k5d324mqpjw2	08d92a17-6171-4c51-948e-89ee34781fa5
00000000-0000-0000-0000-000000000000	124	t4pfwe64ufhg	9a569501-5d48-4347-86c9-af1ae3ecf848	t	2026-08-02 16:43:25.534364+00	2026-08-02 21:10:15.636162+00	\N	4c74b30a-7a55-49c5-9602-45aa63f2cd0f
00000000-0000-0000-0000-000000000000	125	cjnthxbclxvf	9a569501-5d48-4347-86c9-af1ae3ecf848	t	2026-08-02 21:10:15.657586+00	2026-08-04 06:53:45.324416+00	t4pfwe64ufhg	4c74b30a-7a55-49c5-9602-45aa63f2cd0f
00000000-0000-0000-0000-000000000000	126	ijf6zotsopux	9a569501-5d48-4347-86c9-af1ae3ecf848	t	2026-08-04 06:53:45.349169+00	2026-08-04 07:53:09.361236+00	cjnthxbclxvf	4c74b30a-7a55-49c5-9602-45aa63f2cd0f
00000000-0000-0000-0000-000000000000	127	4rdx7dkapdzb	9a569501-5d48-4347-86c9-af1ae3ecf848	t	2026-08-04 07:53:09.371982+00	2026-08-04 09:35:09.84242+00	ijf6zotsopux	4c74b30a-7a55-49c5-9602-45aa63f2cd0f
00000000-0000-0000-0000-000000000000	128	z773uo4byulc	9a569501-5d48-4347-86c9-af1ae3ecf848	t	2026-08-04 09:35:09.855302+00	2026-08-04 10:39:09.458135+00	4rdx7dkapdzb	4c74b30a-7a55-49c5-9602-45aa63f2cd0f
00000000-0000-0000-0000-000000000000	129	xk53n2dqxrs5	9a569501-5d48-4347-86c9-af1ae3ecf848	t	2026-08-04 10:39:09.469359+00	2026-08-04 14:33:33.322974+00	z773uo4byulc	4c74b30a-7a55-49c5-9602-45aa63f2cd0f
00000000-0000-0000-0000-000000000000	130	seloo4423jk7	9a569501-5d48-4347-86c9-af1ae3ecf848	f	2026-08-04 14:33:33.337444+00	2026-08-04 14:33:33.337444+00	xk53n2dqxrs5	4c74b30a-7a55-49c5-9602-45aa63f2cd0f
00000000-0000-0000-0000-000000000000	116	vp7lorou3xcf	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-07-31 00:44:22.305124+00	2026-08-04 22:28:46.803656+00	oyl5bsv3x2m6	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	134	3sc2lye2jjwj	82c82a35-06a3-429b-a2b7-9893d9906642	f	2026-08-05 10:20:44.913016+00	2026-08-05 10:20:44.913016+00	\N	c36f5650-def5-478e-b953-d9a819649443
00000000-0000-0000-0000-000000000000	132	uvbnwoyt52o4	7c56c105-48c3-4ef7-bd63-79a7f7119fcb	t	2026-08-04 20:24:29.816379+00	2026-08-05 10:42:41.873123+00	\N	a408942a-29bc-4895-b13c-ee2ba76ea896
00000000-0000-0000-0000-000000000000	135	rhjvkflyfovx	7c56c105-48c3-4ef7-bd63-79a7f7119fcb	t	2026-08-05 10:42:41.891401+00	2026-08-07 11:48:42.355449+00	uvbnwoyt52o4	a408942a-29bc-4895-b13c-ee2ba76ea896
00000000-0000-0000-0000-000000000000	136	zilgao7os3s3	7c56c105-48c3-4ef7-bd63-79a7f7119fcb	f	2026-08-07 11:48:42.377428+00	2026-08-07 11:48:42.377428+00	rhjvkflyfovx	a408942a-29bc-4895-b13c-ee2ba76ea896
00000000-0000-0000-0000-000000000000	131	zfbk24osnjoa	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-04 15:38:46.427366+00	2026-08-07 12:31:25.278687+00	\N	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	137	obvkx7vlmst4	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 12:31:25.28914+00	2026-08-07 13:30:56.163373+00	zfbk24osnjoa	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	138	gla7uv3ypzz3	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 13:30:56.177855+00	2026-08-07 14:30:21.862904+00	obvkx7vlmst4	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	139	aanpw3zrjz5o	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 14:30:21.870173+00	2026-08-07 15:29:44.051562+00	gla7uv3ypzz3	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	140	eriwiwpizfyo	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 15:29:44.061837+00	2026-08-07 16:29:05.292637+00	aanpw3zrjz5o	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	141	gbhk32ypklsn	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 16:29:05.302798+00	2026-08-07 17:28:28.800841+00	eriwiwpizfyo	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	142	kvspnao3dcqf	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 17:28:28.822592+00	2026-08-07 18:27:58.538587+00	gbhk32ypklsn	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	143	tpanw23tuxjd	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 18:27:58.555384+00	2026-08-07 20:45:11.178456+00	kvspnao3dcqf	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	144	ruzeeqkemaj4	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 20:45:11.19206+00	2026-08-07 21:44:38.209374+00	tpanw23tuxjd	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	145	7av3yqrx5lsl	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 21:44:38.224624+00	2026-08-07 22:44:08.105743+00	ruzeeqkemaj4	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	146	hrtwh5njufsl	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 22:44:08.120477+00	2026-08-07 23:43:37.85956+00	7av3yqrx5lsl	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	147	4btiir33blaw	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-07 23:43:37.872693+00	2026-08-08 00:43:07.936504+00	hrtwh5njufsl	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	148	cfau3o4jygrg	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 00:43:07.948989+00	2026-08-08 01:55:41.775561+00	4btiir33blaw	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	149	bdu2kgpscujs	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 01:55:41.791738+00	2026-08-08 02:55:10.941575+00	cfau3o4jygrg	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	150	xo56h2yaie6a	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 02:55:10.953312+00	2026-08-08 03:55:21.278874+00	bdu2kgpscujs	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	151	nkboox7axwrl	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 03:55:21.295392+00	2026-08-08 04:56:04.576782+00	xo56h2yaie6a	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	161	k4kz4db566lf	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 17:42:36.461961+00	2026-08-08 18:42:07.333838+00	hqzyxeve5reo	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	152	46xlxfrxayt7	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 04:56:04.589301+00	2026-08-08 05:57:39.721868+00	nkboox7axwrl	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	285	c7xf3iynymbd	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-18 16:32:28.677731+00	2026-08-18 16:32:28.677731+00	\N	eed7f488-b534-4ea9-bfca-558a737fe9cb
00000000-0000-0000-0000-000000000000	153	tvaz4zxswpe6	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 05:57:39.733692+00	2026-08-08 06:58:20.759345+00	46xlxfrxayt7	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	133	xiu7friq2bvm	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-08-04 22:28:46.820101+00	2026-08-08 22:45:21.442304+00	vp7lorou3xcf	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	154	tzynrfjnflwh	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 06:58:20.774633+00	2026-08-08 08:00:44.035898+00	tvaz4zxswpe6	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	155	m6kpty37mfjp	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 08:00:44.053881+00	2026-08-08 09:00:40.138324+00	tzynrfjnflwh	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	163	m6fg2eo3zk4l	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 22:05:20.747157+00	2026-08-08 23:04:47.824046+00	yhxhx77nk6nz	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	156	l3utbtru7jau	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 09:00:40.150091+00	2026-08-08 10:02:07.272954+00	m6kpty37mfjp	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	157	porhjzc47nha	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 10:02:07.293722+00	2026-08-08 14:44:08.803124+00	l3utbtru7jau	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	165	thnqaj623goa	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 23:04:47.834217+00	2026-08-09 00:12:43.121228+00	m6fg2eo3zk4l	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	158	tmablucwsdvk	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 14:44:08.831283+00	2026-08-08 15:43:36.50853+00	porhjzc47nha	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	159	z2btmgs7ensb	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 15:43:36.53305+00	2026-08-08 16:43:06.385094+00	tmablucwsdvk	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	166	xrcxk3kifcyb	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 00:12:43.137417+00	2026-08-09 01:12:09.263267+00	thnqaj623goa	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	160	hqzyxeve5reo	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-08 16:43:06.397717+00	2026-08-08 17:42:36.446406+00	z2btmgs7ensb	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	167	5qpkfsd3batd	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 01:12:09.274192+00	2026-08-09 02:17:28.315794+00	xrcxk3kifcyb	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	168	bklnh4okribt	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 02:17:28.331849+00	2026-08-09 03:34:24.07168+00	5qpkfsd3batd	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	169	lwcak6kjjmdw	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 03:34:24.089282+00	2026-08-09 04:35:37.917596+00	bklnh4okribt	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	170	7ugiiolx42z2	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 04:35:37.930518+00	2026-08-09 05:44:08.172492+00	lwcak6kjjmdw	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	171	p6mvcwiccdcg	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 05:44:08.187719+00	2026-08-09 06:50:08.915598+00	7ugiiolx42z2	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	172	uiz6felusnut	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 06:50:08.927299+00	2026-08-09 07:53:51.431873+00	p6mvcwiccdcg	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	173	wjv546p7nf5n	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 07:53:51.453062+00	2026-08-09 08:54:51.695911+00	uiz6felusnut	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	174	zldugjovu26e	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 08:54:51.707937+00	2026-08-09 10:05:09.895625+00	wjv546p7nf5n	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	175	svx4s4lsjz6e	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 10:05:09.9065+00	2026-08-09 11:04:33.211788+00	zldugjovu26e	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	176	jdo4nef6mh43	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 11:04:33.226178+00	2026-08-09 12:03:57.744158+00	svx4s4lsjz6e	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	177	274bzm6huq73	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 12:03:57.752486+00	2026-08-09 13:03:21.921375+00	jdo4nef6mh43	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	178	oib7vwl5h7ke	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 13:03:21.932061+00	2026-08-09 14:09:05.29608+00	274bzm6huq73	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	179	kpmyc2f57edc	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 14:09:05.308002+00	2026-08-09 15:10:38.853597+00	oib7vwl5h7ke	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	164	gne7qrjk3xyx	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-08-08 22:45:21.452479+00	2026-08-09 15:19:23.957696+00	xiu7friq2bvm	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	180	xtgrt5e7gksv	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 15:10:38.871549+00	2026-08-09 16:13:33.072951+00	kpmyc2f57edc	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	182	4zfrm32bwdaw	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 16:13:33.090189+00	2026-08-09 17:12:56.34402+00	xtgrt5e7gksv	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	183	kfnau7lfyoy2	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 17:12:56.361078+00	2026-08-09 18:19:43.362376+00	4zfrm32bwdaw	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	184	4neyvuy2wdfy	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-09 18:19:43.386299+00	2026-08-10 07:26:42.629691+00	kfnau7lfyoy2	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	185	nm6osqdt5tgu	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 07:26:42.644009+00	2026-08-10 08:26:09.009232+00	4neyvuy2wdfy	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	186	wvunklwm5hrs	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 08:26:09.026348+00	2026-08-10 09:40:03.148102+00	nm6osqdt5tgu	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	187	266ocp5am6hx	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 09:40:03.160798+00	2026-08-10 10:47:03.155372+00	wvunklwm5hrs	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	188	izuitf4pcuhm	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 10:47:03.168556+00	2026-08-10 11:48:14.518434+00	266ocp5am6hx	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	189	hrnwlwciiwzo	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 11:48:14.527797+00	2026-08-10 12:50:59.216067+00	izuitf4pcuhm	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	190	u4rtdxdwkhko	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 12:50:59.229864+00	2026-08-10 13:50:28.353795+00	hrnwlwciiwzo	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	191	44yvmzewseof	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 13:50:28.366542+00	2026-08-10 14:49:58.224669+00	u4rtdxdwkhko	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	192	avn4p3kyobo3	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 14:49:58.238853+00	2026-08-10 16:01:34.69177+00	44yvmzewseof	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	193	dhdecgwc3fjp	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 16:01:34.710211+00	2026-08-10 17:02:17.579892+00	avn4p3kyobo3	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	194	yi2jggfhj77b	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 17:02:17.599901+00	2026-08-10 18:01:48.005273+00	dhdecgwc3fjp	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	195	lqygpjp4f32v	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 18:01:48.022205+00	2026-08-10 19:01:18.759531+00	yi2jggfhj77b	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	196	ug5r3o6athkj	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 19:01:18.774529+00	2026-08-10 20:00:48.363082+00	lqygpjp4f32v	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	197	qq4sa2c3rr2h	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 20:00:48.373965+00	2026-08-10 21:00:15.130082+00	ug5r3o6athkj	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	198	36kigmkt27fq	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 21:00:15.136537+00	2026-08-10 21:59:40.275662+00	qq4sa2c3rr2h	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	181	ofhuqhffqb4p	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-08-09 15:19:23.963587+00	2026-08-10 22:23:50.344723+00	gne7qrjk3xyx	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	199	iufzhe2mak3q	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 21:59:40.292099+00	2026-08-10 23:07:58.071119+00	36kigmkt27fq	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	201	wigcuqwu4u4u	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-10 23:07:58.090378+00	2026-08-11 00:13:59.577368+00	iufzhe2mak3q	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	200	qcknzkn42cxs	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-08-10 22:23:50.354641+00	2026-08-11 11:36:57.897022+00	ofhuqhffqb4p	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	286	2rgqmw6chdig	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-18 16:40:58.957944+00	2026-08-18 16:40:58.957944+00	\N	c6769c9f-b7bf-481c-adf3-b4fcaaf4527f
00000000-0000-0000-0000-000000000000	202	g3brglczmnko	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 00:13:59.596717+00	2026-08-11 01:21:24.030326+00	wigcuqwu4u4u	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	447	4avnbvdcx4vx	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-17 01:06:06.84855+00	2026-10-17 10:41:25.265541+00	gyw3iujhfeqi	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	203	zx4qxh3hotnd	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 01:21:24.044695+00	2026-08-11 02:28:39.790436+00	g3brglczmnko	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	204	5acfwsrnh7as	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 02:28:39.804371+00	2026-08-11 03:35:54.892745+00	zx4qxh3hotnd	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	205	3avik5dpqyaf	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 03:35:54.908223+00	2026-08-11 04:35:24.382839+00	5acfwsrnh7as	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	206	fishvzhlk4pz	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 04:35:24.396017+00	2026-08-11 05:41:47.151922+00	3avik5dpqyaf	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	207	77jcsyt6v3nw	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 05:41:47.1635+00	2026-08-11 06:44:59.498089+00	fishvzhlk4pz	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	208	qqyns2pyazot	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 06:44:59.516995+00	2026-08-11 07:52:14.578653+00	77jcsyt6v3nw	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	209	kmfgf33fnpmc	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 07:52:14.590187+00	2026-08-11 08:54:30.217321+00	qqyns2pyazot	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	210	x2gvdamwfvzz	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 08:54:30.230461+00	2026-08-11 09:56:20.520134+00	kmfgf33fnpmc	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	211	sh2eqnfvd2ry	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 09:56:20.533211+00	2026-08-11 10:55:43.190311+00	x2gvdamwfvzz	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	214	72nxwffydke3	ef11a1ae-bebd-4d41-aa6a-1f3d0163b1ff	f	2026-08-11 11:52:57.466229+00	2026-08-11 11:52:57.466229+00	\N	805ab050-4790-4ab2-a8f2-2bec83048402
00000000-0000-0000-0000-000000000000	215	grewwcpx3kit	ce7d15f3-d6c3-4b3d-9d93-8a29d6463e40	f	2026-08-11 12:23:00.914896+00	2026-08-11 12:23:00.914896+00	\N	b8373be1-287c-4e5b-8e6a-bb380db2cebf
00000000-0000-0000-0000-000000000000	212	6f2akdzpbypm	75c2e1f8-3b60-427a-8cc2-57c936d08817	t	2026-08-11 10:55:43.21688+00	2026-08-11 13:35:28.99173+00	sh2eqnfvd2ry	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	216	mjn35ufpa6oo	75c2e1f8-3b60-427a-8cc2-57c936d08817	f	2026-08-11 13:35:29.013081+00	2026-08-11 13:35:29.013081+00	6f2akdzpbypm	e9bc0f07-205b-413b-b035-2a05532396fb
00000000-0000-0000-0000-000000000000	213	kcjctd3xknoh	812d3580-0fda-4153-a95a-ee525eb036ef	t	2026-08-11 11:36:57.913397+00	2026-08-11 16:54:09.169191+00	qcknzkn42cxs	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	217	wrtb7rlyi5sr	812d3580-0fda-4153-a95a-ee525eb036ef	f	2026-08-11 16:54:09.190304+00	2026-08-11 16:54:09.190304+00	kcjctd3xknoh	67934114-a680-4329-9655-02d314300c50
00000000-0000-0000-0000-000000000000	222	dpdkikuakhak	2b645b06-8f0f-460a-a5ed-351a21396cca	f	2026-08-11 20:16:02.904878+00	2026-08-11 20:16:02.904878+00	\N	bf3d1ada-8e84-4bde-9329-de21e01d81f7
00000000-0000-0000-0000-000000000000	224	ldv2yfpfncnc	09b1cc4a-f01d-4d65-b4b4-df31801b16ba	f	2026-08-11 20:20:42.527367+00	2026-08-11 20:20:42.527367+00	\N	94d45a00-9d37-40cc-a67c-27730ca19012
00000000-0000-0000-0000-000000000000	225	n5xrmo2tjpjr	9bef0cde-6915-43cb-a0d7-37b590f7f151	f	2026-08-11 20:44:58.32902+00	2026-08-11 20:44:58.32902+00	\N	a6b3ea90-f9c7-4a07-be4b-b2d255980206
00000000-0000-0000-0000-000000000000	226	albmdg6n6rn3	f544881d-7515-4568-a8f0-bb620f4cec66	f	2026-08-11 20:51:57.611786+00	2026-08-11 20:51:57.611786+00	\N	43b09ba7-cd36-4597-9e56-2917533fa0db
00000000-0000-0000-0000-000000000000	227	cscmljjoorym	f544881d-7515-4568-a8f0-bb620f4cec66	f	2026-08-11 20:53:22.119739+00	2026-08-11 20:53:22.119739+00	\N	a703e005-fac4-4c11-827a-d94f574674c7
00000000-0000-0000-0000-000000000000	229	uzfrd3wqojv5	f544881d-7515-4568-a8f0-bb620f4cec66	f	2026-08-11 20:56:55.860612+00	2026-08-11 20:56:55.860612+00	\N	543bfc50-e611-4926-b5aa-94e8638863ab
00000000-0000-0000-0000-000000000000	231	z5emdzk4756q	46fae9b4-ed74-4139-ba79-c207e73da2fb	f	2026-08-11 21:12:21.99654+00	2026-08-11 21:12:21.99654+00	\N	84bdb9dc-12e6-4359-ac79-01b30c7bcf83
00000000-0000-0000-0000-000000000000	232	r53nznlol6ur	f544881d-7515-4568-a8f0-bb620f4cec66	f	2026-08-11 21:12:57.880945+00	2026-08-11 21:12:57.880945+00	\N	c488e040-ce58-4b56-a1fa-040e44cadb1f
00000000-0000-0000-0000-000000000000	233	qzys2hedvjyr	45f6b261-2c1b-4c01-8e24-703d7bbc7f74	f	2026-08-11 21:21:26.068893+00	2026-08-11 21:21:26.068893+00	\N	880033f0-9ba8-47bd-8f94-31c51eb40c0e
00000000-0000-0000-0000-000000000000	234	jkhcpgj2hy24	f544881d-7515-4568-a8f0-bb620f4cec66	f	2026-08-11 21:22:41.531021+00	2026-08-11 21:22:41.531021+00	\N	5338a484-d8f0-4d5b-bc62-d2cfc70c9318
00000000-0000-0000-0000-000000000000	235	5mzyoff5cchn	8acd1e7c-40e6-400c-8429-9a7ba473299c	f	2026-08-11 21:30:06.230968+00	2026-08-11 21:30:06.230968+00	\N	d3aae800-200c-4ef7-a4b5-f28069e2c3ff
00000000-0000-0000-0000-000000000000	228	6nstfxsmgdvt	40ac697c-48ff-4f3a-b479-0e8c6d6ea3a0	t	2026-08-11 20:55:25.746282+00	2026-08-11 21:55:44.622709+00	\N	6f968b00-0f7d-41d9-9742-06c77df9c35e
00000000-0000-0000-0000-000000000000	238	tvleu65d77r7	40ac697c-48ff-4f3a-b479-0e8c6d6ea3a0	t	2026-08-11 21:55:44.641046+00	2026-08-12 01:26:02.23534+00	6nstfxsmgdvt	6f968b00-0f7d-41d9-9742-06c77df9c35e
00000000-0000-0000-0000-000000000000	239	45zijdiibjsr	40ac697c-48ff-4f3a-b479-0e8c6d6ea3a0	t	2026-08-12 01:26:02.246661+00	2026-08-12 04:29:18.035194+00	tvleu65d77r7	6f968b00-0f7d-41d9-9742-06c77df9c35e
00000000-0000-0000-0000-000000000000	240	dufndurni5ur	40ac697c-48ff-4f3a-b479-0e8c6d6ea3a0	f	2026-08-12 04:29:18.051696+00	2026-08-12 04:29:18.051696+00	45zijdiibjsr	6f968b00-0f7d-41d9-9742-06c77df9c35e
00000000-0000-0000-0000-000000000000	221	m7veipzuciqe	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-11 17:22:12.691885+00	2026-08-12 12:04:21.382756+00	\N	9a09387c-e53c-490b-a460-eb440a93a7a3
00000000-0000-0000-0000-000000000000	244	his5oadlbazh	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-13 17:01:44.90719+00	2026-08-13 17:01:44.90719+00	\N	735073a8-d87a-4768-aeca-729a8d08c829
00000000-0000-0000-0000-000000000000	245	th5bkqclfe2v	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-13 17:03:52.70546+00	2026-08-13 17:03:52.70546+00	\N	267c996b-35c1-4a37-b434-438cda291b74
00000000-0000-0000-0000-000000000000	246	yd7wybkhmaey	215928c5-9268-4e42-9560-3426b3b63a41	f	2026-08-13 17:18:59.361882+00	2026-08-13 17:18:59.361882+00	\N	3066099a-c9b5-4313-830a-cca5ab53ff17
00000000-0000-0000-0000-000000000000	247	mgie36pz4rb5	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-13 17:20:10.738588+00	2026-08-13 17:20:10.738588+00	\N	fe66afeb-e08e-4f1a-950e-0f17a9f99f91
00000000-0000-0000-0000-000000000000	241	jeavcxw6nbax	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-12 12:04:21.402023+00	2026-08-13 18:03:44.666851+00	m7veipzuciqe	9a09387c-e53c-490b-a460-eb440a93a7a3
00000000-0000-0000-0000-000000000000	248	crnk6c4pbg5m	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-13 18:03:44.684015+00	2026-08-13 18:03:44.684015+00	jeavcxw6nbax	9a09387c-e53c-490b-a460-eb440a93a7a3
00000000-0000-0000-0000-000000000000	250	2gkcwk5y4wwy	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-13 20:46:58.631715+00	2026-08-13 21:46:22.763152+00	\N	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	249	yhrijzxqsler	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-08-13 18:20:26.02107+00	2026-08-13 22:03:19.949647+00	\N	f5b9a55e-1c8c-423b-9d6f-8b60571c3030
00000000-0000-0000-0000-000000000000	251	qffwcae6j7qb	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-13 21:46:22.776405+00	2026-08-14 10:12:21.324726+00	2gkcwk5y4wwy	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	253	wmsyajmoo4pt	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-14 10:12:21.351183+00	2026-08-14 12:59:50.739074+00	qffwcae6j7qb	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	254	dyryzominuzn	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-14 12:59:50.755768+00	2026-08-14 13:59:17.419897+00	wmsyajmoo4pt	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	255	hxos6apsohki	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-14 13:59:17.430312+00	2026-08-14 14:58:41.253771+00	dyryzominuzn	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	252	ufi4yneghb36	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-08-13 22:03:19.968685+00	2026-08-14 16:22:50.685871+00	yhrijzxqsler	f5b9a55e-1c8c-423b-9d6f-8b60571c3030
00000000-0000-0000-0000-000000000000	256	mc3a4ev72jpg	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-14 14:58:41.278781+00	2026-08-14 17:02:36.376069+00	hxos6apsohki	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	258	6pvkstwsoi5j	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-14 17:02:36.398022+00	2026-08-14 18:02:03.179026+00	mc3a4ev72jpg	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	259	fd5a7374vqcr	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-14 18:02:03.196531+00	2026-08-15 11:22:18.924499+00	6pvkstwsoi5j	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	243	ua3wzxj7enc7	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-08-13 16:34:33.423752+00	2026-08-15 16:46:12.808615+00	\N	ce058dce-9ebf-4ecb-8415-0e593476faf3
00000000-0000-0000-0000-000000000000	257	5owq5zvxgsmb	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-08-14 16:22:50.698216+00	2026-08-17 22:43:27.435533+00	ufi4yneghb36	f5b9a55e-1c8c-423b-9d6f-8b60571c3030
00000000-0000-0000-0000-000000000000	260	dhxxedv7axop	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-15 11:22:18.941361+00	2026-08-15 12:21:46.417045+00	fd5a7374vqcr	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	287	w5ehlumaph5j	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-18 16:54:33.181374+00	2026-08-19 11:58:31.022972+00	\N	0d3830d7-465e-4271-847e-777dd464da42
00000000-0000-0000-0000-000000000000	261	i4jrqeuz3ttx	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-15 12:21:46.43326+00	2026-08-15 13:21:13.605262+00	dhxxedv7axop	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	262	74cgqsmm4m6n	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-15 13:21:13.6278+00	2026-08-15 14:20:36.023209+00	i4jrqeuz3ttx	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	289	xi2jesicmoyl	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-19 12:57:58.040892+00	2026-08-19 13:57:31.447774+00	chsj6ztcxssi	0d3830d7-465e-4271-847e-777dd464da42
00000000-0000-0000-0000-000000000000	263	3xpq5lapv3tl	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-15 14:20:36.032689+00	2026-08-15 15:20:03.656144+00	74cgqsmm4m6n	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	264	ymc5zpazzgfz	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-15 15:20:03.671324+00	2026-08-15 15:20:03.671324+00	3xpq5lapv3tl	21e63306-e497-44d2-96a3-bf4cfc641765
00000000-0000-0000-0000-000000000000	265	uav7mlyjexmi	215928c5-9268-4e42-9560-3426b3b63a41	f	2026-08-15 16:46:12.823322+00	2026-08-15 16:46:12.823322+00	ua3wzxj7enc7	ce058dce-9ebf-4ecb-8415-0e593476faf3
00000000-0000-0000-0000-000000000000	266	ud6ipwneizde	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-16 16:14:36.749406+00	2026-08-16 17:13:57.970906+00	\N	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	291	bsf2kff2iz2n	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-19 14:56:58.119679+00	2026-08-20 07:47:29.316427+00	albillvyjz75	0d3830d7-465e-4271-847e-777dd464da42
00000000-0000-0000-0000-000000000000	267	6cew4ndblo3q	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-16 17:13:57.982147+00	2026-08-16 18:13:23.000538+00	ud6ipwneizde	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	293	zwe7cptomce2	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-20 11:52:39.266534+00	2026-08-20 11:52:39.266534+00	box2q2ctlrlv	0d3830d7-465e-4271-847e-777dd464da42
00000000-0000-0000-0000-000000000000	268	qedhdzdignp6	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-16 18:13:23.01865+00	2026-08-16 19:12:47.242442+00	6cew4ndblo3q	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	269	hj26ym6yoimm	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-16 19:12:47.258177+00	2026-08-17 11:50:53.964318+00	qedhdzdignp6	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	295	fotsjpmwxczz	687cbee6-3f81-49a1-9915-c7babd17b096	t	2026-08-21 13:16:29.038116+00	2026-08-21 18:37:20.741901+00	\N	f9df35fb-6c6b-4de9-aa0b-8cf606e72e3c
00000000-0000-0000-0000-000000000000	270	aay3p3g6f4rg	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-17 11:50:53.986473+00	2026-08-17 15:02:09.801037+00	hj26ym6yoimm	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	297	q23fsjk26dmt	687cbee6-3f81-49a1-9915-c7babd17b096	f	2026-08-21 19:36:42.481091+00	2026-08-21 19:36:42.481091+00	z3bdn7ti7cy2	f9df35fb-6c6b-4de9-aa0b-8cf606e72e3c
00000000-0000-0000-0000-000000000000	271	xsfiibcsdow2	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-17 15:02:09.815273+00	2026-08-17 16:01:36.721161+00	aay3p3g6f4rg	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	272	ziaf4u33m6eg	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-17 16:01:36.734952+00	2026-08-17 17:24:01.784075+00	xsfiibcsdow2	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	298	6zjibdgpnzzf	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-21 20:14:53.712636+00	2026-08-21 22:55:03.539919+00	\N	8c83dafa-a112-4838-b0d8-70ae6f7d5a9d
00000000-0000-0000-0000-000000000000	273	7ilesieox6ss	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-17 17:24:01.806476+00	2026-08-17 18:23:32.864623+00	ziaf4u33m6eg	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	274	e5b6afql4aiz	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-17 18:23:32.879646+00	2026-08-17 19:23:03.234386+00	7ilesieox6ss	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	299	5y26gyhh7xup	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-21 22:55:03.56428+00	2026-08-22 18:23:16.776405+00	6zjibdgpnzzf	8c83dafa-a112-4838-b0d8-70ae6f7d5a9d
00000000-0000-0000-0000-000000000000	275	dnllpovpdigl	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-17 19:23:03.249035+00	2026-08-17 21:32:35.931375+00	e5b6afql4aiz	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	276	glcqrgzlzxpp	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-17 21:32:35.955156+00	2026-08-17 21:32:35.955156+00	dnllpovpdigl	d89e57be-edff-480c-86af-6716b32f2396
00000000-0000-0000-0000-000000000000	277	qk5oy7mjxi4j	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-17 21:53:01.646992+00	2026-08-17 21:53:01.646992+00	\N	ac715bd2-b28d-4800-a4f6-96318f5d8e4d
00000000-0000-0000-0000-000000000000	300	iyg7zbtfywz6	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-22 18:23:16.800222+00	2026-08-22 18:23:16.800222+00	5y26gyhh7xup	8c83dafa-a112-4838-b0d8-70ae6f7d5a9d
00000000-0000-0000-0000-000000000000	279	cuq3bykxuhdx	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-17 22:46:15.275457+00	2026-08-18 11:19:40.068468+00	\N	5154d804-b988-47b5-b0a6-7945e02bfb2b
00000000-0000-0000-0000-000000000000	280	ucyibm3kpimj	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-18 11:19:40.087129+00	2026-08-18 11:19:40.087129+00	cuq3bykxuhdx	5154d804-b988-47b5-b0a6-7945e02bfb2b
00000000-0000-0000-0000-000000000000	281	gtgyg6vejje2	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-18 11:24:38.671253+00	2026-08-18 12:24:01.171338+00	\N	1e4631ce-8bd6-4705-8d34-591c80570fdf
00000000-0000-0000-0000-000000000000	282	mj43ylyjq62w	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-18 12:24:01.184221+00	2026-08-18 12:24:01.184221+00	gtgyg6vejje2	1e4631ce-8bd6-4705-8d34-591c80570fdf
00000000-0000-0000-0000-000000000000	278	dwip54ca6636	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-08-17 22:43:27.453781+00	2026-08-25 12:08:53.607191+00	5owq5zvxgsmb	f5b9a55e-1c8c-423b-9d6f-8b60571c3030
00000000-0000-0000-0000-000000000000	302	3ebdvxhv47tv	215928c5-9268-4e42-9560-3426b3b63a41	f	2026-08-25 12:08:53.611561+00	2026-08-25 12:08:53.611561+00	dwip54ca6636	f5b9a55e-1c8c-423b-9d6f-8b60571c3030
00000000-0000-0000-0000-000000000000	301	tpxaznwkp26k	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-25 12:07:24.954015+00	2026-08-25 15:54:59.164946+00	\N	5af4d3b0-8389-4df3-ba5c-280bc3e9a759
00000000-0000-0000-0000-000000000000	304	ghj2v2gpztww	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-25 15:54:59.18572+00	2026-08-25 16:54:24.232969+00	tpxaznwkp26k	5af4d3b0-8389-4df3-ba5c-280bc3e9a759
00000000-0000-0000-0000-000000000000	305	m6alzaekn3aj	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-25 16:54:24.247937+00	2026-08-25 16:54:24.247937+00	ghj2v2gpztww	5af4d3b0-8389-4df3-ba5c-280bc3e9a759
00000000-0000-0000-0000-000000000000	306	nxn5hl75wk4n	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-25 17:19:09.94465+00	2026-08-25 17:19:09.94465+00	\N	7d76fbf9-3160-491d-bd82-4e33ec819fa3
00000000-0000-0000-0000-000000000000	307	jw4hg3n445xm	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-25 17:25:25.931029+00	2026-08-25 19:48:16.742546+00	\N	49e0ecc1-8f7b-4396-a0f3-1dde64ccd989
00000000-0000-0000-0000-000000000000	308	sl3pkmxa5346	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-25 19:48:16.764548+00	2026-08-25 19:48:16.764548+00	jw4hg3n445xm	49e0ecc1-8f7b-4396-a0f3-1dde64ccd989
00000000-0000-0000-0000-000000000000	309	eu3gkd37jhcc	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-25 19:50:33.638661+00	2026-08-25 20:58:28.544098+00	\N	59fc7fff-d53a-4388-b632-0b2b9ed1bb76
00000000-0000-0000-0000-000000000000	310	wjfsgaxqa2to	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-25 20:58:28.564986+00	2026-08-25 21:57:57.728137+00	eu3gkd37jhcc	59fc7fff-d53a-4388-b632-0b2b9ed1bb76
00000000-0000-0000-0000-000000000000	311	ovjfvmtxeblt	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-25 21:57:57.742364+00	2026-08-26 04:19:32.829692+00	wjfsgaxqa2to	59fc7fff-d53a-4388-b632-0b2b9ed1bb76
00000000-0000-0000-0000-000000000000	312	e5b5ytu7h742	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-26 04:19:32.851512+00	2026-08-26 14:07:06.31195+00	ovjfvmtxeblt	59fc7fff-d53a-4388-b632-0b2b9ed1bb76
00000000-0000-0000-0000-000000000000	313	ogll7r6kll4b	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-26 14:07:06.326747+00	2026-08-26 15:06:36.978947+00	e5b5ytu7h742	59fc7fff-d53a-4388-b632-0b2b9ed1bb76
00000000-0000-0000-0000-000000000000	314	xzuypxdquyba	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-26 15:06:36.996489+00	2026-08-26 15:06:36.996489+00	ogll7r6kll4b	59fc7fff-d53a-4388-b632-0b2b9ed1bb76
00000000-0000-0000-0000-000000000000	230	po56yos5bmll	c76fb13a-017f-49e1-9ac9-70dc3c6d7682	t	2026-08-11 21:08:17.999828+00	2026-08-28 15:50:27.067421+00	\N	d4d3bf27-21d4-4805-8453-6a25c2fa794d
00000000-0000-0000-0000-000000000000	316	yq3hufzn4wpz	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-28 20:25:39.010363+00	2026-08-28 21:25:05.656667+00	\N	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	317	dikfniwtdosz	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-28 21:25:05.680002+00	2026-08-29 06:11:53.085121+00	yq3hufzn4wpz	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	318	wjgadua4uore	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-29 06:11:53.104042+00	2026-08-29 11:46:36.691329+00	dikfniwtdosz	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	303	ydpi7dv3qwgi	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-25 12:17:03.926229+00	2026-09-02 18:20:22.154955+00	\N	68382044-2a13-4b72-83c4-20eccadb1f7c
00000000-0000-0000-0000-000000000000	315	jygohnivyu3d	c76fb13a-017f-49e1-9ac9-70dc3c6d7682	t	2026-08-28 15:50:27.089099+00	2026-10-09 07:59:40.673304+00	po56yos5bmll	d4d3bf27-21d4-4805-8453-6a25c2fa794d
00000000-0000-0000-0000-000000000000	448	kgbm6ycgql72	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-17 10:41:25.294712+00	2026-10-17 11:40:54.843294+00	4avnbvdcx4vx	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	319	nufpiitctdkz	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-29 11:46:36.708155+00	2026-08-29 12:46:06.986392+00	wjgadua4uore	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	320	cmqqhc6j3gaw	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-29 12:46:06.999572+00	2026-08-29 13:45:32.132002+00	nufpiitctdkz	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	449	ck447pospydp	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-17 11:40:54.859128+00	2026-10-17 12:40:19.219896+00	kgbm6ycgql72	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	321	uhxhlxgsxyja	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-29 13:45:32.145374+00	2026-08-29 14:45:02.354748+00	cmqqhc6j3gaw	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	322	lltttujvk3gq	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-29 14:45:02.368394+00	2026-08-29 15:44:28.834894+00	uhxhlxgsxyja	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	323	sihtqs37tpiw	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-29 15:44:28.852157+00	2026-08-29 19:02:19.492029+00	lltttujvk3gq	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	324	pn4y3q33pdpa	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-08-29 19:02:19.511173+00	2026-08-29 20:01:44.963558+00	sihtqs37tpiw	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	325	447jbqtc2fb5	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-08-29 20:01:44.975711+00	2026-08-29 20:01:44.975711+00	pn4y3q33pdpa	f035b5d2-bf99-4c29-90e8-432e988e7eb2
00000000-0000-0000-0000-000000000000	326	7cn2af77dfop	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-09-02 18:20:22.18052+00	2026-09-02 18:20:22.18052+00	ydpi7dv3qwgi	68382044-2a13-4b72-83c4-20eccadb1f7c
00000000-0000-0000-0000-000000000000	327	nmjysa447jbl	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-04 13:35:00.716371+00	2026-09-04 14:34:25.789537+00	\N	223323a2-7820-484d-9669-a2a1e9c8d39c
00000000-0000-0000-0000-000000000000	328	ejy63mjtyeyu	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-04 14:34:25.80723+00	2026-09-05 10:26:16.030906+00	nmjysa447jbl	223323a2-7820-484d-9669-a2a1e9c8d39c
00000000-0000-0000-0000-000000000000	329	3mp27pwdxhtr	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-05 10:26:16.054754+00	2026-09-05 11:25:45.079906+00	ejy63mjtyeyu	223323a2-7820-484d-9669-a2a1e9c8d39c
00000000-0000-0000-0000-000000000000	330	ju5ce22mmthe	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-05 11:25:45.090369+00	2026-09-05 12:25:15.774369+00	3mp27pwdxhtr	223323a2-7820-484d-9669-a2a1e9c8d39c
00000000-0000-0000-0000-000000000000	331	plim45gnqqru	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-05 12:25:15.795187+00	2026-09-05 13:24:45.558471+00	ju5ce22mmthe	223323a2-7820-484d-9669-a2a1e9c8d39c
00000000-0000-0000-0000-000000000000	332	psoblkts7q3n	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-05 13:24:45.576356+00	2026-09-05 14:24:13.038872+00	plim45gnqqru	223323a2-7820-484d-9669-a2a1e9c8d39c
00000000-0000-0000-0000-000000000000	333	dtwvuj5o7x3x	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-09-05 14:24:13.047268+00	2026-09-05 14:24:13.047268+00	psoblkts7q3n	223323a2-7820-484d-9669-a2a1e9c8d39c
00000000-0000-0000-0000-000000000000	335	5l3t2futozsd	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-09-21 12:09:15.747048+00	2026-09-21 12:09:15.747048+00	\N	7115385d-0578-4399-a7ee-058d5e271002
00000000-0000-0000-0000-000000000000	336	rx2nl6ufinxj	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-21 12:28:58.944692+00	2026-09-21 16:53:46.93832+00	\N	b419d00b-1b6d-4227-a989-9f8a8b45e348
00000000-0000-0000-0000-000000000000	337	cuzte3hdjulg	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-21 16:53:46.957583+00	2026-09-21 17:53:11.01839+00	rx2nl6ufinxj	b419d00b-1b6d-4227-a989-9f8a8b45e348
00000000-0000-0000-0000-000000000000	338	7cqcxmcpelne	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-21 17:53:11.040402+00	2026-09-21 20:21:55.368018+00	cuzte3hdjulg	b419d00b-1b6d-4227-a989-9f8a8b45e348
00000000-0000-0000-0000-000000000000	339	qb2oth7tlqvw	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-21 20:21:55.380084+00	2026-09-21 23:24:29.758096+00	7cqcxmcpelne	b419d00b-1b6d-4227-a989-9f8a8b45e348
00000000-0000-0000-0000-000000000000	340	tmzpm4tgixqo	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-21 23:24:29.778368+00	2026-09-22 10:24:52.060541+00	qb2oth7tlqvw	b419d00b-1b6d-4227-a989-9f8a8b45e348
00000000-0000-0000-0000-000000000000	341	ppkowh64jyov	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-22 10:24:52.080207+00	2026-09-22 11:24:21.79016+00	tmzpm4tgixqo	b419d00b-1b6d-4227-a989-9f8a8b45e348
00000000-0000-0000-0000-000000000000	342	sp3cgpjfvbim	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-09-22 11:24:21.802978+00	2026-09-22 11:24:21.802978+00	ppkowh64jyov	b419d00b-1b6d-4227-a989-9f8a8b45e348
00000000-0000-0000-0000-000000000000	343	qct4kgoyvqwf	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-09-22 11:31:54.78014+00	2026-09-22 11:31:54.78014+00	\N	bab684e8-64cf-47b6-973a-b1ca907d88cd
00000000-0000-0000-0000-000000000000	344	2l2bv5syzw5z	b249485c-b7a9-40fd-bc98-776588cc987d	f	2026-09-22 11:59:23.696917+00	2026-09-22 11:59:23.696917+00	\N	1caf2bd2-bfa9-4e5c-88cb-9b639f989ff2
00000000-0000-0000-0000-000000000000	345	xejvn6jguyje	b249485c-b7a9-40fd-bc98-776588cc987d	t	2026-09-22 12:12:04.54044+00	2026-09-26 13:20:45.180957+00	\N	4f6e2acb-69d3-4e51-b788-0f0d2ebe76a7
00000000-0000-0000-0000-000000000000	346	ytxzug3kuf2f	b249485c-b7a9-40fd-bc98-776588cc987d	f	2026-09-26 13:20:45.207572+00	2026-09-26 13:20:45.207572+00	xejvn6jguyje	4f6e2acb-69d3-4e51-b788-0f0d2ebe76a7
00000000-0000-0000-0000-000000000000	349	5bm5zizpkbvh	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-26 13:27:12.326459+00	2026-09-26 16:33:36.910181+00	\N	b1bbe088-5401-43a5-b81e-325008cc9272
00000000-0000-0000-0000-000000000000	350	32chlg4azgh6	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-26 16:33:36.927761+00	2026-09-26 18:56:46.699144+00	5bm5zizpkbvh	b1bbe088-5401-43a5-b81e-325008cc9272
00000000-0000-0000-0000-000000000000	351	i44rvo4qgvtx	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-26 18:56:46.716546+00	2026-09-26 20:24:45.694927+00	32chlg4azgh6	b1bbe088-5401-43a5-b81e-325008cc9272
00000000-0000-0000-0000-000000000000	352	qr52w2jfsbki	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-26 20:24:45.716164+00	2026-09-26 21:45:30.615693+00	i44rvo4qgvtx	b1bbe088-5401-43a5-b81e-325008cc9272
00000000-0000-0000-0000-000000000000	353	pifjqximzezy	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-26 21:45:30.633031+00	2026-09-27 14:37:42.972015+00	qr52w2jfsbki	b1bbe088-5401-43a5-b81e-325008cc9272
00000000-0000-0000-0000-000000000000	354	n6kziomhwzrx	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-27 14:37:42.986962+00	2026-09-27 16:26:07.852692+00	pifjqximzezy	b1bbe088-5401-43a5-b81e-325008cc9272
00000000-0000-0000-0000-000000000000	356	oku77euss4qz	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-30 11:47:31.032547+00	2026-09-30 12:46:55.735529+00	\N	bf39c2de-cf36-4fd3-85db-bde8a03af94f
00000000-0000-0000-0000-000000000000	357	epzijbj6seyl	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-30 12:46:55.751753+00	2026-09-30 19:52:59.892114+00	oku77euss4qz	bf39c2de-cf36-4fd3-85db-bde8a03af94f
00000000-0000-0000-0000-000000000000	358	52v2pxxf66pp	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-30 19:52:59.916963+00	2026-09-30 23:28:27.331118+00	epzijbj6seyl	bf39c2de-cf36-4fd3-85db-bde8a03af94f
00000000-0000-0000-0000-000000000000	359	7okrsliqb2ao	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-30 23:28:27.350472+00	2026-10-01 06:49:29.315653+00	52v2pxxf66pp	bf39c2de-cf36-4fd3-85db-bde8a03af94f
00000000-0000-0000-0000-000000000000	360	7q3wyltdq4y6	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-01 06:49:29.340093+00	2026-10-01 06:49:29.340093+00	7okrsliqb2ao	bf39c2de-cf36-4fd3-85db-bde8a03af94f
00000000-0000-0000-0000-000000000000	361	xganpgyobcq5	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-01 19:03:42.412231+00	2026-10-01 22:55:27.129606+00	\N	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	362	p3nokwr6cb7o	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-01 22:55:27.151158+00	2026-10-02 05:10:56.145463+00	xganpgyobcq5	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	363	gf6llvjpfkuv	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 05:10:56.16701+00	2026-10-02 13:25:01.37747+00	p3nokwr6cb7o	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	364	hwekt4tcspkt	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 13:25:01.395513+00	2026-10-02 14:24:23.548199+00	gf6llvjpfkuv	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	365	ms5b23ckrybr	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 14:24:23.560883+00	2026-10-02 15:23:53.961547+00	hwekt4tcspkt	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	366	phblrhprffac	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 15:23:53.979171+00	2026-10-02 17:17:51.180875+00	ms5b23ckrybr	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	367	5fayh5qzopvc	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 17:17:51.194722+00	2026-10-02 18:17:13.584947+00	phblrhprffac	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	368	cg5p3w45wcuq	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 18:17:13.600121+00	2026-10-02 19:16:43.675584+00	5fayh5qzopvc	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	369	rnam3db6yd6m	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 19:16:43.690723+00	2026-10-02 20:16:13.496477+00	cg5p3w45wcuq	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	334	irxvae2awg4n	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-19 11:23:17.490359+00	2026-10-04 11:58:46.108174+00	\N	4b75bcda-6ca6-43f0-9e72-238a0dcf120c
00000000-0000-0000-0000-000000000000	370	oz6fnb5u3epp	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 20:16:13.505805+00	2026-10-02 21:15:43.646725+00	rnam3db6yd6m	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	450	ju4zdpoel5kk	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-17 12:40:19.229088+00	2026-10-17 13:39:45.420631+00	ck447pospydp	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	371	idknya6icqxo	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-02 21:15:43.662867+00	2026-10-03 07:30:54.339499+00	oz6fnb5u3epp	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	372	bx64poxbayuy	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-03 07:30:54.349163+00	2026-10-03 10:31:09.378705+00	idknya6icqxo	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	453	c3fx2pp2lutj	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-17 15:09:16.257343+00	2026-10-17 16:08:46.547266+00	eqvhudbcz3fe	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	373	446mbyhm6ba2	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-03 10:31:09.392277+00	2026-10-03 11:30:33.714798+00	bx64poxbayuy	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	374	lvyempwakqg2	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-03 11:30:33.724502+00	2026-10-03 13:24:53.813567+00	446mbyhm6ba2	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	375	me6dzktfgjbd	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-03 13:24:53.823957+00	2026-10-03 14:24:23.844971+00	lvyempwakqg2	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	376	z2luhqzo34c4	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-03 14:24:23.863068+00	2026-10-03 18:52:30.039954+00	me6dzktfgjbd	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	377	5kjqkxlemqaw	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-03 18:52:30.060107+00	2026-10-04 01:21:29.246654+00	z2luhqzo34c4	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	378	wp2bww4ndld5	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 01:21:29.27152+00	2026-10-04 09:11:48.258826+00	5kjqkxlemqaw	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	379	6m6sj2wlnwbv	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 09:11:48.27409+00	2026-10-04 10:11:13.809452+00	wp2bww4ndld5	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	381	snihqfnn32or	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-04 11:06:57.221559+00	2026-10-04 11:06:57.221559+00	\N	3177d3a5-0d45-47f0-bba5-87477759534b
00000000-0000-0000-0000-000000000000	380	qezlpizy6yf4	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 10:11:13.823447+00	2026-10-04 11:10:44.005119+00	6m6sj2wlnwbv	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	383	rkg6hcaw6md3	74c3ff16-f356-4a1d-8476-79a04cdc3940	f	2026-10-04 11:16:31.920264+00	2026-10-04 11:16:31.920264+00	\N	4de59ee5-e70d-4156-b3df-7cb9275af4f4
00000000-0000-0000-0000-000000000000	384	yvc6t2vxssme	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-04 11:58:46.126021+00	2026-10-04 11:58:46.126021+00	irxvae2awg4n	4b75bcda-6ca6-43f0-9e72-238a0dcf120c
00000000-0000-0000-0000-000000000000	382	xgtlrbmyuoln	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 11:10:44.012237+00	2026-10-04 12:10:13.530327+00	qezlpizy6yf4	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	355	zcyupn27rds7	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-09-27 16:26:07.878109+00	2026-10-04 12:46:19.408404+00	n6kziomhwzrx	b1bbe088-5401-43a5-b81e-325008cc9272
00000000-0000-0000-0000-000000000000	387	vdhy7dbrnxtc	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-04 12:46:19.43873+00	2026-10-04 12:46:19.43873+00	zcyupn27rds7	b1bbe088-5401-43a5-b81e-325008cc9272
00000000-0000-0000-0000-000000000000	385	xrmw7n3mwsbp	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 12:10:13.536186+00	2026-10-04 13:09:43.865544+00	xgtlrbmyuoln	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	389	37pzwtnckopd	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 13:09:43.871793+00	2026-10-04 18:58:44.472336+00	xrmw7n3mwsbp	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	390	yhkf3ohtm557	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 18:58:44.493235+00	2026-10-04 19:58:14.007675+00	37pzwtnckopd	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	391	i3ft3ivzaqih	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 19:58:14.020321+00	2026-10-04 23:21:13.465221+00	yhkf3ohtm557	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	392	mben3irr3cij	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 23:21:13.484798+00	2026-10-05 11:08:38.271802+00	i3ft3ivzaqih	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	386	iovfazedqfjn	fd7a6f33-1b42-40f9-b0f1-663e60124ee3	t	2026-10-04 12:10:46.366107+00	2026-10-05 11:35:16.621466+00	\N	d88c8e35-6b23-4f79-9e18-d57dd9e03f2c
00000000-0000-0000-0000-000000000000	393	mu4ccgtcjdst	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-05 11:08:38.286392+00	2026-10-05 12:08:03.467953+00	mben3irr3cij	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	388	3xdosvnua6eo	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-04 12:54:35.454787+00	2026-10-05 12:20:16.243771+00	\N	1ef22c45-e47d-4b06-a4b5-c43a10c08e9d
00000000-0000-0000-0000-000000000000	395	okpo4biedcrg	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-05 12:08:03.480111+00	2026-10-05 13:35:06.556684+00	mu4ccgtcjdst	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	397	x2vhsw5auchg	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-05 13:35:06.570628+00	2026-10-05 13:35:06.570628+00	okpo4biedcrg	eea0881d-1346-4eab-b369-db7a76144b4e
00000000-0000-0000-0000-000000000000	394	svyz26iesyvw	fd7a6f33-1b42-40f9-b0f1-663e60124ee3	t	2026-10-05 11:35:16.636298+00	2026-10-06 16:32:35.625689+00	iovfazedqfjn	d88c8e35-6b23-4f79-9e18-d57dd9e03f2c
00000000-0000-0000-0000-000000000000	398	fppkezeipzyn	fd7a6f33-1b42-40f9-b0f1-663e60124ee3	t	2026-10-06 16:32:35.64708+00	2026-10-06 17:32:02.009697+00	svyz26iesyvw	d88c8e35-6b23-4f79-9e18-d57dd9e03f2c
00000000-0000-0000-0000-000000000000	399	qwhe6eahzsjw	fd7a6f33-1b42-40f9-b0f1-663e60124ee3	f	2026-10-06 17:32:02.025182+00	2026-10-06 17:32:02.025182+00	fppkezeipzyn	d88c8e35-6b23-4f79-9e18-d57dd9e03f2c
00000000-0000-0000-0000-000000000000	396	lu6blwekojs4	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-05 12:20:16.250559+00	2026-10-06 18:05:31.034729+00	3xdosvnua6eo	1ef22c45-e47d-4b06-a4b5-c43a10c08e9d
00000000-0000-0000-0000-000000000000	401	b2jb3bor5pjv	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-06 18:05:31.044506+00	2026-10-06 19:07:27.653392+00	lu6blwekojs4	1ef22c45-e47d-4b06-a4b5-c43a10c08e9d
00000000-0000-0000-0000-000000000000	400	63eqoypkl2h3	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-06 18:03:39.16072+00	2026-10-06 19:59:31.61209+00	\N	afc032ef-8773-4f22-b1bf-051be097b354
00000000-0000-0000-0000-000000000000	402	wimghh5racuf	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-06 19:07:27.664686+00	2026-10-06 20:13:54.881933+00	b2jb3bor5pjv	1ef22c45-e47d-4b06-a4b5-c43a10c08e9d
00000000-0000-0000-0000-000000000000	405	xkoujggtxntp	c76fb13a-017f-49e1-9ac9-70dc3c6d7682	f	2026-10-09 07:59:40.700092+00	2026-10-09 07:59:40.700092+00	jygohnivyu3d	d4d3bf27-21d4-4805-8453-6a25c2fa794d
00000000-0000-0000-0000-000000000000	403	k5hbmvzn6pwo	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-06 19:59:31.630594+00	2026-10-10 16:56:20.023407+00	63eqoypkl2h3	afc032ef-8773-4f22-b1bf-051be097b354
00000000-0000-0000-0000-000000000000	404	eco6ifdjba6f	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-06 20:13:54.896005+00	2026-10-14 08:14:55.058673+00	wimghh5racuf	1ef22c45-e47d-4b06-a4b5-c43a10c08e9d
00000000-0000-0000-0000-000000000000	406	pzhyoxchaquw	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-10 16:56:20.043142+00	2026-10-14 12:12:06.76028+00	k5hbmvzn6pwo	afc032ef-8773-4f22-b1bf-051be097b354
00000000-0000-0000-0000-000000000000	408	ozmqmifcyy5r	215928c5-9268-4e42-9560-3426b3b63a41	f	2026-10-14 12:12:06.784828+00	2026-10-14 12:12:06.784828+00	pzhyoxchaquw	afc032ef-8773-4f22-b1bf-051be097b354
00000000-0000-0000-0000-000000000000	409	vhsqhifjlkdx	b068ddfe-ae63-4528-9156-ca6285630043	f	2026-10-14 12:17:27.701444+00	2026-10-14 12:17:27.701444+00	\N	253ec1ff-fd20-433f-8dec-e8b721305907
00000000-0000-0000-0000-000000000000	410	sm7ncpj3gslu	215928c5-9268-4e42-9560-3426b3b63a41	f	2026-10-14 13:35:26.513501+00	2026-10-14 13:35:26.513501+00	\N	181b9a72-1b30-41a9-9337-4c45b44ecfd0
00000000-0000-0000-0000-000000000000	407	iccpqioohxjk	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-14 08:14:55.086796+00	2026-10-14 13:44:08.476416+00	eco6ifdjba6f	1ef22c45-e47d-4b06-a4b5-c43a10c08e9d
00000000-0000-0000-0000-000000000000	411	hmz2vhiznxsj	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-14 13:44:08.484082+00	2026-10-14 15:14:09.153172+00	iccpqioohxjk	1ef22c45-e47d-4b06-a4b5-c43a10c08e9d
00000000-0000-0000-0000-000000000000	412	o43zo5eiqksu	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-14 15:14:09.179875+00	2026-10-14 15:14:09.179875+00	hmz2vhiznxsj	1ef22c45-e47d-4b06-a4b5-c43a10c08e9d
00000000-0000-0000-0000-000000000000	415	7xpnpc43enzb	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-14 16:12:48.086236+00	2026-10-15 08:58:07.237287+00	\N	e578eb17-2f80-4ceb-a5ca-4f52bdd66087
00000000-0000-0000-0000-000000000000	416	3cj6d62gqhqt	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-15 08:58:07.267131+00	2026-10-15 08:58:07.267131+00	7xpnpc43enzb	e578eb17-2f80-4ceb-a5ca-4f52bdd66087
00000000-0000-0000-0000-000000000000	425	ljmfjnepurnu	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-15 11:02:37.842986+00	2026-10-15 12:54:05.366766+00	\N	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	427	fvuyrw7qyze3	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-15 12:54:05.383184+00	2026-10-15 16:51:22.844094+00	ljmfjnepurnu	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	445	gyw3iujhfeqi	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-16 19:29:05.685849+00	2026-10-17 01:06:06.826873+00	ah43aqesxr2t	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	441	jhqqxwxwmj4a	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-16 14:19:17.546399+00	2026-10-17 13:40:29.661286+00	cg6aszbzmgfu	f7600d22-7ea9-497f-a5bd-775514a7f3ca
00000000-0000-0000-0000-000000000000	430	dmtvfvxw6sdm	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-15 16:51:22.865446+00	2026-10-15 19:55:32.419821+00	fvuyrw7qyze3	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	452	qbrkpb7cetmi	215928c5-9268-4e42-9560-3426b3b63a41	f	2026-10-17 13:40:29.666065+00	2026-10-17 13:40:29.666065+00	jhqqxwxwmj4a	f7600d22-7ea9-497f-a5bd-775514a7f3ca
00000000-0000-0000-0000-000000000000	429	4ux47vi7u3o5	b249485c-b7a9-40fd-bc98-776588cc987d	t	2026-10-15 13:24:38.497063+00	2026-10-15 20:10:41.619345+00	\N	e94c548d-7582-4c99-b518-62b401435a74
00000000-0000-0000-0000-000000000000	451	eqvhudbcz3fe	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-17 13:39:45.43406+00	2026-10-17 15:09:16.230499+00	ju4zdpoel5kk	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	431	jgycsip6m3gn	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-15 19:55:32.44302+00	2026-10-15 20:54:58.962979+00	dmtvfvxw6sdm	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	432	2tauvo2mjqxr	b249485c-b7a9-40fd-bc98-776588cc987d	t	2026-10-15 20:10:41.634749+00	2026-10-15 21:11:45.929721+00	4ux47vi7u3o5	e94c548d-7582-4c99-b518-62b401435a74
00000000-0000-0000-0000-000000000000	434	m4v5iitoze5z	b249485c-b7a9-40fd-bc98-776588cc987d	f	2026-10-15 21:11:45.936416+00	2026-10-15 21:11:45.936416+00	2tauvo2mjqxr	e94c548d-7582-4c99-b518-62b401435a74
00000000-0000-0000-0000-000000000000	436	cokut5eyedg3	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-15 23:02:38.988688+00	2026-10-15 23:02:38.988688+00	\N	0e7900b6-06f6-42e4-bcc1-3947bfa87c43
00000000-0000-0000-0000-000000000000	454	indqbradbqfo	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-17 15:26:25.243542+00	2026-10-17 16:35:03.809916+00	\N	46d9279f-0b12-4bf7-bf68-b006e47447f1
00000000-0000-0000-0000-000000000000	433	h7weho7hmdgf	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-15 20:54:58.97712+00	2026-10-16 11:26:08.581597+00	jgycsip6m3gn	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	438	kc236qflu4rl	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-16 11:26:08.5948+00	2026-10-16 12:25:32.829733+00	h7weho7hmdgf	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	439	bp433m75u6wm	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-16 12:25:32.841899+00	2026-10-16 13:49:58.87467+00	kc236qflu4rl	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	437	cg6aszbzmgfu	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-16 11:11:44.780643+00	2026-10-16 14:19:17.534108+00	\N	f7600d22-7ea9-497f-a5bd-775514a7f3ca
00000000-0000-0000-0000-000000000000	440	vpaoa6z3jcsz	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-16 13:49:58.899109+00	2026-10-16 14:49:27.14417+00	bp433m75u6wm	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	455	lodlxr44pkn7	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-17 16:08:46.560312+00	2026-10-18 16:35:01.322884+00	c3fx2pp2lutj	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	443	ah43aqesxr2t	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-16 14:49:27.169695+00	2026-10-16 19:29:05.659438+00	vpaoa6z3jcsz	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	460	q3wi6xfu7aly	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-18 16:35:01.350288+00	2026-10-18 17:34:29.70721+00	lodlxr44pkn7	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	456	pbtzzorrouyh	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-17 16:35:03.824778+00	2026-10-18 18:04:33.746882+00	indqbradbqfo	46d9279f-0b12-4bf7-bf68-b006e47447f1
00000000-0000-0000-0000-000000000000	461	runawhyv3hsi	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-18 17:34:29.71816+00	2026-10-18 18:33:58.218469+00	q3wi6xfu7aly	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	463	ujkfg6obxqwf	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-18 18:33:58.235322+00	2026-10-18 20:17:43.576772+00	runawhyv3hsi	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	462	vslldc4sqrko	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-18 18:04:33.763885+00	2026-10-18 21:05:30.917703+00	pbtzzorrouyh	46d9279f-0b12-4bf7-bf68-b006e47447f1
00000000-0000-0000-0000-000000000000	464	cbbu6o34ucd4	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-18 20:17:43.599584+00	2026-10-18 22:05:05.63141+00	ujkfg6obxqwf	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	467	w7ua62ftroz3	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-18 22:05:05.649367+00	2026-10-19 10:01:01.480891+00	cbbu6o34ucd4	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	468	mcgti2awv4hp	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-19 10:01:01.496452+00	2026-10-19 11:00:23.491737+00	w7ua62ftroz3	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	469	2fytsycvxrt7	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-19 11:00:23.500762+00	2026-10-19 11:59:53.448033+00	mcgti2awv4hp	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	471	r7j5rlhxzw4d	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-19 11:59:53.461967+00	2026-10-19 12:59:19.418983+00	2fytsycvxrt7	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	472	wgtyipxo5f6m	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-19 12:59:19.443492+00	2026-10-19 13:58:50.691596+00	r7j5rlhxzw4d	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	473	z5xfdvyj4rq7	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-19 13:58:50.710736+00	2026-10-19 14:58:19.270288+00	wgtyipxo5f6m	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	474	zvk5fzqavc2a	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-19 14:58:19.282355+00	2026-10-19 20:50:59.439173+00	z5xfdvyj4rq7	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	476	xapfxo2ewmf4	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-19 22:18:53.990614+00	2026-10-19 22:18:53.990614+00	\N	1517ebcc-683d-4679-b7bc-078bd35ed7af
00000000-0000-0000-0000-000000000000	475	6famp4en3uap	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-19 20:50:59.455165+00	2026-10-20 09:16:28.964093+00	zvk5fzqavc2a	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	477	x6ydvqpwognq	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-20 09:16:28.989852+00	2026-10-20 10:15:58.086615+00	6famp4en3uap	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	479	2d2ajatznkm3	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-20 10:15:58.097033+00	2026-10-20 19:25:29.10022+00	x6ydvqpwognq	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	480	gf3tebwfcnhq	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-20 19:25:29.124264+00	2026-10-20 22:38:02.00861+00	2d2ajatznkm3	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	481	w4z442ueaei6	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-20 22:38:02.030215+00	2026-10-21 10:13:44.758608+00	gf3tebwfcnhq	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	482	3q5c32h3hbpb	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-21 10:13:44.78981+00	2026-10-21 11:13:14.040061+00	w4z442ueaei6	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	465	cizaxvcp7w72	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-18 21:05:30.92948+00	2026-10-21 11:49:14.272732+00	vslldc4sqrko	46d9279f-0b12-4bf7-bf68-b006e47447f1
00000000-0000-0000-0000-000000000000	483	ug5hhh4wvobo	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-21 11:13:14.051154+00	2026-10-21 12:12:42.853161+00	3q5c32h3hbpb	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	484	bfuicv4353ew	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-21 11:49:14.283592+00	2026-10-21 12:56:43.559262+00	cizaxvcp7w72	46d9279f-0b12-4bf7-bf68-b006e47447f1
00000000-0000-0000-0000-000000000000	485	yewyoo2o3fur	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-21 12:12:42.866897+00	2026-10-21 18:37:33.259711+00	ug5hhh4wvobo	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	486	lxlwag3psxeb	215928c5-9268-4e42-9560-3426b3b63a41	t	2026-10-21 12:56:43.577718+00	2026-10-21 19:09:14.22927+00	bfuicv4353ew	46d9279f-0b12-4bf7-bf68-b006e47447f1
00000000-0000-0000-0000-000000000000	488	u4wyqimfifbq	215928c5-9268-4e42-9560-3426b3b63a41	f	2026-10-21 19:09:14.244069+00	2026-10-21 19:09:14.244069+00	lxlwag3psxeb	46d9279f-0b12-4bf7-bf68-b006e47447f1
00000000-0000-0000-0000-000000000000	487	jlde7alsufab	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-21 18:37:33.275939+00	2026-10-21 19:39:37.075491+00	yewyoo2o3fur	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	489	xekdtkmbq2vy	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	t	2026-10-21 19:39:37.083357+00	2026-10-22 00:16:13.407624+00	jlde7alsufab	623d4725-6708-4c51-a4a7-be5370bc4e19
00000000-0000-0000-0000-000000000000	490	zs7upxqucids	25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f	2026-10-22 00:16:13.427002+00	2026-10-22 00:16:13.427002+00	xekdtkmbq2vy	623d4725-6708-4c51-a4a7-be5370bc4e19
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: scim_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."scim_tokens" ("id", "sso_provider_id", "token_hash", "prefix", "created_at", "expires_at", "revoked_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: scim_users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."scim_users" ("id", "sso_provider_id", "user_id", "resource", "created_at", "updated_at", "deleted_at") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."characters" ("id", "name", "name_thai", "avatar_url", "color", "created_at") FROM stdin;
\.


--
-- Data for Name: words; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."words" ("id", "thai", "phonetic", "version", "created_at", "updated_at") FROM stdin;
81bef837-08ea-4e73-bfbe-1d545fe44058	เหมือนกัน	mʉ̌an gan	1	2026-07-12 16:15:44.555766+00	2026-07-12 16:15:44.555766+00
b4f2c6b9-e675-4d25-8fac-25bad0e77384	อยาก	yàak	1	2026-07-12 18:24:49.96549+00	2026-07-12 18:24:49.96549+00
9761f9fe-1239-4ffa-99a7-3a86dbf44bcf	เถียง	tǐang	1	2026-07-12 18:26:27.951051+00	2026-07-12 18:26:27.951051+00
a2414431-5b3e-4552-89d8-d886a1d5624a	กับ	gàp	3	2026-07-11 15:52:30.419808+00	2026-07-11 16:04:05.792039+00
80609c69-c5c3-4fb9-bcbb-6248d7e64f0b	ไปแล้ว	bpai láew	5	2026-07-12 13:38:45.372654+00	2026-07-12 18:29:54.705941+00
a7a69fee-cd2a-4b6f-a542-1cc2150b2eb6	แล้ว	láew	4	2026-07-12 18:29:08.484672+00	2026-07-18 00:51:00.605843+00
49edd849-b10d-4953-abaf-70961c923929	กิน	gin	2	2026-07-11 16:34:38.087184+00	2026-07-11 16:41:21.924701+00
324e2ed9-be8f-494f-a81a-d8c5092c80b7	ข้าว	khâao	3	2026-07-11 16:34:38.087184+00	2026-07-11 16:41:50.833192+00
17a916ce-ded3-4fbf-9bf6-428368727e01	เมื่อไหร่	mêuua rài	3	2026-07-14 13:08:22.466117+00	2026-10-01 19:10:33.008731+00
ebfb3540-841f-4ddd-846c-af352f15219d	ได้	dâi	2	2026-07-12 20:17:24.529178+00	2026-10-21 10:47:19.550947+00
750af5d8-28b4-4781-9031-40458a193a22	ฉัน	chǎn	2	2026-07-11 16:11:47.27448+00	2026-07-11 17:44:04.707852+00
d203d02f-13f0-4ca6-ac10-6d9803de9e29	ผม	phǒm	6	2026-07-11 16:00:54.185768+00	2026-08-07 15:05:59.392368+00
636ebf40-f92b-43cf-826b-5c4cb48e5b74	คะ	khá	2	2026-07-11 17:51:44.874815+00	2026-07-11 17:52:11.119315+00
f90ee00e-e1e0-4dc9-904a-2bc841f91a3b	อะไร	à-rai	1	2026-07-11 17:54:29.418863+00	2026-07-11 17:54:29.418863+00
4d06ab0a-1563-412e-9c24-5277eeb3620f	หรือ	rʉ̌ʉ	2	2026-07-11 17:59:33.725233+00	2026-07-11 18:00:00.648639+00
66676ee6-6167-4f48-a67c-ff75d72c8ebe	เถอะ	tùh	1	2026-07-12 18:35:29.075759+00	2026-07-12 18:35:29.075759+00
eca31e27-0491-47a3-98d1-66ca774b613d	ช่างมัน	châang man	2	2026-07-12 18:34:04.605603+00	2026-07-12 18:38:21.72562+00
b9d6ef73-87f4-4622-a0ca-8975c7e285d8	อังกฤษ	ang-grìt	2	2026-07-12 20:16:14.436061+00	2026-10-16 19:50:24.433405+00
a436eb9f-ed2a-42d6-9f9d-59e5c6be971d	ของ	kŏng	2	2026-07-11 17:50:01.446608+00	2026-08-08 22:42:55.787931+00
d34e2678-c925-4cc7-a5f5-fb3ce5ef1623	เหรอ	rə̌ə	6	2026-07-12 19:13:54.178365+00	2026-10-17 12:34:24.105152+00
06b65b7d-2e03-4cdc-bc78-1e0f9049f86a	ช่วยด้วย	chûay dûuai	1	2026-07-11 23:55:15.788557+00	2026-07-11 23:55:15.788557+00
90fffd6f-8337-47df-a027-10ff48d2591f	ระวัง	rá-wang	1	2026-07-11 23:56:14.629743+00	2026-07-11 23:56:14.629743+00
fa1e0a0f-9966-4564-9833-ab609d87b6f0	รัก	rák	1	2026-07-11 23:57:31.26513+00	2026-07-11 23:57:31.26513+00
8b73c32a-c008-4619-bae0-f3b56dbe00a6	เชิญ	chəən	1	2026-07-12 00:02:30.042615+00	2026-07-12 00:02:30.042615+00
8c64e8e8-4fef-48e1-825c-d35d61acd0c9	ล้อเล่น	lór lên	4	2026-07-12 00:06:56.722793+00	2026-08-10 19:54:51.378235+00
fc901cd2-bfed-4fe4-9a97-22011b02186a	นะ	ná	3	2026-07-12 15:23:59.693108+00	2026-10-16 12:08:41.733155+00
ea29dc13-86fe-4153-9d4e-55efd083d751	นะคะ	ná khá	1	2026-07-12 00:18:03.444365+00	2026-07-12 00:18:03.444365+00
d108ad40-465b-4c40-a2f5-9e7739851a41	ฟัง	fang	1	2026-07-12 18:41:24.35138+00	2026-07-12 18:41:24.35138+00
b1f03ae5-eee8-4b0c-a2f7-4e87f9c234ea	ล้ำเส้น	lám sên	2	2026-07-12 13:38:01.667189+00	2026-07-12 13:44:05.673607+00
e616aa3d-cc7d-4130-89fc-42efa355727e	พูด	pûut	1	2026-07-12 13:48:05.066539+00	2026-07-12 13:48:05.066539+00
0dbd5152-2dcd-41ee-85d4-af9e547c667f	ง่าย	ngâai	1	2026-07-12 13:49:08.060465+00	2026-07-12 13:49:08.060465+00
7ba96b26-87a0-4d63-a1eb-2e0e93ddad5d	เนอะ	nə́	2	2026-07-12 13:52:05.390432+00	2026-07-12 13:54:38.906792+00
98c3ff3e-ae38-4da4-84a7-30e8a2da794a	โทษ	tôot	1	2026-07-12 13:59:07.812808+00	2026-07-12 13:59:07.812808+00
5dae0e6d-2b01-4a6e-a6a1-76e3becefd9a	คนอื่น	kon ʉ̀ʉn	2	2026-07-12 13:59:58.288681+00	2026-07-12 14:02:37.569346+00
9a0f984f-28b5-48a7-aca7-ac70e65487cf	หรือเปล่า	rʉ̌ʉ bplào	2	2026-07-11 18:07:57.978754+00	2026-08-13 17:38:29.210629+00
b6f7ffa3-2f9b-490a-8392-1dfcd6b6c545	ไทย	tai	2	2026-07-12 20:20:59.351698+00	2026-10-16 19:50:52.826138+00
31e84952-18ba-4e15-a535-adc6a9ce7412	ฝัน	fǎn	1	2026-07-12 15:28:06.386528+00	2026-07-12 15:28:06.386528+00
3f5ea950-7cbf-45ec-80e2-f7e2f628004e	ดีๆ	dee dee	2	2026-07-12 15:29:36.543466+00	2026-07-12 15:33:34.924455+00
c9f5bed4-ea05-4e0f-a012-2ed5bcb8aa19	ๆ	ๆ	1	2026-07-12 15:36:39.564808+00	2026-07-12 15:36:39.564808+00
d84221bc-523b-42f2-a39f-2acd4e79cd56	ใจเย็นเย็น	jai yen yen	3	2026-07-12 16:03:49.129132+00	2026-07-12 16:06:07.846055+00
ead657ae-80d0-489d-a5bc-5fa3c5e8b517	เข้าใจ	kâo jai	1	2026-07-12 16:07:32.57552+00	2026-07-12 16:07:32.57552+00
3ec350a8-383e-4125-a490-4d47347d9f22	สู้	sûu	1	2026-07-12 16:10:32.017654+00	2026-07-12 16:10:32.017654+00
9c28b822-6653-47f0-8286-2289b6da8307	คิดถึง	kít tʉ̌ng	1	2026-07-12 16:14:14.708298+00	2026-07-12 16:14:14.708298+00
f050063d-3868-4575-bf0d-0edffe9732d2	อย่า	yàa	1	2026-07-12 18:57:03.967706+00	2026-07-12 18:57:03.967706+00
c2ecd4e3-f52b-4033-b711-8de6b725de48	เหมารวม	mǎo ruam	2	2026-07-12 18:58:29.903092+00	2026-07-12 19:00:00.148994+00
3ee6f214-5cc8-4680-914c-f9ac644f88d7	มัน	man	1	2026-07-12 19:05:09.315434+00	2026-07-12 19:05:09.315434+00
93f60e8e-bc09-479a-b507-ea6cc6b66c51	ชัด	chát	1	2026-07-12 19:06:20.244023+00	2026-07-12 19:06:20.244023+00
6ae57008-9641-402f-955c-d195261207e0	แน่ใจ	nâe jai	1	2026-07-12 19:12:02.585621+00	2026-07-12 19:12:02.585621+00
0cb46074-638c-4b76-8bde-ca6e988bb455	ตกหลุมรัก	dtòk lǔm rák	2	2026-07-14 12:54:22.302285+00	2026-07-14 12:54:59.78993+00
74d1ff2f-6a82-4c66-aee1-ffdfed72c285	ใคร	khrai	2	2026-07-14 13:51:08.845428+00	2026-08-16 17:12:19.140696+00
720240d3-7f10-48d7-a8f4-762a71251271	ยัง	yang	1	2026-07-12 20:10:38.094348+00	2026-07-12 20:10:38.094348+00
95c70591-7d5e-4fe4-a6a2-676cd02efd9e	ทานข้าว	taan kâao	2	2026-07-12 20:11:50.988628+00	2026-07-12 20:13:04.088521+00
964a7ed6-1ce4-4e7c-a758-6d4e6c8a3ef6	กินข้าว	gin kâao	2	2026-07-12 20:08:32.29823+00	2026-07-12 20:13:29.946589+00
25cff0c1-9eeb-48aa-a99c-7a3c6203c389	ให้จบ	hâi jòp	2	2026-07-12 18:44:58.028039+00	2026-07-12 20:14:08.023564+00
59696d1f-5fd8-4d14-896d-8ef9490de0fb	ภาษา	paa-săa	1	2026-07-12 20:15:30.263152+00	2026-07-12 20:15:30.263152+00
0f8c503a-f4e9-45e4-846e-d761006abc9c	เธอ	ter	3	2026-07-12 15:40:39.721918+00	2026-07-14 13:00:39.941953+00
e940c2ab-834a-4982-b3f6-bc310901cee2	นี่	nêe	2	2026-07-12 19:04:30.421052+00	2026-10-01 19:16:26.752872+00
2761a998-a32a-4f9e-be6d-0efa72a2a855	แก	gae	2	2026-07-14 13:05:50.871934+00	2026-07-14 13:13:19.888992+00
cd99aaf4-28f9-4711-bf5c-dc08a87a7152	เขา	khǎo	2	2026-07-14 13:07:44.748867+00	2026-07-14 13:24:00.509117+00
dff201e2-97b6-4405-9f22-71131d24ac40	อีก	ìik	1	2026-07-14 13:52:11.841155+00	2026-07-14 13:52:11.841155+00
04931822-1041-4598-a210-52465db70f03	เอาแต่	ao dtɛ̀ɛ	3	2026-07-12 13:58:24.398485+00	2026-08-09 13:25:10.845311+00
1684bd91-99f8-4e6c-905f-000d89db47e1	เมื่อก่อน	mêuua gòn	2	2026-07-14 14:08:05.543002+00	2026-07-14 14:10:11.625771+00
56e208c8-0d0d-43d6-9b6d-da595b7bf168	หลงรัก	lŏng rák	1	2026-07-14 14:15:10.340416+00	2026-07-14 14:15:10.340416+00
e30b3306-2f32-4e38-831c-c254d514e4f9	ชื่อ	chûue	1	2026-07-14 14:47:07.372947+00	2026-07-14 14:47:07.372947+00
cc919c1c-9cf9-4fb5-a091-0188302214b7	รอยยิ้ม	roi yím	3	2026-07-14 14:17:04.855788+00	2026-07-14 14:22:05.640607+00
4a2f5314-d1c9-4aea-9a36-c33b709038a9	ไอซ์	ai	1	2026-07-14 14:50:03.141584+00	2026-07-14 14:50:03.141584+00
dd8f4407-96c0-4744-b39e-a01a8345bdec	สมชาย	sǒm chaai	1	2026-07-14 14:51:31.032947+00	2026-07-14 14:51:31.032947+00
010a833c-48e2-4138-9430-d626c8762d4c	ชื่อเล่น	chʉ̂ʉ lên	1	2026-07-14 14:56:26.775135+00	2026-07-14 14:56:26.775135+00
494f3ec2-2e6d-4522-965b-34b2df97d72d	เรียก	rîak	1	2026-07-14 14:59:13.108133+00	2026-07-14 14:59:13.108133+00
cd2bfab2-1353-4e0a-9656-3673181be169	ขอ	khŏr	5	2026-07-11 17:46:04.140491+00	2026-07-30 20:47:04.778667+00
53e5ddbc-2452-4d3a-b624-5de8fa8db4b1	คุณ	khun	3	2026-07-12 00:20:06.401067+00	2026-07-16 13:03:08.110352+00
d0120c0f-af14-4f5f-9c96-b977413d4822	แอบชอบ	àep chôp	4	2026-07-14 14:01:52.875565+00	2026-08-09 13:09:27.176271+00
8ce66ca0-6cb8-442f-86bc-413f243a0008	ก็ได้	gɔ̂ɔ dâi	3	2026-07-11 17:22:01.853187+00	2026-10-18 20:22:13.505082+00
0a2562fa-3ddb-4394-85c4-6bf6431b2794	ก่อน	gòn	2	2026-07-12 18:45:58.847459+00	2026-10-16 12:08:41.733155+00
2ab06701-4337-4b4b-b5f8-ea16c6efc7e9	ไง	ngai	2	2026-07-12 19:10:14.260107+00	2026-10-16 12:08:41.733155+00
ac881166-15ee-4c24-96c4-e2dffdb4928c	สบายดี	sà-baai dee	3	2026-07-12 20:23:53.143972+00	2026-10-16 12:08:41.733155+00
3266364e-1322-4e39-ba4e-302f039fc3b6	ไหม	mǎi	6	2026-07-11 18:04:33.264172+00	2026-10-17 12:11:58.412259+00
04667276-4637-4cce-819a-e48ac5137338	ขอโทษ	khŏt-thôot	2	2026-07-11 17:20:32.512577+00	2026-10-16 12:02:35.734864+00
5a4d9a6f-2420-43d9-b220-c75e8b6f5cb2	อร่อย	à-rɔ̀ɔi	2	2026-07-16 20:12:32.074837+00	2026-07-17 00:51:01.49074+00
f294087c-59e3-4206-84ed-d32bbe094bb4	เร็ว	reo	1	2026-07-17 11:43:17.582758+00	2026-07-17 11:43:17.582758+00
6c2a2c31-d5f8-4363-9d64-5fcfef078569	สุวรรณ	sù-wǎn	1	2026-07-19 11:49:43.413029+00	2026-07-19 11:49:43.413029+00
074a3c21-7df4-49ce-9fbd-24d1c29ca0ee	ดี	dee	6	2026-07-14 15:03:04.550808+00	2026-07-14 15:18:07.48412+00
16592df5-9c44-4fb1-a297-830c11da7585	ว่า	wâa	2	2026-07-14 15:00:26.629364+00	2026-07-14 15:20:34.681051+00
5dab1535-8afc-4dc2-9119-b5a62afa53a1	ยินดี	yin dee	2	2026-07-14 15:29:06.698098+00	2026-07-14 15:35:03.470882+00
f08bcf0e-fda9-4000-975c-19434d890508	เรา	rao	3	2026-07-14 17:03:19.696773+00	2026-08-09 11:46:52.234603+00
b9a7384a-1711-40d9-894a-441824cbbe35	ที่	têe	2	2026-07-14 15:30:54.197251+00	2026-07-14 15:38:29.588582+00
ee42e9c6-645c-4207-95d6-0144b78980a4	ทำงาน	tam ngaan	1	2026-07-14 16:58:22.798972+00	2026-07-14 16:58:22.798972+00
7dc9b5e9-cf08-4649-b897-0bbcb979f14c	ดู	duu	1	2026-07-14 17:04:53.430155+00	2026-07-14 17:04:53.430155+00
a9c60000-4a9d-4098-9ae9-f21f2fc53452	หนัง	nǎng	1	2026-07-14 17:05:39.000614+00	2026-07-14 17:05:39.000614+00
0505ac2e-dad7-4ad6-8612-d6a896e4e4fc	รอ	rɔɔ	1	2026-07-14 17:13:09.461206+00	2026-07-14 17:13:09.461206+00
fe7a46f5-d0a5-437d-ac3a-353a170f0448	กี่โมง	gèe mohng	2	2026-07-14 17:21:04.952098+00	2026-07-14 17:24:32.273389+00
e1d66764-7488-4328-b863-bbc851d29a65	ไหน	nǎi	1	2026-07-14 17:28:01.957563+00	2026-07-14 17:28:01.957563+00
f918188b-d49e-4a36-98e8-4ccd7be45046	คบกัน	kóp gan	1	2026-07-14 18:23:49.347882+00	2026-07-14 18:23:49.347882+00
8d67bc32-3a75-4ed1-a77b-db050832fa1a	ทำไม	tam mai	1	2026-07-17 11:52:40.420679+00	2026-07-17 11:52:40.420679+00
56b3b0f7-1768-465d-8d0f-f87c69bc9155	สาย	sǎai	2	2026-07-17 11:51:23.176737+00	2026-07-17 11:55:07.031732+00
579650b8-0fbc-481a-8ee4-50a499b05247	อากาศ	aa gàat	2	2026-07-15 15:13:53.932458+00	2026-08-14 14:13:39.734528+00
c44ec669-b74f-4b3e-bd3b-1e73d030d1ec	โสด	sòot	1	2026-07-14 18:32:02.304751+00	2026-07-14 18:32:02.304751+00
e4957e2c-5fad-4894-8333-a039080ff3ad	สวย	sŭuay	1	2026-07-15 11:32:23.021007+00	2026-07-15 11:32:23.021007+00
048415fe-8c1d-4746-a7c7-634ccb8c25b5	มาก	mâak	1	2026-07-15 11:33:27.083955+00	2026-07-15 11:33:27.083955+00
791e5dc4-d335-4e10-9426-bffd9ae911d7	หล่อ	lɔ̀ɔ	1	2026-07-15 11:35:43.05402+00	2026-07-15 11:35:43.05402+00
b8528a4c-56e3-4cf8-bb92-ff5548d6295e	ซื้อ	séu	2	2026-07-16 19:43:54.075424+00	2026-10-18 16:53:14.16827+00
0fbec7bc-68de-45d5-98c7-38711bc1394d	ยังไง	yang ngai	3	2026-07-15 15:16:26.078608+00	2026-07-15 15:17:35.127654+00
360d19e0-c3aa-4fa9-a5d6-69a9a1008ee4	แนะนำ	nɛ́ nam	1	2026-07-17 20:23:44.033849+00	2026-07-17 20:23:44.033849+00
406ba82c-b9c5-4841-82d6-a072a571960a	เหมือน	mʉ̌an	3	2026-07-15 15:25:26.071753+00	2026-07-15 15:26:10.065247+00
4ef42334-6fe8-4ada-b898-202d0d026d80	จะ	jà	2	2026-07-14 17:27:00.429687+00	2026-07-15 15:26:38.80131+00
18edfd0c-9d54-46d5-8170-f40ba1b4fbb5	ฝน	fǒn	1	2026-07-15 15:27:21.44299+00	2026-07-15 15:27:21.44299+00
de0e0272-806b-4762-9ec7-158a156356b7	ตก	dtòk	1	2026-07-15 15:29:37.86387+00	2026-07-15 15:29:37.86387+00
df626a0c-6657-4011-84ee-ebf69d58bdd7	ร้อน	rɔ́ɔn	1	2026-07-15 15:32:54.319087+00	2026-07-15 15:32:54.319087+00
d805b888-7a70-4251-9686-e3fac2edd83b	ตาย	dtaai	1	2026-07-15 15:35:20.795301+00	2026-07-15 15:35:20.795301+00
f9661662-8508-477c-b691-388f64bdac9d	หวัง	wăng	1	2026-07-15 15:46:27.147721+00	2026-07-15 15:46:27.147721+00
1a3de1e3-75a5-42af-b8f9-f0f2e9941c63	สัปดาห์	sàp-daa	1	2026-07-15 15:52:20.064183+00	2026-07-15 15:52:20.064183+00
67a0ef9a-cf29-4e9c-b312-2256bba3305a	ปี	bpii	4	2026-07-15 15:53:25.123395+00	2026-10-16 14:13:58.971434+00
bccbb0d7-02e7-4c27-baf7-da0836ab4a9b	รู้	rúu	1	2026-07-16 12:31:38.005495+00	2026-07-16 12:31:38.005495+00
a0e59ba6-0874-4dd9-8247-ffb7562bd4bf	จำ	jam	1	2026-07-16 12:59:01.608085+00	2026-07-16 12:59:01.608085+00
d734fa96-93fd-45e8-8fd0-19382c022f7e	ทำ	tam	2	2026-07-14 16:50:43.079854+00	2026-07-16 19:24:15.96+00
96b6757b-f9ee-4b97-b213-6e3c3420c800	มี	mee	1	2026-07-16 19:25:44.584177+00	2026-07-16 19:25:44.584177+00
6afbb6be-f670-4adf-a61b-108a513ab88f	นามสกุล	naam sà gun	4	2026-07-19 11:33:29.061238+00	2026-10-17 15:36:04.260228+00
89b9dbb1-950a-40e8-ae60-4ee06c475686	อยู่	yùu	2	2026-07-14 16:54:03.690943+00	2026-07-16 19:29:28.885369+00
07ed8619-51ba-42ca-bb48-ce12c4efed41	ให้	hâi	1	2026-07-16 19:34:34.731624+00	2026-07-16 19:34:34.731624+00
be8dce35-235a-402b-9683-d39a1424f107	เอา	ao	1	2026-07-16 19:36:44.035441+00	2026-07-16 19:36:44.035441+00
178bd4b8-b287-4877-8ac3-45cdf6737f8d	คิด	kít	1	2026-07-16 19:38:56.902911+00	2026-07-16 19:38:56.902911+00
1b23921c-0c20-4d02-9f10-5e5d1ada0221	เข้า	khâo	1	2026-07-16 19:40:57.009331+00	2026-07-16 19:40:57.009331+00
42671086-bf81-4916-9b17-9747aa90a704	ออก	òk	1	2026-07-16 19:42:48.046334+00	2026-07-16 19:42:48.046334+00
1dc01a55-4a46-439a-a813-fc5d5cad740a	เห็น	hěn	1	2026-07-16 19:44:31.24863+00	2026-07-16 19:44:31.24863+00
b13244e6-44d8-4913-9a25-71b0bb5c9043	ห้อง	hông	2	2026-07-16 20:06:42.225592+00	2026-08-10 22:01:31.25929+00
9bb6f052-7598-4fc8-9982-becfaac345c5	น้ำ	náam	2	2026-07-16 20:07:58.502933+00	2026-07-16 20:13:00.209403+00
85d87e3e-d997-40d0-bf4a-9bf56891957e	อาหาร	aa-hǎan	2	2026-07-16 20:11:40.048534+00	2026-07-16 20:13:15.27027+00
883d57b8-7c8c-4f05-8fa8-72d2c001ccf0	เพื่อน	pʉ̂an	1	2026-07-17 20:24:25.531173+00	2026-07-17 20:24:25.531173+00
3a31e204-6993-4593-85ac-cadc7fadccc7	ล่ะ	lâ	1	2026-07-19 12:06:43.488622+00	2026-07-19 12:06:43.488622+00
a935fd40-99dc-4eb3-bb92-a242f726c764	ช้า	cháa	4	2026-07-17 11:44:55.10075+00	2026-10-17 15:51:49.188798+00
cc071945-2585-4603-978c-8a3b1fc0faef	คน	khon	1	2026-07-18 00:34:23.872013+00	2026-07-18 00:34:23.872013+00
d9218083-7f7a-42c0-ab2a-651463db5aae	แฟน	fan	1	2026-07-18 00:42:13.353138+00	2026-07-18 00:42:13.353138+00
0a66ded4-7bda-45c7-8b67-3bfdf76938d5	นั่ง	nâng	1	2026-07-19 13:15:29.456121+00	2026-07-19 13:15:29.456121+00
674d40df-8107-4942-980d-12be5094752f	ดื่ม	dèum	3	2026-07-16 19:21:11.303974+00	2026-10-18 16:49:22.83165+00
47cacd59-9b34-44ce-a5e9-2ac0bb526dea	ใช้	chái	1	2026-07-19 11:46:17.654303+00	2026-07-19 11:46:17.654303+00
c6386906-253a-44f1-a791-d8189a841cc2	สิ	sì	1	2026-07-19 13:16:28.473713+00	2026-07-19 13:16:28.473713+00
6207b34d-02a6-477e-a177-db1f5339104f	แป๊บ	bpɛ́ɛp	1	2026-07-19 13:21:51.13621+00	2026-07-19 13:21:51.13621+00
2f7c6214-06d9-4357-8c6f-f5b8de2c794b	นึง	nʉng	1	2026-07-19 13:26:28.070939+00	2026-07-19 13:26:28.070939+00
63378fb0-2680-4d61-9164-48d5912934c8	ค่อยๆ	kɔ̂ɔi kɔ̂ɔi	1	2026-07-19 13:34:12.492496+00	2026-07-19 13:34:12.492496+00
86fd1f68-8aa6-4b0a-bd80-587809eb9d48	ลองดู	lɔɔng duu	1	2026-07-19 13:37:01.503802+00	2026-07-19 13:37:01.503802+00
7fe42b1c-f507-4fc8-8833-c41f88a4890d	ลอง	lɔɔng	1	2026-07-19 13:39:56.933286+00	2026-07-19 13:39:56.933286+00
9a2bef1f-d343-4300-853d-9d272702aa93	ค่อย	kɔ̂ɔi	1	2026-07-19 13:41:49.075369+00	2026-07-19 13:41:49.075369+00
91d85fb3-295e-4747-b8a9-4728cc08c87e	ช่วย	chûay	1	2026-07-19 13:43:05.411408+00	2026-07-19 13:43:05.411408+00
99379482-30aa-41d4-8bb2-e3344c650c06	บอก	bɔ̀ɔk	1	2026-07-19 13:49:29.912855+00	2026-07-19 13:49:29.912855+00
b4560d43-fcbf-467e-993c-664fe87ddf3e	นิว	niu	1	2026-07-19 13:51:51.625466+00	2026-07-19 13:51:51.625466+00
d3118e01-9d64-4155-be95-8ac21ee2573a	ไฟ	fai	1	2026-07-19 13:54:04.799875+00	2026-07-19 13:54:04.799875+00
a71eafe1-67b5-46e9-b539-e4bb7f50ac52	ไหม้	mâi	1	2026-07-19 13:55:13.041862+00	2026-07-19 13:55:13.041862+00
89c0dc87-fec8-4295-ab13-a5ec3d0acc9f	ไฟไหม้	fai mâi	3	2026-07-19 13:57:37.685663+00	2026-07-19 13:59:11.13761+00
122bf560-0140-466f-8f3c-ca23e67da333	หน่อย	nòi	2	2026-07-19 13:43:55.54265+00	2026-07-30 20:48:22.572849+00
24dc3b56-8393-47b5-89b1-ad4d8cd3b1ee	พี่	pîi	3	2026-07-14 17:11:51.601598+00	2026-07-19 14:21:00.893141+00
2bcbadc9-a0f9-4533-a48b-7b9097e6b117	มา	maa	3	2026-07-16 19:23:51.14236+00	2026-07-19 14:43:12.041622+00
da5bee71-61a5-44cf-bec0-09ce8850bb19	รู้จัก	rúu-jàk	3	2026-07-14 15:32:25.295548+00	2026-08-07 14:40:20.230234+00
9393823b-84ec-426a-acb3-c9836aba9515	ครอบครัว	krôp-kruua	3	2026-07-15 11:29:37.695371+00	2026-08-08 22:43:27.518318+00
20481264-edc6-4a6f-a099-a5bdf95afcda	เราสองคน	rao sǒong khon	5	2026-07-14 18:20:33.884056+00	2026-08-14 13:39:38.022941+00
ab2d28c6-5e66-4ed2-a87b-6965c8127a00	ฝนตก	fǒn dtòk	3	2026-07-15 15:21:14.881314+00	2026-08-14 14:13:03.615159+00
ecf86558-ce69-45be-a838-492cd8107101	วันนี้	wan níi	2	2026-07-15 15:13:15.300641+00	2026-08-15 13:53:24.881644+00
313fba60-2d1c-47c5-9268-2d496b9a2fa8	ไป	bpai	2	2026-07-14 17:27:36.16056+00	2026-10-16 12:08:41.733155+00
24a36abd-8464-43dd-ba6a-2bece1be6436	ห้องน้ำ	hông náam	8	2026-07-16 20:05:03.243122+00	2026-10-21 18:58:57.209023+00
b4884754-5f34-4079-b8ed-43a4d9acd9f2	พรุ่งนี้	phrûng-níi	2	2026-07-15 16:00:36.423084+00	2026-10-01 19:14:28.679772+00
f547e810-8f59-432b-b0a1-1032ba0a029a	ขอบใจ	kòp jai	5	2026-07-18 00:32:55.725941+00	2026-10-16 12:02:35.734864+00
e859235d-1530-400b-b52d-1942646f8d1f	เล่น	lên	3	2026-07-16 19:50:54.828212+00	2026-10-21 12:01:15.341236+00
e466d8bf-af6a-4cbe-98ac-3ba3a2f12e03	ที่ไหน	tîi nǎi	3	2026-07-16 20:10:41.305469+00	2026-10-18 18:44:08.064949+00
d1fcce06-a6ce-4471-bf25-0c9b720b4727	ยุ่ง	yûng	2	2026-07-19 14:06:59.682257+00	2026-07-19 14:09:25.871153+00
fb20d49d-e74f-41e2-b573-90c1a7b76a3a	หนู	nǔu	2	2026-07-23 14:29:53.935301+00	2026-08-10 20:05:20.427489+00
0c92f37b-1583-4678-bac5-70c066d60cff	น้อง	nóng	3	2026-07-19 14:20:03.967385+00	2026-08-08 22:20:16.633869+00
b73c268d-0d7e-4aaa-b6de-a29c9cb7a6b8	แท้	tɛ́ɛ	1	2026-07-19 14:22:35.834038+00	2026-07-19 14:22:35.834038+00
4718b57b-f3b9-4358-9fde-eb953b54d1d4	ท้อง	tɔ́ɔng	1	2026-07-19 14:28:41.750396+00	2026-07-19 14:28:41.750396+00
4e6eefd5-dc64-49ae-85ca-65555063c849	เดียว	diao	2	2026-07-19 14:29:31.268803+00	2026-07-19 14:33:00.225787+00
2f921bc1-d32b-46d5-8dc1-eb36dbc35953	ด้วยกัน	dûai gan	2	2026-07-19 14:34:33.360905+00	2026-07-19 14:35:37.313036+00
ebcc9ed7-5ed6-4ff3-bd77-fb090f39d192	โต	dtoh	2	2026-07-19 14:37:20.497425+00	2026-07-19 14:40:30.955457+00
251f3c5e-5c6b-48dc-bcf9-2f9c119100ec	เปลี่ยน	bplìan	1	2026-07-19 14:47:08.918594+00	2026-07-19 14:47:08.918594+00
bed4514c-ccbf-4cdf-9d1a-0f2e08ff0765	แบบนี้	bɛ̀ɛp níi	1	2026-07-19 14:56:22.164313+00	2026-07-19 14:56:22.164313+00
e7502b02-0777-4b67-a250-7094e6651fba	นาน	naan	1	2026-07-19 14:57:11.295217+00	2026-07-19 14:57:11.295217+00
ee6aa9a3-356e-4e4f-99c0-780909a3964f	สำคัญ	sǎm kan	1	2026-07-19 14:59:36.349461+00	2026-07-19 14:59:36.349461+00
cc5feae1-68e2-4bec-bc4b-66d648355303	สี่	sèe	2	2026-08-04 20:28:16.516072+00	2026-08-04 20:29:29.391098+00
a9c55d6d-8c26-4ebb-8a36-97980a6fec4e	ที่สุด	tîi sùt	3	2026-07-19 15:00:18.825339+00	2026-07-19 15:03:45.332537+00
93f25f21-8324-4386-a760-df36735078a6	สถานี	sà-tǎa-nii	1	2026-07-22 14:59:15.81191+00	2026-07-22 14:59:15.81191+00
53a63fd1-4abe-42ea-924d-340d43a05a9a	หลงทาง	lǒng taang	1	2026-07-22 15:04:05.683046+00	2026-07-22 15:04:05.683046+00
d510bdb1-9ba8-4cf9-9d7b-b20d9860a377	เดิน	dəən	1	2026-07-22 15:16:09.210339+00	2026-07-22 15:16:09.210339+00
cdbb406a-48b5-4dce-8cb8-7711b44505a0	เวลา	wee laa	1	2026-07-22 15:19:19.893604+00	2026-07-22 15:19:19.893604+00
516242ee-cea7-40b9-bf1c-c4483ba3afd5	กี่	gèe	1	2026-07-22 15:20:08.516496+00	2026-07-22 15:20:08.516496+00
427232e7-e9df-42b5-99a8-cfed64481555	นาที	naa-tee	1	2026-07-22 15:21:04.681218+00	2026-07-22 15:21:04.681218+00
d71ea565-1f33-4087-9c41-d3f9f09e5838	ไกล	glai	1	2026-07-22 15:23:38.506588+00	2026-07-22 15:23:38.506588+00
8980d4bf-d160-4e3a-b7ad-d4df55921539	ใกล้	glâi	1	2026-07-22 15:24:50.694847+00	2026-07-22 15:24:50.694847+00
542f8e6c-5aa6-40cd-a773-53745811a2ca	เลี้ยว	líao	1	2026-07-22 16:12:28.47915+00	2026-07-22 16:12:28.47915+00
dd1e9e56-bd20-4f1f-a7f3-97b573d771da	ซ้าย	sáai	1	2026-07-22 16:13:24.500175+00	2026-07-22 16:13:24.500175+00
a4ea1f51-4293-4260-a940-e664e30d49b5	ตรงไหน	dtrong năi	1	2026-07-22 16:19:44.827668+00	2026-07-22 16:19:44.827668+00
07198338-dc9d-45b5-aafd-99cdf006a407	ร้าน	ráan	1	2026-07-22 16:28:09.490627+00	2026-07-22 16:28:09.490627+00
0ca69988-6afb-4353-85f4-0289a415de75	ทาง	taang	1	2026-07-22 16:29:49.370488+00	2026-07-22 16:29:49.370488+00
cede9977-eb16-445f-9595-52243ae46f0e	ขวา	kwǎa	1	2026-07-22 16:30:33.872425+00	2026-07-22 16:30:33.872425+00
0d78f30c-f2a2-4783-9e0a-e9b091e144cb	เหนื่อย	nèuuay	1	2026-07-23 14:08:10.00239+00	2026-07-23 14:08:10.00239+00
7292736e-779a-49f4-8fbd-73713a66f550	หิว	hǐu	1	2026-07-23 14:10:24.351743+00	2026-07-23 14:10:24.351743+00
d9a940c7-d443-421c-9eb9-fc6826ebd5d7	ง่วง	ngûuang	1	2026-07-23 14:14:12.426751+00	2026-07-23 14:14:12.426751+00
87f2b6ab-0564-4f39-a96f-17584aa91891	สบาย	sà-baai	1	2026-07-23 14:31:29.819859+00	2026-07-23 14:31:29.819859+00
928dc3a5-3c0e-47e0-a7b6-b4205bc60956	ไม่สบาย	mâi sà-baai	1	2026-07-23 14:35:04.800906+00	2026-07-23 14:35:04.800906+00
006a6b57-2846-45ad-86b7-5b02613cb314	มีความสุข	mee kwaam sùk	1	2026-07-23 14:39:44.079372+00	2026-07-23 14:39:44.079372+00
355f48fa-1aaf-4fa5-996f-58973fa91316	เมนู	may-noo	1	2026-07-30 20:20:09.138504+00	2026-07-30 20:20:09.138504+00
4ca4ba7e-71ab-4055-b227-6f139f37cba9	ผัดไทย	pàt tai	1	2026-07-30 20:24:59.336723+00	2026-07-30 20:24:59.336723+00
dd8da1a4-48c7-4615-96bc-a5bcf530fff6	เผ็ด	pèt	1	2026-07-30 20:26:20.537942+00	2026-07-30 20:26:20.537942+00
d039c6d6-4dec-4edf-baf2-478645f4b5b4	สั่ง	sàng	2	2026-07-30 20:23:31.247455+00	2026-07-30 20:32:12.307879+00
ca894376-d516-45ba-8e7a-85a613a4f606	น้ำแข็ง	náam kăeng	1	2026-07-30 20:35:04.782045+00	2026-07-30 20:35:04.782045+00
40fac41e-705d-4a1b-9777-2806292fe81e	เพิ่ม	pêrm	1	2026-07-30 20:36:49.177376+00	2026-07-30 20:36:49.177376+00
f0b116b9-5686-4b81-a3b0-b67ea704e8d0	ช้อน	chón	1	2026-07-30 20:38:28.996416+00	2026-07-30 20:38:28.996416+00
5be6b07b-f5d1-4e2e-ae1e-a83d3be40b67	ส้อม	sôm	1	2026-07-30 20:39:10.779217+00	2026-07-30 20:39:10.779217+00
573b6e61-b0b6-46c5-8df5-30d16ee423b5	ช้อนส้อม	chón sôm	2	2026-07-30 20:40:41.907784+00	2026-07-30 20:41:59.092029+00
79c714ae-4513-416e-a0dc-6758076b6140	ตะเกียบ	dtà-gìiap	1	2026-07-30 20:43:02.674491+00	2026-07-30 20:43:02.674491+00
727b139b-5e70-47d0-8670-415de015a10d	ด้วย	dûai	1	2026-07-30 20:43:50.440257+00	2026-07-30 20:43:50.440257+00
742a5037-16a4-479a-934f-a482fc842688	ราคา	raa-kaa	1	2026-07-30 21:00:20.693418+00	2026-07-30 21:00:20.693418+00
bddbb92c-42fb-4a10-bd2a-c97d060a08fd	เท่าไหร่	tâo rài	1	2026-07-30 21:02:32.175103+00	2026-07-30 21:02:32.175103+00
19e44d4d-2569-49ab-a31d-67e7be25d5da	จ่าย	jàai	1	2026-07-30 21:05:38.489449+00	2026-07-30 21:05:38.489449+00
04b6b2b2-0eca-440e-a978-2ee7ac7514f9	บัตร	bàt	1	2026-07-30 21:07:26.297355+00	2026-07-30 21:07:26.297355+00
74527efe-0e75-4e85-846c-5d4c0a788fc4	เงินสด	ngern sòt	1	2026-07-30 21:12:06.969411+00	2026-07-30 21:12:06.969411+00
b7b207ec-c4b7-4840-8c34-2c322b28da49	บัตรเครดิต	bàt kree-dìt	1	2026-07-30 21:16:24.167014+00	2026-07-30 21:16:24.167014+00
276c6b89-dba8-4c8f-b030-e3e6b344338c	นัด	nát	1	2026-07-31 09:23:32.5328+00	2026-07-31 09:23:32.5328+00
a15804d3-18ea-4d21-af5a-23ec2c9a19d6	อาการ	aa-gaan	1	2026-07-31 09:27:12.125133+00	2026-07-31 09:27:12.125133+00
948564ab-6d36-4731-ae02-9b9d405f9a23	ปวดหัว	bpùuat hŭua	1	2026-07-31 09:29:05.837136+00	2026-07-31 09:29:05.837136+00
2016141d-57ca-4d7d-bfd0-b3905486e4b7	หนึ่ง	nèung	2	2026-08-04 20:26:00.872595+00	2026-08-04 20:29:15.232157+00
aecf76fb-c8d4-4df7-a70e-8da6078752e4	ห้า	hâa	2	2026-08-04 20:28:52.129417+00	2026-08-04 20:29:22.095541+00
af2048d4-421c-4f45-827a-3a3d54f1a2f8	ฟ้า	fáa	1	2026-08-07 12:44:18.351715+00	2026-08-07 12:44:18.351715+00
c97ea37c-6756-407f-a575-a2197b55e3d6	สาม	săam	3	2026-08-04 20:27:15.690786+00	2026-08-04 20:29:41.54069+00
c04640ee-58c8-4b5f-a5c6-78d8795aae04	สอง	sŏng	2	2026-08-04 20:26:35.481744+00	2026-08-04 20:29:47.884084+00
affc924d-8d0a-41b6-b2b5-8b4c3e3462a0	หก	hòk	1	2026-08-04 20:30:58.823944+00	2026-08-04 20:30:58.823944+00
27590c89-4faf-458d-a5ea-9fddb2ea0e07	เจ็ด	jèt	1	2026-08-04 20:31:28.8905+00	2026-08-04 20:31:28.8905+00
236be915-86bd-4bce-b821-081e43399286	แปด	bpàet	1	2026-08-04 20:31:59.321966+00	2026-08-04 20:31:59.321966+00
c2e9fa3a-fd7f-4538-bc39-cd65a47b1cf1	เก้า	gâo	1	2026-08-04 20:32:45.039953+00	2026-08-04 20:32:45.039953+00
1ff423b9-21c8-4dd5-b02c-6daf1607cf6d	สิบ	sìp	1	2026-08-04 20:33:16.134553+00	2026-08-04 20:33:16.134553+00
7fa45d97-7e7b-4dd8-82ba-d44065fe9fee	แดง	daeng	2	2026-08-07 12:36:22.883855+00	2026-08-07 12:37:05.209665+00
5f06f83b-745b-4e5f-9e3d-46d41d2d3890	สี	sĕe	1	2026-08-07 12:46:37.675534+00	2026-08-07 12:46:37.675534+00
ba90731d-0b43-4be2-9999-dff47199173b	เหลือง	lĕuuang	1	2026-08-07 12:47:35.747455+00	2026-08-07 12:47:35.747455+00
485d3d23-27bf-4a42-a82b-bcb580766152	เขียว	kĭieow	1	2026-08-07 12:48:31.851404+00	2026-08-07 12:48:31.851404+00
bd55fd96-9056-47b6-aa12-26db8df4abd7	ส้ม	sôm	1	2026-08-07 12:50:21.914662+00	2026-08-07 12:50:21.914662+00
23471d9e-8d9e-4e15-9dce-a8c100da742e	ชมพู	chom-poo	1	2026-08-07 12:50:53.065111+00	2026-08-07 12:50:53.065111+00
57cd28e9-243c-4f9e-b9de-2d371a9df21f	ม่วง	mûuang	1	2026-08-07 12:51:36.002047+00	2026-08-07 12:51:36.002047+00
8e04fc19-a89f-4a3f-a078-8a23c94b06fe	ขาว	kăao	1	2026-08-07 12:52:14.559139+00	2026-08-07 12:52:14.559139+00
f8dd1da0-0c0b-4e54-9a00-b226e4c7e776	ดำ	dam	1	2026-08-07 12:52:56.312303+00	2026-08-07 12:52:56.312303+00
0dcca71f-6b32-4c32-8ce6-2a01e8d7e1c6	น้ำตาล	nám dtaan	1	2026-08-07 12:53:44.744133+00	2026-08-07 12:53:44.744133+00
195f5bab-4874-442c-bafa-e8c91d73979a	และ	láe	1	2026-08-07 12:58:37.10863+00	2026-08-07 12:58:37.10863+00
9eb42568-f457-44a9-91ad-71212ac31377	หมอ	mŏr	2	2026-07-31 09:24:27.199467+00	2026-08-13 21:07:37.2176+00
5b020af3-4e7b-406e-bd34-d8e7b78b2994	ตรงนี้	dtrong níi	2	2026-07-22 16:09:37.852641+00	2026-08-10 21:38:17.584534+00
12495e18-3d51-4887-acf4-154f982a1961	ตรงนั้น	dtrong nân	4	2026-07-22 16:14:55.983862+00	2026-10-18 17:50:51.357359+00
fc946d65-5a33-44c6-a8b9-09da96b6a810	ร้านอาหาร	ráan aa-hăan	2	2026-07-22 15:28:59.876868+00	2026-08-13 21:54:21.626445+00
daf0dcd2-1131-417a-88b6-31e37d56d2cf	เลย	loei	2	2026-07-19 14:11:47.334686+00	2026-08-14 13:47:33.318448+00
04afe690-cfda-4ee6-9862-2870768ab5cb	รถไฟ	rót fai	3	2026-07-22 15:00:42.400598+00	2026-09-26 19:05:25.838467+00
13befe2f-8a68-4521-aa09-b79a108dd671	สีฟ้า	sĕe fáa	2	2026-08-07 12:45:59.226215+00	2026-10-16 14:28:23.796278+00
bf79f460-b40f-4dda-94e1-42e2c92110c5	น้ำเงิน	náam ngern	2	2026-08-07 12:54:39.715656+00	2026-10-16 14:28:33.713553+00
255c0967-4a9f-4c38-9dd9-464a22bc207c	อันนี้	an níi	4	2026-07-30 20:59:50.298392+00	2026-10-18 16:35:09.220298+00
fbbc67f0-12fe-49cb-a1d6-40eee4f8fea5	นิดหน่อย	nít nòi	3	2026-07-30 20:30:07.583525+00	2026-10-17 14:12:25.358416+00
f0afbfa8-d4a3-475d-9805-d59736689bc6	รับ	ráp	2	2026-07-30 21:15:10.445951+00	2026-10-21 10:51:57.459323+00
ca43957a-9351-44cf-8b09-8a167d8e32ec	ยี่สิบ	yêe sìp	3	2026-08-04 20:37:30.83309+00	2026-10-21 18:49:25.307866+00
2c645c23-af15-4100-b2ad-da7204cf980d	เพราะว่า	prór wâa	1	2026-08-07 13:01:25.881895+00	2026-08-07 13:01:25.881895+00
7c63a00b-68ee-4ea8-871b-ecc150992299	ถ้า	tâa	1	2026-08-07 13:02:25.630956+00	2026-08-07 13:02:25.630956+00
696b1f91-7336-40d1-ab24-5b9f85ca9ca2	รถ	rót	1	2026-08-07 13:56:46.521496+00	2026-08-07 13:56:46.521496+00
cc9052a4-7935-4284-98bd-a1ad034d3a6c	รถบัส	rót bàt	1	2026-08-07 14:09:52.289255+00	2026-08-07 14:09:52.289255+00
a00e9db7-e87e-4510-8fed-acb892403600	เรือ	reuua	1	2026-08-07 14:11:07.691344+00	2026-08-07 14:11:07.691344+00
6bf30728-9bd0-48bb-a7ce-111ce5a786d7	กีฬา	gee-laa	1	2026-08-07 14:13:16.85879+00	2026-08-07 14:13:16.85879+00
bb55cb55-5646-4a08-8c9d-41acde19e000	ชนะ	chá-ná	1	2026-08-07 14:15:16.478806+00	2026-08-07 14:15:16.478806+00
1e7ea5cf-6255-4906-a141-fb04a183fb77	วิ่ง	wîng	1	2026-08-07 14:16:49.123153+00	2026-08-07 14:16:49.123153+00
f9ce1e6d-6081-4a57-a78c-c04834656273	มวย	muuay	1	2026-08-07 14:25:44.876042+00	2026-08-07 14:25:44.876042+00
1ed02bd7-d320-46d3-9541-70912d731118	นอน	non	1	2026-08-07 14:38:16.091544+00	2026-08-07 14:38:16.091544+00
be35bbcb-7c65-40af-bf15-acfec1845497	ได้ยิน	dâai yin	1	2026-08-07 14:39:35.275912+00	2026-08-07 14:39:35.275912+00
c8eefea9-5b0d-4a77-af22-3da9a746bcf2	ชอบ	chôp	1	2026-08-07 14:41:25.086988+00	2026-08-07 14:41:25.086988+00
659f517f-b2d3-41a8-9255-01b13e1987f6	เรียน	riian	1	2026-08-07 14:42:28.280091+00	2026-08-07 14:42:28.280091+00
16cf756e-0c4f-4a86-a76b-fb611c453df8	นักเรียน	nák riian	1	2026-08-07 14:43:06.133512+00	2026-08-07 14:43:06.133512+00
fa3b3e37-ece1-4c2e-98c8-f35974e6820f	ขาย	kăai	1	2026-08-07 14:44:01.107587+00	2026-08-07 14:44:01.107587+00
06a24d1f-6c25-47aa-a6f8-0bc366df53eb	เปิด	bpèrt	1	2026-08-07 14:44:51.59433+00	2026-08-07 14:44:51.59433+00
aeb14fbb-96a8-4f13-aea7-90f9f382a5ec	ปิด	bpìt	1	2026-08-07 14:45:28.411606+00	2026-08-07 14:45:28.411606+00
db55699d-d06a-4d62-93fe-e257cb6b0cd2	เริ่ม	rêrm	1	2026-08-07 14:46:07.738412+00	2026-08-07 14:46:07.738412+00
165b449b-bff2-4b28-a35a-e502c3b7e83d	เสร็จ	sèt	1	2026-08-07 14:56:44.445071+00	2026-08-07 14:56:44.445071+00
d434feb0-e234-4b96-9037-6ea8eff4afce	ถาม	tăam	1	2026-08-07 14:57:32.923506+00	2026-08-07 14:57:32.923506+00
bf90953f-2aa0-498c-909a-94f95c7e258d	ตอบ	dtòp	1	2026-08-07 14:58:09.440369+00	2026-08-07 14:58:09.440369+00
7ae3cbcf-9727-41f9-8537-7398de49608e	น้ำตา	náam dtaa	1	2026-08-07 15:02:15.605222+00	2026-08-07 15:02:15.605222+00
353563bf-01e2-4cf1-9151-e37b25286120	ปาก	bpàak	1	2026-08-07 15:04:23.957469+00	2026-08-07 15:04:23.957469+00
0a4112bf-249d-4aeb-9eba-8def36df8283	หัว	hŭua	2	2026-08-07 15:00:00.711452+00	2026-08-07 15:04:55.63137+00
dd2a43d1-7c4b-4e4b-b18e-107e359350b0	หน้า	nâa	2	2026-08-07 15:00:52.730879+00	2026-08-07 15:05:08.27411+00
a7b483b2-fb38-45c3-9383-5ef069ed111d	ตา	dtaa	2	2026-08-07 15:01:42.538081+00	2026-08-07 15:05:20.597682+00
fe94f024-1191-4389-9f68-7adb2bd332bf	จมูก	jà-mòok	2	2026-08-07 15:03:37.933974+00	2026-08-07 15:05:31.358413+00
d9cf2f8c-f26b-457b-80b3-52dffeb9fc47	หู	hŏo	2	2026-08-07 15:03:09.250754+00	2026-08-07 15:05:39.730453+00
1cac4e6f-00b1-4e56-b9f1-c43375a52f5e	ฟัน	fan	1	2026-08-07 15:06:40.481476+00	2026-08-07 15:06:40.481476+00
bdbf7231-cfd3-44dc-b60a-e6caf6ccefcb	ลิ้น	lín	1	2026-08-07 15:07:11.680687+00	2026-08-07 15:07:11.680687+00
1a7498ce-d601-4cfc-9987-e6918ac54102	คอ	kor	1	2026-08-07 15:14:41.745213+00	2026-08-07 15:14:41.745213+00
877cbc47-2ebd-4396-bd12-f06fb491d17f	ไหล่	lài	1	2026-08-07 15:15:21.526187+00	2026-08-07 15:15:21.526187+00
5058f059-f1ec-499d-bdb4-306737099452	แขน	kăen	1	2026-08-07 15:15:52.551068+00	2026-08-07 15:15:52.551068+00
89f4caab-2a1b-4dc9-94a9-8d4c7a0cc700	ข้อศอก	kôr sòk	1	2026-08-07 15:16:26.157206+00	2026-08-07 15:16:26.157206+00
a8179e6e-cbac-40e2-b05a-e555c271cdfb	มือ	meu	1	2026-08-07 15:17:25.061699+00	2026-08-07 15:17:25.061699+00
34740491-af35-4dd5-b428-ee5703717e8a	ขา	kăa	1	2026-08-07 15:18:24.205295+00	2026-08-07 15:18:24.205295+00
529b16dd-c627-489e-a101-d09286b15125	เท้า	táo	1	2026-08-07 15:19:08.571588+00	2026-08-07 15:19:08.571588+00
9d6b964a-01ba-40ea-9a48-e9bd3fd77ea5	เศร้า	sâo	1	2026-08-07 15:20:35.503706+00	2026-08-07 15:20:35.503706+00
527d01fb-f114-4e61-8454-1c3c98dea6b1	โกรธ	gròht	1	2026-08-07 15:21:43.774977+00	2026-08-07 15:21:43.774977+00
5e5a486f-ae3a-4882-b198-2cb31fcdfc1c	กลัว	gluua	1	2026-08-07 15:22:57.519802+00	2026-08-07 15:22:57.519802+00
7d0c7ac5-d8fa-4f11-8158-0f8185ef2de0	กังวล	gang-won	1	2026-08-07 15:24:23.781066+00	2026-08-07 15:24:23.781066+00
aa788336-c81a-42b4-be9f-5b3eab1baea2	ตกใจ	dtòk jai	2	2026-08-07 15:50:18.216968+00	2026-08-07 15:51:53.81398+00
60c74b2f-fbd9-4fdf-8ea8-dfb0930b819f	ตื่นเต้น	dtèun dtên	1	2026-08-07 15:53:06.366938+00	2026-08-07 15:53:06.366938+00
74b1ff14-5dd1-4050-ab6f-a6bdaa244827	ประหม่า	bprà-màa	1	2026-08-07 15:54:21.280783+00	2026-08-07 15:54:21.280783+00
6c767e36-db0f-48d2-83d1-ed0bf95d498d	มั่นใจ	mân jai	2	2026-08-07 15:55:58.989394+00	2026-08-07 15:56:36.073591+00
f9f96579-ba9e-484d-b483-a190d76dcd3b	สงบ	sà-ngòp	1	2026-08-07 15:57:36.272992+00	2026-08-07 15:57:36.272992+00
f4c0ffed-81cf-4bea-8b18-9f9bae03f70c	ทีหลัง	tee lăng	1	2026-08-07 16:02:02.339735+00	2026-08-07 16:02:02.339735+00
70b9a896-6351-4461-b22e-aab0a6ecb9b2	เสมอ	sà-mĕr	1	2026-08-07 16:05:17.076691+00	2026-08-07 16:05:17.076691+00
792d4c93-6aed-4147-a024-c8fbc1d219b4	บ่อย	bòi	1	2026-08-07 16:05:52.443418+00	2026-08-07 16:05:52.443418+00
4c4aa48f-e448-4465-b4b9-2be6738996b1	คือ	khuu	2	2026-08-07 16:22:36.912323+00	2026-08-07 16:25:14.155261+00
dcdd3e8d-0be5-4011-ac44-02cf4fdf0149	ลูกคนเดียว	lûuk khon diao	2	2026-08-08 22:47:04.119087+00	2026-10-17 13:42:59.701794+00
3ef20484-b5b7-4f38-88a2-23d65c202cf2	แม่	mâe	1	2026-08-08 22:22:18.771341+00	2026-08-08 22:22:18.771341+00
22d98275-ce41-4fc6-9319-5cf8a0708560	พ่อ	pôr	1	2026-08-08 22:23:57.675655+00	2026-08-08 22:23:57.675655+00
5d47a774-da14-4919-8c1e-1fdc8810adfd	กลาง	glaang	1	2026-08-08 22:34:30.627723+00	2026-08-08 22:34:30.627723+00
0c1c9780-612d-4068-bdfa-d0f9f279ec34	อาศัย	aa-săi	1	2026-08-08 22:36:39.291015+00	2026-08-08 22:36:39.291015+00
06e07806-2fc4-4ba6-9277-86059fa085cb	ใหญ่	yài	1	2026-08-08 22:41:24.358408+00	2026-08-08 22:41:24.358408+00
dbf1ea76-995e-4a01-9a7b-0e530671a6ad	ว่ายน้ำ	wâai náam	2	2026-08-07 14:24:20.102615+00	2026-10-18 17:24:53.0025+00
e2fa42ca-9b1c-451c-879c-80f98784d75f	แรก	râek	1	2026-08-08 22:52:55.273292+00	2026-08-08 22:52:55.273292+00
92bf7f8e-c4a6-4e99-a5c9-b0bd38aa46d3	ลูกคนแรก	lûuk khon râek	2	2026-08-08 22:51:45.646245+00	2026-10-17 13:43:58.171471+00
189c9826-b1bc-44de-b0d9-c198b68574d8	อาศัยอยู่	aa-săi yùu	2	2026-08-08 22:38:05.997064+00	2026-08-10 21:33:36.884027+00
846dd78d-3908-4dcd-934b-9bc7203b8bdf	เล็ก	lék	2	2026-08-08 22:49:01.895464+00	2026-08-08 22:56:12.831482+00
c6b4cd31-f1da-4309-914c-330e1369e364	ลูกคนโต	lûuk khon dtoh	4	2026-08-08 22:30:22.090142+00	2026-10-17 13:43:49.489159+00
3a8e2fff-819e-40ac-ab11-685cc10b596e	เกิด	gèrt	1	2026-08-09 10:44:53.140702+00	2026-08-09 10:44:53.140702+00
ace987a0-12df-4b2b-85bc-3da9af77bad0	แผน	păen	1	2026-08-09 11:11:26.167001+00	2026-08-09 11:11:26.167001+00
7ddfddd9-5c85-4036-9e42-66719d3fb8ef	สุดสัปดาห์	sùt sàp-daa	1	2026-08-09 11:14:18.203168+00	2026-08-09 11:14:18.203168+00
c830751d-f047-452d-bf0b-316a7584ce61	ว่าง	wâang	2	2026-08-09 11:17:45.92586+00	2026-08-09 11:18:42.061741+00
e82d2801-3704-41bd-bd7c-eecb0562fbf2	ว่างงาน	wâang ngaan	1	2026-08-09 11:20:53.821855+00	2026-08-09 11:20:53.821855+00
f2d7aa77-52b7-4eb1-9edb-71b28fcb7353	คืนนี้	keun níi	2	2026-08-09 11:16:42.600523+00	2026-08-10 21:38:25.189405+00
7f7a9f33-3594-4097-8497-465caf09e717	กระโดด	grà-dòht	2	2026-08-07 14:23:27.054903+00	2026-08-10 21:40:46.713371+00
510533c4-00f9-44b4-8420-7a58c8991297	ทุกวัน	túk wan	2	2026-08-07 16:02:55.429342+00	2026-08-15 13:54:50.654974+00
44a20ab7-fb60-42a7-8b1a-694ea21d16b2	ทุกคน	túk khon	2	2026-08-07 16:03:44.764866+00	2026-08-15 13:55:32.051012+00
5371fc9f-0c88-4545-84cb-e04e13743279	พี่น้อง	pîi nóng	4	2026-07-19 14:17:31.850219+00	2026-10-15 23:03:21.707961+00
1ef84cc6-22c9-4cbd-813f-d72f6ad8f198	พ่อแม่	pôr mâe	2	2026-08-08 22:22:55.748607+00	2026-08-25 21:31:06.130055+00
64ff2c9d-9025-4242-89c7-7674863ec0d7	ขึ้น	kêun	2	2026-08-09 10:57:21.385677+00	2026-08-28 20:29:26.427068+00
b58bba15-467f-4053-b863-d2288341d0bc	ผู้เล่น	phûu lên	3	2026-08-07 14:13:58.915101+00	2026-09-26 19:17:47.838431+00
8ff15f54-e68b-47f0-a734-e0154936f6d8	น้องชาย	nóng chaai	2	2026-08-08 22:20:45.835503+00	2026-10-21 19:27:53.054731+00
04c9df93-6987-46e6-9339-2f2dbdeb1679	สามี	săa-mii	2	2026-08-08 22:58:29.087731+00	2026-10-17 13:43:19.373538+00
d96e9887-1be2-4a7a-a370-f3028299fe84	ภรรยา	phan-rá-yaa	2	2026-08-08 22:59:27.841414+00	2026-10-17 13:43:28.655416+00
17e2a0d0-7437-42e8-9173-ac76c87762fc	ลูก	lûuk	3	2026-08-08 22:27:42.785599+00	2026-10-17 13:43:41.638298+00
cf941e39-0ca2-4427-b5b6-fedfc95c1dee	พี่ชาย	pîi chaai	4	2026-08-08 22:16:10.759731+00	2026-10-21 19:27:27.315514+00
88a8ab0c-64e5-4025-9929-ad13670f035e	ลูกคนเล็ก	lûuk khon lék	3	2026-08-08 22:47:59.062362+00	2026-10-17 13:44:42.155015+00
e61f9100-4051-4ac1-91c7-556b5c0cb2e3	แต่	dtàe	2	2026-08-07 13:00:27.288628+00	2026-10-18 20:29:44.092544+00
6508fe45-649b-4b80-b0db-9fe5835509e3	พี่สาว	pîi săao	2	2026-08-08 22:19:00.389345+00	2026-10-21 19:25:31.918908+00
ec53dacf-9ac3-4d4e-922d-02733c1240ad	แพ้	páe	3	2026-08-07 14:15:58.921679+00	2026-10-20 20:12:22.742786+00
e72ebc75-2f88-4c8d-b845-922a6c7eeedf	น้องสาว	nóng săao	2	2026-08-08 22:19:54.924862+00	2026-10-21 19:25:57.434389+00
c6194f08-5819-4b69-b1f3-41e7b4bfc8e2	ลูกสาว	lûuk săao	3	2026-08-08 22:57:50.617357+00	2026-10-21 19:26:24.159506+00
735595f1-1e24-475d-ac50-a27607c07e4c	ลูกชาย	lûuk chaai	3	2026-08-08 22:57:17.774452+00	2026-10-21 19:28:21.048498+00
7e329221-5737-48b1-a3cb-463a6d70fb0f	เดือน	deuuan	1	2026-08-09 11:22:15.370739+00	2026-08-09 11:22:15.370739+00
a8f30cb6-4608-4c5f-a2e7-13ee4ddc44d2	ฟังดู	fang duu	1	2026-08-09 11:27:58.614854+00	2026-08-09 11:27:58.614854+00
e77804bb-f20f-4656-9417-6a58ffaf46b4	ประชุม	bprà-chum	1	2026-08-09 11:43:01.734061+00	2026-08-09 11:43:01.734061+00
655642a4-c054-4a6b-b8dc-f07ce6893de1	ช่วง	chûuang	1	2026-08-09 11:44:20.442788+00	2026-08-09 11:44:20.442788+00
6bb1f621-186d-4e61-9239-72bc20e6fe10	บ่าย	bàai	1	2026-08-09 11:45:46.959272+00	2026-08-09 11:45:46.959272+00
f6222a57-c1b1-4bf5-8426-5cf2a3b6f84b	แอบ	àep	1	2026-08-09 13:03:03.556678+00	2026-08-09 13:03:03.556678+00
0687ebb6-7968-42b8-b97a-defc716eebe6	ตื่น	dtèun	1	2026-08-09 14:34:03.711174+00	2026-08-09 14:34:03.711174+00
c14a1d04-3139-41ea-93e1-210ebcf2da8d	ตื่นนอน	dtèun non	2	2026-08-09 14:31:58.355104+00	2026-08-09 14:34:47.902517+00
bba42102-355d-4735-876f-5ad00afb40e2	ตอน	dton	1	2026-08-09 14:35:52.110917+00	2026-08-09 14:35:52.110917+00
2b92cf2e-f4fc-45ba-95a5-8d6a904dd02f	7	jèt	1	2026-08-09 14:36:52.216942+00	2026-08-09 14:36:52.216942+00
083a27ff-5b19-4818-9ecf-6a7d9cc96aed	โมง	mohng	1	2026-08-09 14:37:34.533514+00	2026-08-09 14:37:34.533514+00
6eb4897f-48fa-43d2-a274-95e6abe5694d	ปกติ	bpòk-gà-dtì	1	2026-08-10 18:31:46.792907+00	2026-08-10 18:31:46.792907+00
2f9bdf82-ed4f-4fc5-88ef-d69cc211bd1f	เช้า	cháo	1	2026-08-10 18:38:13.6563+00	2026-08-10 18:38:13.6563+00
c9f9dbdd-17ea-482b-836c-6d183073509a	ล้อ	lór	1	2026-08-10 19:53:09.331622+00	2026-08-10 19:53:09.331622+00
d10166b6-9144-45e9-9559-a8cf8b93aeac	หมา	măa	1	2026-08-10 19:59:46.682176+00	2026-08-10 19:59:46.682176+00
5f2bb56a-0794-4f15-be23-84227ce4b72e	แมว	maew	1	2026-08-10 20:00:17.199317+00	2026-08-10 20:00:17.199317+00
497891da-c091-4bf7-90f3-af2d84d01386	นก	nók	1	2026-08-10 20:00:43.640232+00	2026-08-10 20:00:43.640232+00
15d7edfb-7154-4f2c-88a4-608d0867cde5	ปลา	bplaa	1	2026-08-10 20:01:12.340285+00	2026-08-10 20:01:12.340285+00
d968a427-4b4f-49e9-a7bb-8e836b2be41d	วัว	wuua	1	2026-08-10 20:02:42.764096+00	2026-08-10 20:02:42.764096+00
0b6eac27-427a-48b0-b613-0a0ce7851468	งู	ngoo	1	2026-08-10 20:04:40.434657+00	2026-08-10 20:04:40.434657+00
ad030853-887b-4049-83d3-44d49b795e9d	กระต่าย	grà-dtàai	1	2026-08-10 20:05:56.427651+00	2026-08-10 20:05:56.427651+00
11690d4e-6928-4049-8610-86a032cf6641	ลิง	ling	1	2026-08-10 20:06:52.617255+00	2026-08-10 20:06:52.617255+00
bcede3d3-f9fd-4992-aac1-eaa672936edd	กบ	gòp	1	2026-08-10 20:07:16.171175+00	2026-08-10 20:07:16.171175+00
6b1300e5-0cd8-48ed-89bd-3508f17bd7f2	ช้าง	cháang	1	2026-08-10 20:07:50.3017+00	2026-08-10 20:07:50.3017+00
d2dd3603-58cb-4616-93c3-b286eb47f51a	เสือ	sĕuua	1	2026-08-10 20:08:12.22967+00	2026-08-10 20:08:12.22967+00
8e8ff3f5-55a0-459e-8c8d-5dc5b72e6e20	สิงโต	sĭng-dtoh	1	2026-08-10 20:08:37.466527+00	2026-08-10 20:08:37.466527+00
cd138037-fba5-4f71-a754-fb4aef0bf4bf	สุนัข	sù-nák	2	2026-08-10 20:09:20.643798+00	2026-08-10 20:10:40.902121+00
7e6179a8-c438-4eed-8aca-ba5efe450c9e	เลี้ยง	líiang	2	2026-08-10 20:13:12.706234+00	2026-08-10 20:16:28.126147+00
b3daab94-f043-4ae5-823f-fe6fb0361b1b	สัตว์เลี้ยง	sàt líiang	2	2026-08-10 20:14:15.067625+00	2026-08-10 20:17:01.680628+00
d9e7292c-4934-43ec-9580-f01f96cccb18	ตัว	dtuua	2	2026-08-10 20:19:37.866257+00	2026-08-10 20:24:52.908046+00
00116950-6419-4e6d-b072-d168b73b041e	อันตราย	an-dtà-raai	1	2026-08-10 20:26:32.342451+00	2026-08-10 20:26:32.342451+00
ea0deee5-3cd5-4060-981e-e3f17a8c1c11	วิศวกร	wít-sà-wá-gon	1	2026-08-13 21:19:11.340697+00	2026-08-13 21:19:11.340697+00
414654d0-8755-42c3-bd35-8c957759ccfa	เหี้ย	hîia	1	2026-08-10 20:31:39.001629+00	2026-08-10 20:31:39.001629+00
2c19557d-843f-476a-b970-9bc97c344f7c	สัตว์	sàt	3	2026-08-10 20:12:01.944793+00	2026-08-10 20:32:33.030412+00
f80e888f-2e76-4793-8c91-ac52d096a198	โง่	ngôo	1	2026-08-10 20:35:12.780361+00	2026-08-10 20:35:12.780361+00
abb29368-9103-40a9-9129-21a46b5faaac	น่า	nâa	1	2026-08-10 20:40:28.538257+00	2026-08-10 20:40:28.538257+00
6fc2061a-3b75-412d-b254-9bf52841e07e	เด็ก	dèk	2	2026-08-10 20:43:45.624639+00	2026-08-10 20:44:16.354593+00
cba92e9d-4a24-4e95-acb8-29dcf64d157a	อัน	an	1	2026-08-10 21:35:34.004799+00	2026-08-10 21:35:34.004799+00
9ff8a9e0-bec1-4cbd-b8c3-caed94521af5	นี้	níi	2	2026-08-10 21:37:40.833773+00	2026-08-10 21:38:07.031736+00
be1cce81-a6ae-4ac4-8fcf-2a1cb6bfc61a	บ้าน	bâan	1	2026-08-10 21:58:47.898706+00	2026-08-10 21:58:47.898706+00
859e75a5-3dbb-4e7b-af06-9eedc15da34e	ห้องนอน	hông non	3	2026-08-10 21:59:56.504638+00	2026-08-10 22:01:11.977485+00
fc970af0-2f72-4df6-9849-4307530c9106	ห้องนั่งเล่น	hông nâng lên	2	2026-08-10 22:02:49.85794+00	2026-08-10 22:03:59.515798+00
8fb6a817-c21b-429b-b970-2726b4237550	ครัว	kruua	1	2026-08-10 22:07:22.091761+00	2026-08-10 22:07:22.091761+00
6de35ff3-d12d-4d60-9b02-949800ff2d1a	น่ารัก	nâa rák	3	2026-08-10 20:36:26.501549+00	2026-08-10 22:40:11.85018+00
8392d164-7665-4281-90a8-027383f81cbd	เปล่า	bplào	1	2026-08-13 17:37:43.337946+00	2026-08-13 17:37:43.337946+00
ccf23259-8ebc-47f0-9fa8-527de997e05e	เสียใจ	sĭia jai	1	2026-08-13 17:44:47.040704+00	2026-08-13 17:44:47.040704+00
2daecaf5-d183-4608-b7b8-ba9391b44882	อาบ	àap	1	2026-08-13 21:00:40.094274+00	2026-08-13 21:00:40.094274+00
c5f7c065-1b38-4d84-ade6-bdd35e3475cd	อาบน้ำ	àap náam	2	2026-08-10 18:28:32.461859+00	2026-08-13 21:01:56.983352+00
b4218099-688e-4f9f-afdf-4c0a25c399c8	แพทย์	pâet	2	2026-08-13 21:05:39.73111+00	2026-08-13 21:07:55.371765+00
19b10317-b1d5-4bff-a60b-a8b8092e9746	ตำรวจ	dtam-rùuat	1	2026-08-13 21:09:05.92202+00	2026-08-13 21:09:05.92202+00
8cd84b04-7b31-4016-9f48-ddb37e1515d0	ครู	khruu	1	2026-08-13 21:10:07.938528+00	2026-08-13 21:10:07.938528+00
38744c54-2c28-4ae0-83ff-e759e7a7e083	พยาบาล	pá-yaa-baan	2	2026-08-13 21:11:08.183374+00	2026-08-13 21:11:49.123542+00
1e3c57d9-3c25-40b5-aaef-b99fa2d59b5f	แม่ครัว	mâe kruua	2	2026-08-13 21:20:33.731974+00	2026-08-13 21:21:17.257772+00
3fe32973-ae23-411f-9b4e-79cf2e935d5c	พ่อครัว	pôr kruua	2	2026-08-13 21:19:50.007531+00	2026-08-13 21:21:41.198567+00
ccc577cb-53c3-47c2-a066-3ff8361e602b	ทหาร	tá-hăan	1	2026-08-13 21:30:31.880292+00	2026-08-13 21:30:31.880292+00
5759908b-ef21-4bd3-ae32-ed339e2ba699	ศิลปิน	sĭn-lá-bpin	1	2026-08-13 21:43:04.177874+00	2026-08-13 21:43:04.177874+00
bd063bb9-6305-430a-be6e-ac95efaa5d4a	บิน	bin	1	2026-08-13 21:31:55.52902+00	2026-08-13 21:31:55.52902+00
7e7ab873-83b4-4d43-b2a4-62f413532c01	นักบิน	nák bin	3	2026-08-13 21:31:07.847022+00	2026-08-13 21:32:09.680995+00
9a18696e-f313-4cab-971d-5c15f5dbfbfe	ชาว	chaao	1	2026-08-13 21:34:14.211284+00	2026-08-13 21:34:14.211284+00
bf7ac7da-f65c-47be-9586-02f1bcb9b0f2	นา	naa	1	2026-08-13 21:35:07.856277+00	2026-08-13 21:35:07.856277+00
7c70fd7b-48b1-4d05-96dd-33ef031ba4f6	ชาวนา	chaao naa	2	2026-08-13 21:33:22.182456+00	2026-08-13 21:35:30.22175+00
6be951b9-dbf1-44b7-b56a-fa2307187306	ข่าว	kàao	1	2026-08-13 21:38:41.873931+00	2026-08-13 21:38:41.873931+00
3973896a-d6b3-4f2f-9b26-3bfbec2379bb	นักข่าว	nák kàao	2	2026-08-13 21:36:34.726747+00	2026-08-13 21:39:10.589121+00
49a5f398-3daa-4b0c-ac56-18fdba1c0552	ขับ	kàp	1	2026-08-13 21:41:20.859135+00	2026-08-13 21:41:20.859135+00
5a11835f-a760-4aea-ac3a-86fa725b83b0	คนขับรถ	khon kàp rót	2	2026-08-13 21:40:00.010966+00	2026-08-13 21:42:04.117057+00
477f9318-f50a-40a6-9783-3268ab1bfadf	ทนาย	tá-naai	1	2026-08-13 21:45:23.835109+00	2026-08-13 21:45:23.835109+00
fde3c013-2d65-4da7-b974-eaf9d98f1912	ความ	kwaam	1	2026-08-13 21:45:53.483137+00	2026-08-13 21:45:53.483137+00
bdcab8d2-8902-4b65-b5d9-3002bb1a9be4	ทนายความ	tá-naai kwaam	2	2026-08-13 21:18:32.288718+00	2026-08-13 21:46:30.800918+00
0c3e698f-58d3-4fd7-bc7b-f75262fe2f2b	ดับ	dàp	1	2026-08-13 21:48:24.050884+00	2026-08-13 21:48:24.050884+00
6b126281-9e26-4168-87ce-94135fe23215	เพลิง	plerng	1	2026-08-13 21:49:20.813419+00	2026-08-13 21:49:20.813419+00
d0063ff5-db66-4efb-ac12-35c9a844f1d2	นักดับเพลิง	nák-dàp-plerng	2	2026-08-13 21:12:50.41301+00	2026-08-13 21:49:51.359123+00
da85dbb8-974f-4dc8-855a-c21b63072ab2	โรง	rohng	1	2026-08-13 21:52:16.438149+00	2026-08-13 21:52:16.438149+00
85321d9d-a686-4968-b740-c320983a95cd	โรงเรียน	rohng riian	2	2026-08-13 21:51:28.087278+00	2026-08-13 21:52:47.148113+00
d768148a-7857-4d31-ab3b-0caa9eeaa4e0	โรงพยาบาล	rohng pá-yaa-baan	2	2026-08-13 21:53:24.710633+00	2026-08-13 21:53:50.052847+00
92fdf76b-7f97-4100-a716-fde66f5ada94	ตลาด	dtà-làat	1	2026-08-13 21:54:59.602814+00	2026-08-13 21:54:59.602814+00
c96ddc49-1745-4b51-8cd8-5d12746260ff	ค้า	káa	1	2026-08-13 21:56:34.518601+00	2026-08-13 21:56:34.518601+00
37bcf743-b1bd-4f13-a60e-c45cf51c0d42	ร้านค้า	ráan káa	2	2026-08-13 21:55:40.201871+00	2026-08-13 21:56:58.101657+00
b759b6ad-64cf-444f-8b95-02ac0eed0689	ธนาคาร	tá-naa-kaan	1	2026-08-13 21:57:26.641361+00	2026-08-13 21:57:26.641361+00
900ccedd-e323-4f7a-a056-55e4adf58296	สนาม	sà-năam	1	2026-08-13 21:58:41.43162+00	2026-08-13 21:58:41.43162+00
f5f7b897-b68b-4c7e-a5e6-0f8a8d888c17	นัก	nák	2	2026-08-13 21:17:15.089782+00	2026-08-26 14:08:17.192297+00
a46830df-6cdb-4128-be42-c6b84ffa1d58	ลูกคนกลาง	lûuk khon glaang	5	2026-08-08 22:32:45.112148+00	2026-10-17 13:44:23.62155+00
78a53b47-fa17-4d9e-905d-24c85bcba34c	ไก่	gài	2	2026-08-10 20:04:05.415628+00	2026-10-18 13:54:32.486447+00
29a2f23d-3c6e-4279-9757-3b46d9f89716	หมู	mŏo	2	2026-08-10 20:03:18.088284+00	2026-10-18 13:54:52.525145+00
994cf02a-e5f9-4462-8064-762726bbe851	ม้า	máa	2	2026-08-10 20:01:49.866135+00	2026-10-18 13:55:29.034267+00
28c02c4e-cf4d-4fca-ba4d-f8ba54c8eca5	เป็ด	bpèt	2	2026-08-10 20:06:23.224876+00	2026-10-18 13:56:13.398423+00
48dd4028-404b-4840-b371-20db8c723d5d	ห้องครัว	hông kruua	3	2026-08-10 22:08:04.62992+00	2026-10-21 19:00:10.11817+00
b0cd3628-1f5c-4258-9b24-0c7f0dead7bf	สนามบิน	sà-năam bin	2	2026-08-13 21:57:52.7844+00	2026-08-13 21:59:05.828368+00
403e7a58-4766-4f3d-a22a-282b931b622f	ผลไม้	pŏn-lá-mái	1	2026-08-13 22:00:12.000693+00	2026-08-13 22:00:12.000693+00
b5f3e3fc-fe22-4164-be2c-692c73535b66	ก๋วยเตี๋ยว	gŭuay-dtĭieow	2	2026-08-14 10:13:52.496613+00	2026-08-14 10:20:17.495903+00
5451ce55-6719-4f84-806c-ad7de4e856d6	ขนม	kà-nŏm	1	2026-08-14 10:21:58.502511+00	2026-08-14 10:21:58.502511+00
abce29ef-eee7-4cb8-8a6a-9df620b3a638	ปัง	bpang	1	2026-08-14 10:22:26.652592+00	2026-08-14 10:22:26.652592+00
29a760ea-7678-4e18-87a9-422c74d99b5f	ขนมปัง	kà-nŏm bpang	2	2026-08-14 10:21:21.105681+00	2026-08-14 10:22:53.005533+00
c3de5f67-9320-428a-80fb-ec29c8d0521f	ไข่	kài	1	2026-08-14 10:23:35.17185+00	2026-08-14 10:23:35.17185+00
8ddac8f3-8f9c-470e-9db4-f64ce447b778	เนื้อ	néuua	1	2026-08-14 10:26:25.743491+00	2026-08-14 10:26:25.743491+00
37f06dd0-39f8-4f01-ae5f-e91862e529d3	ทะเล	tá-lay	1	2026-08-14 10:29:25.112054+00	2026-08-14 10:29:25.112054+00
57579ab7-9cfa-4595-8939-86e6e0e9a62c	กุ้ง	gûng	2	2026-08-14 10:27:30.538707+00	2026-10-20 20:10:20.269002+00
6e515c82-5fd6-45de-882e-430dd7e1e5f3	ผัก	pàk	2	2026-08-14 10:30:18.522403+00	2026-08-14 10:30:38.422268+00
560dcb92-4b56-4aea-aa6d-bd2c88a909a8	ซุป	súp	1	2026-08-14 10:31:21.576623+00	2026-08-14 10:31:21.576623+00
faa58f48-ca8f-4e43-b969-49cce3b73fca	แกง	gaeng	1	2026-08-14 10:31:56.437221+00	2026-08-14 10:31:56.437221+00
39621dd3-6db3-4032-82e8-a8d11ded5f25	สลัด	sà-làt	1	2026-08-14 10:33:16.051596+00	2026-08-14 10:33:16.051596+00
bedeb7b5-2cce-40ca-bfcb-6e3c0dc2e4f4	ซอส	sót	1	2026-08-14 10:33:41.514778+00	2026-08-14 10:33:41.514778+00
6135fcc8-915f-440f-ac2c-91b3e0d8f335	เกลือ	gleuua	1	2026-08-14 10:34:38.385483+00	2026-08-14 10:34:38.385483+00
35b144dc-d804-4bc9-83b3-34aeae4baa29	หวาน	wăan	1	2026-08-14 10:35:53.390882+00	2026-08-14 10:35:53.390882+00
b7cdedbc-1fcc-45b3-8c86-80fa1857066b	เปรี้ยว	bprîieow	1	2026-08-14 10:36:29.138092+00	2026-08-14 10:36:29.138092+00
fcb9503c-01e0-429f-80c1-654a72bedad7	เค็ม	kem	1	2026-08-14 10:37:01.95396+00	2026-08-14 10:37:01.95396+00
d9bb86fe-9951-42fb-900f-eae0a3d96c3c	กาแฟ	gaa-fae	1	2026-08-14 10:37:43.446478+00	2026-08-14 10:37:43.446478+00
7d8895c1-7edf-420a-aab8-8d51b404930e	ชา	chaa	1	2026-08-14 10:38:15.025537+00	2026-08-14 10:38:15.025537+00
7b640be7-135e-4289-a729-5a0e2e445e94	นม	nom	1	2026-08-14 10:38:44.783039+00	2026-08-14 10:38:44.783039+00
7ee56eb3-3e57-46e0-85fb-fff5154d7a9e	ทั้งหมด	táng mòt	1	2026-08-14 10:43:57.620092+00	2026-08-14 10:43:57.620092+00
96aa3c78-0393-4294-bf76-3bf4d5fac3c6	คลั่ง	klâng	1	2026-08-14 13:30:42.250351+00	2026-08-14 13:30:42.250351+00
604bb439-ba32-406b-aa3f-84260c6c09b5	คลั่งรัก	klâng rák	2	2026-08-14 13:29:02.381455+00	2026-08-14 13:31:03.264101+00
b82b30dd-9052-4fed-9ca1-0d1eb366fe7a	เท่าไร	tâo rai	1	2026-08-16 17:15:06.631676+00	2026-08-16 17:15:06.631676+00
3dd2e417-4877-4c1d-893b-338b2a3c8f69	งานอดิเรก	ngaan à-dì-rèk	1	2026-08-16 17:20:50.453698+00	2026-08-16 17:20:50.453698+00
5dc33b7d-21dd-44c8-b2d2-1987ee008489	เพลง	pleng	1	2026-08-16 17:21:55.666656+00	2026-08-16 17:21:55.666656+00
db53830d-4876-4c49-9b5e-0726ced22add	เขาสองคน	khăo sŏng khon	3	2026-08-14 13:36:05.920112+00	2026-08-14 13:41:44.656131+00
b9842cec-5abb-48b3-a9ed-11b58d6f3e32	ช่วงนี้	chûuang née	4	2026-08-14 13:32:28.117238+00	2026-08-14 13:42:20.677897+00
9ef5520c-c541-448b-8ee8-e70e3186632f	เก่ง	gèng	1	2026-08-14 13:48:31.538082+00	2026-08-14 13:48:31.538082+00
7f11e28f-e037-424e-9358-6cc9c05f3788	เก่งมาก	gèng mâak	2	2026-08-14 13:46:37.325194+00	2026-08-14 13:50:29.598884+00
81f11a97-2a06-43a1-b139-dcdcfd226bd6	หนาว	năao	1	2026-08-14 14:14:17.765379+00	2026-08-14 14:14:17.765379+00
f176ace5-67ae-44dd-9561-4742cce6bf8e	อุ่น	ùn	1	2026-08-14 14:15:05.291701+00	2026-08-14 14:15:05.291701+00
aa96e486-4760-41dd-b684-64b5c2aeb3de	แดด	dàet	1	2026-08-14 14:16:19.755343+00	2026-08-14 14:16:19.755343+00
8c06aac8-212d-41d5-b322-f02940eb3aac	องศา	ong-săa	2	2026-08-14 14:17:14.714403+00	2026-08-14 14:17:21.650266+00
5a55868c-b39e-4baf-9e0c-5c7ebbdebdc3	ฤดู	réu-doo	2	2026-08-15 13:35:10.035634+00	2026-08-15 13:36:24.084397+00
8c628bb8-5663-40af-96e0-90b11e0de454	ฤดูร้อน	réu-doo rón	2	2026-08-15 13:36:15.671703+00	2026-08-15 13:36:55.912005+00
a8a61388-96db-4247-b751-9a92b3171262	จ้า	jâa	1	2026-08-15 13:41:50.181568+00	2026-08-15 13:41:50.181568+00
a1a9fc8f-76c4-462d-931c-1dbd19a0ba90	แดดจ้า	dàet jâa	2	2026-08-15 13:40:54.943558+00	2026-08-15 13:42:10.032251+00
e9a66638-e3e1-47b2-94bb-966a6d5bd507	ฤดูฝน	réu-doo fŏn	2	2026-08-15 13:46:40.763859+00	2026-08-15 13:47:08.53375+00
8622a694-5162-4a57-8f86-f3286b57e197	ฤดูหนาว	réu-doo năao	3	2026-08-15 13:48:23.220539+00	2026-08-15 13:49:07.806533+00
36c85c81-c2a8-49f4-859a-842992feea1c	ร้อง	róng	1	2026-08-16 17:24:01.706581+00	2026-08-16 17:24:01.706581+00
a40c70c8-668b-4a77-a807-db0cdd406ce9	ตอนนี้	dton-níi	3	2026-08-15 13:50:01.294708+00	2026-08-15 13:51:48.231116+00
7479ab9b-60c1-49c0-b23a-1c5a9cd71aa3	วัน	wan	1	2026-08-15 13:52:58.126971+00	2026-08-15 13:52:58.126971+00
d3ee528a-e428-42ca-b99b-4c473391bc28	อ่าน	àan	1	2026-08-16 17:25:20.66639+00	2026-08-16 17:25:20.66639+00
475f92f4-71ac-48bc-9db6-e77487b1cfaa	ทุก	túk	3	2026-08-15 13:54:12.457613+00	2026-08-15 13:55:51.573674+00
91d1d450-7b80-4bd4-b7db-df23f5a4cc83	เมฆ	mêk	1	2026-08-15 14:00:32.375046+00	2026-08-15 14:00:32.375046+00
fe7e562a-26ef-4976-961a-e12ef756e1ca	ลม	lom	1	2026-08-15 14:06:13.422009+00	2026-08-15 14:06:13.422009+00
a05aeac5-100e-4b2f-83c4-f6d298ba8f27	แรง	raeng	1	2026-08-15 14:08:58.407218+00	2026-08-15 14:08:58.407218+00
f78c7df9-2a1f-4707-b65e-b0448f75726c	พายุ	paa-yú	1	2026-08-15 14:14:14.825655+00	2026-08-15 14:14:14.825655+00
d0335fac-b0ff-4cb9-9f19-9ffb107a9230	กำลัง	gam-lang	1	2026-08-15 14:15:48.79733+00	2026-08-15 14:15:48.79733+00
09c47c5a-eb62-4f1a-b337-50dad38e1c13	เมื่อคืน	mêuua keun	1	2026-08-15 14:18:18.754458+00	2026-08-15 14:18:18.754458+00
2b6afd92-18af-40de-965e-aab665197694	ดัง	dang	1	2026-08-15 14:19:44.037437+00	2026-08-15 14:19:44.037437+00
762e655e-6ed6-4f31-b316-4bf682026ff9	ฟ้าร้อง	fáa róng	1	2026-08-15 14:20:29.082634+00	2026-08-15 14:20:29.082634+00
58c0c47c-3355-4fee-bffb-1e73dbb1a7be	เสียง	sĭiang	1	2026-08-15 14:22:20.990047+00	2026-08-15 14:22:20.990047+00
1a5ecce1-80dc-4a14-88df-942ff4a62043	ยิน	yin	1	2026-08-15 14:24:31.379687+00	2026-08-15 14:24:31.379687+00
8ddee23f-b052-42d9-9994-5233ebbe992d	เมื่อไร	mêuua rai	1	2026-08-16 17:13:32.752479+00	2026-08-16 17:13:32.752479+00
51b6ad89-0a33-4784-b2ea-d4c5af86a1ba	อย่างไร	yàang rai	1	2026-08-16 17:14:13.242945+00	2026-08-16 17:14:13.242945+00
4f7fd2ab-b3e8-4b2a-95a8-70946b744d62	ถ่าย	tàai	1	2026-08-16 17:26:36.612357+00	2026-08-16 17:26:36.612357+00
d221915e-2334-4727-83d3-b8b8469bd992	รูป	rûup	1	2026-08-16 17:27:25.794688+00	2026-08-16 17:27:25.794688+00
b9581999-883b-405a-80a3-0c259b65f220	วาด	wâat	1	2026-08-16 17:28:11.881487+00	2026-08-16 17:28:11.881487+00
898c2dc8-ea9c-4e26-a5ee-44cd11d3f651	เขียน	kĭian	1	2026-08-16 17:28:48.990994+00	2026-08-16 17:28:48.990994+00
e32ed40c-d42b-484e-9cd4-88ad7e2e7bd4	ผู้เขียน	phûu kĭian	2	2026-08-16 17:29:23.536704+00	2026-08-16 17:29:52.660353+00
1f0b65f8-9b57-4203-b1a0-064091d2b2fa	ผู้	phûu	1	2026-08-16 17:31:05.506613+00	2026-08-16 17:31:05.506613+00
6d69ebb2-7490-4dea-a7c7-0c3db9db5a05	ผู้อ่าน	phûu àan	1	2026-08-16 17:31:51.789643+00	2026-08-16 17:31:51.789643+00
5e392196-cb6a-4470-b667-a9687387f488	สอน	sŏn	1	2026-08-16 17:33:11.215056+00	2026-08-16 17:33:11.215056+00
b6ea7fb9-d76b-404a-b65b-d6c17bcdf1f2	ฉลาม	chà-lăam	1	2026-08-25 12:08:41.301561+00	2026-08-25 12:08:41.301561+00
9e7234b8-8ba0-49a9-bf97-32e90a8e1b96	ใจ	jai	1	2026-08-25 12:36:42.06052+00	2026-08-25 12:36:42.06052+00
48be3888-a33f-455a-a8e4-12d51fe5c185	แต่งงาน	dtàeng ngaan	2	2026-08-15 13:30:48.116602+00	2026-10-17 13:44:54.959429+00
d2a167e4-2e76-40b9-ba89-809aa67115fa	ขอบ	kòp	2	2026-08-25 12:34:22.004631+00	2026-08-25 19:54:47.93392+00
08ca5790-20f4-4d73-bb6d-22f88dda3c7e	ชม	chom	1	2026-08-25 21:24:23.448149+00	2026-08-25 21:24:23.448149+00
49422792-ad60-4acd-b001-d1efb0f795d0	อก	òk	1	2026-08-25 21:44:18.763584+00	2026-08-25 21:44:18.763584+00
0b7c3567-7cb4-4cb9-a39b-c4cc6662b4d3	หัก	hàk	1	2026-08-25 21:45:06.205059+00	2026-08-25 21:45:06.205059+00
92824a47-8927-45ff-a0c9-48c3a985dc2f	อกหัก	òk hàk	2	2026-08-25 21:43:24.298655+00	2026-08-25 21:45:32.695774+00
6849aca8-c466-4fbc-b138-52ddd3f7b89a	ลืม	leum	1	2026-08-25 21:52:26.24484+00	2026-08-25 21:52:26.24484+00
770d7640-6ec4-4725-88ce-75422ba52934	ไม่ได้	mâi dâai	5	2026-08-25 21:53:38.655021+00	2026-08-25 22:05:39.073546+00
bbcec409-43ff-4511-b61b-faf78c402d7a	เลิก	lêrk	1	2026-08-25 22:07:56.05936+00	2026-08-25 22:07:56.05936+00
4ab06be7-3a07-4fc2-bd39-6951faf51495	เลิกกัน	lêrk gan	2	2026-08-25 22:07:25.823044+00	2026-08-25 22:08:19.290964+00
42817683-e94f-4ee6-963e-53948d5ffd39	ตะวัน	dtà-wan	1	2026-08-28 20:28:51.707641+00	2026-08-28 20:28:51.707641+00
6906b116-c0e3-4214-b12c-ab16469fb539	ตะวันตก	dtà-wan dtòk	6	2026-08-28 20:30:43.909376+00	2026-08-29 13:26:37.186696+00
40d4c342-11b8-45f6-a521-40a35f8f81ac	ตะวันขึ้น	dtà-wan kêun	3	2026-08-28 20:27:39.346501+00	2026-08-28 20:34:23.482052+00
19e4b971-63ca-4095-898b-c4cf623c95cd	เหนือ	nĕuua	2	2026-08-29 13:22:46.580098+00	2026-08-29 13:26:59.844423+00
50d9e884-42c5-4fb0-a074-a83fc9f14dc9	ใต้	dtâi	2	2026-08-29 13:21:47.524924+00	2026-08-29 13:27:25.328931+00
55f45f57-9a77-4f3e-9dbd-018e206be628	ไร	rai	9	2026-08-25 12:40:15.131937+00	2026-10-16 12:29:00.042185+00
96526106-8f01-41f0-afcd-b4b63d5b09cf	อาหารทะเล	aa-hăan tá-lay	3	2026-08-14 10:28:40.234807+00	2026-10-20 20:08:45.976644+00
3b810b5f-487e-4075-ad4b-f880f05ec64c	ตะวันออก	dtà-wan òk	3	2026-08-29 13:23:36.946194+00	2026-08-29 13:27:48.833304+00
d1d76cf8-c2fc-412b-afbd-61c8f6d57cb1	ทิศ	tít	1	2026-08-29 13:28:54.06352+00	2026-08-29 13:28:54.06352+00
26926307-6634-4782-91a9-b1dcf0a17c48	ทิศตะวันตก	tít dtà-wan dtòk	2	2026-08-29 13:29:42.055547+00	2026-08-29 13:30:12.93352+00
857f3837-516d-4504-91a3-da70e5635d3e	ทิศใต้	tít dtâi	2	2026-08-29 13:30:47.352139+00	2026-08-29 13:31:13.152283+00
03d5d33d-bd08-47df-9487-84fb94fcd2f5	ทิศเหนือ	tít nĕuua	2	2026-08-29 13:31:57.609303+00	2026-08-29 13:32:19.437424+00
e1725c7a-495e-4911-950e-bc567405429c	ทิศตะวันออก	tít dtà-wan òk	2	2026-08-29 13:32:58.838663+00	2026-08-29 13:33:31.65035+00
c7d03809-8ca0-40f1-8bbc-b1955df2c8ca	เชียงใหม่	chiiang-mài	1	2026-08-29 14:54:03.536565+00	2026-08-29 14:54:03.536565+00
063f06e4-f7a4-4a27-9d45-4da9cc3a4380	วันเสาร์	wan săo	1	2026-10-16 19:33:29.780965+00	2026-10-16 19:33:29.780965+00
67d797d2-a9fa-4add-973c-ef29eae96d0a	กรุงเทพ	grung têp	1	2026-08-29 14:56:20.862297+00	2026-08-29 14:56:20.862297+00
d2ea691e-5ac4-4b9c-b549-c6ed6dbe9e84	กรุงเทพฯ	grung têp	3	2026-08-29 14:55:28.406072+00	2026-08-29 14:56:46.797792+00
91ce6460-efcc-4620-871e-c094927d59c7	ฯ	ฯ	2	2026-08-29 14:51:01.213158+00	2026-08-29 14:57:24.099471+00
727527d8-97a8-4e67-9ad5-325348b1e77c	โต๊ะ	dtó	1	2026-08-29 15:14:28.00849+00	2026-08-29 15:14:28.00849+00
2a42f942-08be-4ca3-8ae3-53bb2147b678	เก้าอี้	gâo-êe	1	2026-08-29 15:15:06.5875+00	2026-08-29 15:15:06.5875+00
feb8224e-a566-49df-bf3b-a6370922b6f7	เตียง	dtiiang	1	2026-08-29 15:15:38.158114+00	2026-08-29 15:15:38.158114+00
2dee2eaf-faa9-487b-ac98-72e0e59cf053	โซฟา	soh-faa	1	2026-08-29 15:16:20.81305+00	2026-08-29 15:16:20.81305+00
c35b01dd-b2b7-4515-ae50-c471f7818b56	จักรยาน	jàk-grà-yaan	1	2026-09-26 19:01:45.690377+00	2026-09-26 19:01:45.690377+00
0acd53dd-4c30-41ac-91b2-42fc885b67bf	เครื่องบิน	krêuuang bin	2	2026-09-26 19:06:46.279059+00	2026-09-26 19:07:09.91174+00
34105817-310c-4e9e-b3dc-6a04298f7244	ฟุตบอล	fút bon	1	2026-09-26 19:15:07.655755+00	2026-09-26 19:15:07.655755+00
180e035e-1ff1-4de3-a986-d6ff831ab424	วัด	wát	1	2026-09-26 21:47:36.757318+00	2026-09-26 21:47:36.757318+00
5c0d99f5-aed7-42e5-9c69-6d83090e872a	หวัด	wàt	2	2026-09-26 21:49:20.012577+00	2026-09-26 21:49:42.063174+00
f779a194-8534-43ee-8f7c-4d82b3e0da41	หายใจ	hăai jai	1	2026-09-27 14:38:18.895063+00	2026-09-27 14:38:18.895063+00
6480766d-cadd-4687-a2a3-a8d89331d1a1	หาย	hăai	1	2026-09-27 14:40:26.586413+00	2026-09-27 14:40:26.586413+00
b4f4037c-c822-42d5-a19a-6bfc363e1d9d	ต้อง	dtông	1	2026-09-27 16:28:39.483708+00	2026-09-27 16:28:39.483708+00
5ef46ae2-d606-4490-b12a-46974df4ab59	ห่วง	hùuang	1	2026-09-27 16:29:51.180102+00	2026-09-27 16:29:51.180102+00
d95e0d9c-07bb-49f2-b3a4-4182bef0ae4d	ยอม	yom	1	2026-09-30 12:23:49.843464+00	2026-09-30 12:23:49.843464+00
ba8d1ff1-ce3d-4481-b81c-446f19680a44	เมื่อ	mêuua	2	2026-10-01 19:09:26.309947+00	2026-10-01 19:10:03.068849+00
009c7518-92b5-4e24-b20b-f14254180839	วาน	waan	1	2026-10-01 19:11:27.925918+00	2026-10-01 19:11:27.925918+00
cf9be178-c1d9-44d9-827b-8286f13db35c	เมื่อวาน	mêuua waan	2	2026-10-01 19:08:43.069252+00	2026-10-01 19:11:54.627933+00
db231ab5-5dd3-48d3-a071-dd97e7700347	พรุ่ง	prûng	1	2026-10-01 19:13:25.677632+00	2026-10-01 19:13:25.677632+00
e7133f54-4994-414d-bf76-0ae0ddea73ba	นนน	nanon	2	2026-10-14 08:15:36.583234+00	2026-10-14 08:17:42.947153+00
4e6b7fa7-2142-4ec2-b491-95024cd868d2	วันอาทิตย์	wan aa-tít	1	2026-10-16 19:34:01.50352+00	2026-10-16 19:34:01.50352+00
bf863096-53ad-4de5-b2b8-4e89b4089fcb	ใช่	châi	2	2026-07-11 23:48:51.886266+00	2026-10-16 12:02:35.734864+00
7e3e114a-8cfd-4fc1-9344-ada5076b1ac5	ไม่	mâi	2	2026-07-11 23:49:56.906813+00	2026-10-16 12:02:35.734864+00
f7f3e0c2-f79e-4b96-a794-681e60f620cc	ขอบคุณ	kòp khun	4	2026-07-11 17:17:04.108212+00	2026-10-16 12:02:35.734864+00
af93382a-4bd6-452b-9e2c-668dc76d14cf	ไม่เป็นไร	mâi bpen rai	3	2026-07-11 23:53:27.573591+00	2026-10-16 12:02:35.734864+00
76e44c2c-7bdc-461f-823f-d9baf205cace	ไม่ใช่	mâi châi	3	2026-07-11 23:51:50.865711+00	2026-10-16 12:02:35.734864+00
0eaaae8b-1cc7-4354-abb8-b17d0752357b	กัน	gan	2	2026-07-14 18:14:39.642545+00	2026-10-16 12:08:41.733155+00
cbcbcd9f-406a-40e0-a44c-a73c93ed47a8	ลาก่อน	laa gòn	6	2026-07-18 00:13:46.899432+00	2026-10-16 12:08:41.733155+00
ad02a37f-2b44-48a2-9315-6716d00d9602	เดี๋ยว	dĭao	2	2026-07-18 00:19:06.866333+00	2026-10-16 12:08:41.733155+00
fa1f01bc-71af-4121-bc84-39d0938e1778	เจอ	jəə	2	2026-07-18 00:21:02.172392+00	2026-10-16 12:08:41.733155+00
091ff622-7aac-4249-acd8-5815086a3c73	ไว้	wái	2	2026-07-18 00:28:36.348031+00	2026-10-16 12:08:41.733155+00
af1824ed-826b-4cd0-bdfe-bed7ef4d5a29	บ้าง	bâang	2	2026-10-15 20:22:15.059403+00	2026-10-16 12:08:41.733155+00
486aa82c-9eaa-4da1-b016-4e828c045aa2	หวัดดี	wàt dee	3	2026-10-15 20:20:19.298557+00	2026-10-16 12:08:41.733155+00
fcd5c518-3368-4e51-9050-926a11975a02	สวัสดี	sà-wàt-dee	6	2026-07-11 16:15:08.683799+00	2026-10-16 12:08:41.733155+00
775a27be-b2c3-4073-9117-e5562bdfca0f	ค่ะ	khâ	4	2026-07-11 16:18:57.117069+00	2026-10-16 12:08:41.733155+00
fdfb1930-06b3-4603-bb03-71f4158f53f7	ครับ	kráp	6	2026-07-11 17:04:52.772083+00	2026-10-16 12:08:41.733155+00
99192548-1363-43f5-896c-46e1c799ae10	จาก	jàak	1	2026-10-16 13:58:25.376257+00	2026-10-16 13:58:25.376257+00
9b7056f0-2f18-413c-bb9e-686647c7244b	ประเทศ	bprà-têt	1	2026-10-16 14:04:40.597964+00	2026-10-16 14:04:40.597964+00
d0d72e11-bc02-4724-9840-4f32ae4a5bf5	ประเทศไทย	bprà-têt tai	2	2026-10-16 13:59:06.663981+00	2026-10-16 14:05:21.031311+00
19ecb14c-984c-4131-823c-cf11e479a28d	อายุ	aa-yú	1	2026-10-16 14:08:33.857983+00	2026-10-16 14:08:33.857983+00
1e1906c9-3538-402b-9350-d1bfc5c44e6b	18	sìp-bpàet	1	2026-10-16 14:09:19.430158+00	2026-10-16 14:09:19.430158+00
5cc1c57b-7e0a-400d-a5ae-d27fd9fda0fd	25	yîi-sìp-hâa	1	2026-10-16 14:15:16.841344+00	2026-10-16 14:15:16.841344+00
e4fabcf8-95fe-46f2-8351-daecf18a220d	วันจันทร์	wan jan	1	2026-10-16 19:30:01.540312+00	2026-10-16 19:30:01.540312+00
d9c63562-177c-4ccb-b98c-e7f3d6faad4c	วันอังคาร	wan ang-kaan	1	2026-10-16 19:31:06.405535+00	2026-10-16 19:31:06.405535+00
e1fca6fd-69ca-4f18-bfba-6cd24e217302	วันพุธ	wan pút	1	2026-10-16 19:31:56.636406+00	2026-10-16 19:31:56.636406+00
d1473c6c-d644-48b6-b98c-57e2ebe23941	วันพฤหัสบดี	wan pá-réu-hàt-sà-bor-dee	1	2026-10-16 19:32:29.443164+00	2026-10-16 19:32:29.443164+00
bafe3349-e3c2-46a1-8807-0cb4edc22270	วันศุกร์	wan sùk	1	2026-10-16 19:33:01.943873+00	2026-10-16 19:33:01.943873+00
66340e0d-f59b-43f3-8f07-ccda72b770ea	จีน	jeen	1	2026-10-16 19:41:48.268897+00	2026-10-16 19:41:48.268897+00
09b6eb0d-7d49-4712-8d85-758795519e4e	ประเทศจีน	bprà-têt jeen	2	2026-10-16 19:42:25.059552+00	2026-10-16 19:43:01.307853+00
7b5cc78a-4ac7-4e89-accf-1942df071e4b	เกาหลี	gao-lĕe	1	2026-10-16 19:44:05.549724+00	2026-10-16 19:44:05.549724+00
d32195d9-5c0e-4a42-aa0d-c221198dc682	ประเทศเกาหลีใต้	bprà-têt gao-lĕe dtâi	2	2026-10-16 19:45:12.079997+00	2026-10-16 19:46:02.349535+00
dce1ce56-5e2b-46e9-ad8c-2509acbd6e89	ญี่ปุ่น	yêe-bpùn	2	2026-10-16 19:46:46.632656+00	2026-10-16 19:47:42.28721+00
9b027b0f-d749-404a-87ee-80bee9ab399c	ประเทศญี่ปุ่น	bprà-têt yêe-bpùn	2	2026-10-16 19:47:09.405533+00	2026-10-16 19:48:16.894485+00
3043307b-62d5-447a-8d24-db4bb4743cb3	ฝรั่งเศส	fà-ràng-sèt	1	2026-10-16 19:49:15.138739+00	2026-10-16 19:49:15.138739+00
b5ddc60a-8305-490b-b478-9ab8c275b06b	ประเทศฝรั่งเศส	bprà-têt fà-ràng-sèt	1	2026-10-16 19:49:52.172418+00	2026-10-16 19:49:52.172418+00
b1a3a77b-b69e-40e9-9ee6-37c11b890daf	สหรัฐ	sà-hà rát	1	2026-10-16 19:54:07.951952+00	2026-10-16 19:54:07.951952+00
c1e342e0-adbd-4a08-ad82-a4cfe224a8ef	หรอ	rŏr	3	2026-10-17 12:32:12.523508+00	2026-10-17 12:36:03.637271+00
9920bdf8-018c-43ba-bd0e-7fb5ca0a4652	อเมริกา	à-may-rí-gaa	1	2026-10-16 19:55:29.873245+00	2026-10-16 19:55:29.873245+00
dfe68623-c6c2-4b6b-a7ec-afb194fd3e1f	สหรัฐอเมริกา	sà-hà rát à-may-rí-gaa	3	2026-10-16 19:52:11.792698+00	2026-10-16 19:55:41.856684+00
d48f4442-f11d-444b-8123-818a2b490126	พร้อม	próm	1	2026-10-17 12:17:31.804876+00	2026-10-17 12:17:31.804876+00
e797b5fd-3fd1-4018-9339-3ab88558e8c6	จริง	jing	1	2026-10-17 12:26:16.838414+00	2026-10-17 12:26:16.838414+00
a110aa30-ed86-40a6-a252-d9f30fddde99	รึ	réu	2	2026-10-17 13:37:39.650827+00	2026-10-17 13:39:53.051648+00
80965892-6c3d-459b-925e-dc5bbbf9453f	นิด	nít	1	2026-10-17 14:11:17.699127+00	2026-10-17 14:11:17.699127+00
1f284207-3b06-4bed-8590-1a96168c7302	ปานกลาง	bpaan glaang	1	2026-10-17 14:14:30.924886+00	2026-10-17 14:14:30.924886+00
d7c059e1-a239-4486-9fe2-fe68dae51656	พริก	prík	1	2026-10-17 15:15:14.750416+00	2026-10-17 15:15:14.750416+00
c6667cf7-dcd6-4443-9440-f2a030e35f2f	ใส่	sài	2	2026-10-17 15:14:47.260811+00	2026-10-17 15:16:21.847471+00
19cb5b7f-730d-4e56-a576-77087066b783	เคย	koiie	1	2026-10-17 15:33:11.060061+00	2026-10-17 15:33:11.060061+00
3798e62b-1e9a-479e-80be-e0e35e7d9009	แปล	bplae	1	2026-10-17 15:46:53.003637+00	2026-10-17 15:46:53.003637+00
889b4685-fdaf-4e10-877b-e8cd233cc05e	ครั้ง	kráng	1	2026-10-17 15:55:26.485903+00	2026-10-17 15:55:26.485903+00
8c7b72de-bca8-4453-b45d-199349f94539	ควาย	kwaai	1	2026-10-18 13:53:59.322924+00	2026-10-18 13:53:59.322924+00
a99fcf6e-d927-46cc-aa6a-333c5bd3a2a6	แกะ	gàe	1	2026-10-18 13:57:26.526066+00	2026-10-18 13:57:26.526066+00
7d3bea74-57da-4498-896a-b5707dc56b4f	ยืน	yeun	1	2026-10-18 16:52:27.29703+00	2026-10-18 16:52:27.29703+00
470f1d34-36ac-47e1-83ec-0467fba6b243	ทำอาหาร	tam aa-hăan	2	2026-10-18 16:55:11.86606+00	2026-10-18 16:55:53.998962+00
75b1ba28-4b47-4f85-9c1d-0eda94988b6b	ล้าง	láang	1	2026-10-18 16:56:47.672129+00	2026-10-18 16:56:47.672129+00
b5f1cb58-5aa0-4126-9038-89848aedb638	สึก	sèuk	1	2026-10-18 16:59:58.099827+00	2026-10-18 16:59:58.099827+00
d9af1273-9e3c-4e3b-bc44-760209fadea1	รู้สึก	rúu sʉ̀k	3	2026-07-23 14:24:51.778408+00	2026-10-18 17:01:19.222483+00
06ba1d68-aa30-4609-9974-7ad73ee94e37	พบ	phóp	1	2026-10-18 17:03:59.522507+00	2026-10-18 17:03:59.522507+00
25da37b6-f226-45f4-93a3-c0a685391b64	วาง	waang	1	2026-10-18 17:04:43.313816+00	2026-10-18 17:04:43.313816+00
ad278f47-f5dd-44e4-bfbe-af26bfc44d85	ล้ม	lóm	1	2026-10-18 17:05:21.485678+00	2026-10-18 17:05:21.485678+00
897a72d1-2488-418c-8ac4-40bb1c1e16d4	ร้องเพลง	róng pleng	2	2026-08-16 17:22:28.899149+00	2026-10-18 17:06:13.826901+00
d2f79085-39d8-43fa-a2eb-6c35878e5f19	เต้น	dtên	1	2026-10-18 17:06:38.894091+00	2026-10-18 17:06:38.894091+00
f964b1dd-ff4c-4dcf-8fcf-7831ceef272e	เมษายน	may-săa-yon	1	2026-10-20 19:28:56.275544+00	2026-10-20 19:28:56.275544+00
80c303ac-76a7-40eb-8377-711eb9f117a9	หัวเราะ	hŭua rór	3	2026-10-18 17:07:21.073555+00	2026-10-18 17:07:50.895223+00
9538f8bd-5653-48ef-948b-0824dee94bf1	ไห้	hâi	1	2026-10-18 17:11:32.153875+00	2026-10-18 17:11:32.153875+00
31e944f4-7445-4b8f-8ddc-2de389a3842a	ร้องไห้	róng hâi	2	2026-10-18 17:09:17.172676+00	2026-10-18 17:12:02.299657+00
4375baee-0851-45fa-ba6c-6cd9c736b660	ยิ้ม	yím	1	2026-10-18 17:12:51.640587+00	2026-10-18 17:12:51.640587+00
6ae1db17-6ebb-4e31-9a0b-e113d147645b	หยุด	yùt	1	2026-10-18 17:13:41.361368+00	2026-10-18 17:13:41.361368+00
24be2de7-8dac-4c60-9073-84eb5747a9a9	โทร	toh	1	2026-10-18 17:14:38.680054+00	2026-10-18 17:14:38.680054+00
2502995b-e781-4ccf-a20f-aa0d7df9cdbc	ส่ง	sòng	1	2026-10-18 17:15:23.72238+00	2026-10-18 17:15:23.72238+00
5c2d3d1f-262c-46f1-bd1b-b1cf08dddaf3	เลือก	lêuuak	1	2026-10-18 17:15:52.966386+00	2026-10-18 17:15:52.966386+00
c1470f4a-ee5a-484d-8e7a-a627cff62272	ตาม	dtaam	1	2026-10-18 17:16:26.573366+00	2026-10-18 17:16:26.573366+00
a675a09a-b637-4483-adfb-b3c8864e7fd3	พัก	pák	1	2026-10-18 17:17:43.48737+00	2026-10-18 17:17:43.48737+00
731184c9-5f47-4fe8-b118-f21f14d9ee69	หา	hăa	1	2026-10-18 17:18:16.730228+00	2026-10-18 17:18:16.730228+00
951f2751-4ab0-45ec-93f9-24024e6658af	ถือ	tĕu	1	2026-10-18 17:18:46.05135+00	2026-10-18 17:18:46.05135+00
9f0392fc-870d-45d4-a1dc-74804ca04b4a	นับ	náp	1	2026-10-18 17:19:16.716501+00	2026-10-18 17:19:16.716501+00
f075d7a8-ba31-46fe-a180-f28064ef0e91	ตัดสิน	dtàt sĭn	1	2026-10-18 17:20:31.25524+00	2026-10-18 17:20:31.25524+00
b1bac9c6-2a82-46e7-aa2b-68dfa7739743	ตัดสินใจ	dtàt sĭn jai	2	2026-10-18 17:19:53.073964+00	2026-10-18 17:21:24.149514+00
c7eb6dc4-23ed-44cd-bc56-57ebc1079641	กลับ	glàp	1	2026-10-18 17:21:52.202893+00	2026-10-18 17:21:52.202893+00
bf16d2ce-4801-4423-b859-c2f1664b7fb3	การ	gaan	1	2026-10-18 17:23:22.893465+00	2026-10-18 17:23:22.893465+00
d9452a28-a387-4fe1-b6d2-7bab16e8582e	ต้องการ	dtông gaan	3	2026-10-18 17:22:32.820925+00	2026-10-18 17:23:41.81418+00
47f6c828-5d2d-44a7-97d1-01db585df0db	ว่าย	wâai	1	2026-10-18 17:24:32.381638+00	2026-10-18 17:24:32.381638+00
5e27f211-4842-42b8-b42d-55f1f635ea7b	อธิบาย	à-tí-baai	1	2026-10-18 17:26:01.028207+00	2026-10-18 17:26:01.028207+00
e267ba97-d4bc-4f13-ab42-0db209c4d4b1	ทักทาย	ták taai	1	2026-10-18 17:26:34.091821+00	2026-10-18 17:26:34.091821+00
45c70726-b87f-4e05-b925-acbb2593f884	ชวน	chuuan	1	2026-10-18 17:27:31.047913+00	2026-10-18 17:27:31.047913+00
c9ef6f2b-aa8a-48a9-a8a7-d300ee48f04b	ลุก	lúk	1	2026-10-18 17:28:21.039648+00	2026-10-18 17:28:21.039648+00
368619a3-bc8f-4bf6-b1d1-8f31da1e7a78	ทำความสะอาด	tam kwaam sà-àat	1	2026-10-18 17:29:13.309106+00	2026-10-18 17:29:13.309106+00
ac5480b1-4513-4d5b-8695-c9cd1ffe2cd5	เก็บ	gèp	1	2026-10-18 17:29:49.966909+00	2026-10-18 17:29:49.966909+00
d3da7a3b-5924-4997-9329-131099c2136c	แบก	bàek	1	2026-10-18 17:31:13.36266+00	2026-10-18 17:31:13.36266+00
79fc0451-baa2-468c-8638-99fc26e275f3	ฉี่	chèe	1	2026-10-18 17:31:43.948847+00	2026-10-18 17:31:43.948847+00
8dd2a84b-5329-4eac-b8c2-b7f06ee8e459	อึ	èu	1	2026-10-18 17:32:28.646502+00	2026-10-18 17:32:28.646502+00
e744432e-eabd-46f0-a150-d636e027d76c	กด	gòt	1	2026-10-18 17:33:16.807301+00	2026-10-18 17:33:16.807301+00
50ce638b-596f-4522-9bf0-e62307ab4510	ผ่อน	pòn	1	2026-10-18 17:35:18.928436+00	2026-10-18 17:35:18.928436+00
8f42af81-be99-483a-a2cc-816df45aeff1	พักผ่อน	pák pòn	2	2026-10-18 17:33:57.611367+00	2026-10-18 17:35:40.328049+00
79cc5a70-f463-4a47-9ee8-5c09dba3261b	ไหว้	wâai	1	2026-10-18 17:36:59.807912+00	2026-10-18 17:36:59.807912+00
34c8038c-0220-4adb-88b5-31ec9a7ca2b8	เต่า	dtào	1	2026-10-18 17:39:35.700944+00	2026-10-18 17:39:35.700944+00
a763882b-aad7-4ccf-a964-ec4e5b791def	ตรง	dtrong	2	2026-10-18 17:45:22.786118+00	2026-10-18 17:49:22.454673+00
dfeb9054-ec41-4ee9-a48f-db4952cb1507	นั้น	nán	2	2026-10-18 17:49:54.984976+00	2026-10-18 17:50:31.272472+00
e1c047ba-c925-4456-bfa6-cc40964ed2d9	ข้าง	kâang	1	2026-10-18 17:55:18.578506+00	2026-10-18 17:55:18.578506+00
1ab5a7bc-10c8-403f-9e10-7b3c40fd3341	ใน	nai	1	2026-10-18 17:56:09.375527+00	2026-10-18 17:56:09.375527+00
4903b1a1-4f4f-4a4e-9f22-14d9131e22a6	ข้างใน	kâang nai	2	2026-10-18 17:53:19.65493+00	2026-10-18 17:56:36.116124+00
b503e82e-118e-4e59-a52a-abe92e967b0b	ก็	gôr	1	2026-10-18 20:21:23.44122+00	2026-10-18 20:21:23.44122+00
1c20f286-ac82-42a0-99dd-3b1a6fda235c	แน่นอน	nâe non	1	2026-10-18 20:23:13.201405+00	2026-10-18 20:23:13.201405+00
d68ffc40-433d-4d92-8695-0a15643b767c	อาจจะ	àat jà	2	2026-10-18 20:26:49.318061+00	2026-10-18 20:28:14.994816+00
03373745-749b-4d83-a11b-bc40a063b168	แล้วแต่	láew dtàe	2	2026-10-18 20:32:23.597758+00	2026-10-18 20:33:06.504687+00
1154d4ee-0693-4728-a320-a0f7be2a4ccf	มิถุนายน	mí-tù-naa-yon	1	2026-10-20 19:31:19.190071+00	2026-10-20 19:31:19.190071+00
ded1391e-2822-4ba8-95a1-fec3cd606d90	ไข้	kâi	1	2026-10-18 20:42:52.736901+00	2026-10-18 20:42:52.736901+00
d6b73597-8d81-4429-9588-ad412adb90e5	คนไข้	kon kâi	3	2026-10-18 20:41:39.190304+00	2026-10-18 20:43:03.30931+00
654a9d18-dc13-42ea-b643-3ef98967e097	ถึง	tĕung	1	2026-10-18 20:50:43.977301+00	2026-10-18 20:50:43.977301+00
27b8fc80-e6e4-4b6f-9c52-a84189354bd2	นอกใจ	nôk jai	1	2026-10-18 20:54:06.119655+00	2026-10-18 20:54:06.119655+00
6fed8279-c81f-46d4-9956-0494779f38de	อ่ะ	à	1	2026-10-18 20:59:09.491556+00	2026-10-18 20:59:09.491556+00
a3e16449-3bc0-4ffa-814c-1c614f793fb5	ที่นี่	têe nêe	1	2026-10-19 20:59:17.178677+00	2026-10-19 20:59:17.178677+00
ead17145-8024-41ef-8f33-2b385b0a1984	ถุง	tŭng	1	2026-10-19 21:00:58.196059+00	2026-10-19 21:00:58.196059+00
d0328563-5cd9-4a84-9365-53526da89955	แยก	yâek	1	2026-10-19 21:05:54.647589+00	2026-10-19 21:05:54.647589+00
d028f02d-41c4-4d60-be60-b02d244a7726	มกราคม	mók-gà-raa kom	1	2026-10-20 19:26:21.355256+00	2026-10-20 19:26:21.355256+00
d16d477c-2995-49bd-8d06-bfe0366a99d6	กุมภาพันธ์	gum-paa pan	1	2026-10-20 19:27:25.039933+00	2026-10-20 19:27:25.039933+00
ea853e2e-b275-47ce-a012-3294e4a67317	มีนาคม	mee-naa kom	1	2026-10-20 19:28:10.072737+00	2026-10-20 19:28:10.072737+00
c95215f9-029c-4076-924e-ebe0a7cd8e44	กรกฎาคม	gà-rá-gà-daa-kom	1	2026-10-20 19:32:01.152669+00	2026-10-20 19:32:01.152669+00
3a54af88-f3a3-4c61-93cc-842ec2056bd7	สิงหาคม	sĭng-hăa kom	1	2026-10-20 19:32:43.380249+00	2026-10-20 19:32:43.380249+00
8e91a1a7-197e-454b-aadd-0a188d1cb12b	กันยายน	gan-yaa-yon	1	2026-10-20 19:33:30.642991+00	2026-10-20 19:33:30.642991+00
d3bc2429-e9c8-4afe-92dd-f159da6f9bb3	ตุลาคม	dtù-laa kom	1	2026-10-20 19:34:11.561251+00	2026-10-20 19:34:11.561251+00
cc8828a3-eef6-404e-b095-4035b1239194	พฤศจิกายน	préut-sà-jì-gaa-yon	1	2026-10-20 19:34:50.409501+00	2026-10-20 19:34:50.409501+00
7c31b9c4-9419-4dbc-b494-106210408b06	ธันวาคม	tan-waa kom	1	2026-10-20 19:35:28.338306+00	2026-10-20 19:35:28.338306+00
dff0b4cd-3860-4154-aabe-1828d4726f2f	พฤษภาคม	préut-sà-paa kom	2	2026-10-20 19:30:13.240426+00	2026-10-20 19:36:09.39337+00
57b58d9b-cd3d-4f7a-9d42-28e8df51f10a	บาดเจ็บ	bàat jèp	2	2026-10-21 10:42:23.272529+00	2026-10-21 10:55:20.25137+00
83ed560d-d9db-4d83-98c5-82f390992298	แก้ว	gâew	3	2026-10-20 19:40:19.627832+00	2026-10-20 19:42:05.134453+00
7d064a0b-311d-4998-8a0b-78d62d6befd2	ถั่ว	tùua	1	2026-10-20 20:02:27.262872+00	2026-10-20 20:02:27.262872+00
b114c524-fc4c-4551-8dd1-79966abd1a39	ถั่วลิสง	tùua-lí-sŏng	2	2026-10-20 20:03:30.060844+00	2026-10-20 20:04:43.404421+00
956bcff1-58c9-44a0-a0cc-228285641038	ได้รับ	dâi ráp	3	2026-10-21 10:41:08.992711+00	2026-10-21 10:52:21.209898+00
cc690189-03e1-4bd6-ac7e-487709a6dae5	บาด	bàat	1	2026-10-21 10:53:15.141865+00	2026-10-21 10:53:15.141865+00
e441fedd-8253-4649-bdc1-6fcf39e4814e	เจ็บ	jèp	1	2026-10-21 10:54:59.67349+00	2026-10-21 10:54:59.67349+00
615e2110-0a6a-4ce2-a952-4d9d4d24571f	หน้าอก	nâa òk	1	2026-10-21 10:59:03.312137+00	2026-10-21 10:59:03.312137+00
446e09db-5132-4282-b473-372b17cd82fc	เลือด	lêuuat	1	2026-10-21 11:01:01.16184+00	2026-10-21 11:01:01.16184+00
0bed534b-e4b9-4802-99a9-cbbebaca9a79	เลือดออก	lêuuat òk	1	2026-10-21 11:01:51.839299+00	2026-10-21 11:01:51.839299+00
54d154eb-6f96-4be1-8afe-bc08bd37a53e	เป็น	bpen	5	2026-07-14 18:13:24.970901+00	2026-10-21 11:33:52.245329+00
ebd4f4e7-d15a-413a-8a89-f914a601c866	เป็นลม	bpen lom	2	2026-10-21 11:29:30.415534+00	2026-10-21 11:34:23.033334+00
6617309b-96e2-41cc-b2ef-15b622f4e1d6	หมด	mòt	1	2026-10-21 11:35:45.33807+00	2026-10-21 11:35:45.33807+00
552ca60b-18c3-4051-848d-2164e548a167	สติ	sà-dtì	1	2026-10-21 11:36:57.361456+00	2026-10-21 11:36:57.361456+00
af0f0f69-54c5-49cb-aede-65098e1af487	หมดสติ	mòt sà-dtì	2	2026-10-21 11:31:47.335632+00	2026-10-21 11:37:21.657729+00
ac5466db-5b77-46db-9e99-cd45e37e85d4	เวียน	wiian	1	2026-10-21 11:39:58.240424+00	2026-10-21 11:39:58.240424+00
b497c26e-36a4-4e5f-8a49-3fba600eb82c	เวียนหัว	wiian hŭua	2	2026-10-21 11:38:27.43284+00	2026-10-21 11:40:17.997051+00
e59641d2-ed5d-4ba8-ad3e-dfca5f900769	ศูนย์	sŏon	2	2026-10-21 18:40:43.232257+00	2026-10-21 18:40:51.968462+00
5c5f5e7f-3342-4958-9f64-931de6fb931f	เอ็ด	èt	1	2026-10-21 18:46:41.072254+00	2026-10-21 18:46:41.072254+00
ec3d7d8b-8693-4cd6-b00b-d55ecdc42081	สิบสอง	sìp sŏng	2	2026-10-21 18:47:37.616259+00	2026-10-21 18:48:25.950792+00
34007870-d65d-4d92-ba3a-f600ed0407ff	สิบเอ็ด	sìp èt	4	2026-10-21 18:44:14.670371+00	2026-10-21 18:48:54.760089+00
d1b1eff9-ac33-46f9-b301-178f739efb75	สิบสาม	sìp săam	2	2026-10-21 18:50:03.983553+00	2026-10-21 18:50:28.781692+00
08c7e6da-89ca-41e0-9e3e-407c2b8eb521	สิบสี่	sìp sèe	2	2026-10-21 18:50:59.677401+00	2026-10-21 18:51:24.371326+00
847e0e21-254c-4373-b483-49a5a733279c	สิบห้า	sìp hâa	2	2026-10-21 18:52:08.760707+00	2026-10-21 18:52:27.650528+00
a4d812e4-7c90-42c4-827e-fd4ab1390a4b	สิบหก	sìp hòk	2	2026-10-21 18:53:00.089949+00	2026-10-21 18:53:25.155754+00
88c2c842-c8e3-448f-a3d3-e48d30e01cf6	สิบเจ็ด	sìp jèt	2	2026-10-21 18:54:10.086682+00	2026-10-21 18:54:33.800923+00
1d390c94-2549-4104-a863-ca1511a0be80	สิบแปด	sìp bpàet	2	2026-10-21 18:55:10.643115+00	2026-10-21 18:56:04.028393+00
e3c8a20e-1f3b-4192-a695-dd5d52a7b0f0	สิบเก้า	sìp gâo	2	2026-10-21 18:55:41.010165+00	2026-10-21 18:56:26.358944+00
2a3bba74-e040-46f3-a782-04b5a7874518	อันนั้น	an nán	2	2026-10-21 19:05:38.097545+00	2026-10-21 19:07:05.873367+00
587745c1-3c4b-425c-b56e-fbde2b600d89	ดีใจ	dee jai	1	2026-10-21 19:17:43.05019+00	2026-10-21 19:17:43.05019+00
53be6510-7da6-4fcc-900f-06ac7a4c289b	สาว	săao	1	2026-10-21 19:25:04.112786+00	2026-10-21 19:25:04.112786+00
d421d179-13b4-4832-8808-93781e1315b0	ชาย	chaai	1	2026-10-21 19:27:03.301907+00	2026-10-21 19:27:03.301907+00
\.


--
-- Data for Name: definitions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."definitions" ("id", "word_id", "english", "part_of_speech", "notes", "version", "created_at", "updated_at", "published") FROM stdin;
a7bd3517-7442-4e31-880e-3dcaae2edde0	8b73c32a-c008-4619-bae0-f3b56dbe00a6	please (go ahead) / to invite (in)	\N	\N	1	2026-07-12 00:02:30.301522+00	2026-07-12 00:02:30.301522+00	f
00ccb0b7-af00-416f-8292-1c089fd77d5f	750af5d8-28b4-4781-9031-40458a193a22	I / me	\N	Primarly used by female speakers to refer to themselves. Occasionally this pronoun can also be used by male spekers in less formal, casual settings or in songs.	3	2026-07-11 16:11:47.644485+00	2026-10-16 14:19:09.874404+00	t
a8e4e70a-4c48-4a7e-842c-51269fd310e8	a2414431-5b3e-4552-89d8-d886a1d5624a	with	\N	\N	2	2026-07-11 15:59:48.275661+00	2026-07-11 16:04:06.026769+00	f
d11362f4-fd2a-41b6-8e5f-249a44675cd4	9a0f984f-28b5-48a7-aca7-ac70e65487cf	or not...?	\N	\N	2	2026-07-11 18:07:58.235887+00	2026-08-13 17:38:29.530086+00	f
5e2d2077-cfe8-4e80-8bfa-a00759d5f854	d203d02f-13f0-4ca6-ac10-6d9803de9e29	hair	\N	\N	5	2026-07-11 16:01:35.894187+00	2026-08-07 15:06:00.613877+00	f
70acf9d5-5bee-4dae-8503-6fec6c823d20	f90ee00e-e1e0-4dc9-904a-2bc841f91a3b	something / anything / whatever / things / stuff	\N	\N	2	2026-07-11 17:54:30.466739+00	2026-10-20 20:11:42.81572+00	t
a455b186-07cc-44f4-9dd1-53ddd0f01763	d203d02f-13f0-4ca6-ac10-6d9803de9e29	I / me (m)	\N	A first person pronoun used by male speakers to refer to themselves.	7	2026-07-11 16:00:54.432316+00	2026-10-16 14:19:09.874404+00	t
a993b4f3-e795-41c7-ac90-996416a46b36	49edd849-b10d-4953-abaf-70961c923929	to eat / to consume	verb	\N	2	2026-07-11 16:34:38.087184+00	2026-07-11 16:41:23.046962+00	f
b7167c0b-f6ac-4457-8b2b-1adc5b7ba12e	49edd849-b10d-4953-abaf-70961c923929	to drink	verb	Used in informal, casual conversations.	1	2026-07-11 16:41:25.430743+00	2026-07-11 16:41:25.430743+00	f
d6fa7e77-b103-44f8-b7e2-02e32cb8f089	324e2ed9-be8f-494f-a81a-d8c5092c80b7	rice	noun	\N	3	2026-07-11 16:34:38.087184+00	2026-07-11 16:41:51.064259+00	f
fe19cb46-4092-4e28-a90e-766f3824cacc	324e2ed9-be8f-494f-a81a-d8c5092c80b7	meal / food	noun	\N	2	2026-07-11 16:40:02.313501+00	2026-07-11 16:41:51.775239+00	f
7e2ae2d9-f3dd-40f1-a312-c4c540333f2b	3266364e-1322-4e39-ba4e-302f039fc3b6	question word	particle	Used at the end of a sentence to turn it into (usually yes / no) question. \n<br>In English it would be translated as 'right...?', 'isn't it...?', 'aren't (you)...?', 'do (you)...?, ... depending on the context.	6	2026-07-11 18:04:33.549881+00	2026-10-17 12:11:58.823723+00	t
4f1ea486-0155-4643-9757-12e3bc1e8e4f	cd2bfab2-1353-4e0a-9656-3673181be169	to request / to ask for / May (I)...? / Can (I / you / we / they...)...? / Let me...	\N	\N	6	2026-07-11 17:46:04.392432+00	2026-10-17 15:37:39.066297+00	t
ec88f280-c529-4384-acfc-3b3bbcb45855	a436eb9f-ed2a-42d6-9f9d-59e5c6be971d	of / belonging to / that or those of... / the property of...	\N	\N	3	2026-07-11 17:50:01.768182+00	2026-10-17 15:37:39.066297+00	t
7e0a55f0-3037-461d-a0b2-d14d0105f5c5	4d06ab0a-1563-412e-9c24-5277eeb3620f	question particle / or...?	particle	A word used at the end of a sentence to turn it into a question, usually when the answer is presumed. In english it would be translated as '...or?'.	3	2026-07-11 17:59:34.510186+00	2026-10-17 15:59:52.644103+00	t
6f6ef364-f329-4afd-b339-d545624a5edf	4d06ab0a-1563-412e-9c24-5277eeb3620f	or	conjunction	\N	2	2026-07-11 17:59:33.996171+00	2026-07-11 18:00:00.884344+00	f
72e43458-4000-4ad3-b0e7-a8eae234ace7	fdfb1930-06b3-4603-bb03-71f4158f53f7	informal or polite ending particle used by female speakers as a preference	\N	Sometimes it is also used by female speakers at the end of a sentence as a personal preference or to make the sentence sound more playful.	2	2026-07-12 00:15:19.607586+00	2026-08-18 16:35:14.409048+00	f
070da027-3de9-48b5-9337-c341f978d31a	06b65b7d-2e03-4cdc-bc78-1e0f9049f86a	Help! / Please help!	\N	- <a href="tts:ช่วย">ช่วย</a> /chûay/ — to help / to aid / to assist<br>\r\n- <a href="tts:ด้วย">ด้วย</a> /dûay/ — a particle added at the end of a request to make it more polite or urgent	1	2026-07-11 23:55:16.043989+00	2026-07-11 23:55:16.043989+00	f
1de975c3-5346-4aa7-9736-d038f06343fd	90fffd6f-8337-47df-a027-10ff48d2591f	(to be) careful / (to) watch out / beware	\N	Often used as a warning or safety instruction.	1	2026-07-11 23:56:14.901705+00	2026-07-11 23:56:14.901705+00	f
ea3f0313-7726-4a00-b28b-cbf66943adbd	fa1e0a0f-9966-4564-9833-ab609d87b6f0	love / to love	verb	\N	1	2026-07-11 23:57:31.598872+00	2026-07-11 23:57:31.598872+00	f
6854f448-1f2a-4b65-b756-a34bd714cf44	636ebf40-f92b-43cf-826b-5c4cb48e5b74	polite ending particle (f)	\N	Used by <strong>female</strong> speakers, usually at the end of <strong>questions</strong> or <strong>requests</strong>.	3	2026-07-11 17:51:45.222464+00	2026-10-17 15:37:39.066297+00	t
0e5b745d-a94f-4492-ba2b-3a18dfdc1d27	ea29dc13-86fe-4153-9d4e-55efd083d751	polite ending particles (f)	\N	<p>\r\n  <a href="tts:นะ">นะ</a> /na/ – a softening particle used to add friendliness, encouragement, or politeness to a statement<br>\r\n  <a href="tts:คะ">คะ</a> /kha/ – usually used at the end of <strong>questions</strong> and <strong>requests</strong>\r\n</p>\r\n<p>\r\nWhen used together at the end of a sentence it softens the tone and makes speech sound friendlier, more gentle and non-harsh. It can be used with requests, suggestions, statements, questions, and corrections. It adds warmth and politeness, similar to saying “okay?”, “alright?”, or simply softening the mood of the sentence.\r\n</p>	1	2026-07-12 00:18:03.739518+00	2026-07-12 00:18:03.739518+00	f
bec087e9-3bfd-45a8-9d65-f1fc5b319786	a436eb9f-ed2a-42d6-9f9d-59e5c6be971d	thing / goods / possession / belonging / item / stuff	\N	\N	2	2026-07-11 17:50:02.948189+00	2026-08-08 22:42:56.81288+00	f
6c4e3283-2c6c-4729-bd04-c24decee1951	f90ee00e-e1e0-4dc9-904a-2bc841f91a3b	what	\N	\N	2	2026-07-11 17:54:29.692526+00	2026-10-17 15:37:39.066297+00	t
9ae6d5a9-b765-4a43-be09-dbd163e25f29	775a27be-b2c3-4073-9117-e5562bdfca0f	yes	\N	<p>Used to politely acknowledge or answer someone, similar to "yes", "okay", "right" in English.</p>	2	2026-07-11 16:18:58.079237+00	2026-08-18 16:34:50.370899+00	f
84d708a1-1449-48fe-8e11-161065f50fc4	fdfb1930-06b3-4603-bb03-71f4158f53f7	yes (m)	\N	<p>Used to politely acknowledge or answer someone, similar to "yes", "okay", "right" in English.</p>	3	2026-07-11 17:07:15.096785+00	2026-08-18 16:35:15.641868+00	f
409950dc-0bc2-40b9-80e2-c20fd2d05549	8ce66ca0-6cb8-442f-86bc-413f243a0008	(to be) ok / (to be) fine / acceptable / alright	\N	\N	4	2026-07-11 17:22:02.132286+00	2026-10-18 21:03:18.440116+00	t
a4c53bef-09c4-4812-aa4e-7622f3671ba0	fcd5c518-3368-4e51-9050-926a11975a02	hello / hi	\N	\N	5	2026-07-11 16:15:08.944913+00	2026-10-16 12:32:22.905863+00	t
43b9b073-4932-4dab-b81d-81068aec8eaf	fcd5c518-3368-4e51-9050-926a11975a02	goodbye / bye	\N	\N	5	2026-07-11 16:15:09.667672+00	2026-10-16 12:32:22.905863+00	t
e59ecc38-4645-4e44-9484-97b925497171	af93382a-4bd6-452b-9e2c-668dc76d14cf	it’s okay / never mind / don't worry about it / not a problem / you're welcome	\N	\N	3	2026-07-11 23:53:27.869217+00	2026-10-16 12:32:22.905863+00	t
0d39ecf0-4c59-4dee-8960-5e2742d6f147	04667276-4637-4cce-819a-e48ac5137338	(to be) sorry / to apologize / excuse me	\N	\N	2	2026-07-11 17:20:32.826133+00	2026-10-16 12:32:22.905863+00	t
2830825d-9c94-4d54-84a6-2ef180735925	bf863096-53ad-4de5-b2b8-4e89b4089fcb	yes	\N	\N	2	2026-07-11 23:48:52.164507+00	2026-10-16 12:32:22.905863+00	t
6431a1e7-9017-443b-b46a-dc62683fd44b	04931822-1041-4598-a210-52465db70f03	only doing / focusing solely on / only for / only / to keep doing only / to do nothing but...	\N	- <a href="tts:เอา">เอา</a> /ao/ — to take / to want / to choose<br>\n- <a href="tts:แต่">แต่</a> /dtàe/ — only / just / but (depending on context)	3	2026-07-12 13:58:24.657932+00	2026-08-09 13:25:11.209242+00	f
54a70df8-eb25-4347-8df9-9583ed72fe14	b1f03ae5-eee8-4b0c-a2f7-4e87f9c234ea	to overstep / to cross a line / to cross a boundary	\N	- <a href="tts:ล้ำ">ล้ำ</a> /lám/ — to exceed / to go beyond / to surpass<br>\n- <a href="tts:เส้น">เส้น</a> /sên/ — line / boundary / limit	2	2026-07-12 13:38:02.035849+00	2026-07-12 13:44:05.935071+00	f
f368191c-5d31-4a7b-a420-46553949a832	0dbd5152-2dcd-41ee-85d4-af9e547c667f	(to be) easy / simple / not difficult	\N	\N	1	2026-07-12 13:49:08.328486+00	2026-07-12 13:49:08.328486+00	f
679ce06c-a6f6-45b4-973d-60ff843f8f6c	7ba96b26-87a0-4d63-a1eb-2e0e93ddad5d	a particle used to seek agreement or confirmation	\N	A particle added to the end of a sentence asking for an opinion or confirmation of the speaker’s opinion	2	2026-07-12 13:52:05.659858+00	2026-07-12 13:54:39.155167+00	f
ca7084f9-31ef-4c57-a637-defd1863417d	98c3ff3e-ae38-4da4-84a7-30e8a2da794a	to blame / to accuse	\N	\N	1	2026-07-12 13:59:08.096355+00	2026-07-12 13:59:08.096355+00	f
ba93f0f2-ee9c-4af0-8e20-a02a849717a4	5dae0e6d-2b01-4a6e-a6a1-76e3becefd9a	others / other people / other person / another person	\N	- <a href="tts:คน">คน</a> /khon/ — person / people<br>\r\n- <a href="tts:อื่น">อื่น</a> /ʉ̀ʉn/ — other / another	2	2026-07-12 13:59:58.710904+00	2026-07-12 14:02:37.811223+00	f
bf6d1905-0d5c-4a9d-8f3d-0e462ab7b5b4	d34e2678-c925-4cc7-a5f5-fb3ce5ef1623	or	\N	This is an alternative pronunciation of <a href="tts:หรือ">หรือ</a> /rǔe/.	3	2026-07-12 19:17:48.509698+00	2026-10-17 12:34:25.855014+00	f
02a350d1-6be3-4026-a28d-f45559ae3d1e	fc901cd2-bfed-4fe4-9a97-22011b02186a	a particle used for emphasizing	\N	\N	1	2026-07-12 15:26:57.550609+00	2026-07-12 15:26:57.550609+00	f
465cb91e-6996-47b5-8d40-9ba6718ae538	fc901cd2-bfed-4fe4-9a97-22011b02186a	a particle used to gently nudge or encourage	\N	\N	1	2026-07-12 15:26:58.392112+00	2026-07-12 15:26:58.392112+00	f
487bc441-12c9-4e54-b241-7e7aa50ac423	31e84952-18ba-4e15-a535-adc6a9ce7412	to dream / a dream	\N	\N	1	2026-07-12 15:28:06.713344+00	2026-07-12 15:28:06.713344+00	f
2f7557d2-9abe-46b6-9806-e94a9b5879f3	3f5ea950-7cbf-45ec-80e2-f7e2f628004e	very good / great	\N	- <a href="tts:ดี">ดี</a> /dee/ — good / well / fine<br>\n- <a href="tts:ๆ">ๆ</a> — repetition mark indicating the word is repeated for emphasis or a broader meaning	2	2026-07-12 15:29:37.580759+00	2026-07-12 15:33:35.299399+00	f
3b70696c-9c25-4a17-800b-177a03cd062d	a7a69fee-cd2a-4b6f-a542-1cc2150b2eb6	already / any more	\N	\N	4	2026-07-12 18:29:08.799146+00	2026-10-18 21:03:18.440116+00	t
bb29351e-2d82-4f6d-824a-56d90e629089	0f8c503a-f4e9-45e4-846e-d761006abc9c	you (informal / intimate)	\N	<p>A <strong>2nd person pronoun</strong> used to refer to the person being spoken to <strong>in intimate or informal settings</strong> (regardless of gender).</p>	4	2026-07-12 15:40:40.040018+00	2026-10-17 16:03:11.273176+00	t
68f1883b-5089-4add-b8a2-0a9890241a5b	d84221bc-523b-42f2-a39f-2acd4e79cd56	calm down / relax / stay calm / take it easy	\N	<p>Also written as: <a href="tts:ใจเย็นเย็น">ใจเย็นๆ</a><br>\n- <a href="tts:ใจ">ใจ</a> /jai/ - heart / mind / spirit / inner being / core<br>- <a href="tts:เย็น">เย็น</a> /yen/ - cool / calm / cold<br>- <a href="tts:ๆ">ๆ</a> - a repetition character, used to indicate the repetition of the previous word </p>	3	2026-07-12 16:03:49.400965+00	2026-07-12 16:06:08.102975+00	f
a1b2a8d2-815f-49b6-b32e-69f495f7e2e5	3ec350a8-383e-4125-a490-4d47347d9f22	to fight / to face / to go against	\N	\N	1	2026-07-12 16:10:32.303761+00	2026-07-12 16:10:32.303761+00	f
984f9da5-c164-4d89-8224-03888d4b2db0	9c28b822-6653-47f0-8286-2289b6da8307	to miss / to think about (someone) / to have longing for (someone)	\N	\N	1	2026-07-12 16:14:14.995227+00	2026-07-12 16:14:14.995227+00	f
2358eb7e-8fd4-4010-bf69-d7e19f852da8	81bef837-08ea-4e73-bfbe-1d545fe44058	as well / too / also / likewise	\N	\N	1	2026-07-12 16:15:44.853028+00	2026-07-12 16:15:44.853028+00	f
49411dbb-16b5-4f07-9c5a-9d02f8c0ba8c	b4f2c6b9-e675-4d25-8fac-25bad0e77384	to want / to desire / to crave for	\N	\N	1	2026-07-12 18:24:50.532766+00	2026-07-12 18:24:50.532766+00	f
35cefbce-b3e7-4814-95f2-6b92f949c8ea	9761f9fe-1239-4ffa-99a7-3a86dbf44bcf	to argue / to talk back / debate / dispute	\N	\N	1	2026-07-12 18:26:28.254108+00	2026-07-12 18:26:28.254108+00	f
d2658b3c-1389-4d33-b469-63b9b0ab5c53	80609c69-c5c3-4fb9-bcbb-6248d7e64f0b	already (compleated action)	\N	- <a href="tts:ไป">ไป</a> /bpai/ — to go / away / indicates movement away from the speaker<br>\n- <a href="tts:แล้ว">แล้ว</a> /láew/ — already / now - indicates that an action has jjust happened or has been completed	5	2026-07-12 13:38:45.67216+00	2026-07-12 18:29:54.975648+00	f
d9abe490-29e6-4739-952a-78ef549e1e4e	66676ee6-6167-4f48-a67c-ff75d72c8ebe	encouraging ending particle	\N	\N	1	2026-07-12 18:35:29.453905+00	2026-07-12 18:35:29.453905+00	f
1fc9c920-346b-4401-a41b-c169ddb6c8f1	eca31e27-0491-47a3-98d1-66ca774b613d	forget it / let it go / let it be / it's not important / never mind	\N	- <a href="tts:ช่าง">ช่าง</a> /châang/ — to let be / to leave alone / to not worry about (when used in this expression)<br>\n- <a href="tts:มัน">มัน</a> /man/ — it<br>	2	2026-07-12 18:34:04.971777+00	2026-07-12 18:38:22.033367+00	f
733e0d3d-a29f-4018-9f6a-f422a1cc33db	d108ad40-465b-4c40-a2f5-9e7739851a41	to listen (to something) / to hear (something)	\N	\N	1	2026-07-12 18:41:24.695609+00	2026-07-12 18:41:24.695609+00	f
2054a4b3-63e4-472b-aa5d-c6b5bf10eb60	f050063d-3868-4575-bf0d-0edffe9732d2	do not / don't	\N	\N	1	2026-07-12 18:57:04.521702+00	2026-07-12 18:57:04.521702+00	f
5650c4da-5c80-4c79-8676-6d81bbcc0928	c2ecd4e3-f52b-4033-b711-8de6b725de48	to generalize / to stereotype / make a general accusation / broad brush someone	\N	- <a href="tts:เหมา">เหมา</a> /mǎo/ — to take all / to lump together / to treat as a whole<br>\n- <a href="tts:รวม">รวม</a> /ruuam/ — to gather / to combine / together<br>	2	2026-07-12 18:58:30.154138+00	2026-07-12 19:00:01.041714+00	f
61cfcd09-b00b-4122-891e-267f691b2b29	3ee6f214-5cc8-4680-914c-f9ac644f88d7	it	\N	\N	1	2026-07-12 19:05:09.613875+00	2026-07-12 19:05:09.613875+00	f
d3773e44-1486-4969-a862-d79dc0676c6d	93f60e8e-bc09-479a-b507-ea6cc6b66c51	clearly / obviously / for sure / totally	\N	\N	1	2026-07-12 19:06:20.491611+00	2026-07-12 19:06:20.491611+00	f
054d5661-73ca-4bc8-bab1-a89c460d439c	6ae57008-9641-402f-955c-d195261207e0	to be sure / to be confident / to be certain	\N	\N	1	2026-07-12 19:12:02.905367+00	2026-07-12 19:12:02.905367+00	f
cacfd512-5b0e-43dd-83a2-a2154b869280	ead657ae-80d0-489d-a5bc-5fa3c5e8b517	to understand / to comprehend	\N	\N	2	2026-07-12 16:07:32.853553+00	2026-10-17 15:59:52.644103+00	t
2a197f22-8828-4008-b50d-a3cc245da22e	720240d3-7f10-48d7-a8f4-762a71251271	not yet / yet (to do) / still / yet	\N	\N	1	2026-07-12 20:10:38.407112+00	2026-07-12 20:10:38.407112+00	f
daf1915b-d6e7-49da-9a35-76d8dc12efe9	d34e2678-c925-4cc7-a5f5-fb3ce5ef1623	question particle / or...?	\N	A word used at the end of a sentence to turn it into a question, usually when the answer is presumed. In english it would be translated as '...or?'.\n\n<br>This is an alternative pronunciation of <a href="tts:หรือ">หรือ</a> /rʉ̌ʉ/.	7	2026-07-12 19:13:54.533239+00	2026-10-18 21:03:27.7852+00	t
c0e2bd42-c370-4a00-8d35-c90924fead77	a7a69fee-cd2a-4b6f-a542-1cc2150b2eb6	to complete / to come to an end / in the past / completed / still	\N	\N	2	2026-07-12 18:32:28.184144+00	2026-07-18 00:51:01.513105+00	f
6b8c8002-71c1-4225-b296-e2d33c91cac3	e940c2ab-834a-4982-b3f6-bc310901cee2	this / these	\N	\N	2	2026-07-12 19:04:30.703574+00	2026-10-01 19:16:27.253127+00	f
5428d2e2-1ff8-4744-87f6-0173ed850199	fc901cd2-bfed-4fe4-9a97-22011b02186a	polite, friendly ending particle	\N	<p>A particle used at the end of a sentence to make it <strong>softer</strong> and <strong>friendlier</strong>.	3	2026-07-12 15:24:00.070923+00	2026-10-16 12:32:22.905863+00	t
8cb977c6-a283-4879-bbb0-a7957ae728ab	0a2562fa-3ddb-4394-85c4-6bf6431b2794	first / before (doing something else)	\N	\N	2	2026-07-12 18:45:59.079741+00	2026-10-16 12:32:22.905863+00	t
2778776c-7ac8-4598-8461-8112dc805f39	e616aa3d-cc7d-4130-89fc-42efa355727e	to speak / to talk / to say	\N	\N	2	2026-07-12 13:48:05.337335+00	2026-10-17 15:59:52.644103+00	t
772022f5-2d25-49c4-a9f4-06b143a9821d	a7a69fee-cd2a-4b6f-a542-1cc2150b2eb6	and / and then / and after that / afterwards / then / finally / next / so	\N	\N	3	2026-07-12 18:32:27.578106+00	2026-10-17 15:59:52.644103+00	t
f823dfea-81d8-4d94-82a5-4407e76ca023	0f8c503a-f4e9-45e4-846e-d761006abc9c	she / her	\N	<p>A <strong>3rd person pronoun</strong> used to refer to a <strong>woman</strong>.</p>	4	2026-07-12 15:40:52.218775+00	2026-10-17 16:03:11.273176+00	t
f7ccfa85-d1bc-4f3c-9a49-67e6d5163334	95c70591-7d5e-4fe4-a6a2-676cd02efd9e	to have a meal / to eat food (formal)	\N	- <a href="tts:ทาน">ทาน</a> /thaan/ — to eat (polite/formal)<br>\n- <a href="tts:ข้าว">ข้าว</a> /khâao/ — rice / meal / food	2	2026-07-12 20:11:51.370742+00	2026-07-12 20:13:04.563804+00	f
417f2c72-c72d-4ace-a55e-9f7ed0a9ed72	964a7ed6-1ce4-4e7c-a758-6d4e6c8a3ef6	to have a meal / to eat (food)	\N	- <a href="tts:กิน">กิน</a> /gin/ — to eat / to consume<br>\n- <a href="tts:ข้าว">ข้าว</a> /khâao/ — rice / meal / food	2	2026-07-12 20:08:32.602943+00	2026-07-12 20:13:30.271751+00	f
50aa77e4-73df-41db-95c0-5edca8e16336	25cff0c1-9eeb-48aa-a99c-7a3c6203c389	unit the end / until it's finished / to the end	\N	- <a href="tts:ให้">ให้</a> /hâi/ — to give / to allow / to let<br>\n- <a href="tts:จบ">จบ</a> /jòp/ — to finish / to end / to be completed<br>	2	2026-07-12 18:44:58.242143+00	2026-07-12 20:14:08.663182+00	f
ddfb39c4-5854-4f29-8fbb-100e01f1475f	59696d1f-5fd8-4d14-896d-8ef9490de0fb	lanaguage	\N	\N	1	2026-07-12 20:15:30.632542+00	2026-07-12 20:15:30.632542+00	f
81f9dbb8-1144-45e2-a012-c8b85f2de1ea	0cb46074-638c-4b76-8bde-ca6e988bb455	to fall in love	\N	- <a href="tts:ตก">ตก</a> /dtòk/ — to fall<br>\n- <a href="tts:หลุม">หลุม</a> /lùm/ — hole / pit<br>\n- <a href="tts:รัก">รัก</a> /rák/ — love / to love<br>\n<br><a href="tts:ตกหลุมรัก">ตกหลุมรัก</a> literally means "to fall into a pit of love." Like the English expression "to fall in love". It's an idiomatic phrase and is best learned as a whole rather than interpreted literally.	2	2026-07-14 12:54:22.644482+00	2026-07-14 12:55:00.150167+00	f
c1973d35-044f-494d-8a09-e6a0360f863d	f08bcf0e-fda9-4000-975c-19434d890508	we / us	\N	\N	4	2026-07-14 17:03:19.972313+00	2026-10-17 15:37:39.066297+00	t
7907f822-9ff6-473f-ac5c-44c08dc91803	e61f9100-4051-4ac1-91c7-556b5c0cb2e3	since / from	\N	\N	2	2026-08-07 13:00:28.166462+00	2026-10-18 20:29:44.378234+00	f
e4683884-ccbb-4f5c-a642-b27dd8aa58f6	b9a7384a-1711-40d9-894a-441824cbbe35	place / site / location / part of land	\N	\N	2	2026-07-14 15:38:31.74354+00	2026-10-18 21:03:04.342412+00	t
6401c8a4-d1f9-41f6-b68b-b6e61c696fc7	cc919c1c-9cf9-4fb5-a091-0188302214b7	smile	\N	- <a href="tts:รอย">รอย</a> /roi/ — mark / trace / sign / impression<br>\n- <a href="tts:ยิ้ม">ยิ้ม</a> /yím/ — to smile / smile<br><br>\nIt literally means "the trace/sign of a smile" and refers to the visible smile or expression on someone's face, as opposed to <a href="tts:ยิ้ม">ยิ้ม</a>, which refers more to the action of smiling.	3	2026-07-14 14:17:05.224506+00	2026-07-14 14:22:05.904362+00	f
229391aa-d163-4cb1-90fc-dd012159617d	37bcf743-b1bd-4f13-a60e-c45cf51c0d42	store / shop	\N	\N	2	2026-08-13 21:55:40.456954+00	2026-08-13 21:56:58.404861+00	f
ed2e2e28-2703-4183-81b8-0fcdde2327d9	1684bd91-99f8-4e6c-905f-000d89db47e1	previously / in the past / before / formerly / earlier	\N	- <a href="tts:เมื่อ">เมื่อ</a> /mʉ̂a/ — when / at the time that<br>\n- <a href="tts:ก่อน">ก่อน</a> /gòn/ — before / earlier / prior to<br>	2	2026-07-14 14:08:05.901589+00	2026-07-14 14:10:12.00973+00	f
12bcfb4c-379d-4add-9444-6534a5bd31b0	56e208c8-0d0d-43d6-9b6d-da595b7bf168	to fall in love / to be in love / to be infatuated with / to be deeply in love with	\N	- <a href="tts:หลง">หลง</a> /lǒng/ — to be lost / to become absorbed in / to be captivated by<br>\n- <a href="tts:รัก">รัก</a> /rák/ — love / to love<br>	1	2026-07-14 14:15:10.731502+00	2026-07-14 14:15:10.731502+00	f
1bd92e67-4ad4-4d25-99bf-ae418ed29225	dff201e2-97b6-4405-9f22-71131d24ac40	again / once more / more	\N	\N	2	2026-07-14 13:52:12.247596+00	2026-10-17 15:59:52.644103+00	t
f6696507-34b4-4ed0-83ca-925113531271	074a3c21-7df4-49ce-9fbd-24d1c29ca0ee	good / well / fine / nice / excellent	\N	\N	5	2026-07-14 15:05:11.004574+00	2026-07-14 15:18:08.448021+00	f
285cc2d6-aecf-4aaa-8c76-c8a72204e35d	cd99aaf4-28f9-4711-bf5c-dc08a87a7152	him / her / them	pronoun	<p>3rd person pronoun meaning "he," "she," or "they." A common and neutral pronoun that is appropriate in most situations.</p>	3	2026-07-14 13:07:45.058975+00	2026-10-17 16:03:11.273176+00	t
92fe8165-5244-4c69-8919-96f9c0674ac1	cd99aaf4-28f9-4711-bf5c-dc08a87a7152	I / me (informal / casual)	\N	<p>Used as "I" or "me" in informal or casual settings, usually between close friends or people of a similar age. Gives a softer or more playful tone.</p>	2	2026-07-14 13:24:03.078898+00	2026-10-17 16:03:11.273176+00	t
c25d3152-bcd0-4112-903d-901968ec1d14	cd99aaf4-28f9-4711-bf5c-dc08a87a7152	he / she / they	\N	<p>3rd person pronoun meaning "he," "she," or "they." A common and neutral pronoun that is appropriate in most situations.</p>	2	2026-07-14 13:24:02.055713+00	2026-10-17 16:03:11.273176+00	t
d5f374e5-e9c1-4e05-86bf-05f71742339f	16592df5-9c44-4fb1-a297-830c11da7585	to say / to speak / to think / to tell	\N	\N	1	2026-07-14 15:20:35.65285+00	2026-07-14 15:20:35.65285+00	f
cd4450ba-f0c3-48e0-8396-3d84546686fd	16592df5-9c44-4fb1-a297-830c11da7585	to scold / to blame / to criticize / to admonish	\N	\N	1	2026-07-14 15:20:36.705383+00	2026-07-14 15:20:36.705383+00	f
e3731965-d272-4d3a-ad7e-3c7b9b5f59a7	2761a998-a32a-4f9e-be6d-0efa72a2a855	you (informal / colloquial)	pronoun	This is an informal, casual pronoun, commonly used between close friends or people of similar age, but can sound rude or disrespectful if used with someone you are not close to.	3	2026-07-14 13:05:51.331152+00	2026-10-17 16:03:11.273176+00	t
6cd7fb6d-faf1-4c14-9959-b0cfef644210	b9a7384a-1711-40d9-894a-441824cbbe35	during / at the time of	\N	\N	1	2026-07-14 15:38:31.154763+00	2026-07-14 15:38:31.154763+00	f
d428d219-3e1f-4c0b-ad27-d567aeaef281	07ed8619-51ba-42ca-bb48-ce12c4efed41	to / for / so that	\N	\N	1	2026-07-16 19:34:35.686093+00	2026-07-16 19:34:35.686093+00	f
5e610ae2-88a2-40c4-bab7-b181da63c8cd	07ed8619-51ba-42ca-bb48-ce12c4efed41	towards / in the direction of	\N	\N	1	2026-07-16 19:34:37.110015+00	2026-07-16 19:34:37.110015+00	f
30d6e2bd-d5e2-453f-b828-a7bd5bdc27be	b0cd3628-1f5c-4258-9b24-0c7f0dead7bf	airport	\N	\N	2	2026-08-13 21:57:53.030985+00	2026-08-13 21:59:06.122254+00	f
4b611fad-c610-4256-bbcb-79f11772889d	17a916ce-ded3-4fbf-9bf6-428368727e01	when	\N	This is an alternative spelling and pronounciation of <a href="tts:เมื่อไร">เมื่อไร</a> /mʉ̂a rai /.	3	2026-07-14 13:08:22.835071+00	2026-10-01 19:10:33.372429+00	f
6b6675e0-ff0c-46c9-b1ab-d451bc097a88	ac881166-15ee-4c24-96c4-e2dffdb4928c	to be fine / to be (feeling) ok / to be well	\N	\N	3	2026-07-12 20:23:53.413639+00	2026-10-16 12:32:22.905863+00	t
d2d9aaf6-1644-4d56-b93c-c705fa922939	b6f7ffa3-2f9b-490a-8392-1dfcd6b6c545	Thai	\N	\N	3	2026-07-12 20:20:59.579637+00	2026-10-16 19:50:53.088461+00	t
784fe782-42f4-4172-b79c-4cecea10d010	e30b3306-2f32-4e38-831c-c254d514e4f9	to be named / to be called	\N	\N	2	2026-07-14 14:47:07.69766+00	2026-10-16 14:19:09.874404+00	t
66a4e32c-9477-4a59-9cd8-065c6c04376d	dd8f4407-96c0-4744-b39e-a01a8345bdec	Somchai (name)	\N	\N	2	2026-07-14 14:51:31.297093+00	2026-10-16 14:19:09.874404+00	t
d40bc2ed-4323-4c60-b290-66f0e1b16cdb	010a833c-48e2-4138-9430-d626c8762d4c	nickname	\N	\N	2	2026-07-14 14:56:27.096852+00	2026-10-16 14:19:09.874404+00	t
fc3711e6-80b3-43a8-83d8-1afa04202965	b9d6ef73-87f4-4622-a0ca-8975c7e285d8	English / British	\N	\N	3	2026-07-12 20:16:14.705705+00	2026-10-16 19:50:24.787226+00	t
eecf011f-c90e-4c9f-9d23-96397096b2de	494f3ec2-2e6d-4522-965b-34b2df97d72d	to call / to be named	\N	\N	2	2026-07-14 14:59:13.398306+00	2026-10-17 15:37:39.066297+00	t
bb16404f-718e-4aa4-ba8d-79f14a3e1dd8	074a3c21-7df4-49ce-9fbd-24d1c29ca0ee	good / well / fine [used to ask for a recommendation or opinion]	\N	In this way it is usually meant as 'What would be a good choice?', 'Do (you) think it is a good choice?', 'Should (I/we/you...)?',  'Would it be fine if...?', 'Is it ok...?'....	7	2026-07-14 15:03:04.987271+00	2026-10-17 15:37:39.066297+00	t
b0f62ee6-b49a-4448-9971-bde162966f9a	ee42e9c6-645c-4207-95d6-0144b78980a4	to work / to do a project	\N	\N	2	2026-07-14 16:58:23.181321+00	2026-10-18 21:03:27.7852+00	t
c754e203-0313-4023-83a4-bd1806208e3d	74d1ff2f-6a82-4c66-aee1-ffdfed72c285	anyone / anybody / someone / somebody / whoever	\N	\N	3	2026-07-14 13:51:09.151451+00	2026-10-20 20:11:42.81572+00	t
c9af9d0e-2c27-4a74-a239-eb9e03b370fc	d734fa96-93fd-45e8-8fd0-19382c022f7e	to do / to perform an action	\N	\N	3	2026-07-14 16:50:43.772586+00	2026-10-20 20:11:42.81572+00	t
8d7dcad5-fc1a-4d9f-884a-9c41f428004d	b9a7384a-1711-40d9-894a-441824cbbe35	that / which	\N	\N	2	2026-07-14 15:38:30.511502+00	2026-10-20 20:11:42.81572+00	t
c51e5efc-e07c-46fa-96ff-d92b08d035ae	579650b8-0fbc-481a-8ee4-50a499b05247	weather / climate / air	\N	\N	2	2026-07-15 15:13:54.23277+00	2026-08-14 14:13:40.132164+00	f
491fc137-38f0-43c0-b442-da5ad8bff2ba	7dc9b5e9-cf08-4649-b897-0bbcb979f14c	to watch (a film / movie / show) / to look at	\N	\N	1	2026-07-14 17:04:53.768576+00	2026-07-14 17:04:53.768576+00	f
ed7a6c2f-13a7-4e8f-ba4f-46e12be6216c	a9c60000-4a9d-4098-9ae9-f21f2fc53452	movie / film / cinema	\N	\N	1	2026-07-14 17:05:39.264224+00	2026-07-14 17:05:39.264224+00	f
1fb400fe-9ba3-429c-9839-cf6bbe92c11b	0505ac2e-dad7-4ad6-8612-d6a896e4e4fc	to wait	\N	\N	1	2026-07-14 17:13:09.765414+00	2026-07-14 17:13:09.765414+00	f
cb907179-eb05-4320-9b99-d78baf522a03	fe7a46f5-d0a5-437d-ac3a-353a170f0448	what time	\N	- <a href="tts:กี่">กี่</a> /gìi/ — how many / how much<br>\n- <a href="tts:โมง">โมง</a> /moong/ — o'clock (used for daytime hours)<br>	2	2026-07-14 17:21:05.212465+00	2026-07-14 17:24:32.90599+00	f
9d59a19e-4474-499c-9b4d-f93e71cf2ae3	89b9dbb1-950a-40e8-ae60-4ee06c475686	[used to indicate an ongoing action: similar to -ing in English] / in the process of... / in the state of...	\N	\N	2	2026-07-14 16:54:04.012034+00	2026-07-16 19:29:29.204495+00	f
1b024330-9b68-4dc5-b1d6-1d7f58296190	f918188b-d49e-4a36-98e8-4ccd7be45046	to date / to be in a romantic relationship	\N	- <a href="tts:คบ">คบ</a> /kóp/ — to associate with / to be friends with / to date<br>\n- <a href="tts:กัน">กัน</a> /gan/ — each other / one another (indicates a mutual action)	1	2026-07-14 18:23:49.614097+00	2026-07-14 18:23:49.614097+00	f
2aa4f090-74ba-4247-a6be-d9ac2f257edc	d805b888-7a70-4251-9686-e3fac2edd83b	to die / to pass away / deceased / dead / perish	\N	\N	1	2026-07-15 15:35:21.101083+00	2026-07-15 15:35:21.101083+00	f
cdd2a1f3-71f3-4f49-bb6a-a9282752ef42	ab2d28c6-5e66-4ed2-a87b-6965c8127a00	(it's) raining / rain is falling	\N	- <a href="tts:ฝน">ฝน</a> /fǒn/ — rain<br>\n- <a href="tts:ตก">ตก</a> /dtòk/ — to fall / to drop<br>	3	2026-07-15 15:21:15.208644+00	2026-08-14 14:13:03.893844+00	f
2a7df2e3-3831-42cc-8237-487eaec7c02b	c44ec669-b74f-4b3e-bd3b-1e73d030d1ec	single / unmarried	\N	\N	1	2026-07-14 18:32:02.596464+00	2026-07-14 18:32:02.596464+00	f
c58978c4-f111-4ae2-af9f-4167f5f8aba8	e4957e2c-5fad-4894-8333-a039080ff3ad	beautiful / pretty / attractive / gorgeous	\N	\N	1	2026-07-15 11:32:23.372311+00	2026-07-15 11:32:23.372311+00	f
dbea365e-1871-4ed8-8ae3-e64dfaa472c6	791e5dc4-d335-4e10-9426-bffd9ae911d7	handsome / good-looking / attractive	\N	\N	1	2026-07-15 11:35:43.321456+00	2026-07-15 11:35:43.321456+00	f
d3b7afe5-796d-45c5-9afc-21c3a0247d0f	f9661662-8508-477c-b691-388f64bdac9d	to hope / to expect / to want	\N	\N	1	2026-07-15 15:46:27.4115+00	2026-07-15 15:46:27.4115+00	f
d72802d4-fe82-4b2e-a9cc-c0717681ccb8	0fbec7bc-68de-45d5-98c7-38711bc1394d	how / in what way / like what	\N	It is the informal spoken form of <a href="tts:อย่างไร">อย่างไร</a> /yàang rai/ and is commonly used when asking about the way, condition, or state of something.	3	2026-07-15 15:16:26.349954+00	2026-07-15 15:17:35.39507+00	f
46f8e853-7871-463c-a3be-404d1088535d	1a3de1e3-75a5-42af-b8f9-f0f2e9941c63	week	\N	\N	1	2026-07-15 15:52:20.364381+00	2026-07-15 15:52:20.364381+00	f
9f019583-eeea-478a-9f0b-a887ea73d904	406ba82c-b9c5-4841-82d6-a072a571960a	like / as if / as / as though / looks like / to seem / to appear	\N	\N	3	2026-07-15 15:25:26.319002+00	2026-07-15 15:26:10.308673+00	f
ebdcbc50-c44b-4045-913f-adfece80a794	406ba82c-b9c5-4841-82d6-a072a571960a	(to be) similar / all the same / like	\N	\N	2	2026-07-15 15:25:56.383503+00	2026-07-15 15:26:10.849411+00	f
89bca261-d27e-489a-804d-1b3650c60c9e	4ef42334-6fe8-4ada-b898-202d0d026d80	about to / on the verge of happening / will	\N	\N	2	2026-07-14 17:27:00.855128+00	2026-07-15 15:26:39.08877+00	f
e0770667-6df5-4a3a-bf16-9aefff47ff06	18edfd0c-9d54-46d5-8170-f40ba1b4fbb5	rain	\N	\N	1	2026-07-15 15:27:21.707363+00	2026-07-15 15:27:21.707363+00	f
34243bf6-f018-4b2d-a935-ba7ec127b0b3	de0e0272-806b-4762-9ec7-158a156356b7	to fall / to drop or pour down	\N	\N	1	2026-07-15 15:29:38.140282+00	2026-07-15 15:29:38.140282+00	f
d3bcaeec-861c-4b73-a789-612395795115	de0e0272-806b-4762-9ec7-158a156356b7	to arrive / to come to	\N	\N	1	2026-07-15 15:29:38.701232+00	2026-07-15 15:29:38.701232+00	f
6d996abe-7fbc-46cb-90f0-f22f61831d49	de0e0272-806b-4762-9ec7-158a156356b7	complete / ended	\N	\N	1	2026-07-15 15:29:39.373794+00	2026-07-15 15:29:39.373794+00	f
fd4c8398-1e4f-48e3-91bd-23ce55caeece	2bcbadc9-a0f9-4533-a48b-7b9097e6b117	to come	verb	\N	4	2026-07-16 19:23:51.401652+00	2026-10-16 14:19:09.874404+00	t
00dd6eba-0255-45b7-9f29-202970b2cc8b	a0e59ba6-0874-4dd9-8247-ffb7562bd4bf	to remember / to recall / memorize / recollect / retain	\N	\N	1	2026-07-16 12:59:02.04943+00	2026-07-16 12:59:02.04943+00	f
68cfc6df-7733-444c-bdf4-cf72591e5bda	bccbb0d7-02e7-4c27-baf7-da0836ab4a9b	to know (a subject or a piece of information)	\N	\N	2	2026-07-16 12:31:38.729931+00	2026-10-17 15:59:52.644103+00	t
825df01a-292f-44bb-9d5a-473ec6acb7b0	53e5ddbc-2452-4d3a-b624-5de8fa8db4b1	honorific title (similar to: mr. / mrs. / ms. / sir / ma'am / lady...)	\N	\N	3	2026-07-12 00:20:07.625064+00	2026-07-16 13:03:09.11668+00	f
d97480ca-3bda-4d09-87e1-19b8a14a2f7d	53e5ddbc-2452-4d3a-b624-5de8fa8db4b1	you	\N	\N	4	2026-07-12 00:20:06.808596+00	2026-10-17 15:37:39.066297+00	t
ef9ec75b-c715-41ac-a0d8-4e4ba5a96288	89b9dbb1-950a-40e8-ae60-4ee06c475686	to stay (at) / to live (at) / to reside	\N	\N	1	2026-07-16 19:29:30.697862+00	2026-07-16 19:29:30.697862+00	f
2bfeedca-71d4-437d-863a-5868e41596eb	89b9dbb1-950a-40e8-ae60-4ee06c475686	to live / to exist / to survive	\N	\N	1	2026-07-16 19:29:31.261268+00	2026-07-16 19:29:31.261268+00	f
ac32440d-012f-4b45-b9b2-351bb83abdbd	07ed8619-51ba-42ca-bb48-ce12c4efed41	to give / to offer / to send	\N	\N	1	2026-07-16 19:34:35.048061+00	2026-07-16 19:34:35.048061+00	f
6a910dab-af90-4f2c-be85-a41776c4fd82	2bcbadc9-a0f9-4533-a48b-7b9097e6b117	aspect marker indicating an action or  state that started in the past and continues up to the present	\N	\N	3	2026-07-16 19:23:52.305023+00	2026-07-19 14:43:13.014269+00	f
ef4f1af6-7dac-4753-9632-668dfa8ba888	2bcbadc9-a0f9-4533-a48b-7b9097e6b117	[indicating approach or movement toward an object]	\N	\N	3	2026-07-16 19:23:52.897769+00	2026-07-19 14:43:13.497315+00	f
c8736c6b-c84e-46d8-bd1d-f0e3ada0bb5e	9393823b-84ec-426a-acb3-c9836aba9515	family	\N	\N	4	2026-07-15 11:29:38.316679+00	2026-10-17 16:12:56.097975+00	t
0973bd19-d068-4f27-9402-45c8a8ef375b	f08bcf0e-fda9-4000-975c-19434d890508	I / me	\N	Gender-neutral, 1st person pronoun used in less formal, casual settings.	4	2026-07-14 17:03:20.915405+00	2026-10-17 16:03:11.273176+00	t
a34549b7-4054-49cb-b1df-d8360a177721	96b6757b-f9ee-4b97-b213-6e3c3420c800	to have / to possess / to be available	\N	\N	2	2026-07-16 19:25:44.862936+00	2026-10-18 17:38:48.383535+00	t
5b7e950c-1693-4755-984f-18a0b24bd71c	ecf86558-ce69-45be-a838-492cd8107101	today	\N	- <a href="tts:วัน">วัน</a> /wan/ — day<br>\n- <a href="tts:นี้">นี้</a> /níi/ — this / this one / here<br>	2	2026-07-15 15:13:15.619134+00	2026-08-15 13:53:25.276486+00	f
0b9c45b0-a08f-4528-8f8d-ae64b4885434	b4884754-5f34-4079-b8ed-43a4d9acd9f2	tomorrow	\N	\N	2	2026-07-15 16:00:36.769782+00	2026-10-01 19:14:29.060472+00	f
1f8cf53b-62fc-477b-89cd-f7b3525409cd	313fba60-2d1c-47c5-9268-2d496b9a2fa8	to go	\N	\N	2	2026-07-14 17:27:36.420134+00	2026-10-16 12:32:22.905863+00	t
092087b3-4b38-43fe-a926-80a45e679953	0eaaae8b-1cc7-4354-abb8-b17d0752357b	together / with each other / collectively / to one another / one another / each other	\N	\N	2	2026-07-14 18:14:39.917064+00	2026-10-16 12:32:22.905863+00	t
c685a681-35b2-45cc-a2a9-9fa228ae0662	54d154eb-6f96-4be1-8afe-bc08bd37a53e	can / to be able to	\N	\N	2	2026-07-16 19:27:05.468916+00	2026-10-21 11:33:53.732941+00	f
d4301591-b4d5-4b79-94a0-668e4d5e7932	67a0ef9a-cf29-4e9c-b312-2256bba3305a	year / annual	\N	\N	4	2026-07-15 15:53:25.403946+00	2026-10-16 14:13:59.231445+00	f
bd9105e6-7ca2-40a4-9492-eb017ab53c49	67a0ef9a-cf29-4e9c-b312-2256bba3305a	years / year (used primarly for counting adult and older children age)	\N	\N	4	2026-07-15 15:54:09.786816+00	2026-10-16 14:19:09.874404+00	t
28635068-b0b7-4702-98ee-c2aa9bb47dd9	e30b3306-2f32-4e38-831c-c254d514e4f9	name	\N	\N	2	2026-07-16 12:59:40.643484+00	2026-10-16 14:19:09.874404+00	t
dcf04254-41b0-4c09-b436-f8f01a7ab814	674d40df-8107-4942-980d-12be5094752f	to drink	verb	\N	3	2026-07-16 19:21:11.727989+00	2026-10-18 16:49:23.27123+00	f
2a89cf3d-ab4a-46a8-b2d3-b67f38748e20	89b9dbb1-950a-40e8-ae60-4ee06c475686	to be (located at) / to exist at a particualar point in time	\N	\N	2	2026-07-16 19:29:29.783161+00	2026-10-18 21:03:04.342412+00	t
04d7d004-0513-4f16-b3ca-de208056e947	e1d66764-7488-4328-b863-bbc851d29a65	where	\N	\N	2	2026-07-14 17:28:02.215404+00	2026-10-18 21:03:04.342412+00	t
d44e2ca6-53dc-4893-94df-ea6c29b165c8	df626a0c-6657-4011-84ee-ebf69d58bdd7	hot (temperature)	\N	\N	2	2026-07-15 15:32:54.590864+00	2026-10-18 21:05:16.381044+00	t
0a980715-0795-4077-89a2-bd7319482f37	96b6757b-f9ee-4b97-b213-6e3c3420c800	there is / there are	\N	\N	2	2026-07-16 19:25:45.790741+00	2026-10-20 20:11:42.81572+00	t
d0a956c6-a0ca-482f-8239-84175a5b78f8	d734fa96-93fd-45e8-8fd0-19382c022f7e	to make	\N	\N	2	2026-07-16 19:24:16.888257+00	2026-10-20 20:11:42.81572+00	t
20d33e84-aa7d-42c9-8da5-d5d70bf830f0	54d154eb-6f96-4be1-8afe-bc08bd37a53e	to be (am / is / are)	\N	Used when talking about categories, professions or characteristics. It shows what something belongs to or it's role.	5	2026-07-14 18:13:25.412959+00	2026-10-21 11:33:52.587265+00	t
d3915e2a-a6b5-4634-bf06-91d6f9cbbc36	54d154eb-6f96-4be1-8afe-bc08bd37a53e	to live / to be alive	\N	\N	2	2026-07-16 19:27:06.043728+00	2026-10-21 11:33:55.03538+00	f
acd185a6-995c-468b-a5f4-077a1f27ab27	54d154eb-6f96-4be1-8afe-bc08bd37a53e	for / functioning as / serving the purpose of	\N	\N	2	2026-07-16 19:27:06.597778+00	2026-10-21 11:33:56.379106+00	f
36f8633a-fb05-466b-93e8-eaaf1a12d305	048415fe-8c1d-4746-a7c7-634ccb8c25b5	a lot / very much / so much / a great deal / very / much	\N	\N	2	2026-07-15 11:33:27.373045+00	2026-10-21 18:57:51.436832+00	t
bc277b11-6fcb-4e23-9e71-5759caa196c1	07ed8619-51ba-42ca-bb48-ce12c4efed41	to allow / to let / to have someone do something / to pay attention	\N	\N	1	2026-07-16 19:34:36.412148+00	2026-07-16 19:34:36.412148+00	f
9d7041a4-b678-4077-bce8-c39494416aa4	07ed8619-51ba-42ca-bb48-ce12c4efed41	adjective used to turn the following adjective into an adverb	\N	\N	1	2026-07-16 19:34:37.63501+00	2026-07-16 19:34:37.63501+00	f
14bcb1a9-6807-4ad0-8b80-952aa0d87930	be8dce35-235a-402b-9683-d39a1424f107	to want / to desire / to order / to specify	\N	\N	1	2026-07-16 19:36:44.414944+00	2026-07-16 19:36:44.414944+00	f
d90bf329-6bce-4a60-8f7f-502e12b650ac	be8dce35-235a-402b-9683-d39a1424f107	to take / to get / to bring	\N	\N	1	2026-07-16 19:36:45.208988+00	2026-07-16 19:36:45.208988+00	f
86a2516e-3525-423a-9e10-6b8795c64486	1b23921c-0c20-4d02-9f10-5e5d1ada0221	to enter / to go in / to insert / to penetrate	\N	\N	1	2026-07-16 19:40:57.319021+00	2026-07-16 19:40:57.319021+00	f
78f9aebb-9943-46fa-a32d-cefc47bb46e7	42671086-bf81-4916-9b17-9747aa90a704	to expel / to eject / to send out / out of / out	\N	\N	1	2026-07-16 19:42:48.96849+00	2026-07-16 19:42:48.96849+00	f
4c006168-4509-4acd-ab0c-a42e51d5308b	1dc01a55-4a46-439a-a813-fc5d5cad740a	to see / to visualize	\N	\N	1	2026-07-16 19:44:31.521651+00	2026-07-16 19:44:31.521651+00	f
bd2d623e-ff0e-45d1-9ae4-b3345423ee12	178bd4b8-b287-4877-8ac3-45cdf6737f8d	to think / to consider / to imagine / to expect / to compute / to count / to wander	\N	\N	2	2026-07-16 19:38:57.183992+00	2026-10-18 21:03:18.440116+00	t
92a995fe-ed78-4ffd-924a-19e93e27d28d	e859235d-1530-400b-b52d-1942646f8d1f	to play / to play a sport	\N	\N	3	2026-07-16 19:50:55.128472+00	2026-10-21 12:01:15.737156+00	f
449d9eb7-42fd-494e-a032-2f9a026922f3	9bb6f052-7598-4fc8-9982-becfaac345c5	fluid / liquid	\N	\N	1	2026-07-16 20:13:01.241443+00	2026-07-16 20:13:01.241443+00	f
952d5ad8-a9ba-47ea-9200-e591b9e26fc9	e859235d-1530-400b-b52d-1942646f8d1f	to have fun on the internet / to use (social media)	\N	\N	3	2026-07-16 19:50:56.045123+00	2026-10-21 12:01:16.941943+00	f
40fc326a-acf4-4798-800e-42bf03505ae2	5a4d9a6f-2420-43d9-b220-c75e8b6f5cb2	delicious / tasty	\N	\N	2	2026-07-16 20:12:32.642045+00	2026-07-17 00:51:01.759738+00	f
17c1c283-1ed7-4848-b696-80bedeca047c	f294087c-59e3-4206-84ed-d32bbe094bb4	(to be) quick / fast / speedy	\N	\N	1	2026-07-17 11:43:17.920239+00	2026-07-17 11:43:17.920239+00	f
679f3f55-3df4-4dd0-8b78-5c8de94ebfae	f294087c-59e3-4206-84ed-d32bbe094bb4	(to be) early	\N	\N	1	2026-07-17 11:43:18.578403+00	2026-07-17 11:43:18.578403+00	f
e003ae19-2137-4806-8a8e-14c4f22b66c1	d9218083-7f7a-42c0-ab2a-651463db5aae	boyfriend / girlfriend / partner / significant other / lover	\N	\N	1	2026-07-18 00:42:13.603284+00	2026-07-18 00:42:13.603284+00	f
43d0c18d-65b7-4928-9fab-ea53a60e4b54	8d67bc32-3a75-4ed1-a77b-db050832fa1a	why	\N	\N	1	2026-07-17 11:52:40.680783+00	2026-07-17 11:52:40.680783+00	f
ed126099-3421-49a2-8c6d-915b64248ca6	56b3b0f7-1768-465d-8d0f-f87c69bc9155	to be late (for) / to be delayed	\N	Usually used when being late in relation to a schedule. For example late for school, work or a meeting.	2	2026-07-17 11:51:23.427007+00	2026-07-17 11:55:07.360415+00	f
f6106984-fe24-4391-bcc8-f9d4c8060bf7	56b3b0f7-1768-465d-8d0f-f87c69bc9155	line / wire / rope / strap / string	\N	\N	2	2026-07-17 11:51:24.043211+00	2026-07-17 11:55:07.938307+00	f
bae9d021-6508-4f8f-8f44-383373846da9	a935fd40-99dc-4eb3-bb92-a242f726c764	(to be) late	\N	\N	4	2026-07-17 11:44:56.34729+00	2026-10-17 15:51:50.931955+00	f
ca63da6e-4036-426c-9c8c-142620c93a6b	a935fd40-99dc-4eb3-bb92-a242f726c764	slow	\N	\N	5	2026-07-17 11:44:55.382518+00	2026-10-17 15:59:52.644103+00	t
c57a8fbc-a5f1-4992-b5f9-761768ef0817	d9218083-7f7a-42c0-ab2a-651463db5aae	fan / supporter	\N	\N	1	2026-07-18 00:42:36.586765+00	2026-07-18 00:42:36.586765+00	f
a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	cc071945-2585-4603-978c-8a3b1fc0faef	person / people	\N	\N	2	2026-07-18 00:34:24.147123+00	2026-10-16 14:19:09.874404+00	t
aa72a583-965e-41e5-9400-c92e4f927c10	ad02a37f-2b44-48a2-9315-6716d00d9602	wait / wait a minute	\N	\N	1	2026-07-18 00:19:07.756044+00	2026-07-18 00:19:07.756044+00	f
1937d5a7-8956-48df-8452-7b8c48fce257	ad02a37f-2b44-48a2-9315-6716d00d9602	moment / instant	\N	\N	1	2026-07-18 00:19:08.328498+00	2026-07-18 00:19:08.328498+00	f
a62f218d-71a8-4b97-b72a-cdb3907a8ba5	fa1f01bc-71af-4121-bc84-39d0938e1778	to find / to come across	\N	\N	1	2026-07-18 00:21:03.340694+00	2026-07-18 00:21:03.340694+00	f
9734bc5f-824b-4b58-8ad0-efeecfe9ce81	fa1f01bc-71af-4121-bc84-39d0938e1778	to undergo / to deserve / to be through (an experience)	\N	\N	1	2026-07-18 00:21:03.887251+00	2026-07-18 00:21:03.887251+00	f
3b6b1696-3333-4074-820f-5257d0e9107f	2f7c6214-06d9-4357-8c6f-f5b8de2c794b	one / 1	\N	<p><a href="tts:นึง">นึง</a> /nʉng/ is a colloquial way to write and pronounce <a href="tts:หนึ่ง">หนึ่ง</a> /nʉ̀ng/ (1).</p>\n<p>The Thai symbol for one is ๑.</p>	1	2026-07-19 13:26:28.348183+00	2026-07-19 13:26:28.348183+00	f
c0a76c22-36cf-4045-8ddd-59b19347717c	360d19e0-c3aa-4fa9-a5d6-69a9a1008ee4	to introduce (a person)	\N	\N	2	2026-07-17 20:23:44.40394+00	2026-10-17 15:37:39.066297+00	t
da4faa2d-4f5c-49c9-9e3b-667f215d3755	47cacd59-9b34-44ce-a5e9-2ac0bb526dea	to use / to utilize / to implement / to employ	\N	\N	1	2026-07-19 11:46:17.961592+00	2026-07-19 11:46:17.961592+00	f
a9a73e99-7180-450b-b254-3ccf7d804976	47cacd59-9b34-44ce-a5e9-2ac0bb526dea	to spend (money / time) / pay / to use up	\N	\N	1	2026-07-19 11:46:18.523064+00	2026-07-19 11:46:18.523064+00	f
c52bb022-8f2e-4a81-a2c5-bd2619b2f4bd	6c2a2c31-d5f8-4363-9d64-5fcfef078569	Suwan	\N	\N	1	2026-07-19 11:49:43.698053+00	2026-07-19 11:49:43.698053+00	f
f999f701-d068-4bab-961d-2fa2e2beeb65	0a66ded4-7bda-45c7-8b67-3bfdf76938d5	to sit / sitting	\N	\N	1	2026-07-19 13:15:29.826937+00	2026-07-19 13:15:29.826937+00	f
9c232518-f096-4df1-8a0b-fcf4a00b679d	c6386906-253a-44f1-a791-d8189a841cc2	[ending partcle used to indicate a request or emphasis]	\N	\N	1	2026-07-19 13:16:29.075735+00	2026-07-19 13:16:29.075735+00	f
c0826c73-38b8-46ea-a4d1-31edbc87151c	6207b34d-02a6-477e-a177-db1f5339104f	a moment / shortly / momentarily / for a second	\N	\N	1	2026-07-19 13:21:51.459135+00	2026-07-19 13:21:51.459135+00	f
a7fa7b1a-4787-4c7a-b0b8-93c7201a85a1	63378fb0-2680-4d61-9164-48d5912934c8	gradually / little by little	\N	- <a href="tts:ค่อย">ค่อย</a> /khôy/ - gradually / gently / sloftly / cautiously<br>\n- <a href="tts:ๆ">ๆ</a> /mái-yamók/ - repetition symbol used for emphasis<br>	1	2026-07-19 13:34:12.811292+00	2026-07-19 13:34:12.811292+00	f
b72d414b-1529-4aa8-81c2-e049fceb930b	86fd1f68-8aa6-4b0a-bd80-587809eb9d48	try it / try and see	\N	- <a href="tts:ลอง">ลอง</a> /long/ - to try / to test<br>\n- <a href="tts:ดู">ดู</a> /duu/ - to look / to see<br>	1	2026-07-19 13:37:01.75656+00	2026-07-19 13:37:01.75656+00	f
68bc1b63-cf5a-415b-b000-4c406ad202c4	7fe42b1c-f507-4fc8-8833-c41f88a4890d	to try / to test / to experiment with / to try out	\N	\N	1	2026-07-19 13:39:57.208599+00	2026-07-19 13:39:57.208599+00	f
72eab749-a699-4651-bbe1-9c7f83c83698	b13244e6-44d8-4913-9a25-71b0bb5c9043	[numerical classifier for rooms of a building]	\N	\N	2	2026-07-16 20:06:43.543711+00	2026-08-10 22:01:32.837621+00	f
90b1709e-6808-479b-8749-49e65b559070	6afbb6be-f670-4adf-a61b-108a513ab88f	surname / last name / family name	\N	\N	4	2026-07-19 11:33:29.464667+00	2026-10-17 15:36:04.573527+00	f
c8703597-000a-40c9-a010-3f093b33db23	e859235d-1530-400b-b52d-1942646f8d1f	to perform / to act	\N	\N	3	2026-07-16 19:50:56.624155+00	2026-10-21 12:01:18.18707+00	f
aa249300-ceb4-4839-96e2-6fd8e082e562	e859235d-1530-400b-b52d-1942646f8d1f	to be into / to be absorbed in / to occupy oneself with as a hobby	\N	\N	3	2026-07-16 19:50:57.244586+00	2026-10-21 12:01:19.430297+00	f
9ad1ae46-f686-4f06-86f8-a7bec9c66ec6	e859235d-1530-400b-b52d-1942646f8d1f	to collect (as a hobby)	\N	\N	3	2026-07-16 19:50:57.815456+00	2026-10-21 12:01:20.836309+00	f
20c41d12-b57f-4aa3-b4af-32d1bfbc44a8	e859235d-1530-400b-b52d-1942646f8d1f	to bet on / to gamble on	\N	\N	3	2026-07-16 19:50:58.34541+00	2026-10-21 12:01:22.001056+00	f
4eeb1c7c-0532-481f-ad71-7cf2a39ebdb3	42671086-bf81-4916-9b17-9747aa90a704	to exit / the way out / to depart / leave / go out	\N	\N	2	2026-07-16 19:42:48.325607+00	2026-10-21 18:57:51.436832+00	t
12981808-bed6-4992-b253-683a9ce4e123	cbcbcd9f-406a-40e0-a44c-a73c93ed47a8	goodbye / farewell	\N	Used for final, emotional farewells - such as when people are parting ways and don't expect to meet again soon. It is considered dramatic and is <b>not</b> commonly used in everyday conversations.	6	2026-07-18 00:13:47.258237+00	2026-10-16 12:32:22.905863+00	t
72c2d681-1858-49d8-8fd1-5274b1d5f264	883d57b8-7c8c-4f05-8fa8-72d2c001ccf0	friend / pal / buddy	\N	\N	2	2026-07-17 20:24:25.924024+00	2026-10-17 15:37:39.066297+00	t
11e86160-0bcc-424b-a167-8aa508c861b1	b8528a4c-56e3-4cf8-bb92-ff5548d6295e	to buy / to purchase	\N	\N	2	2026-07-16 19:43:54.3503+00	2026-10-18 16:53:14.565004+00	f
770dd9be-8c86-41fe-bce2-f89c121497d6	a7a69fee-cd2a-4b6f-a542-1cc2150b2eb6	now / already / right now	\N	\N	3	2026-07-14 17:22:04.553516+00	2026-10-17 15:59:52.644103+00	t
bddca145-e7a3-4c1e-aafa-afb5c61d8d69	3a31e204-6993-4593-85ac-cadc7fadccc7	[a particle used at the end of a statement or question to add an imperative quality]	\N	Adding an imperative quality means making it sound more like a command, instruction or encouraging / directing someone to take an action.	2	2026-07-19 12:06:43.800199+00	2026-10-17 15:59:52.644103+00	t
f4d920ba-f32f-4483-b86f-928b6e794a3f	e466d8bf-af6a-4cbe-98ac-3ba3a2f12e03	somewhere / anywhere	\N	\N	3	2026-07-16 20:10:42.211548+00	2026-10-18 18:44:10.025269+00	f
554e0cae-41f2-4b5f-8de4-13337aa67615	e466d8bf-af6a-4cbe-98ac-3ba3a2f12e03	where	\N	\N	4	2026-07-16 20:10:41.576015+00	2026-10-18 21:03:04.342412+00	t
349ffded-2d70-4b9c-b8e4-9d36bcaaab2f	85d87e3e-d997-40d0-bf4a-9bf56891957e	food / meal / diet	\N	\N	3	2026-07-16 20:11:40.311876+00	2026-10-18 21:03:04.342412+00	t
404e4d7c-fbce-4f72-b726-3c7e6f74fa70	9bb6f052-7598-4fc8-9982-becfaac345c5	water	\N	\N	3	2026-07-16 20:07:58.83475+00	2026-10-18 21:03:04.342412+00	t
4d2bcb83-a208-427e-ac54-8b3fd897aadf	b13244e6-44d8-4913-9a25-71b0bb5c9043	room	\N	\N	3	2026-07-16 20:06:42.504207+00	2026-10-18 21:03:04.342412+00	t
358727c8-9202-4e8d-92c7-62551f90198b	9a2bef1f-d343-4300-853d-9d272702aa93	gently / softly / little by little / gradually / consciously	\N	\N	1	2026-07-19 13:41:49.321387+00	2026-07-19 13:41:49.321387+00	f
abbcf0b2-1e71-440c-ba1c-0acd1e117665	9a2bef1f-d343-4300-853d-9d272702aa93	then	\N	\N	1	2026-07-19 13:41:49.863783+00	2026-07-19 13:41:49.863783+00	f
b3f4368e-16c8-4367-8e15-b6e2b807a699	9a2bef1f-d343-4300-853d-9d272702aa93	hardly / rarely	\N	\N	1	2026-07-19 13:41:50.42311+00	2026-07-19 13:41:50.42311+00	f
1914c099-3b8a-4a7a-8a3a-5f0b2ab5a559	91d85fb3-295e-4747-b8a9-4728cc08c87e	to help / to aid / to assist	\N	\N	1	2026-07-19 13:43:05.764497+00	2026-07-19 13:43:05.764497+00	f
09eab945-1f2c-46ab-b73d-0a0c0ac87d2f	99379482-30aa-41d4-8bb2-e3344c650c06	to tell / to say / to inform / mention / state / to let someone know	\N	\N	1	2026-07-19 13:49:30.2005+00	2026-07-19 13:49:30.2005+00	f
f7cec302-d99e-4b10-a544-bf9734a71a05	a71eafe1-67b5-46e9-b539-e4bb7f50ac52	to burn / to be burned	\N	\N	1	2026-07-19 13:55:13.28608+00	2026-07-19 13:55:13.28608+00	f
e0783946-5eca-4407-8075-aa7b45ddac25	89c0dc87-fec8-4295-ab13-a5ec3d0acc9f	Fire! / there is a fire / fire burning	\N	- <a href="tts:ไฟ">ไฟ</a> /fai/ — fire<br>\n- <a href="tts:ไหม้">ไหม้</a> /mâi/ — to burn / burnt<br>\n<p> Usually used when something is on fire.</p>	3	2026-07-19 13:57:37.952423+00	2026-07-19 13:59:11.39476+00	f
6a3bafc0-0246-4984-9905-63fc9004363d	d1fcce06-a6ce-4471-bf25-0c9b720b4727	to bother / to interfere / to get involved / to get entangled with /	\N	\N	2	2026-07-19 14:06:59.934677+00	2026-07-19 14:09:26.212127+00	f
ff947036-a1e4-4767-abbb-ddd12d8cc300	d1fcce06-a6ce-4471-bf25-0c9b720b4727	to be busy / to be occupied	\N	\N	1	2026-07-19 14:09:26.697941+00	2026-07-19 14:09:26.697941+00	f
f96e41a9-4ad3-4827-b5e6-6e85939da4b8	fb20d49d-e74f-41e2-b573-90c1a7b76a3a	I / me	\N	Used by a younger person (usually a woman) to refer to herself in a cute way when speaking to an older preson.	2	2026-07-23 14:29:54.579941+00	2026-08-10 20:05:20.703602+00	f
adaa2f95-5f2d-4e7f-a630-08940d3fa07c	5b020af3-4e7b-406e-bd34-d8e7b78b2994	here / right here	\N	- <a href="tts:ตรง">ตรง</a> /trong/ - straight / directly<br>\n- <a href="tts:นี้">นี้</a> /níi/ - this<br>	2	2026-07-22 16:09:38.166565+00	2026-08-10 21:38:17.806552+00	f
fc7ea20b-5eda-479b-8cf8-b52d2771cde1	b73c268d-0d7e-4aaa-b6de-a29c9cb7a6b8	real / true / genuine	\N	\N	1	2026-07-19 14:22:36.096163+00	2026-07-19 14:22:36.096163+00	f
2510b6d5-e9d8-48fa-b02d-8cfd85765f9d	4718b57b-f3b9-4358-9fde-eb953b54d1d4	belly / abdomen / stomach	\N	\N	1	2026-07-19 14:28:42.010943+00	2026-07-19 14:28:42.010943+00	f
ddd30e0e-9863-4360-9317-afb6c533443e	4e6eefd5-dc64-49ae-85ca-65555063c849	the same	\N	\N	2	2026-07-19 14:29:31.537102+00	2026-07-19 14:33:00.559745+00	f
26c003d9-6111-4a7f-99d2-f9ef80bd4fbc	4e6eefd5-dc64-49ae-85ca-65555063c849	one / only one / single / alone	\N	\N	1	2026-07-19 14:33:01.060077+00	2026-07-19 14:33:01.060077+00	f
9090c521-842b-4674-9030-8e6dd62bfc9d	2f921bc1-d32b-46d5-8dc1-eb36dbc35953	together / with each other / in company	\N	- <a href="tts:ด้วย">ด้วย</a> /dûay/ — with / together with<br>\n- <a href="tts:กัน">กัน</a> /kan/ — each other / together<br>	2	2026-07-19 14:34:33.617931+00	2026-07-19 14:35:37.606271+00	f
f0997b88-2d0a-441a-854f-5fad2691c634	ebcc9ed7-5ed6-4ff3-bd77-fb090f39d192	to grow (up) / to become big	\N	\N	2	2026-07-19 14:37:20.78612+00	2026-07-19 14:40:31.273092+00	f
36116461-5d00-42a8-b377-5e97b2b77045	ebcc9ed7-5ed6-4ff3-bd77-fb090f39d192	big / large / older	\N	\N	1	2026-07-19 14:40:31.799627+00	2026-07-19 14:40:31.799627+00	f
049f3d08-6c93-4a93-acaa-e3449da59b30	251f3c5e-5c6b-48dc-bcf9-2f9c119100ec	to change / to alter / to transform	\N	\N	1	2026-07-19 14:47:09.200167+00	2026-07-19 14:47:09.200167+00	f
c6807f32-9cf3-4611-94cf-8453acfafda6	313fba60-2d1c-47c5-9268-2d496b9a2fa8	directional/aspect marker indicating a change or movement away from the original state, often showing progression into a new condition	\N	\N	1	2026-07-19 14:50:25.877407+00	2026-07-19 14:50:25.877407+00	f
d4cb459a-01af-4aa1-aba4-11aa51476102	bed4514c-ccbf-4cdf-9d1a-0f2e08ff0765	like this / this way / this type	\N	\N	1	2026-07-19 14:56:22.41868+00	2026-07-19 14:56:22.41868+00	f
e1a50e9d-ed4d-4390-92ea-952a5c9a693a	e7502b02-0777-4b67-a250-7094e6651fba	long (time) / as time passes	\N	\N	1	2026-07-19 14:57:11.540857+00	2026-07-19 14:57:11.540857+00	f
115b2e62-8145-408a-8d59-78faec6c0852	ee6aa9a3-356e-4e4f-99c0-780909a3964f	important / vital / main / necessary / required	\N	\N	1	2026-07-19 14:59:36.600666+00	2026-07-19 14:59:36.600666+00	f
00f050b5-2f41-463b-8aa9-16b7ee56f5eb	542f8e6c-5aa6-40cd-a773-53745811a2ca	to turn / to change direction	\N	\N	1	2026-07-22 16:12:28.753299+00	2026-07-22 16:12:28.753299+00	f
26802bad-df0a-4028-9ada-806a81c70c08	a9c55d6d-8c26-4ebb-8a36-97980a6fec4e	the most / the best / "-est"	\N	- <a href="tts:ที่">ที่</a> /thîi/ - prefix used with adjectives or numbers to indicate position, ranking, or degree<br>\n- <a href="tts:สุด">สุด</a> /sùt/ - end / extreme / utmost / highest point<br>	3	2026-07-19 15:00:19.092432+00	2026-07-19 15:03:45.628355+00	f
82a0471a-734b-461d-b9e5-74622b429f75	a9c55d6d-8c26-4ebb-8a36-97980a6fec4e	at last / finally / eventually	\N	\N	1	2026-07-19 15:03:46.14103+00	2026-07-19 15:03:46.14103+00	f
e0d91459-0d51-4fd6-a7e0-253614ba0186	53a63fd1-4abe-42ea-924d-340d43a05a9a	lost / to become lost / to lose one's way / to stray / astray	\N	- <a href="tts:หลง">หลง</a> /lǒng/ - to get lost / to go astray<br>\n- <a href="tts:ทาง">ทาง</a> /thaang/ - way / path / direction<br>	1	2026-07-22 15:04:06.011627+00	2026-07-22 15:04:06.011627+00	f
9738f293-021a-4eb3-a47c-ab79aa441a0c	d510bdb1-9ba8-4cf9-9d7b-b20d9860a377	to walk / walks	\N	\N	1	2026-07-22 15:16:09.462686+00	2026-07-22 15:16:09.462686+00	f
b0e19db8-8dcc-4831-a1ff-02c7452acd3f	cdbb406a-48b5-4dce-8cb8-7711b44505a0	time	\N	\N	1	2026-07-22 15:19:20.16329+00	2026-07-22 15:19:20.16329+00	f
b1bb4dba-cd94-4cba-897d-f1a50b087d64	516242ee-cea7-40b9-bf1c-c4483ba3afd5	how much / how many	\N	\N	1	2026-07-22 15:20:08.765589+00	2026-07-22 15:20:08.765589+00	f
682fd9f5-71ad-48aa-a41e-f07c99eb594b	427232e7-e9df-42b5-99a8-cfed64481555	a minute	\N	\N	1	2026-07-22 15:21:04.961254+00	2026-07-22 15:21:04.961254+00	f
51aa5f23-05b8-4947-8d46-e3d919e40e76	8980d4bf-d160-4e3a-b7ad-d4df55921539	close / near	\N	\N	1	2026-07-22 15:24:51.040805+00	2026-07-22 15:24:51.040805+00	f
999dd2f9-6073-4ccc-86e6-8efe8c9dfbc4	a4ea1f51-4293-4260-a940-e664e30d49b5	where	\N	- <a href="tts:ตรง">ตรง</a> /trong/ - straight / directly<br>\n- <a href="tts:ไหน">ไหน</a> /nǎi/ - where / which<br>	1	2026-07-22 16:19:45.082143+00	2026-07-22 16:19:45.082143+00	f
79db768a-060e-4442-8d84-69e9750cfc7a	cede9977-eb16-445f-9595-52243ae46f0e	right (direction) / right side	\N	\N	1	2026-07-22 16:30:34.166574+00	2026-07-22 16:30:34.166574+00	f
43d4541f-534f-4a41-be45-4d1ec3a1e44c	d9a940c7-d443-421c-9eb9-fc6826ebd5d7	to be sleepy / to be tired	\N	\N	1	2026-07-23 14:14:12.69186+00	2026-07-23 14:14:12.69186+00	f
12f16c5e-9ca3-4cff-8d5a-fa3f42701237	87f2b6ab-0564-4f39-a96f-17584aa91891	well / nice / happy / comfortable / ok / fine	\N	\N	1	2026-07-23 14:31:30.132912+00	2026-07-23 14:31:30.132912+00	f
f8c6c233-0b7f-430f-b874-1cf404366c4d	122bf560-0140-466f-8f3c-ca23e67da333	please	\N	\N	2	2026-07-19 13:44:06.334395+00	2026-07-30 20:48:23.557889+00	f
654e94bb-80f4-4930-9553-7059ca578b47	b4560d43-fcbf-467e-993c-664fe87ddf3e	New (name)	\N	\N	2	2026-07-19 13:51:51.895955+00	2026-10-16 14:19:09.874404+00	t
734ceaab-2f9f-4e55-90df-024ea1d609c9	7292736e-779a-49f4-8fbd-73713a66f550	hungry / starving	\N	\N	2	2026-07-23 14:10:24.776131+00	2026-10-18 21:05:16.381044+00	t
8f210c7c-1b07-4b76-8c13-34dfe4b0a9bd	daf0dcd2-1131-417a-88b6-31e37d56d2cf	[used for emphasis at the end of a statement] / very much / so much / extremely / completely	\N	\N	2	2026-07-19 14:11:47.621154+00	2026-08-14 13:47:33.650336+00	f
742b7ca7-c9e9-400b-8f90-84965d65dcf4	d71ea565-1f33-4087-9c41-d3f9f09e5838	far / distant	\N	\N	2	2026-07-22 15:23:38.769782+00	2026-10-18 21:05:16.381044+00	t
3a455389-447b-465e-93bb-fcb351dfa755	0d78f30c-f2a2-4783-9e0a-e9b091e144cb	tired / exhausted / beat / to be fatigued	\N	\N	2	2026-07-23 14:08:10.382989+00	2026-10-18 21:05:16.381044+00	t
7b8bd6e9-4ea2-4b52-908b-fae1fb4bdd76	24dc3b56-8393-47b5-89b1-ad4d8cd3b1ee	older sibling / older brother / older sister / senior / older collegue / older friend	\N	\N	4	2026-07-14 17:11:51.857586+00	2026-10-17 16:12:56.097975+00	t
f6d9301e-3591-48b7-8fb6-783c4c2849a9	5371fc9f-0c88-4545-84cb-e04e13743279	siblings / brothers and sisters / close relatives	\N	\N	5	2026-07-19 14:17:32.175672+00	2026-10-17 16:12:56.097975+00	t
3c2a0eda-da67-4052-89a6-53efe6171a23	d9af1273-9e3c-4e3b-bc44-760209fadea1	to feel / to experience / to emote / to feel an emotion	\N	\N	3	2026-07-23 14:24:52.09729+00	2026-10-18 17:01:19.606116+00	f
7f2210c1-eb37-477f-8104-70f8621abaa3	fc946d65-5a33-44c6-a8b9-09da96b6a810	restaurant	\N	- <a href="tts:ร้าน">ร้าน</a> /ráan/ - shop / store<br>\n- <a href="tts:อาหาร">อาหาร</a> /aa-hǎan/ - food / meal<br>	3	2026-07-22 15:29:00.176117+00	2026-10-18 21:03:04.342412+00	t
6e43fdc2-de4e-43be-b4cc-23a7cf9a2f6c	07198338-dc9d-45b5-aafd-99cdf006a407	shop / store / commercial establishment	\N	\N	2	2026-07-22 16:28:09.741229+00	2026-10-18 21:03:04.342412+00	t
4cdd688c-a7db-4abb-a1b7-a960968782d7	12495e18-3d51-4887-acf4-154f982a1961	right there / that area / there / that place	\N	\N	5	2026-07-22 16:14:56.308161+00	2026-10-18 21:03:04.342412+00	t
220613a0-ea53-41c6-acda-608ca05a31bc	928dc3a5-3c0e-47e0-a7b6-b4205bc60956	sick / ill / not well / diseased / unhappy / uncomfortable	\N	- <a href="tts:ไม่">ไม่</a> /mâi/ - not / no<br>\n- <a href="tts:สบาย">สบาย</a> /sà-baai/ - comfortable / well / relaxed / feeling good<br>	1	2026-07-23 14:35:05.097843+00	2026-07-23 14:35:05.097843+00	f
b5417cdf-147b-461c-ac40-2e95a9940d73	006a6b57-2846-45ad-86b7-5b02613cb314	to be happy / to be pleased	\N	- <a href="tts:มี">มี</a> /mii/ - to have / to possess / there is<br>\n- <a href="tts:ความ">ความ</a> /khwaam/ - used to turn a verb or adjective into a noun<br>\n- <a href="tts:สุข">สุข</a> /sùk/ - happiness / well-being<br>	1	2026-07-23 14:39:44.357768+00	2026-07-23 14:39:44.357768+00	f
016dafeb-3a70-44a1-af12-3fb5444f52d9	355f48fa-1aaf-4fa5-996f-58973fa91316	menu / meanu item / dish	\N	This is a loanword from English.	1	2026-07-30 20:20:09.844797+00	2026-07-30 20:20:09.844797+00	f
b0f178da-e224-4dc9-86a1-282961027a86	4ca4ba7e-71ab-4055-b227-6f139f37cba9	Pat Thai	\N	\N	1	2026-07-30 20:24:59.584901+00	2026-07-30 20:24:59.584901+00	f
dd953f16-8954-4922-af4a-c4206ecbf36f	dd8da1a4-48c7-4615-96bc-a5bcf530fff6	spicy / hot	\N	\N	1	2026-07-30 20:26:20.779605+00	2026-07-30 20:26:20.779605+00	f
60dd39c6-e6b0-48bc-a1f2-f79f77f78898	d039c6d6-4dec-4edf-baf2-478645f4b5b4	to order (food / medicine / merchandise)	\N	\N	2	2026-07-30 20:23:31.51566+00	2026-07-30 20:32:12.66775+00	f
a3ac866e-6e4c-4402-830c-e8fc9f452e45	d039c6d6-4dec-4edf-baf2-478645f4b5b4	to order (someone) / to command / to direct / to instruct	\N	\N	1	2026-07-30 20:32:13.539691+00	2026-07-30 20:32:13.539691+00	f
cb4f03ef-f3ea-459d-8191-15b6b65cd707	ca894376-d516-45ba-8e7a-85a613a4f606	ice	\N	- <a href="tts:น้ำ">น้ำ</a> /náam/ - water / liquid <br>\n- <a href="tts:แข็ง">แข็ง</a> /khǎeng/ - hard / solid / firm<br>	1	2026-07-30 20:35:05.059197+00	2026-07-30 20:35:05.059197+00	f
202d07e2-4d72-4f1e-9bd7-2ae5b8f1b59e	40fac41e-705d-4a1b-9777-2806292fe81e	more / add / increase / grow / advance / boost / enlarge / enhance / escalate / expand / raise / spread	\N	\N	1	2026-07-30 20:36:49.469918+00	2026-07-30 20:36:49.469918+00	f
259d6da2-d99a-47ca-b3ca-c4c0377545e7	f0b116b9-5686-4b81-a3b0-b67ea704e8d0	spoon	\N	\N	1	2026-07-30 20:38:29.487411+00	2026-07-30 20:38:29.487411+00	f
763cb908-9f28-4912-9549-389b0db695da	a2414431-5b3e-4552-89d8-d886a1d5624a	and	\N	\N	1	2026-07-30 20:38:46.671998+00	2026-07-30 20:38:46.671998+00	f
4cafca7d-e52b-4a5a-b7c2-b1c2f1fb3b18	5be6b07b-f5d1-4e2e-ae1e-a83d3be40b67	fork	\N	\N	1	2026-07-30 20:39:11.037918+00	2026-07-30 20:39:11.037918+00	f
0e454ae7-1ac5-45ad-88d9-5001d87cd655	573b6e61-b0b6-46c5-8df5-30d16ee423b5	cutlery / silverware / a spoon and a fork set	\N	- <a href="tts:ช้อน">ช้อน</a> /chón/ - spoon<br>\n- <a href="tts:ส้อม">ส้อม</a> /sôm/ - fork<br>	2	2026-07-30 20:40:42.189972+00	2026-07-30 20:41:59.444571+00	f
8b2b8ecd-9a67-4ab4-9a06-4a6b4afa6df6	79c714ae-4513-416e-a0dc-6758076b6140	chopsticks	\N	\N	1	2026-07-30 20:43:02.952041+00	2026-07-30 20:43:02.952041+00	f
e0b1caeb-3263-4347-ace3-198be6b08a4e	727b139b-5e70-47d0-8670-415de015a10d	also / as well / too	\N	\N	1	2026-07-30 20:43:50.709716+00	2026-07-30 20:43:50.709716+00	f
33a0ab01-1636-4469-a704-f5a6d9e71453	122bf560-0140-466f-8f3c-ca23e67da333	a little bit / somewhat / to some extent / for just a moment	\N	\N	2	2026-07-19 13:43:55.813259+00	2026-07-30 20:48:22.904092+00	f
3c4a4ddc-2e77-48b9-a373-7ce70a4124af	742a5037-16a4-479a-934f-a482fc842688	price / cost / value	\N	\N	1	2026-07-30 21:00:21.004802+00	2026-07-30 21:00:21.004802+00	f
7c29c59b-7af3-4151-b9e4-240c3216a496	19e44d4d-2569-49ab-a31d-67e7be25d5da	to pay / to spend (money)	\N	\N	1	2026-07-30 21:05:38.771801+00	2026-07-30 21:05:38.771801+00	f
f9453e7b-7ab2-4f6e-ae3f-ccca2095473d	727b139b-5e70-47d0-8670-415de015a10d	with / by / using	\N	\N	1	2026-07-30 21:06:33.899801+00	2026-07-30 21:06:33.899801+00	f
d178a54b-2bd9-41ae-9cd6-a3905576f50a	04b6b2b2-0eca-440e-a978-2ee7ac7514f9	card / ticket / coupon / ballot / document	\N	\N	1	2026-07-30 21:07:26.580186+00	2026-07-30 21:07:26.580186+00	f
367ace64-8985-467e-9ffd-9f18b1c22f52	74527efe-0e75-4e85-846c-5d4c0a788fc4	cash / bills / coins	\N	- <a href="tts:เงิน">เงิน</a> /ngern/ - money / silver<br>\n- <a href="tts:สด">สด</a> /sòt/ - fresh / live / immediate / in cash<br>	1	2026-07-30 21:12:07.234914+00	2026-07-30 21:12:07.234914+00	f
b73a59c6-e2bd-483c-8702-2efd92f9f2ce	b7b207ec-c4b7-4840-8c34-2c322b28da49	credit card	\N	- <a href="tts:บัตร">บัตร</a> /bàt/ - card / ticket / pass / document<br>\n- <a href="tts:เครดิต">เครดิต</a> /khré-dìt/ - credit<br>	1	2026-07-30 21:16:24.423134+00	2026-07-30 21:16:24.423134+00	f
ae264311-f689-4612-b539-7c2bcdfa8336	276c6b89-dba8-4c8f-b030-e3e6b344338c	appointment / a date / a rendezvous	\N	\N	1	2026-07-31 09:23:32.864148+00	2026-07-31 09:23:32.864148+00	f
fe9c5872-0e4d-4cff-9e91-1528f323983f	a15804d3-18ea-4d21-af5a-23ec2c9a19d6	symptom / indication / condition	\N	\N	1	2026-07-31 09:27:12.402221+00	2026-07-31 09:27:12.402221+00	f
22db3a58-9264-4fe4-b086-51e98f525cc8	948564ab-6d36-4731-ae02-9b9d405f9a23	headache / hangover	\N	- <a href="tts:ปวด">ปวด</a> /bpùat/ - to ache / to hurt / to be in pain<br>\n- <a href="tts:หัว">หัว</a> /hǔa/ - head<br>	1	2026-07-31 09:29:06.081263+00	2026-07-31 09:29:06.081263+00	f
eb99a49b-16bc-4872-ab06-df59c08f3349	e61f9100-4051-4ac1-91c7-556b5c0cb2e3	but / however	\N	\N	2	2026-08-07 13:00:27.570523+00	2026-10-18 20:29:45.657472+00	f
8f300950-be69-4881-bd9a-187a074890bc	fbbc67f0-12fe-49cb-a1d6-40eee4f8fea5	a little bit / just a little / a tiny bit	\N	\N	3	2026-07-30 20:30:07.834591+00	2026-10-17 14:12:25.875904+00	f
8d397b9a-7937-41ee-a6bb-cdadd0139335	bddbb92c-42fb-4a10-bd2a-c97d060a08fd	how much / how many	\N	<a href="tts:เท่าไหร่">เท่าไหร่</a> is the colloquial pronunciation of <a href="tts:เท่าไร">เท่าไร</a> and is commonly used in everyday speech.	2	2026-07-30 21:02:32.466493+00	2026-10-18 21:03:27.7852+00	t
f7bdd4b4-9bbd-42a1-9f73-811fa1261a0b	af2048d4-421c-4f45-827a-3a3d54f1a2f8	the sky / heaven	\N	\N	1	2026-08-07 12:44:18.728057+00	2026-08-07 12:44:18.728057+00	f
a7a84ee5-b335-4421-ab6a-a0fa69763f5f	f0afbfa8-d4a3-475d-9805-d59736689bc6	to accept / to get / to receive / to take / to pick up (the phone)	\N	\N	2	2026-07-30 21:15:10.699064+00	2026-10-21 10:51:57.916705+00	f
02512113-58d3-4d33-aa21-5a4e74536ee1	2016141d-57ca-4d7d-bfd0-b3905486e4b7	one / 1	\N	\N	3	2026-08-04 20:26:01.31966+00	2026-10-16 14:28:53.107654+00	t
51f32711-1040-413e-9266-bd41e1908f33	bd55fd96-9056-47b6-aa12-26db8df4abd7	an orange / citrus	\N	\N	1	2026-08-07 12:50:23.143764+00	2026-08-07 12:50:23.143764+00	f
163d3e08-4b1f-4b18-b660-a55da26fe7f2	0dcca71f-6b32-4c32-8ce6-2a01e8d7e1c6	sugar	\N	\N	1	2026-08-07 12:53:45.909396+00	2026-08-07 12:53:45.909396+00	f
29af40fb-a63e-4587-bfc6-0950412ca477	195f5bab-4874-442c-bafa-e8c91d73979a	and	\N	\N	1	2026-08-07 12:58:37.461476+00	2026-08-07 12:58:37.461476+00	f
c972cb45-1fab-43e5-a4e2-20cae18b1ea7	9eb42568-f457-44a9-91ad-71212ac31377	doctor	\N	\N	2	2026-07-31 09:24:27.622454+00	2026-08-13 21:07:37.521483+00	f
163d4a94-5ee4-4eb2-994c-9267eaa9ec74	13befe2f-8a68-4521-aa09-b79a108dd671	light blue colour / sky blue colour	\N	\N	2	2026-08-07 12:45:59.664972+00	2026-10-16 14:28:24.129898+00	f
3ad53742-09df-44ea-ac92-66982fe46f4e	bf79f460-b40f-4dda-94e1-42e2c92110c5	dark blue / navy blue	\N	\N	2	2026-08-07 12:54:39.990228+00	2026-10-16 14:28:33.983229+00	f
6f5ae9ee-8ae2-4534-bf11-6fb90f75a09a	7fa45d97-7e7b-4dd8-82ba-d44065fe9fee	red	\N	\N	3	2026-08-07 12:36:23.151518+00	2026-10-16 14:28:39.645497+00	t
fed3f5b8-2480-4d28-a7d7-2a7255c35c62	5f06f83b-745b-4e5f-9e3d-46d41d2d3890	colour	\N	\N	2	2026-08-07 12:46:38.436023+00	2026-10-16 14:28:39.645497+00	t
e2d56d3d-7c4a-4f7c-b1ef-24e90fbdd565	aecf76fb-c8d4-4df7-a70e-8da6078752e4	five / 5	\N	\N	3	2026-08-04 20:28:52.399091+00	2026-10-16 14:28:53.107654+00	t
d0c9b77a-3efe-43cb-9c72-4c68c5fab3dd	cc5feae1-68e2-4bec-bc4b-66d648355303	four / 4	\N	\N	3	2026-08-04 20:28:16.789743+00	2026-10-16 14:28:53.107654+00	t
6f034e1b-3c62-41d4-9f68-862d5c769c9a	c97ea37c-6756-407f-a575-a2197b55e3d6	three / 3	\N	\N	4	2026-08-04 20:27:15.947858+00	2026-10-16 14:28:53.107654+00	t
c7633828-73b9-4409-95c8-92bff803725b	c04640ee-58c8-4b5f-a5c6-78d8795aae04	two / 2	\N	\N	3	2026-08-04 20:26:35.744487+00	2026-10-16 14:28:53.107654+00	t
f11c92f6-aee3-4295-8ef2-624c5285db73	affc924d-8d0a-41b6-b2b5-8b4c3e3462a0	six / 6	\N	\N	2	2026-08-04 20:30:59.080341+00	2026-10-16 14:28:53.107654+00	t
d724e649-5625-4040-92fb-caff7f799263	27590c89-4faf-458d-a5ea-9fddb2ea0e07	seven / 7	\N	\N	2	2026-08-04 20:31:29.198883+00	2026-10-16 14:28:53.107654+00	t
a90155d3-aa81-4f55-a5c9-ac5d18015874	236be915-86bd-4bce-b821-081e43399286	eight / 8	\N	\N	2	2026-08-04 20:31:59.566332+00	2026-10-16 14:28:53.107654+00	t
853376fb-d714-4626-94d0-cbabed6b1f67	c2e9fa3a-fd7f-4538-bc39-cd65a47b1cf1	nine / 9	\N	\N	2	2026-08-04 20:32:45.297389+00	2026-10-16 14:28:53.107654+00	t
a5391f27-2a64-41ec-b046-ee87033e9a93	ca43957a-9351-44cf-8b09-8a167d8e32ec	twenty / 20	\N	\N	4	2026-08-04 20:37:31.116706+00	2026-10-21 18:56:52.961834+00	t
6510f5fb-ee7a-43c5-a1c9-d25f32cfc9bb	2c645c23-af15-4100-b2ad-da7204cf980d	beacause / for the reason	\N	\N	1	2026-08-07 13:01:26.17234+00	2026-08-07 13:01:26.17234+00	f
5e87c754-aaae-4b73-8b20-93c8c9dac2ba	7c63a00b-68ee-4ea8-871b-ecc150992299	if	\N	\N	1	2026-08-07 13:02:25.913156+00	2026-08-07 13:02:25.913156+00	f
8d83f3c4-5b96-4f73-839c-69228773d032	cc9052a4-7935-4284-98bd-a1ad034d3a6c	bus	\N	\N	1	2026-08-07 14:09:52.857994+00	2026-08-07 14:09:52.857994+00	f
799f8a15-2e1c-45cc-a648-d84abd81a041	a00e9db7-e87e-4510-8fed-acb892403600	boat / ship	\N	\N	1	2026-08-07 14:11:08.101085+00	2026-08-07 14:11:08.101085+00	f
8bd31b5e-93f6-4dc5-8bf5-bf685af7bd99	6bf30728-9bd0-48bb-a7ce-111ce5a786d7	sports / game / athletics	\N	\N	1	2026-08-07 14:13:17.141771+00	2026-08-07 14:13:17.141771+00	f
84f3c186-fe4a-4894-896e-34ecd8e1b8cd	bb55cb55-5646-4a08-8c9d-41acde19e000	to win / to beat / to defeat / to conquer	\N	\N	1	2026-08-07 14:15:16.874597+00	2026-08-07 14:15:16.874597+00	f
b5d6a720-7eb0-45e8-8c28-734d8456f629	1e7ea5cf-6255-4906-a141-fb04a183fb77	to run	\N	\N	1	2026-08-07 14:16:49.390127+00	2026-08-07 14:16:49.390127+00	f
df25adec-5994-4726-b00f-c9585331e82d	f9ce1e6d-6081-4a57-a78c-c04834656273	boxing / fistfighting	\N	\N	1	2026-08-07 14:25:45.232869+00	2026-08-07 14:25:45.232869+00	f
de4a28d8-a3cf-477b-986a-35c9053b93d9	f9ce1e6d-6081-4a57-a78c-c04834656273	knot / bun	\N	\N	1	2026-08-07 14:25:46.130049+00	2026-08-07 14:25:46.130049+00	f
09bddbde-16f9-4d2f-9d54-f074f05fc5f8	1ed02bd7-d320-46d3-9541-70912d731118	to sleep / to lie down	\N	\N	1	2026-08-07 14:38:16.350199+00	2026-08-07 14:38:16.350199+00	f
af4df313-16c4-4306-8aaf-5a176dffcc45	be35bbcb-7c65-40af-bf15-acfec1845497	to hear	\N	\N	1	2026-08-07 14:39:35.520426+00	2026-08-07 14:39:35.520426+00	f
01a1dde3-8ce2-4783-9d70-dbbe0fda036c	da5bee71-61a5-44cf-bec0-09ce8850bb19	to know (a place / location / thing) / to be familiar with (an idea / something)	\N	\N	2	2026-07-14 15:36:32.641421+00	2026-08-07 14:40:21.191484+00	f
0cf57a0d-7579-4b8b-9dd9-0acc1a8b363a	c8eefea9-5b0d-4a77-af22-3da9a746bcf2	to like	\N	\N	1	2026-08-07 14:41:25.342119+00	2026-08-07 14:41:25.342119+00	f
838d6e3d-2a30-4036-87ba-86ec8058a178	659f517f-b2d3-41a8-9255-01b13e1987f6	to learn / to study	\N	\N	1	2026-08-07 14:42:28.556208+00	2026-08-07 14:42:28.556208+00	f
f1e33dc9-4b78-4ef9-9579-052edd53a41b	fa3b3e37-ece1-4c2e-98c8-f35974e6820f	to sell / to vend	\N	\N	1	2026-08-07 14:44:01.401559+00	2026-08-07 14:44:01.401559+00	f
b7b2a5bf-0024-4bd4-81da-1214124962dd	06a24d1f-6c25-47aa-a6f8-0bc366df53eb	to open / to turn on / to switch on	\N	\N	1	2026-08-07 14:44:51.87438+00	2026-08-07 14:44:51.87438+00	f
0c1aa3f1-2ad0-433b-9454-521439ff4315	aeb14fbb-96a8-4f13-aea7-90f9f382a5ec	to close / to switch off / to turn off	\N	\N	1	2026-08-07 14:45:28.682938+00	2026-08-07 14:45:28.682938+00	f
cf68c072-9344-44fe-89db-935ef3eb0537	db55699d-d06a-4d62-93fe-e257cb6b0cd2	to start / to begin	\N	\N	1	2026-08-07 14:46:08.0121+00	2026-08-07 14:46:08.0121+00	f
ea796d6c-554d-48e1-b2f4-00fb8c3c0def	165b449b-bff2-4b28-a35a-e502c3b7e83d	to finish / to complete / to succeed / to be done / to be ready	\N	\N	1	2026-08-07 14:56:44.725513+00	2026-08-07 14:56:44.725513+00	f
d3fdf0ad-b81e-4c1f-b304-487d4824e27a	d434feb0-e234-4b96-9037-6ea8eff4afce	to ask	\N	\N	1	2026-08-07 14:57:33.208634+00	2026-08-07 14:57:33.208634+00	f
dc0b931c-a685-42a0-920d-6a3ba0994529	bf90953f-2aa0-498c-909a-94f95c7e258d	to answer / to reply / to respond	\N	\N	1	2026-08-07 14:58:09.746812+00	2026-08-07 14:58:09.746812+00	f
650b6c2e-25f5-4ac2-918c-ac5cb4c3aef0	7ae3cbcf-9727-41f9-8537-7398de49608e	tears	\N	\N	1	2026-08-07 15:02:16.068611+00	2026-08-07 15:02:16.068611+00	f
e68fcdf6-b08e-4415-bb68-a816f7e15ac3	353563bf-01e2-4cf1-9151-e37b25286120	mouth / lip	\N	\N	1	2026-08-07 15:04:24.37869+00	2026-08-07 15:04:24.37869+00	f
96f3b001-fefe-4576-bd9c-86ea170c83b0	9d6b964a-01ba-40ea-9a48-e9bd3fd77ea5	sad / upset / not happy / depressed	\N	\N	2	2026-08-07 15:20:36.202565+00	2026-10-21 19:21:58.638192+00	t
7af7d988-adfc-4218-8894-15816f7cc8fe	dd2a43d1-7c4b-4e4b-b18e-107e359350b0	face	\N	\N	2	2026-08-07 15:00:52.992947+00	2026-08-07 15:05:08.518968+00	f
a426a1a9-6864-4853-9284-885b93a26139	dd2a43d1-7c4b-4e4b-b18e-107e359350b0	front / top	\N	\N	2	2026-08-07 15:00:53.898561+00	2026-08-07 15:05:09.372319+00	f
2205da7a-c8f2-48cc-a9ad-9020c0c8b067	a7b483b2-fb38-45c3-9383-5ef069ed111d	eye	\N	\N	2	2026-08-07 15:01:42.876144+00	2026-08-07 15:05:20.981449+00	f
be140005-36f1-4ea3-b5b4-7842eef49d48	fe94f024-1191-4389-9f68-7adb2bd332bf	nose	\N	\N	2	2026-08-07 15:03:38.209647+00	2026-08-07 15:05:31.624248+00	f
3b928e5e-675b-4418-ba67-757fbf690e90	d9cf2f8c-f26b-457b-80b3-52dffeb9fc47	ear	\N	\N	2	2026-08-07 15:03:09.52816+00	2026-08-07 15:05:40.03874+00	f
f5926cde-6885-4deb-94ce-c112a11e8dad	1cac4e6f-00b1-4e56-b9f1-c43375a52f5e	tooth / teeth	\N	\N	1	2026-08-07 15:06:40.727128+00	2026-08-07 15:06:40.727128+00	f
f0a0c198-ec45-4bb6-84f2-71e4f0ab01a9	bdbf7231-cfd3-44dc-b60a-e6caf6ccefcb	tongue	\N	\N	1	2026-08-07 15:07:11.946867+00	2026-08-07 15:07:11.946867+00	f
1f2283b7-2d12-4bd8-87ed-db700b092217	1a7498ce-d601-4cfc-9987-e6918ac54102	neck / throat / collar	\N	\N	1	2026-08-07 15:14:42.319525+00	2026-08-07 15:14:42.319525+00	f
2e29cdf2-1689-41a9-b953-e9c67ba20093	877cbc47-2ebd-4396-bd12-f06fb491d17f	shoulder	\N	\N	1	2026-08-07 15:15:22.401498+00	2026-08-07 15:15:22.401498+00	f
f33ebc11-2b5c-4845-ab7d-6b3233246b44	5058f059-f1ec-499d-bdb4-306737099452	arm / limb	\N	\N	1	2026-08-07 15:15:52.839366+00	2026-08-07 15:15:52.839366+00	f
86fe0f54-b8f6-4ddc-b457-27aecdcdcc67	89f4caab-2a1b-4dc9-94a9-8d4c7a0cc700	elbow	\N	\N	1	2026-08-07 15:16:26.422671+00	2026-08-07 15:16:26.422671+00	f
1a48345b-981f-46d5-a966-640dd3453379	a8179e6e-cbac-40e2-b05a-e555c271cdfb	hand	\N	\N	1	2026-08-07 15:17:25.632881+00	2026-08-07 15:17:25.632881+00	f
bc59c646-80a7-4ee4-b959-9fc8796b165e	34740491-af35-4dd5-b428-ee5703717e8a	leg / limb / foot	\N	\N	1	2026-08-07 15:18:24.524806+00	2026-08-07 15:18:24.524806+00	f
02b62740-da17-4c58-8d42-a30ff014a523	529b16dd-c627-489e-a101-d09286b15125	foot	\N	\N	1	2026-08-07 15:19:08.835027+00	2026-08-07 15:19:08.835027+00	f
b7a10438-8d03-4334-af92-d3044c6cec8d	6508fe45-649b-4b80-b0db-9fe5835509e3	older sister	\N	\N	3	2026-08-08 22:19:00.646919+00	2026-10-21 19:25:32.257925+00	t
0494d204-b24b-4248-a131-32dd9ea774b7	e72ebc75-2f88-4c8d-b845-922a6c7eeedf	younger sister	\N	\N	3	2026-08-08 22:19:55.182891+00	2026-10-21 19:25:57.726164+00	t
eeb398f9-c775-4546-8702-46548baa6cfa	f4c0ffed-81cf-4bea-8b18-9f9bae03f70c	later / afterward / next	\N	\N	1	2026-08-07 16:02:02.654481+00	2026-08-07 16:02:02.654481+00	f
7bb319d7-4526-4fed-9b45-3d9fec406062	70b9a896-6351-4461-b22e-aab0a6ecb9b2	always / constantly / often / frequently	\N	\N	1	2026-08-07 16:05:17.337026+00	2026-08-07 16:05:17.337026+00	f
7d34ddf3-53b3-447a-bc51-3e35bed6887a	70b9a896-6351-4461-b22e-aab0a6ecb9b2	to support / team with / to be equal with / to be supportive of	\N	\N	1	2026-08-07 16:05:17.926037+00	2026-08-07 16:05:17.926037+00	f
41310932-eca5-4489-9d43-5b1fbfdba533	792d4c93-6aed-4147-a024-c8fbc1d219b4	often	\N	\N	1	2026-08-07 16:05:52.725636+00	2026-08-07 16:05:52.725636+00	f
ce179d72-1ea4-4981-8fd1-b0fd4365a184	4c4aa48f-e448-4465-b4b9-2be6738996b1	to be (am / is / are)	\N	\N	2	2026-08-07 16:22:37.42302+00	2026-08-07 16:25:14.645798+00	f
2f25cc1c-10f0-4e4b-ae8b-434b50c9dd3b	cc071945-2585-4603-978c-8a3b1fc0faef	numerical classifier for people	\N	\N	1	2026-08-08 22:12:23.467878+00	2026-08-08 22:12:23.467878+00	f
9e7d275f-0ab4-41e0-a55f-9dcc645927a4	17e2a0d0-7437-42e8-9173-ac76c87762fc	child / offspring / son or daughter	\N	\N	3	2026-08-08 22:27:43.136733+00	2026-10-17 13:43:42.027131+00	f
aa97989e-7b70-4036-8c1f-adb05cbcca5a	a46830df-6cdb-4128-be42-c6b84ffa1d58	middle child	\N	\N	5	2026-08-08 22:32:45.375811+00	2026-10-17 13:44:24.037533+00	f
4d2cc9db-058b-4ec4-b859-efb1e154b671	7f7a9f33-3594-4097-8497-465caf09e717	to jump (over) / to leap / to plunge into	\N	\N	2	2026-08-07 14:23:27.335878+00	2026-08-10 21:40:46.962135+00	f
2365ac3e-e95c-4708-ada5-dd2f2cb58145	510533c4-00f9-44b4-8420-7a58c8991297	every day / always / all the time	\N	\N	2	2026-08-07 16:02:55.717046+00	2026-08-15 13:54:50.981291+00	f
375011a1-1c6a-47c5-b599-8a21b77f4333	44a20ab7-fb60-42a7-8b1a-694ea21d16b2	everyone / everybody	\N	\N	2	2026-08-07 16:03:45.235687+00	2026-08-15 13:55:32.352733+00	f
9cb40f57-fd04-4d83-923a-88cfd02ec475	dbf1ea76-995e-4a01-9a7b-0e530671a6ad	to swim	\N	\N	2	2026-08-07 14:24:20.365174+00	2026-10-18 17:24:53.387755+00	f
312ce76d-4d7e-4dd5-9f36-a5252196f921	e61f9100-4051-4ac1-91c7-556b5c0cb2e3	every / each / only / only one	\N	\N	2	2026-08-07 13:00:28.790022+00	2026-10-18 20:29:46.875436+00	f
aa133384-3260-45bf-ae12-0cbad3b07dad	b58bba15-467f-4053-b863-d2288341d0bc	player	\N	\N	3	2026-08-07 14:13:59.192425+00	2026-09-26 19:17:48.132489+00	f
87012023-74eb-4ac6-8cf8-629383033fd8	696b1f91-7336-40d1-ab24-5b9f85ca9ca2	car / vehicle	\N	\N	2	2026-08-07 13:56:46.895458+00	2026-10-18 21:03:04.342412+00	t
4078fbce-8b37-4922-9f03-111b70c84bfb	16cf756e-0c4f-4a86-a76b-fb611c453df8	student / learner	\N	\N	2	2026-08-07 14:43:06.444425+00	2026-10-18 21:03:27.7852+00	t
7d7f6e7d-092f-41a3-aa5c-2c7c0627455f	ec53dacf-9ac3-4d4e-922d-02733c1240ad	to lose / to be defeated	\N	\N	4	2026-08-07 14:15:59.209745+00	2026-10-20 20:12:23.014207+00	t
d8cb2712-f31a-4c77-ac70-ad41deba6b81	0a4112bf-249d-4aeb-9eba-8def36df8283	head / brain	\N	\N	3	2026-08-07 15:00:01.041213+00	2026-10-21 18:57:51.436832+00	t
197cd7ce-7865-4a0b-b129-fd97df9cf056	527d01fb-f114-4e61-8454-1c3c98dea6b1	angry / mad / pissed off / infuriating	\N	\N	2	2026-08-07 15:21:44.287327+00	2026-10-21 19:21:58.638192+00	t
e01c1214-ac1e-4995-8432-41d6dccc179e	5e5a486f-ae3a-4882-b198-2cb31fcdfc1c	to be scared / to fear / frightened	\N	\N	2	2026-08-07 15:22:57.82026+00	2026-10-21 19:21:58.638192+00	t
3eff4caf-b1e1-4d7d-98b3-28f180ad57b3	7d0c7ac5-d8fa-4f11-8158-0f8185ef2de0	to be worried / to feel anxious / distressed / concerning / causing anxiety / anxious	\N	\N	2	2026-08-07 15:24:24.605426+00	2026-10-21 19:21:58.638192+00	t
446fe8e1-75f7-40a8-9d8a-f7e9caec259a	aa788336-c81a-42b4-be9f-5b3eab1baea2	shocked / startled / scared / frightened / surprised	\N	\N	3	2026-08-07 15:50:18.493648+00	2026-10-21 19:21:58.638192+00	t
75d64280-f38f-48fe-a6aa-c258134c8f54	5d47a774-da14-4919-8c1e-1fdc8810adfd	the middle / the center / halfway	\N	\N	1	2026-08-08 22:34:30.974271+00	2026-08-08 22:34:30.974271+00	f
887d5a77-947e-4740-a373-0596ad1540c0	0c1c9780-612d-4068-bdfa-d0f9f279ec34	to live / to reside / to inhabit	\N	\N	1	2026-08-08 22:36:39.601912+00	2026-08-08 22:36:39.601912+00	f
7fdbe1c8-77d0-44e8-bec4-d8504a53faec	06e07806-2fc4-4ba6-9277-86059fa085cb	big / large / great	\N	\N	1	2026-08-08 22:41:24.631672+00	2026-08-08 22:41:24.631672+00	f
290c633d-51b4-456b-a14a-226ccc5ec2b3	5f2bb56a-0794-4f15-be23-84227ce4b72e	cat	\N	\N	2	2026-08-10 20:00:17.4344+00	2026-10-18 17:38:48.383535+00	t
d628e0db-f329-4b3c-baa6-fdf9a5c38f0f	92bf7f8e-c4a6-4e99-a5c9-b0bd38aa46d3	first child / firstborn	\N	\N	2	2026-08-08 22:51:45.945941+00	2026-10-17 13:43:58.532454+00	f
3c0424fc-c56a-4c85-9df1-dd85540fc0da	e2fa42ca-9b1c-451c-879c-80f98784d75f	first / initial / original / primary	\N	\N	1	2026-08-08 22:52:55.787279+00	2026-08-08 22:52:55.787279+00	f
0826f63a-2a73-49ce-8289-1bf53131e318	846dd78d-3908-4dcd-934b-9bc7203b8bdf	small / little / tiny	\N	\N	2	2026-08-08 22:49:02.16593+00	2026-08-08 22:56:13.08776+00	f
c4beb48c-a30b-41b7-bfcc-1287b9fbb1a3	3a8e2fff-819e-40ac-ab11-685cc10b596e	to happen / to occur / to take place	\N	\N	1	2026-08-09 10:44:53.788076+00	2026-08-09 10:44:53.788076+00	f
95aa2fa2-ef9f-40c7-8590-8efb6bb7eff4	ace987a0-12df-4b2b-85bc-3da9af77bad0	plan / project	\N	\N	1	2026-08-09 11:11:26.432786+00	2026-08-09 11:11:26.432786+00	f
3ad5c645-91d7-49d3-b950-895982b17cd3	7ddfddd9-5c85-4036-9e42-66719d3fb8ef	weekend	\N	\N	1	2026-08-09 11:14:18.451458+00	2026-08-09 11:14:18.451458+00	f
c2d232de-212b-4304-a683-20fc1e11123f	c830751d-f047-452d-bf0b-316a7584ce61	(to be) free / available	\N	\N	2	2026-08-09 11:17:46.183648+00	2026-08-09 11:18:42.346965+00	f
d5a9d1a4-348d-4199-9f43-0717abbd5929	c830751d-f047-452d-bf0b-316a7584ce61	empty / vacant	\N	\N	1	2026-08-09 11:18:42.934698+00	2026-08-09 11:18:42.934698+00	f
9af7a2ab-2d70-424a-81ff-e5e9f370ca76	e82d2801-3704-41bd-bd7c-eecb0562fbf2	unemployed / out of work	\N	\N	1	2026-08-09 11:20:54.082184+00	2026-08-09 11:20:54.082184+00	f
20a758cf-142a-4345-931b-3dd8c9cc075f	7e329221-5737-48b1-a3cb-463a6d70fb0f	month	\N	\N	1	2026-08-09 11:22:15.641916+00	2026-08-09 11:22:15.641916+00	f
4fd75909-b453-4de2-b065-55fd6a487aef	a8f30cb6-4608-4c5f-a2e7-13ee4ddc44d2	to sound like... / to seem like... / to appear / to seem	\N	\N	1	2026-08-09 11:27:58.878661+00	2026-08-09 11:27:58.878661+00	f
3fb918b9-3bf2-4ef3-9a42-c8336a4baed0	e77804bb-f20f-4656-9417-6a58ffaf46b4	(to have) a meeting / to assemble / to gather / to meet	\N	\N	1	2026-08-09 11:43:02.031132+00	2026-08-09 11:43:02.031132+00	f
8cdd39c7-4dec-4572-82db-1d019f78b8d0	655642a4-c054-4a6b-b8dc-f07ce6893de1	period of time	\N	\N	1	2026-08-09 11:44:20.700457+00	2026-08-09 11:44:20.700457+00	f
dbda2039-34c6-40da-ac2d-931d0a14f230	6bb1f621-186d-4e61-9239-72bc20e6fe10	early afternoon hours (between 13:00 and 16:00)	\N	\N	1	2026-08-09 11:45:47.365687+00	2026-08-09 11:45:47.365687+00	f
e88838bf-f77e-4a8b-ba90-b1f780327690	f6222a57-c1b1-4bf5-8426-5cf2a3b6f84b	secretly / covertly / to hide / to conceal	\N	\N	1	2026-08-09 13:03:03.823024+00	2026-08-09 13:03:03.823024+00	f
6379ff9c-ee57-48d8-95c2-08299c906ba7	d0120c0f-af14-4f5f-9c96-b977413d4822	to (secretly) like / to have a crush on	\N	- <a href="tts:แอบ">แอบ</a> /àep/ — secretly / secretly doing something / hiding an action<br>\n- <a href="tts:ชอบ">ชอบ</a> /chôp/ — to like / to enjoy / to be fond of<br>\n<br>It is commonly used to mean "to have a crush on someone." The <a href="tts:แอบ">แอบ</a> part adds the idea of secretly or quietly having feelings for someone, but it is often left untranslated in natural English.	4	2026-07-14 14:01:53.349462+00	2026-08-09 13:09:27.424482+00	f
6b6a7b5b-b4af-4c41-9893-922f218d9a2a	c5f7c065-1b38-4d84-ade6-bdd35e3475cd	to shower / to take a shower / to bathe / to take a bath	\N	\N	2	2026-08-10 18:28:32.836244+00	2026-08-13 21:01:57.313608+00	f
52a6fdba-df7c-41b1-97d9-fc3d98c717ae	0687ebb6-7968-42b8-b97a-defc716eebe6	to awake / to wake up / to get up	\N	\N	1	2026-08-09 14:34:04.19787+00	2026-08-09 14:34:04.19787+00	f
e523a678-b980-4eb2-98d3-2bae3d6c421e	0687ebb6-7968-42b8-b97a-defc716eebe6	alarm / scare / unnerve	\N	\N	1	2026-08-09 14:34:05.437376+00	2026-08-09 14:34:05.437376+00	f
ecc60b37-84e0-424d-8d12-6d889b396d7d	c14a1d04-3139-41ea-93e1-210ebcf2da8d	to wake up (from sleep)	\N	\N	2	2026-08-09 14:31:58.786133+00	2026-08-09 14:34:48.189576+00	f
8b28f5db-7bd4-498a-8dee-02b1e572aefa	bba42102-355d-4735-876f-5ad00afb40e2	at / when / during	\N	\N	1	2026-08-09 14:35:52.411012+00	2026-08-09 14:35:52.411012+00	f
98d16472-3085-4fef-b3e3-ef1b27516020	2b92cf2e-f4fc-45ba-95a5-8d6a904dd02f	7	\N	\N	1	2026-08-09 14:36:52.512729+00	2026-08-09 14:36:52.512729+00	f
065d3f35-8633-4c28-a152-5f282ab89af7	083a27ff-5b19-4818-9ecf-6a7d9cc96aed	hour / o'clock	\N	\N	1	2026-08-09 14:37:34.895242+00	2026-08-09 14:37:34.895242+00	f
48150d1e-7836-40a2-ba5d-93f9e4002f55	6eb4897f-48fa-43d2-a274-95e6abe5694d	usually / normally / commonly / ordinarly	\N	\N	1	2026-08-10 18:31:47.078286+00	2026-08-10 18:31:47.078286+00	f
ec1f8b44-ece0-4db1-9e63-9b6decc68879	2f9bdf82-ed4f-4fc5-88ef-d69cc211bd1f	morning / hours between 6:00 and 11:00	\N	\N	1	2026-08-10 18:38:13.966348+00	2026-08-10 18:38:13.966348+00	f
b881ffcc-257e-48a9-be07-23036ec93523	2f9bdf82-ed4f-4fc5-88ef-d69cc211bd1f	early / during the period from dawn to late morning	\N	\N	1	2026-08-10 18:38:54.616249+00	2026-08-10 18:38:54.616249+00	f
78609ffd-2535-4983-96e4-bb138007d118	c9f9dbdd-17ea-482b-836c-6d183073509a	to tease / to joke / to kid	\N	\N	1	2026-08-10 19:53:09.622919+00	2026-08-10 19:53:09.622919+00	f
13195427-02e1-4aac-93d5-d2c41e0d341a	8c64e8e8-4fef-48e1-825c-d35d61acd0c9	to kid / to tease / to joke	verb	- <a href="tts:ล้อ">ล้อ</a> /lɔ́ɔ/: to tease / to mock / to kid<br>\n- <a href="tts:เล่น">เล่น</a> /lên/: to play <br>\nTogether they form the idiom 'to joke' or 'to play around'	4	2026-07-12 00:06:56.9725+00	2026-08-10 19:54:51.614174+00	f
e7eb8019-72f8-44c0-8292-0455fa8542bc	0b6eac27-427a-48b0-b613-0a0ce7851468	snake / srpent / viper	\N	\N	1	2026-08-10 20:04:41.014489+00	2026-08-10 20:04:41.014489+00	f
70000bd0-b9c5-4e26-8a84-7f7496bcc5d2	fb20d49d-e74f-41e2-b573-90c1a7b76a3a	mouse / rat	\N	\N	1	2026-08-10 20:05:21.821185+00	2026-08-10 20:05:21.821185+00	f
baee6eee-b5ac-497e-9a4f-a8fbedd1d008	11690d4e-6928-4049-8610-86a032cf6641	moneky / ape	\N	\N	1	2026-08-10 20:06:52.894146+00	2026-08-10 20:06:52.894146+00	f
ce172c61-583c-4c51-9a11-3f8e748c957f	bcede3d3-f9fd-4992-aac1-eaa672936edd	frog	\N	\N	1	2026-08-10 20:07:16.409849+00	2026-08-10 20:07:16.409849+00	f
f3a35996-d848-40b3-aeac-d2d96d8e12bb	6b1300e5-0cd8-48ed-89bd-3508f17bd7f2	elephant	\N	\N	1	2026-08-10 20:07:50.636804+00	2026-08-10 20:07:50.636804+00	f
c02fff63-7ad4-4a46-9ed5-cb259e3911f8	d2dd3603-58cb-4616-93c3-b286eb47f51a	tiger	\N	\N	1	2026-08-10 20:08:12.545713+00	2026-08-10 20:08:12.545713+00	f
914c20dd-7cbf-474c-b210-524282f0f75e	8e8ff3f5-55a0-459e-8c8d-5dc5b72e6e20	lion	\N	\N	1	2026-08-10 20:08:37.71798+00	2026-08-10 20:08:37.71798+00	f
020117c9-d3f5-46c7-92a4-9270c30ed976	cd138037-fba5-4f71-a754-fb4aef0bf4bf	dog (formal / polite)	\N	\N	2	2026-08-10 20:09:20.966476+00	2026-08-10 20:10:41.235+00	f
dfc6a3d9-dc32-4331-b893-9eb00d52a3b6	c6194f08-5819-4b69-b1f3-41e7b4bfc8e2	daughter	\N	\N	3	2026-08-08 22:57:50.886047+00	2026-10-21 19:26:24.519271+00	f
69f819f8-dc19-426e-8480-d4d51a660822	7e6179a8-c438-4eed-8aca-ba5efe450c9e	to have a party / to have a banquet / to have a feast	\N	\N	1	2026-08-10 20:16:29.534752+00	2026-08-10 20:16:29.534752+00	f
5bf92b9b-4295-47c3-8006-649b8e4dd1fd	735595f1-1e24-475d-ac50-a27607c07e4c	son	\N	\N	3	2026-08-08 22:57:18.072523+00	2026-10-21 19:28:21.42559+00	f
1975ec73-506b-4029-bcc8-17daf0bff9b4	189c9826-b1bc-44de-b0d9-c198b68574d8	to live / to reside / to occupy	\N	\N	2	2026-08-08 22:38:06.312139+00	2026-08-10 21:33:37.291215+00	f
74cfe458-3890-480d-bc36-d69dbabef539	f2d7aa77-52b7-4eb1-9edb-71b28fcb7353	tonight	\N	\N	2	2026-08-09 11:16:42.962245+00	2026-08-10 21:38:25.428738+00	f
6e2c1407-639a-47c1-b275-9c20c50cbaf4	64ff2c9d-9025-4242-89c7-7674863ec0d7	[aspect marker indicating a change or development into a new state]	\N	\N	2	2026-08-09 10:57:21.688997+00	2026-08-28 20:29:26.784412+00	f
0424c6f2-28a4-4d81-9373-112530c04778	dcdd3e8d-0be5-4011-ac44-02cf4fdf0149	only child	\N	\N	2	2026-08-08 22:47:04.361848+00	2026-10-17 13:43:00.21558+00	f
5c3d33ec-b8c1-4884-9997-8c8d0c515298	04c9df93-6987-46e6-9339-2f2dbdeb1679	husband	\N	\N	2	2026-08-08 22:58:29.46562+00	2026-10-17 13:43:19.780859+00	f
6ddc071a-1820-482e-b168-681ec24ab264	d96e9887-1be2-4a7a-a370-f3028299fe84	wife	\N	\N	2	2026-08-08 22:59:28.275259+00	2026-10-17 13:43:29.043562+00	f
a2900d78-2478-4f29-b44d-6863eeb4e13d	c6b4cd31-f1da-4309-914c-330e1369e364	first child / eldest child / oldest child	\N	\N	4	2026-08-08 22:30:22.479039+00	2026-10-17 13:43:49.883763+00	f
727de56c-bf4e-440c-ab97-6963e66c554d	88a8ab0c-64e5-4025-9929-ad13670f035e	youngest child	\N	\N	3	2026-08-08 22:47:59.319934+00	2026-10-17 13:44:42.525409+00	f
2d7c1c46-f7c9-43f4-bbaf-e6d8ef57413e	d9e7292c-4934-43ec-9580-f01f96cccb18	[numerical classifier for animals, fish, germs]	\N	\N	3	2026-08-10 20:19:38.23556+00	2026-10-18 17:38:48.383535+00	t
c3f9edb5-b161-44d4-b648-83be3504b3cf	29a2f23d-3c6e-4279-9757-3b46d9f89716	pork	\N	\N	2	2026-08-10 20:03:19.747224+00	2026-10-18 13:54:54.565634+00	f
1467dd10-a147-4fd5-b72b-bac1ce6880b5	b3daab94-f043-4ae5-823f-fe6fb0361b1b	pet / domestic animal	\N	\N	3	2026-08-10 20:14:15.362775+00	2026-10-18 17:38:48.383535+00	t
50289382-2d8f-4782-a383-70c26d4f3419	2c19557d-843f-476a-b970-9bc97c344f7c	animal / creature / beast	\N	\N	4	2026-08-10 20:12:02.267028+00	2026-10-18 17:38:48.383535+00	t
99973db7-4bc9-423a-b303-3dd136284d0e	994cf02a-e5f9-4462-8064-762726bbe851	horse / pony	\N	\N	3	2026-08-10 20:01:50.191624+00	2026-10-18 17:38:30.852722+00	t
225f8c88-6ea9-436a-bb67-8c8bea62f4ff	497891da-c091-4bf7-90f3-af2d84d01386	bird	\N	\N	2	2026-08-10 20:00:43.880578+00	2026-10-18 17:38:48.383535+00	t
cd4b8796-c3b2-4087-912e-6f3c96745479	d9e7292c-4934-43ec-9580-f01f96cccb18	[numerical classifier for digits, numbers, bodies...]	\N	\N	1	2026-08-10 20:24:54.333638+00	2026-08-10 20:24:54.333638+00	f
202c4af1-0112-4d99-8f95-1dd758fe78eb	d9e7292c-4934-43ec-9580-f01f96cccb18	[numerical classifier for clothes, shirts, pants, suits...]	\N	\N	1	2026-08-10 20:24:55.304265+00	2026-08-10 20:24:55.304265+00	f
7c04528c-d32a-4ef8-b64f-026da13afc94	d9e7292c-4934-43ec-9580-f01f96cccb18	[numerical classifier for chairs, tables, desks, software,...]	\N	\N	1	2026-08-10 20:24:56.261497+00	2026-08-10 20:24:56.261497+00	f
f16a9a7a-b55b-42bf-9f52-b8cf84a8cf5e	d9e7292c-4934-43ec-9580-f01f96cccb18	a body / entity / item	\N	\N	1	2026-08-10 20:24:58.136009+00	2026-08-10 20:24:58.136009+00	f
f025a0b3-dbe0-4bb4-b3d2-219d6db3527d	d9e7292c-4934-43ec-9580-f01f96cccb18	digit / number / figure / character	\N	\N	1	2026-08-10 20:24:59.101879+00	2026-08-10 20:24:59.101879+00	f
c3e5f0f1-8dcc-4135-b332-01d331ea7950	00116950-6419-4e6d-b072-d168b73b041e	dangerous / harmful / evil	\N	\N	1	2026-08-10 20:26:32.621774+00	2026-08-10 20:26:32.621774+00	f
1d2adb42-9f7b-4e67-87a9-fac6129acb27	414654d0-8755-42c3-bd35-8c957759ccfa	damn / asshole / bastard / bad person	\N	\N	1	2026-08-10 20:31:39.273405+00	2026-08-10 20:31:39.273405+00	f
ae6f3e0c-22d3-41d4-b1ab-8971d17b90df	414654d0-8755-42c3-bd35-8c957759ccfa	monitor lizard	\N	\N	1	2026-08-10 20:31:40.624564+00	2026-08-10 20:31:40.624564+00	f
d42e4c75-1920-419e-ac89-a665882beed7	2c19557d-843f-476a-b970-9bc97c344f7c	Animal! (vulgar, curse word, used as an insult) / bastard / a**hole	\N	\N	2	2026-08-10 20:29:30.451208+00	2026-08-10 20:32:34.344992+00	f
ac803ca3-d498-4356-a18e-d50695661746	f80e888f-2e76-4793-8c91-ac52d096a198	stupid / dumb / foolish / silly / vain	\N	\N	1	2026-08-10 20:35:13.071929+00	2026-08-10 20:35:13.071929+00	f
10bebca0-42e8-4a8a-87de-6a98a493ac3f	abb29368-9103-40a9-9129-21a46b5faaac	[prefix used to show a greater intensity of description] / worthy of ... / -able / extremely / very / intensely / really	\N	\N	1	2026-08-10 20:40:28.890462+00	2026-08-10 20:40:28.890462+00	f
0daaf882-9b58-44c5-aeb9-c5199e5b1a7c	6fc2061a-3b75-412d-b254-9bf52841e07e	child / kid / children	\N	\N	2	2026-08-10 20:43:45.982943+00	2026-08-10 20:44:16.597856+00	f
732addc5-e5c5-4185-94ff-aa9a5fe5afb7	6fc2061a-3b75-412d-b254-9bf52841e07e	childish / immature	\N	\N	2	2026-08-10 20:43:46.968799+00	2026-08-10 20:44:17.790859+00	f
1e25b89a-01ac-4273-a856-fb2578345073	cba92e9d-4a24-4e95-acb8-29dcf64d157a	item / piece / slice / part / small thing	\N	\N	1	2026-08-10 21:35:34.323399+00	2026-08-10 21:35:34.323399+00	f
b5c714eb-f85f-4d59-86fa-25172b9eac89	cba92e9d-4a24-4e95-acb8-29dcf64d157a	[numerical classifier for small things]	\N	\N	1	2026-08-10 21:35:35.316055+00	2026-08-10 21:35:35.316055+00	f
5afbd857-1bca-475e-9610-a8ce21942444	24a36abd-8464-43dd-ba6a-2bece1be6436	restroom / bathroom / toilet / washroom / lavatory	\N	\N	9	2026-07-16 20:05:03.515639+00	2026-10-21 18:58:57.673419+00	t
ddf507b3-655a-4f7f-be60-50bd9fb198ec	be1cce81-a6ae-4ac4-8fcf-2a1cb6bfc61a	house / home	\N	\N	1	2026-08-10 21:58:48.307122+00	2026-08-10 21:58:48.307122+00	f
6df80793-de46-4a1e-8f37-0fd87b6a177c	1e3c57d9-3c25-40b5-aaef-b99fa2d59b5f	cook / chef (f)	\N	\N	2	2026-08-13 21:20:34.077399+00	2026-08-13 21:21:17.584148+00	f
d6a46bcf-b396-467e-8855-0370544e6911	859e75a5-3dbb-4e7b-af06-9eedc15da34e	bedroom	\N	\N	3	2026-08-10 21:59:56.770984+00	2026-08-10 22:01:12.199273+00	f
fb7bb9ed-6604-4252-8fa8-bc2e5444e525	8392d164-7665-4281-90a8-027383f81cbd	no / not / nah / nay	\N	\N	2	2026-08-13 17:37:43.715871+00	2026-10-18 21:03:18.440116+00	t
1c7cb6e1-a94d-4e6d-ae29-bf6a861089c5	fc970af0-2f72-4df6-9849-4307530c9106	living room	\N	\N	2	2026-08-10 22:02:50.177918+00	2026-08-10 22:03:59.803328+00	f
7821dc4a-6770-4d1c-a7ba-b40e3f0b4ca1	8fb6a817-c21b-429b-b970-2726b4237550	kitchen / household / cooking area	\N	\N	1	2026-08-10 22:07:22.438092+00	2026-08-10 22:07:22.438092+00	f
aadb5bbb-cc56-4acf-a4f3-49c50ef15b52	6de35ff3-d12d-4d60-9b02-949800ff2d1a	cute / pretty / attractive	\N	\N	3	2026-08-10 20:36:26.897264+00	2026-08-10 22:40:12.127402+00	f
d18eb380-6e19-4fb8-8349-11554509866c	8392d164-7665-4281-90a8-027383f81cbd	empty / blank / void / nothing / plain / naked	\N	\N	1	2026-08-13 17:37:44.968041+00	2026-08-13 17:37:44.968041+00	f
7c303118-db8c-4fb3-82db-304cdac779a7	ccf23259-8ebc-47f0-9fa8-527de997e05e	to be sorry / to be upset / to feel bad about (something) / to be unhappy	\N	\N	1	2026-08-13 17:44:47.332496+00	2026-08-13 17:44:47.332496+00	f
dfc292f7-92c5-4f8a-834b-c691d649c1a4	727b139b-5e70-47d0-8670-415de015a10d	a particle used at the end of a request sentence, compliment, or condolance	\N	\N	1	2026-08-13 17:47:46.812487+00	2026-08-13 17:47:46.812487+00	f
63312b81-1b72-43ad-871d-2a900431a0c3	2daecaf5-d183-4608-b7b8-ba9391b44882	to bathe / to immerse / to dip (oneself)	\N	\N	1	2026-08-13 21:00:40.45119+00	2026-08-13 21:00:40.45119+00	f
d60bff46-74e7-4844-8430-f075b4b8ea70	48dd4028-404b-4840-b371-20db8c723d5d	kitchen	\N	\N	3	2026-08-10 22:08:04.955469+00	2026-10-21 19:00:10.429996+00	f
705921cf-09c7-4a0a-8364-f54d76ad6767	b4218099-688e-4f9f-afdf-4c0a25c399c8	physician / medical doctor	\N	\N	2	2026-08-13 21:05:39.985507+00	2026-08-13 21:07:55.696606+00	f
9b4d4bff-68b0-402d-8d04-dc8c4fbab203	19b10317-b1d5-4bff-a60b-a8b8092e9746	policeman / cop / police	\N	\N	1	2026-08-13 21:09:06.197886+00	2026-08-13 21:09:06.197886+00	f
f608cc1d-8f4f-4fbf-992f-690ddd52c0d5	8cd84b04-7b31-4016-9f48-ddb37e1515d0	teacher / instructor	\N	\N	1	2026-08-13 21:10:08.209062+00	2026-08-13 21:10:08.209062+00	f
6c1234f6-1c07-417a-9b2c-fd06dc104131	38744c54-2c28-4ae0-83ff-e759e7a7e083	nurse	\N	\N	2	2026-08-13 21:11:08.470339+00	2026-08-13 21:11:49.469092+00	f
51745f0c-d582-4d29-a7cf-f94fce4a3423	38744c54-2c28-4ae0-83ff-e759e7a7e083	to nurse / to take care of / to look after / care for / to administer medical treatment	\N	\N	2	2026-08-13 21:11:09.968132+00	2026-08-13 21:11:50.853658+00	f
47269e8e-370d-4989-acd7-560dc4f52a3c	ea0deee5-3cd5-4060-981e-e3f17a8c1c11	engineer / machanic	\N	\N	1	2026-08-13 21:19:11.625559+00	2026-08-13 21:19:11.625559+00	f
be6a0139-db4f-44f7-af3b-1e28a7c567f9	3fe32973-ae23-411f-9b4e-79cf2e935d5c	cook / chef (m)	\N	\N	2	2026-08-13 21:19:50.279934+00	2026-08-13 21:21:41.538032+00	f
8f8c9bcf-bab4-46cf-a2be-c2592818c4b6	ccc577cb-53c3-47c2-a066-3ff8361e602b	soldier / military person	\N	\N	1	2026-08-13 21:30:32.157985+00	2026-08-13 21:30:32.157985+00	f
c2b6b591-d1b1-4b7a-a05e-c90473d800cc	5a11835f-a760-4aea-ac3a-86fa725b83b0	driver	\N	\N	2	2026-08-13 21:40:00.272293+00	2026-08-13 21:42:04.417405+00	f
76bfd309-572d-429d-8bd7-485811399c0d	bd063bb9-6305-430a-be6e-ac95efaa5d4a	to fly	\N	\N	1	2026-08-13 21:31:55.761899+00	2026-08-13 21:31:55.761899+00	f
f4355043-d9c1-4e90-9cf5-2335ad276fd1	7e7ab873-83b4-4d43-b2a4-62f413532c01	pilot / aviator / flyer	\N	\N	3	2026-08-13 21:31:08.096712+00	2026-08-13 21:32:09.924208+00	f
9d2d0351-4f3d-4b39-a031-9e0aaaa22e63	9a18696e-f313-4cab-971d-5c15f5dbfbfe	person / people / folk / person of...	\N	\N	1	2026-08-13 21:34:14.526394+00	2026-08-13 21:34:14.526394+00	f
1b4d1fd3-74a4-4c3d-8237-8e8b6035d436	bf7ac7da-f65c-47be-9586-02f1bcb9b0f2	(rice) farm / (grain) field	\N	\N	1	2026-08-13 21:35:08.111982+00	2026-08-13 21:35:08.111982+00	f
2eab4445-0aac-483a-b643-4edb1cf698a0	7c70fd7b-48b1-4d05-96dd-33ef031ba4f6	farmer / agriculturist / rice farmer	\N	\N	2	2026-08-13 21:33:22.452649+00	2026-08-13 21:35:30.551686+00	f
05163c86-7cff-49e6-bfef-5031281208da	6be951b9-dbf1-44b7-b56a-fa2307187306	news / a piece of information / a report or account of events	\N	\N	1	2026-08-13 21:38:42.139209+00	2026-08-13 21:38:42.139209+00	f
e5addb1d-264f-4f50-83c1-86d6d1497841	3973896a-d6b3-4f2f-9b26-3bfbec2379bb	journalist / reporter	\N	\N	2	2026-08-13 21:36:34.978273+00	2026-08-13 21:39:10.895933+00	f
2c28899b-f21d-4a72-aef4-701f2f73558f	49a5f398-3daa-4b0c-ac56-18fdba1c0552	to drive / to ride / to operate	\N	\N	1	2026-08-13 21:41:21.103903+00	2026-08-13 21:41:21.103903+00	f
3080bb06-0190-43c8-857e-616aca4509a6	5759908b-ef21-4bd3-ae32-ed339e2ba699	artist / performer	\N	\N	1	2026-08-13 21:43:04.427325+00	2026-08-13 21:43:04.427325+00	f
93ed680d-e3c5-4428-a8ec-ba83c68f0c13	477f9318-f50a-40a6-9783-3268ab1bfadf	lawyer /solicitor / attorney	\N	\N	1	2026-08-13 21:45:24.095102+00	2026-08-13 21:45:24.095102+00	f
b65e4fcf-82d4-45a2-b5f3-e5a0be1cf0fc	fde3c013-2d65-4da7-b974-eaf9d98f1912	case / lawsuit	\N	\N	1	2026-08-13 21:45:53.721222+00	2026-08-13 21:45:53.721222+00	f
68eb6144-5fdf-49da-a1e3-6418fb0a14e4	bdcab8d2-8902-4b65-b5d9-3002bb1a9be4	lawyer / solicitor / attorney	\N	\N	2	2026-08-13 21:18:32.543553+00	2026-08-13 21:46:31.087883+00	f
2bf9a14d-dcea-46b8-a8a1-c87481ac4423	0c3e698f-58d3-4fd7-bc7b-f75262fe2f2b	to stop / to eliminate / to extinguish / to put out / to vanquish / to switch off / to die / to pass away	\N	\N	1	2026-08-13 21:48:24.31968+00	2026-08-13 21:48:24.31968+00	f
1f688cf7-6415-4605-a62a-0da66d7a171a	6b126281-9e26-4168-87ce-94135fe23215	fire / blaze / flame	\N	\N	1	2026-08-13 21:49:21.069442+00	2026-08-13 21:49:21.069442+00	f
1b4d3a1f-0853-4b6e-9d7d-521b966e790d	d0063ff5-db66-4efb-ac12-35c9a844f1d2	firefighter	\N	\N	2	2026-08-13 21:12:50.666669+00	2026-08-13 21:49:51.689122+00	f
acfe0256-9fc8-4e4d-91f8-7cf340f62243	da85dbb8-974f-4dc8-855a-c21b63072ab2	building / house / structure	\N	\N	1	2026-08-13 21:52:16.692696+00	2026-08-13 21:52:16.692696+00	f
633feabe-50ec-481f-ba97-10677b7d6b29	85321d9d-a686-4968-b740-c320983a95cd	school	\N	\N	2	2026-08-13 21:51:28.436219+00	2026-08-13 21:52:47.440085+00	f
ed01edbb-5968-452b-89db-d8083653ee16	d768148a-7857-4d31-ab3b-0caa9eeaa4e0	hospital	\N	\N	2	2026-08-13 21:53:25.065933+00	2026-08-13 21:53:50.362506+00	f
97db3eb9-d2a2-403c-ba27-b19bb1163a2a	92fdf76b-7f97-4100-a716-fde66f5ada94	market	\N	\N	1	2026-08-13 21:54:59.853653+00	2026-08-13 21:54:59.853653+00	f
34272695-0e10-4a80-a0ec-ec54ef8beb0a	c96ddc49-1745-4b51-8cd8-5d12746260ff	to trade / to do business / to commerce / to buy and sell / to vend / to barter / to deal	\N	\N	1	2026-08-13 21:56:34.770066+00	2026-08-13 21:56:34.770066+00	f
0bf9393f-b9f3-4274-81df-0cb7c93e8284	b759b6ad-64cf-444f-8b95-02ac0eed0689	bank	\N	\N	1	2026-08-13 21:57:26.883609+00	2026-08-13 21:57:26.883609+00	f
1e9d4f3a-566c-41ae-b280-5fd5dcd106d7	d9e7292c-4934-43ec-9580-f01f96cccb18	oneself / himself / herself / yourself / themselves / itself...	\N	\N	2	2026-08-10 20:24:57.201536+00	2026-10-17 15:37:39.066297+00	t
3edfc07a-b087-4f58-83a6-398040a769d9	255c0967-4a9f-4c38-9dd9-464a22bc207c	this / this one / this thing	\N	\N	4	2026-07-30 20:59:50.615261+00	2026-10-18 16:35:09.645388+00	f
37d71b2f-8162-473d-8c59-dce81f6fa944	9ff8a9e0-bec1-4cbd-b8c3-caed94521af5	this / these	\N	\N	3	2026-08-10 21:37:41.123912+00	2026-10-20 20:11:42.81572+00	t
8c6a5464-aab1-4ae8-86ec-63267e3953c7	900ccedd-e323-4f7a-a056-55e4adf58296	field / lawn / yard / turf / park	\N	\N	1	2026-08-13 21:58:41.697036+00	2026-08-13 21:58:41.697036+00	f
63ac0065-4b9b-4ce5-afbf-16ff0070ee10	403e7a58-4766-4f3d-a22a-282b931b622f	fruit	\N	\N	1	2026-08-13 22:00:12.251715+00	2026-08-13 22:00:12.251715+00	f
23d6787a-3a1e-4f74-bc01-2c2bbe6e3cdc	b5f3e3fc-fe22-4164-be2c-692c73535b66	noodles / rice noodles	\N	Originally a Chinese loanword used to refer to rice noodles. Nowadays it is a standard Thai word used for noodles and noodle dishes.	2	2026-08-14 10:13:53.218119+00	2026-08-14 10:20:18.104869+00	f
9a8fe316-ae82-42aa-bab8-f6f6e17e0bdb	5451ce55-6719-4f84-806c-ad7de4e856d6	dessert / sweets / cake / candy	\N	\N	1	2026-08-14 10:21:59.107598+00	2026-08-14 10:21:59.107598+00	f
cf87797c-8fb0-4e83-8878-a9883479bb54	abce29ef-eee7-4cb8-8a6a-9df620b3a638	bread	\N	\N	1	2026-08-14 10:22:29.83642+00	2026-08-14 10:22:29.83642+00	f
c8a2657b-5597-489d-9dec-76855126d27a	29a760ea-7678-4e18-87a9-422c74d99b5f	bread	\N	\N	2	2026-08-14 10:21:21.446767+00	2026-08-14 10:22:53.355931+00	f
d0f19aec-605f-4966-a5ea-6669a19c2527	c3de5f67-9320-428a-80fb-ec29c8d0521f	egg / eggs	\N	\N	1	2026-08-14 10:23:35.453767+00	2026-08-14 10:23:35.453767+00	f
3f7a78cb-25a6-4e0f-ae8e-a9c5355cf6df	8ddac8f3-8f9c-470e-9db4-f64ce447b778	meat / flesh / body	\N	\N	1	2026-08-14 10:26:28.840899+00	2026-08-14 10:26:28.840899+00	f
233e765f-d505-485f-9493-69561826dbf9	8ddac8f3-8f9c-470e-9db4-f64ce447b778	beef / cow meat / meat of any animal	\N	\N	1	2026-08-14 10:26:30.379109+00	2026-08-14 10:26:30.379109+00	f
87d11085-640a-4e7a-beaa-03524c7bc4b0	8ddac8f3-8f9c-470e-9db4-f64ce447b778	weed / grass / pot / marijuana	\N	\N	1	2026-08-14 10:26:37.296017+00	2026-08-14 10:26:37.296017+00	f
468fbc53-32bd-4520-b2f1-8008a28cee75	fe7e562a-26ef-4976-961a-e12ef756e1ca	wind / air / breeze	\N	\N	2	2026-08-15 14:06:13.689871+00	2026-10-21 18:57:51.436832+00	t
bfcd6cf8-cdb5-4b13-83c8-589fe990039f	6e515c82-5fd6-45de-882e-430dd7e1e5f3	vegetables / greens	\N	\N	2	2026-08-14 10:30:18.926503+00	2026-08-14 10:30:38.737423+00	f
a8f6f028-18d9-4ad9-ad32-11c98345c4b6	560dcb92-4b56-4aea-aa6d-bd2c88a909a8	soup	\N	\N	1	2026-08-14 10:31:21.832943+00	2026-08-14 10:31:21.832943+00	f
14cc1566-9d89-4546-a524-b6921f1d83d9	faa58f48-ca8f-4e43-b969-49cce3b73fca	curry / soup / stew	\N	\N	1	2026-08-14 10:31:56.715399+00	2026-08-14 10:31:56.715399+00	f
5ff84097-1f0c-4042-8e3c-f0840ca08e36	39621dd3-6db3-4032-82e8-a8d11ded5f25	salad	\N	\N	1	2026-08-14 10:33:16.310662+00	2026-08-14 10:33:16.310662+00	f
9dfe36c4-884a-4258-af97-7489e2f85aee	bedeb7b5-2cce-40ca-bfcb-6e3c0dc2e4f4	sauce	\N	\N	1	2026-08-14 10:33:41.753958+00	2026-08-14 10:33:41.753958+00	f
a430bbb6-5d29-4a4e-b8f4-93bdc55200cb	6135fcc8-915f-440f-ac2c-91b3e0d8f335	salt	\N	\N	1	2026-08-14 10:34:38.668722+00	2026-08-14 10:34:38.668722+00	f
df50c61d-ffe8-4d07-833f-9c49672997b2	35b144dc-d804-4bc9-83b3-34aeae4baa29	sweet	\N	\N	1	2026-08-14 10:35:53.645135+00	2026-08-14 10:35:53.645135+00	f
ffb29b3f-78a8-4467-afd9-c67eeaf81326	35b144dc-d804-4bc9-83b3-34aeae4baa29	effortlessly / comfortably / pleasantly	\N	\N	1	2026-08-14 10:35:55.012066+00	2026-08-14 10:35:55.012066+00	f
1c9ad9a7-2417-401f-941a-744b96cba263	b7cdedbc-1fcc-45b3-8c86-80fa1857066b	sour / acidic	\N	\N	1	2026-08-14 10:36:29.397044+00	2026-08-14 10:36:29.397044+00	f
0f2776b0-80a8-4bf6-9b3b-a46749628ff9	fcb9503c-01e0-429f-80c1-654a72bedad7	salted / salty / saline	\N	\N	1	2026-08-14 10:37:02.26832+00	2026-08-14 10:37:02.26832+00	f
c1e61f84-0229-4ae1-85ac-5278c1300232	d9bb86fe-9951-42fb-900f-eae0a3d96c3c	coffee	\N	\N	1	2026-08-14 10:37:43.723969+00	2026-08-14 10:37:43.723969+00	f
925c9920-9b10-4d20-87b1-339b10fb6861	7d8895c1-7edf-420a-aab8-8d51b404930e	tea	\N	\N	1	2026-08-14 10:38:15.294312+00	2026-08-14 10:38:15.294312+00	f
c6a5a053-dcf3-41da-9a35-f5207882be59	7b640be7-135e-4289-a729-5a0e2e445e94	milk	\N	\N	1	2026-08-14 10:38:45.036273+00	2026-08-14 10:38:45.036273+00	f
eb56254d-bd94-45c5-ad41-73aeb2e204b0	7ee56eb3-3e57-46e0-85fb-fff5154d7a9e	all together / total / completely / all / all of it	\N	\N	1	2026-08-14 10:43:57.890264+00	2026-08-14 10:43:57.890264+00	f
9556d6bc-8fa4-414a-82e7-3325763f8e74	96aa3c78-0393-4294-bf76-3bf4d5fac3c6	crazy / delirious / raving mad / insane / mad / head over heals in love / infatuated with	\N	\N	1	2026-08-14 13:30:42.618881+00	2026-08-14 13:30:42.618881+00	f
4a61d420-f80c-4a89-8055-e39405de7d72	604bb439-ba32-406b-aa3f-84260c6c09b5	madly in love / love struck / crazy in love	\N	\N	2	2026-08-14 13:29:03.113505+00	2026-08-14 13:31:03.635721+00	f
f656be3a-3b62-4ef6-a963-e2447e74d555	74d1ff2f-6a82-4c66-aee1-ffdfed72c285	who	\N	\N	1	2026-08-16 17:12:20.888725+00	2026-08-16 17:12:20.888725+00	f
580d4ec2-363a-4e0e-81e0-da73cf2e7437	20481264-edc6-4a6f-a099-a5bdf95afcda	the two of us / we	\N	- <a href="tts:เรา">เรา</a> /rao/ - we / us<br>\n- <a href="tts:สอง">สอง</a> /sɔ̌ɔng/ - two<br>\n- <a href="tts:คน">คน</a> /khon/ - person / people (classifier for humans)<br>\n<br>Together it is used to emphasize or highlight the relationship or togetherness between two people.	5	2026-07-14 18:20:34.230164+00	2026-08-14 13:39:38.411463+00	f
3a7dd7ef-9787-491c-a0ae-34ca0dca62cc	a40c70c8-668b-4a77-a807-db0cdd406ce9	now / right now / at this moment	\N	\N	3	2026-08-15 13:50:01.571962+00	2026-08-15 13:51:48.491347+00	f
5d0949f1-eee8-429b-8504-d92d41fa6bb1	db53830d-4876-4c49-9b5e-0726ced22add	the two of them / those two	\N	\N	3	2026-08-14 13:36:06.190926+00	2026-08-14 13:41:44.929235+00	f
d7f9442d-8c71-4039-9b69-f06b832cad33	b9842cec-5abb-48b3-a9ed-11b58d6f3e32	lately / presently / these days / at this point in time / at this period / at this time	\N	\N	4	2026-08-14 13:32:28.402849+00	2026-08-14 13:42:20.92587+00	f
961ff0ac-b004-403a-9880-6101155cd234	9ef5520c-c541-448b-8ee8-e70e3186632f	skilled / talented / clever / very good (at something)	\N	\N	1	2026-08-14 13:48:31.803613+00	2026-08-14 13:48:31.803613+00	f
12e749ce-d90f-479c-ad9c-94a0ab2f5876	7f11e28f-e037-424e-9358-6cc9c05f3788	very good / well done / nice job / good job / amazingly done	\N	\N	2	2026-08-14 13:46:37.599815+00	2026-08-14 13:50:29.897553+00	f
8eca81d7-2e30-4a09-844d-ac1156378326	81f11a97-2a06-43a1-b139-dcdcfd226bd6	cold / cool	\N	\N	1	2026-08-14 14:14:18.034505+00	2026-08-14 14:14:18.034505+00	f
bcde6abd-ce22-48a2-bba9-708ac1026d65	f176ace5-67ae-44dd-9561-4742cce6bf8e	warm	\N	\N	1	2026-08-14 14:15:05.556389+00	2026-08-14 14:15:05.556389+00	f
419e0e73-28a5-4e4a-a269-fe371d4020a0	aa96e486-4760-41dd-b684-64b5c2aeb3de	sunlight / sunshine / sun rays of the sun	\N	\N	1	2026-08-14 14:16:20.043231+00	2026-08-14 14:16:20.043231+00	f
747ae5e6-9650-48ed-8e46-63f06640b6c0	8c06aac8-212d-41d5-b322-f02940eb3aac	degree	\N	\N	2	2026-08-14 14:17:14.986721+00	2026-08-14 14:17:21.956879+00	f
0aa7dc29-99a6-4c0e-a536-f4f8d89b1ca2	5a55868c-b39e-4baf-9e0c-5c7ebbdebdc3	season	\N	\N	2	2026-08-15 13:35:10.30518+00	2026-08-15 13:36:24.367724+00	f
4c3bd46b-368b-47ae-b4dd-ed62c29ee188	8c628bb8-5663-40af-96e0-90b11e0de454	summer / hot season	\N	\N	2	2026-08-15 13:36:15.940923+00	2026-08-15 13:36:56.221112+00	f
6335f6bf-1895-46d9-b829-8c5b7b3be063	a8a61388-96db-4247-b751-9a92b3171262	bright / strong (light) / instense (light)	\N	\N	1	2026-08-15 13:41:50.507072+00	2026-08-15 13:41:50.507072+00	f
56e2faac-97ec-49e9-a5ca-997204d30018	a1a9fc8f-76c4-462d-931c-1dbd19a0ba90	sunlight / sun / sunny	\N	\N	2	2026-08-15 13:40:55.205991+00	2026-08-15 13:42:10.331992+00	f
647e3ab5-bdd2-4dc8-afee-db4e33cf2142	e9a66638-e3e1-47b2-94bb-966a6d5bd507	rainy season	\N	\N	2	2026-08-15 13:46:41.02142+00	2026-08-15 13:47:08.86363+00	f
1cd97349-c086-495b-9277-c5f1ddd67808	7479ab9b-60c1-49c0-b23a-1c5a9cd71aa3	day	\N	\N	1	2026-08-15 13:52:58.390361+00	2026-08-15 13:52:58.390361+00	f
de51bd5a-ff34-40f2-8996-3751f7230f8d	8622a694-5162-4a57-8f86-f3286b57e197	winter / cold season / cool season	\N	\N	3	2026-08-15 13:48:23.470072+00	2026-08-15 13:49:08.061882+00	f
561acf33-a656-40fd-90e1-c466f2e6efae	8ddee23f-b052-42d9-9994-5233ebbe992d	when	\N	\N	1	2026-08-16 17:13:33.021933+00	2026-08-16 17:13:33.021933+00	f
e8352bf0-a0a8-450c-8249-2befec715637	475f92f4-71ac-48bc-9db6-e77487b1cfaa	every / each	\N	\N	3	2026-08-15 13:54:12.745856+00	2026-08-15 13:55:51.832109+00	f
3b75d690-99be-4300-80c8-7b7b4634aa67	91d1d450-7b80-4bd4-b7db-df23f5a4cc83	cloud	\N	\N	1	2026-08-15 14:00:32.657455+00	2026-08-15 14:00:32.657455+00	f
5093166e-5ae2-424c-a9cf-c93e4dd98488	a05aeac5-100e-4b2f-83c4-f6d298ba8f27	strong / powerful / hard / energetic / intense	\N	\N	1	2026-08-15 14:08:58.722271+00	2026-08-15 14:08:58.722271+00	f
97856fc7-2c18-4853-9e7b-331c61c59ed2	a05aeac5-100e-4b2f-83c4-f6d298ba8f27	power / strength / effort / exertion / energy	\N	\N	1	2026-08-15 14:09:00.071434+00	2026-08-15 14:09:00.071434+00	f
f37a977b-2a0a-4c87-892e-da46590ec635	f78c7df9-2a1f-4707-b65e-b0448f75726c	storm	\N	\N	1	2026-08-15 14:14:15.160893+00	2026-08-15 14:14:15.160893+00	f
4e1dfa17-9ecd-469d-a18e-c6c95478e0e4	d0335fac-b0ff-4cb9-9f19-9ffb107a9230	in the process of... / in the act of... / -ing / currently	\N	\N	1	2026-08-15 14:15:49.166858+00	2026-08-15 14:15:49.166858+00	f
00bf24a8-fda1-4a8c-8147-87bac8167a7f	09c47c5a-eb62-4f1a-b337-50dad38e1c13	last night	\N	\N	1	2026-08-15 14:18:19.054577+00	2026-08-15 14:18:19.054577+00	f
f19cec0c-bce5-4d38-b030-d0484e9f312e	2b6afd92-18af-40de-965e-aab665197694	loud / noisy	\N	\N	1	2026-08-15 14:19:44.294104+00	2026-08-15 14:19:44.294104+00	f
b11dd1d1-c4da-42af-b375-60a028e6df97	762e655e-6ed6-4f31-b316-4bf682026ff9	thunder	\N	\N	1	2026-08-15 14:20:29.35804+00	2026-08-15 14:20:29.35804+00	f
ab2e73e6-fe47-4a23-860b-96e7de4b8356	58c0c47c-3355-4fee-bffb-1e73dbb1a7be	sound / voice / noise / tone / volume	\N	\N	1	2026-08-15 14:22:21.326176+00	2026-08-15 14:22:21.326176+00	f
e6c238bb-ccf7-4a29-b6aa-59c3bd7f96e8	1a5ecce1-80dc-4a14-88df-942ff4a62043	to feel (pleased)	\N	\N	1	2026-08-15 14:24:31.678809+00	2026-08-15 14:24:31.678809+00	f
797486e1-c7bc-49a0-ae96-619faa342aa5	1a5ecce1-80dc-4a14-88df-942ff4a62043	to hear	\N	\N	1	2026-08-15 14:24:32.972608+00	2026-08-15 14:24:32.972608+00	f
967c9bae-3fff-423f-b260-d29cc29e3f5e	8ddee23f-b052-42d9-9994-5233ebbe992d	whenever / when	\N	\N	1	2026-08-16 17:13:34.598655+00	2026-08-16 17:13:34.598655+00	f
f7af7b54-553c-4c5d-bd24-fb673115288d	51b6ad89-0a33-4784-b2ea-d4c5af86a1ba	how / what	\N	\N	1	2026-08-16 17:14:13.505961+00	2026-08-16 17:14:13.505961+00	f
49f6f416-42eb-46b9-932f-2ed4d77b136e	b82b30dd-9052-4fed-9ca1-0d1eb366fe7a	how much / how many	\N	\N	1	2026-08-16 17:15:06.897018+00	2026-08-16 17:15:06.897018+00	f
fb8c574e-6602-430f-8289-7d0c7e97554c	3dd2e417-4877-4c1d-893b-338b2a3c8f69	hobby	\N	\N	1	2026-08-16 17:20:50.730915+00	2026-08-16 17:20:50.730915+00	f
0584ea39-c4b1-47d9-8963-1dae6bbc95fa	5dc33b7d-21dd-44c8-b2d2-1987ee008489	song	\N	\N	1	2026-08-16 17:21:55.937123+00	2026-08-16 17:21:55.937123+00	f
bb294a3b-e0ed-4f14-ae9a-4517de5dd620	36c85c81-c2a8-49f4-859a-842992feea1c	to sing	\N	\N	1	2026-08-16 17:24:01.986693+00	2026-08-16 17:24:01.986693+00	f
b43e0eaa-f909-4d98-95d3-60b346be2fb2	36c85c81-c2a8-49f4-859a-842992feea1c	to cry / to weep / to sob / to squeal	\N	\N	1	2026-08-16 17:24:03.205542+00	2026-08-16 17:24:03.205542+00	f
8e2d1280-bc07-4241-8a96-c99a0839872b	36c85c81-c2a8-49f4-859a-842992feea1c	to scream / to exclaim / to cry out / to yell / to roar	\N	\N	1	2026-08-16 17:24:04.362614+00	2026-08-16 17:24:04.362614+00	f
5cd3a598-b52e-4231-a17d-3071c73504e2	d3ee528a-e428-42ca-b99b-4c473391bc28	to read	\N	\N	1	2026-08-16 17:25:20.961927+00	2026-08-16 17:25:20.961927+00	f
e5f095e6-e855-47aa-9487-9d5607cba51b	57579ab7-9cfa-4595-8939-86e6e0e9a62c	shrimp / prawn / crayfish / lobster	\N	\N	3	2026-08-14 10:27:31.250849+00	2026-10-20 20:11:42.81572+00	t
381b1332-5448-4f91-a2c9-112e12e28a16	4f7fd2ab-b3e8-4b2a-95a8-70946b744d62	to photograph / to take a picture	\N	\N	1	2026-08-16 17:26:36.895882+00	2026-08-16 17:26:36.895882+00	f
0605344c-98bc-4c2e-b3ad-a9993c969788	d221915e-2334-4727-83d3-b8b8469bd992	picture / photo / photograph	\N	\N	1	2026-08-16 17:27:26.075443+00	2026-08-16 17:27:26.075443+00	f
47a85613-c7b9-44f2-852c-359ecf191e43	b9581999-883b-405a-80a3-0c259b65f220	to draw / to sketch	\N	\N	1	2026-08-16 17:28:12.13229+00	2026-08-16 17:28:12.13229+00	f
18344eff-4026-4e3f-bb81-1e176fa3bb27	898c2dc8-ea9c-4e26-a5ee-44cd11d3f651	to write	\N	\N	1	2026-08-16 17:28:49.274925+00	2026-08-16 17:28:49.274925+00	f
8b3f422b-42c5-4289-afcc-a6c97cab2645	e32ed40c-d42b-484e-9cd4-88ad7e2e7bd4	writer / author	\N	\N	2	2026-08-16 17:29:24.159525+00	2026-08-16 17:29:52.990636+00	f
4d1e2c7e-069f-44e4-94c3-495c531c7751	1f0b65f8-9b57-4203-b1a0-064091d2b2fa	a person who... / the one who... / -er / -or	\N	\N	1	2026-08-16 17:31:05.79833+00	2026-08-16 17:31:05.79833+00	f
bc40283a-9bf4-4915-bd7d-8d4ff6ddbc09	6d69ebb2-7490-4dea-a7c7-0c3db9db5a05	a reader	\N	\N	1	2026-08-16 17:31:52.086257+00	2026-08-16 17:31:52.086257+00	f
47b6a1b1-13e9-4648-aa33-4b91bd58c61d	5e392196-cb6a-4470-b667-a9687387f488	to teach / to instruct / to educate	\N	\N	1	2026-08-16 17:33:11.557397+00	2026-08-16 17:33:11.557397+00	f
4da53e3b-b463-47d5-8d1b-58aa84e2324e	b6ea7fb9-d76b-404a-b65b-d6c17bcdf1f2	shark	\N	\N	1	2026-08-25 12:08:41.608919+00	2026-08-25 12:08:41.608919+00	f
922b505f-3e36-40d3-aedf-a1a5411eaea3	af1824ed-826b-4cd0-bdfe-bed7ef4d5a29	any / some	\N	\N	2	2026-10-15 20:22:15.327929+00	2026-10-16 12:32:22.905863+00	t
489b874b-c307-46d3-af79-52a47ce9a365	50d9e884-42c5-4fb0-a074-a83fc9f14dc9	south / southern / South	\N	\N	3	2026-08-29 13:21:47.990915+00	2026-10-16 19:56:14.851999+00	t
e07e8558-1395-4231-9293-0d1ca660a540	08ca5790-20f4-4d73-bb6d-22f88dda3c7e	to praise / to compliment	\N	\N	1	2026-08-25 21:24:23.830001+00	2026-08-25 21:24:23.830001+00	f
cb91640e-c882-49d1-ab57-1c411ab35bbc	49422792-ad60-4acd-b001-d1efb0f795d0	chest / breast	\N	\N	1	2026-08-25 21:44:19.108043+00	2026-08-25 21:44:19.108043+00	f
2433a8a0-de7d-4a16-bc73-d7d0913f86f2	0b7c3567-7cb4-4cb9-a39b-c4cc6662b4d3	to break / to broke off	\N	\N	1	2026-08-25 21:45:06.75161+00	2026-08-25 21:45:06.75161+00	f
4442fa59-38e6-4224-98c8-a3d13980c228	92824a47-8927-45ff-a0c9-48c3a985dc2f	heartbroken / broken-hearted	\N	\N	2	2026-08-25 21:43:24.609449+00	2026-08-25 21:45:33.093355+00	f
2fc73293-51d3-4793-bc5a-48b481918dcf	6849aca8-c466-4fbc-b138-52ddd3f7b89a	to forget	\N	\N	1	2026-08-25 21:52:26.601244+00	2026-08-25 21:52:26.601244+00	f
b3e7054e-73a9-47e3-804c-6b45f10e7a7b	19e4b971-63ca-4095-898b-c4cf623c95cd	north / northern / North	\N	\N	2	2026-08-29 13:22:46.8791+00	2026-08-29 13:27:00.282024+00	f
0151f1f4-d289-4052-9301-2b35ceacbcdd	19e4b971-63ca-4095-898b-c4cf623c95cd	over / above / on top of	\N	\N	2	2026-08-29 13:22:48.817291+00	2026-08-29 13:27:01.633616+00	f
8bc76026-d1c8-49f6-937d-450b0a19eaba	f779a194-8534-43ee-8f7c-4d82b3e0da41	to breathe	\N	\N	2	2026-09-27 14:38:19.194793+00	2026-10-21 18:57:51.436832+00	t
cdfb8e86-fc58-4a44-8f79-40d76afb5956	50d9e884-42c5-4fb0-a074-a83fc9f14dc9	under / below / beneath / underneath	\N	\N	2	2026-08-29 13:21:50.678444+00	2026-08-29 13:27:27.345442+00	f
935ba807-d5e3-4053-87fd-50ead0be1161	770d7640-6ec4-4725-88ce-75422ba52934	cannot / can't / not able to	\N	Used after a verb to say you cannot or are unable to do something, or that something cannot be done.	5	2026-08-25 21:53:38.994196+00	2026-08-25 22:05:39.392643+00	f
1293b6fb-e7a3-43bd-ac63-c2ddd5cb0af9	770d7640-6ec4-4725-88ce-75422ba52934	do not / did not / didn't / is not / it is not the case that...	\N	Used before a verb or an adjective to correct an assumption.	3	2026-08-25 22:00:22.151304+00	2026-08-25 22:05:40.67878+00	f
ae402ba1-0066-4887-9d51-185c668fa809	bbcec409-43ff-4511-b61b-faf78c402d7a	to stop / to cease / to cancel	\N	\N	1	2026-08-25 22:07:56.326349+00	2026-08-25 22:07:56.326349+00	f
0d403033-b28f-4222-9970-b5275ea0a0c8	4ab06be7-3a07-4fc2-bd39-6951faf51495	to break up / to split up	\N	\N	2	2026-08-25 22:07:26.093032+00	2026-08-25 22:08:19.627346+00	f
a7d67bf6-db31-4ff2-986d-364c41dff159	f5f7b897-b68b-4c7e-a5e6-0f8a8d888c17	one skilled in... / one good at... / -er / -ist	\N	The term <i>นัก</i> (nak) is a common <b>prefix</b> in Thai that is used to indicate a person who specializes or is skilled in a particular field or activity. It is similar in function to adding <i>-er</i> or <i>-ist</i> to words in English.	2	2026-08-13 21:17:15.409521+00	2026-08-26 14:08:17.561754+00	f
3af3c502-8b70-49be-9aa8-6a41515cd1f4	42817683-e94f-4ee6-963e-53948d5ffd39	the Sun	\N	\N	1	2026-08-28 20:28:51.977169+00	2026-08-28 20:28:51.977169+00	f
3e66c159-b476-41c8-bd2b-73c780198705	64ff2c9d-9025-4242-89c7-7674863ec0d7	to go up / to rise / to increase	\N	\N	1	2026-08-28 20:29:28.056804+00	2026-08-28 20:29:28.056804+00	f
4e730728-94f2-4fcb-a5b7-0cef1c810846	3b810b5f-487e-4075-ad4b-f880f05ec64c	east / eastern / East	\N	\N	3	2026-08-29 13:23:37.264045+00	2026-08-29 13:27:49.135524+00	f
e12b7122-c41c-4903-9a87-c70b5a23af0f	d1d76cf8-c2fc-412b-afbd-61c8f6d57cb1	direction	\N	\N	1	2026-08-29 13:28:54.435895+00	2026-08-29 13:28:54.435895+00	f
ec86d86d-3151-472a-afde-bf10f69547ab	26926307-6634-4782-91a9-b1dcf0a17c48	West	\N	\N	2	2026-08-29 13:29:42.361911+00	2026-08-29 13:30:13.355409+00	f
1047da71-944f-440e-8d21-c1c609bbb55e	40d4c342-11b8-45f6-a521-40a35f8f81ac	sunrise	\N	\N	3	2026-08-28 20:27:40.047638+00	2026-08-28 20:34:23.730961+00	f
4fdca0b8-6103-4c35-b3f3-aa1d4e15f817	0acd53dd-4c30-41ac-91b2-42fc885b67bf	plane / aeroplane / aircraft	\N	\N	2	2026-09-26 19:06:46.568741+00	2026-09-26 19:07:10.159366+00	f
a77b79b6-3d8a-4c79-86ff-78b45ef0e13d	857f3837-516d-4504-91a3-da70e5635d3e	South	\N	\N	2	2026-08-29 13:30:47.644531+00	2026-08-29 13:31:13.5855+00	f
0a79cb69-fd23-47e4-af09-518bf778ba9c	6906b116-c0e3-4214-b12c-ab16469fb539	sunset	\N	\N	6	2026-08-28 20:30:44.205935+00	2026-08-29 13:26:37.454569+00	f
ebb07ff8-6fb9-4dc9-8e7c-e4ce3e1a5aae	6906b116-c0e3-4214-b12c-ab16469fb539	west / western / West	\N	\N	4	2026-08-28 20:32:34.358724+00	2026-08-29 13:26:39.063625+00	f
041f52e3-ba5c-411a-ab76-1512a76e3628	03d5d33d-bd08-47df-9487-84fb94fcd2f5	North	\N	\N	2	2026-08-29 13:31:58.038637+00	2026-08-29 13:32:19.882113+00	f
e2a70eed-700e-42db-b40d-d3bfe542d14c	e1725c7a-495e-4911-950e-bc567405429c	East	\N	\N	2	2026-08-29 13:32:59.33241+00	2026-08-29 13:33:32.08032+00	f
09f563f1-9c89-40e1-9585-3d2442cdad63	c7d03809-8ca0-40f1-8bbc-b1955df2c8ca	Chiang Mai	\N	\N	1	2026-08-29 14:54:03.832653+00	2026-08-29 14:54:03.832653+00	f
4e17a679-1072-496a-a809-ad8bf7f316d2	34105817-310c-4e9e-b3dc-6a04298f7244	football	\N	\N	1	2026-09-26 19:15:07.943844+00	2026-09-26 19:15:07.943844+00	f
b96d4e14-7959-4ec0-a438-dbbc52146aa9	67d797d2-a9fa-4add-973c-ef29eae96d0a	Bangkok	\N	\N	1	2026-08-29 14:56:21.220536+00	2026-08-29 14:56:21.220536+00	f
12a27f52-da0a-4c35-9e58-ad75b29ff3ed	d2ea691e-5ac4-4b9c-b549-c6ed6dbe9e84	Bangkok	\N	This is an abbreviated version of the Thai capital city.	3	2026-08-29 14:55:28.700398+00	2026-08-29 14:56:47.091267+00	f
0668ab57-ce6c-4491-abc5-2fc5fd2b475a	91ce6460-efcc-4620-871e-c094927d59c7	abbreviation symbol	\N	Used to show that the word or phrase is abbreviated or shortened.	2	2026-08-29 14:51:01.72637+00	2026-08-29 14:57:24.654714+00	f
f2d9f527-1d4b-47ba-b508-7aa383844b34	727527d8-97a8-4e67-9ad5-325348b1e77c	table / desk	\N	\N	1	2026-08-29 15:14:28.286161+00	2026-08-29 15:14:28.286161+00	f
1ddb5bae-2b46-469c-8498-72bc287ede38	2a42f942-08be-4ca3-8ae3-53bb2147b678	chair / seat / stool	\N	\N	1	2026-08-29 15:15:06.913446+00	2026-08-29 15:15:06.913446+00	f
4c64adcf-9101-4c7c-9ac4-3734ed01ec1b	feb8224e-a566-49df-bf3b-a6370922b6f7	bed	\N	\N	1	2026-08-29 15:15:38.572322+00	2026-08-29 15:15:38.572322+00	f
b35ad025-eec6-4a18-a9d4-3391c66a1c74	2dee2eaf-faa9-487b-ac98-72e0e59cf053	sofa / couch	\N	\N	1	2026-08-29 15:16:21.206496+00	2026-08-29 15:16:21.206496+00	f
cd43a762-b13a-4dde-850c-828ad2f016a8	c35b01dd-b2b7-4515-ae50-c471f7818b56	bike / bicycle/ cycle	\N	\N	1	2026-09-26 19:01:45.985949+00	2026-09-26 19:01:45.985949+00	f
57ba6512-e2eb-4aa5-8fcd-9a422c24a704	180e035e-1ff1-4de3-a986-d6ff831ab424	temple	\N	\N	1	2026-09-26 21:47:37.078563+00	2026-09-26 21:47:37.078563+00	f
1401aef0-1ae3-4084-9a51-c5179172c676	5c0d99f5-aed7-42e5-9c69-6d83090e872a	cold (sickness) / common cold	\N	\N	2	2026-09-26 21:49:20.318894+00	2026-09-26 21:49:42.341189+00	f
3bbadd09-d6d7-4bc0-94c0-85ed8d568e75	6480766d-cadd-4687-a2a3-a8d89331d1a1	to recover / to get well / to be cured	\N	\N	1	2026-09-27 14:40:26.893988+00	2026-09-27 14:40:26.893988+00	f
6b0bd3bf-a87a-4c2c-a368-731fba2d33e0	b4f4037c-c822-42d5-a19a-6bfc363e1d9d	need / have to / must	\N	\N	1	2026-09-27 16:28:39.783379+00	2026-09-27 16:28:39.783379+00	f
0195b084-4e4e-4fa5-8a98-4dd556bca0c7	5ef46ae2-d606-4490-b12a-46974df4ab59	to care about / to worry about / to be concerned about	\N	\N	1	2026-09-27 16:29:51.513247+00	2026-09-27 16:29:51.513247+00	f
a0efafd4-278d-47e9-97a3-2ecaaf659996	d95e0d9c-07bb-49f2-b3a4-4182bef0ae4d	to let / to agree / to consent / to allow / to accept	\N	\N	1	2026-09-30 12:23:50.246982+00	2026-09-30 12:23:50.246982+00	f
5272cce6-80c2-4d99-b682-bf19869bfe9d	ba8d1ff1-ce3d-4481-b81c-446f19680a44	when / at the time / at / on (date)	\N	Used to indicate a time period.	2	2026-10-01 19:09:26.672873+00	2026-10-01 19:10:03.411981+00	f
e80811e8-c0c9-4795-836c-b359b1b801b5	009c7518-92b5-4e24-b20b-f14254180839	the day before / yesterday	\N	\N	1	2026-10-01 19:11:28.227908+00	2026-10-01 19:11:28.227908+00	f
2455b617-384a-4f1e-8c1e-87589a8eeb76	cf9be178-c1d9-44d9-827b-8286f13db35c	yesterday	\N	\N	2	2026-10-01 19:08:43.418268+00	2026-10-01 19:11:54.973902+00	f
c5b32d6e-0d52-46d5-9db0-017c2e667c63	db231ab5-5dd3-48d3-a071-dd97e7700347	the next day / tomorrow / the following day	\N	\N	1	2026-10-01 19:13:26.129485+00	2026-10-01 19:13:26.129485+00	f
8ed0925f-7015-4144-ba8a-75e205b4e115	e940c2ab-834a-4982-b3f6-bc310901cee2	a word used to get someone's attention - hey you!	\N	\N	1	2026-10-01 19:16:29.106746+00	2026-10-01 19:16:29.106746+00	f
075440e0-f939-4e04-a4fa-9b680351f6ba	e940c2ab-834a-4982-b3f6-bc310901cee2	here	\N	\N	1	2026-10-01 19:16:30.75966+00	2026-10-01 19:16:30.75966+00	f
9bae4d87-760e-4163-8a5d-cac95b58fafa	e7133f54-4994-414d-bf76-0ae0ddea73ba	Nanon (name)	\N	\N	2	2026-10-14 08:15:36.955266+00	2026-10-14 08:17:43.323835+00	f
5a269d08-ee8b-4772-803a-fcfd41d0ddd9	55f45f57-9a77-4f3e-9dbd-018e206be628	what / something / anything	\N	this is a shortened, colloquial version of <a href="tts:อะไร">อะไร</a>.	3	2026-08-25 12:40:15.761398+00	2026-10-16 12:29:00.472469+00	t
a069f28c-c631-437b-a5a7-63507414674a	9e7234b8-8ba0-49a9-bf97-32e90a8e1b96	heart / mind / soul / spirit / core	\N	\N	2	2026-08-25 12:36:42.365404+00	2026-10-16 12:32:22.905863+00	t
6c6d90c2-c302-427c-8f13-6b5ad646a4e3	bf863096-53ad-4de5-b2b8-4e89b4089fcb	correct / indeed / to be that way / to be so	\N	\N	2	2026-07-11 23:48:52.918738+00	2026-10-16 12:32:22.905863+00	t
05814f0b-5390-4b98-b689-ae1ed953620b	7e3e114a-8cfd-4fc1-9344-ada5076b1ac5	no / not	\N	Used to negate <strong>verbs</strong> or <strong>adjectives</strong>.	2	2026-07-11 23:49:57.171103+00	2026-10-16 12:32:22.905863+00	t
3b583729-4f78-4500-8f8e-5233f27a16be	f7f3e0c2-f79e-4b96-a794-681e60f620cc	thank you	\N	Used to express gratitude.	4	2026-07-11 17:17:04.398907+00	2026-10-16 12:32:22.905863+00	t
9a823d89-75e7-42fc-b659-0cc512db39eb	775a27be-b2c3-4073-9117-e5562bdfca0f	polite ending particle (f)	\N	<p>A polite ending particle, primarily used by <b>female speakers</b> at the end of a sentence to show <b>politeness</b> and <b>respect</b>.	3	2026-07-11 16:18:57.366328+00	2026-10-16 12:32:22.905863+00	t
f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	fdfb1930-06b3-4603-bb03-71f4158f53f7	polite ending particle (m)	\N	<p>A polite ending particle primarily used by <b>male speakers</b> at the end of a sentence to show <b>politness</b> and <b>respect</b>.</p>	5	2026-07-11 17:04:53.04164+00	2026-10-16 12:32:22.905863+00	t
f2d4f534-90e1-4708-9f49-e00cd5c14176	76e44c2c-7bdc-461f-823f-d9baf205cace	no / not / incorrect / to not be that way / to not be so	\N	<p>It literally means "not yes" and is used to negate <strong>nouns</strong> and <strong>statements of identity</strong>.</p>	3	2026-07-11 23:51:51.150773+00	2026-10-16 12:32:22.905863+00	t
4413b365-83e2-4613-bfca-bda6c28d576e	2ab06701-4337-4b4b-b5f8-ea16c6efc7e9	what / how	\N	\N	2	2026-07-12 19:10:14.585061+00	2026-10-16 12:32:22.905863+00	t
87e4edd9-7f2b-4759-8390-d0ed78320da3	ad02a37f-2b44-48a2-9315-6716d00d9602	soon / shortly / in a moment	\N	\N	2	2026-07-18 00:19:07.1591+00	2026-10-16 12:32:22.905863+00	t
ac844730-3e6b-4e47-8348-645efbda82b3	fa1f01bc-71af-4121-bc84-39d0938e1778	to meet (someone) / to see (someone) / to encounter	\N	\N	2	2026-07-18 00:21:02.444708+00	2026-10-16 12:32:22.905863+00	t
c1372afb-7ab7-4fc4-b58f-1477339b6c87	091ff622-7aac-4249-acd8-5815086a3c73	[a word used to imply a tentative speculation of a plan or course of action in the near future]	\N	\N	2	2026-07-18 00:28:36.587326+00	2026-10-16 12:32:22.905863+00	t
c0f55cd4-fc31-46b6-8730-93e076a2dd73	f547e810-8f59-432b-b0a1-1032ba0a029a	thanks	\N	\N	5	2026-07-18 00:32:55.981816+00	2026-10-16 12:32:22.905863+00	t
701dc331-2b55-4825-84d8-e916cd741585	486aa82c-9eaa-4da1-b016-4e828c045aa2	hi / hey / hello	\N	Informal, shortened way to say <a href="tts:สวัสดี">สวัสดี</a> /sà-wàt-dee/.	3	2026-10-15 20:20:19.54807+00	2026-10-16 12:32:22.905863+00	t
293f366c-7f90-4eeb-ba0f-28f4be87b591	d2a167e4-2e76-40b9-ba89-809aa67115fa	[old / literary usage] to repay / reciprocate / respond / return (something)	\N	This is an old / literary usage of the word. It is rarely used on it's own in modern Thai. It is mainly encountered in words like <a href="tts:ขอบคุณ">ขอบคุณ</a> /kòp kun/ (thank you) or <a href="tts:ขอบใจ">ขอบใจ</a> /kòp jai/ (thanks) where it is historically related to the idea of responding, reciprocating, or acknowledging something.	3	2026-08-25 12:34:22.326155+00	2026-10-16 12:32:22.905863+00	t
12470fe5-2259-4287-af22-75b95583d8c1	99192548-1363-43f5-896c-46e1c799ae10	from	\N	\N	2	2026-10-16 13:58:25.784657+00	2026-10-16 14:19:09.874404+00	t
8bede74d-a838-42fc-b8b8-df98c5450388	d0d72e11-bc02-4724-9840-4f32ae4a5bf5	Thailand	\N	\N	3	2026-10-16 13:59:06.91707+00	2026-10-16 14:19:09.874404+00	t
cade8788-e7b3-4030-9ca9-f0852bcdf3c7	9b7056f0-2f18-413c-bb9e-686647c7244b	country / nation / state	\N	\N	2	2026-10-16 14:04:40.992492+00	2026-10-16 14:19:09.874404+00	t
e650a236-b9bb-440f-bb62-ade8d1a185b5	1e1906c9-3538-402b-9350-d1bfc5c44e6b	18	\N	\N	2	2026-10-16 14:09:19.68315+00	2026-10-16 14:19:09.874404+00	t
c6e0613c-702b-43fd-a771-e29dbb609752	19ecb14c-984c-4131-823c-cf11e479a28d	age / aged / is (X) years old / has an age of...	\N	\N	2	2026-10-16 14:08:34.133514+00	2026-10-16 14:19:09.874404+00	t
f1296ab1-67b8-47cc-84d8-28168c1fc314	4a2f5314-d1c9-4aea-9a36-c33b709038a9	Ice (name)	\N	\N	2	2026-07-14 14:50:03.556211+00	2026-10-16 14:19:09.874404+00	t
38ecd1a2-8859-4a50-b4a3-591b2dfc2200	5cc1c57b-7e0a-400d-a5ae-d27fd9fda0fd	25	\N	\N	2	2026-10-16 14:15:17.09179+00	2026-10-16 14:19:09.874404+00	t
edf913ba-22f6-4904-b40d-c4983fe8d612	ba90731d-0b43-4be2-9999-dff47199173b	yellow	\N	\N	2	2026-08-07 12:47:36.153053+00	2026-10-16 14:28:39.645497+00	t
b123d09c-483f-4526-8b4d-768545638a16	485d3d23-27bf-4a42-a82b-bcb580766152	green	\N	\N	2	2026-08-07 12:48:32.286406+00	2026-10-16 14:28:39.645497+00	t
dfdc0f54-6c73-4829-9f30-ac88090a40fd	bd55fd96-9056-47b6-aa12-26db8df4abd7	orange (colour)	\N	\N	2	2026-08-07 12:50:22.233499+00	2026-10-16 14:28:39.645497+00	t
91346b4d-d856-4abc-8fc5-6cde4cf0ca70	23471d9e-8d9e-4e15-9dce-a8c100da742e	pink	\N	\N	2	2026-08-07 12:50:53.319055+00	2026-10-16 14:28:39.645497+00	t
40c45244-0d21-4323-8772-e864d93e718c	57cd28e9-243c-4f9e-b9de-2d371a9df21f	purple / violet	\N	\N	2	2026-08-07 12:51:36.303512+00	2026-10-16 14:28:39.645497+00	t
7631b303-96d0-4acc-b5d8-b2e41c385a10	8e04fc19-a89f-4a3f-a078-8a23c94b06fe	white / light coloured	\N	\N	2	2026-08-07 12:52:14.900686+00	2026-10-16 14:28:39.645497+00	t
5a05ed04-6464-4066-9992-ccabee686f31	f8dd1da0-0c0b-4e54-9a00-b226e4c7e776	black / dark coloured	\N	\N	2	2026-08-07 12:52:56.65702+00	2026-10-16 14:28:39.645497+00	t
9455b556-fad2-48ae-9037-fd465ce02600	0dcca71f-6b32-4c32-8ce6-2a01e8d7e1c6	brown	\N	\N	2	2026-08-07 12:53:45.035439+00	2026-10-16 14:28:39.645497+00	t
8c04f298-85d0-4b08-b4cd-afa9e50952b8	1ff423b9-21c8-4dd5-b02c-6daf1607cf6d	ten / 10	\N	\N	2	2026-08-04 20:33:16.396488+00	2026-10-16 14:28:53.107654+00	t
1986d5b4-6d99-4699-af05-3947a66cfec5	4e6b7fa7-2142-4ec2-b491-95024cd868d2	Sunday	\N	\N	2	2026-10-16 19:34:01.821645+00	2026-10-16 19:38:16.489003+00	t
3466aa28-3424-475f-afec-e2d080690e6b	e4fabcf8-95fe-46f2-8351-daecf18a220d	Monday	\N	\N	2	2026-10-16 19:30:02.93302+00	2026-10-16 19:38:16.489003+00	t
65b6a72b-7b47-4c20-b6b0-9cf90a0d5166	bafe3349-e3c2-46a1-8807-0cb4edc22270	Friday	\N	\N	2	2026-10-16 19:33:02.379091+00	2026-10-16 19:38:16.489003+00	t
b701d407-8dc5-4f1a-bf1c-9e74a9ad3641	d1473c6c-d644-48b6-b98c-57e2ebe23941	Thursday	\N	\N	2	2026-10-16 19:32:29.725438+00	2026-10-16 19:38:16.489003+00	t
d9acfed6-742b-4f18-ac94-4eed3e340e18	d9c63562-177c-4ccb-b98c-e7f3d6faad4c	Tuesday	\N	\N	2	2026-10-16 19:31:06.698898+00	2026-10-16 19:38:16.489003+00	t
de83260d-64d5-45d1-83cd-c160e1ed064f	063f06e4-f7a4-4a27-9d45-4da9cc3a4380	Saturday	\N	\N	2	2026-10-16 19:33:30.066149+00	2026-10-16 19:38:16.489003+00	t
e1124488-6563-4d71-8cdd-08d082f0a16f	e1fca6fd-69ca-4f18-bfba-6cd24e217302	Wednesday	\N	\N	2	2026-10-16 19:31:56.920611+00	2026-10-16 19:38:16.489003+00	t
4ca2a429-fb37-4451-8f35-55b8dac5870d	3043307b-62d5-447a-8d24-db4bb4743cb3	France / French	\N	\N	1	2026-10-16 19:49:15.463747+00	2026-10-16 19:49:15.463747+00	f
578e7289-cded-4440-bb01-f0f023404bcd	b9d6ef73-87f4-4622-a0ca-8975c7e285d8	England	\N	\N	3	2026-10-16 14:00:30.430606+00	2026-10-16 19:50:26.525191+00	t
e9a02f32-a0d2-41e3-af8c-bf5376555acb	c1e342e0-adbd-4a08-ad82-a4cfe224a8ef	a question particle / ...or?	\N	A word used at the end of a sentence to turn it into a question, usually when the answer is presumed. In english it would be translated as '...or?'.\n\nThis is an aleternative, informal form of <a href="tts:เหรอ">เหรอ</a>.	3	2026-10-17 12:32:12.870362+00	2026-10-17 12:36:04.318722+00	f
943c02f6-8ea7-44db-8839-7e2b7fb4a23e	a110aa30-ed86-40a6-a252-d9f30fddde99	question particle / ...or?	\N	Qolloquial shortening of <a href="tts:หรือ">หรือ</a>.	2	2026-10-17 13:37:40.041282+00	2026-10-17 13:39:53.407566+00	f
5b25c84c-697d-4714-b656-a08ac962fe05	d32195d9-5c0e-4a42-aa0d-c221198dc682	South Korea	\N	\N	3	2026-10-16 19:45:12.34361+00	2026-10-16 19:56:14.851999+00	t
afe8df22-3d3a-400b-a72f-bcd59da305f5	09b6eb0d-7d49-4712-8d85-758795519e4e	China / People's Republic of China	\N	\N	3	2026-10-16 19:42:25.431373+00	2026-10-16 19:56:14.851999+00	t
e35c1fbd-62c7-46a6-8621-d56f36cbdf6e	b5ddc60a-8305-490b-b478-9ab8c275b06b	France	\N	\N	2	2026-10-16 19:49:52.471132+00	2026-10-16 19:56:14.851999+00	t
ecfabf83-d249-4b0d-afa0-6d35db92ed4c	9b027b0f-d749-404a-87ee-80bee9ab399c	Japan	\N	\N	3	2026-10-16 19:47:09.68512+00	2026-10-16 19:56:14.851999+00	t
f9b39ba3-cd8e-4fce-898d-7f588a0933cb	dfe68623-c6c2-4b6b-a7ec-afb194fd3e1f	United States of America / USA	\N	\N	4	2026-10-16 19:52:12.146521+00	2026-10-16 19:56:14.851999+00	t
8c6fb55b-57a9-4cb4-9335-68100a86a829	7b5cc78a-4ac7-4e89-accf-1942df071e4b	Korea / Korean	\N	\N	2	2026-10-16 19:44:05.840897+00	2026-10-16 19:56:14.851999+00	t
c3c73fdd-6368-4321-b707-abb89dd0baf5	66340e0d-f59b-43f3-8f07-ccda72b770ea	China / Chinese	\N	\N	2	2026-10-16 19:41:48.588679+00	2026-10-16 19:56:14.851999+00	t
0673ee83-9777-4ffe-8510-2ba8a764e45d	dce1ce56-5e2b-46e9-ad8c-2509acbd6e89	Japan / Japanese	\N	\N	3	2026-10-16 19:46:46.898912+00	2026-10-16 19:56:14.851999+00	t
3380c6dc-46aa-42aa-b778-f0efbf2f7356	9920bdf8-018c-43ba-bd0e-7fb5ca0a4652	America	\N	\N	2	2026-10-16 19:55:30.232415+00	2026-10-16 19:56:14.851999+00	t
37ba74b9-d5fa-4733-890f-9c82a1a1c488	b1a3a77b-b69e-40e9-9ee6-37c11b890daf	United States / a united group of states	\N	\N	2	2026-10-16 19:54:08.225556+00	2026-10-16 19:56:14.851999+00	t
8345e74c-7155-4c13-99b6-6d1ced3ce2a0	48be3888-a33f-455a-a8e4-12d51fe5c185	to marry / to get married	\N	\N	2	2026-08-15 13:30:48.452674+00	2026-10-17 13:44:55.211319+00	f
6d60c386-8d73-4b01-90a5-cd2469fdae68	80965892-6c3d-459b-925e-dc5bbbf9453f	small / a little / a bit	\N	\N	1	2026-10-17 14:11:18.084925+00	2026-10-17 14:11:18.084925+00	f
80707627-22da-46f0-b417-6a1c4d192340	1f284207-3b06-4bed-8590-1a96168c7302	medium / moderate / intermediate / average	\N	\N	1	2026-10-17 14:14:31.301827+00	2026-10-17 14:14:31.301827+00	f
464f8633-9f89-4f60-a6f4-ff1e511a68e1	d48f4442-f11d-444b-8123-818a2b490126	ready / prepared / set	\N	\N	2	2026-10-17 12:17:32.08307+00	2026-10-18 21:05:16.381044+00	t
ff9e7876-1f99-4543-848c-a6167792cebc	d7c059e1-a239-4486-9fe2-fe68dae51656	chilli	\N	\N	1	2026-10-17 15:15:15.006582+00	2026-10-17 15:15:15.006582+00	f
fcd2a08a-880e-4e04-9a77-9c1e50284ee8	c6667cf7-dcd6-4443-9440-f2a030e35f2f	to add / to put in / to apply	\N	\N	2	2026-10-17 15:14:47.802494+00	2026-10-17 15:16:22.230042+00	f
13b1da01-ec1a-4389-a8de-39188da2a830	c6667cf7-dcd6-4443-9440-f2a030e35f2f	to put on / to wear	\N	\N	1	2026-10-17 15:16:23.566667+00	2026-10-17 15:16:23.566667+00	f
98b25819-0a67-4177-a051-2b36ac7ad75f	19cb5b7f-730d-4e56-a576-77087066b783	ever / once / used to / before	\N	\N	2	2026-10-17 15:33:11.329921+00	2026-10-17 15:37:39.066297+00	t
c0cb144c-8745-481d-81f6-907a6d55acc5	16592df5-9c44-4fb1-a297-830c11da7585	as / that	\N	\N	3	2026-07-14 15:00:26.977343+00	2026-10-17 15:37:39.066297+00	t
b44d3b6f-1986-4832-93bc-5c4d0148d578	da5bee71-61a5-44cf-bec0-09ce8850bb19	to know (a person) / to be acquainted with	\N	\N	4	2026-07-14 15:32:25.560774+00	2026-10-17 15:37:39.066297+00	t
0656b9ed-e0b7-43eb-892e-e1a3588f81b6	5dab1535-8afc-4dc2-9119-b5a62afa53a1	(to be) happy /  (to be) glad	\N	- <a href="tts:ยิน">ยิน</a> /yin/ — to hear / to feel good<br>\n- <a href="tts:ดี">ดี</a> /dii/ — good / well / fine / nice<br>	3	2026-07-14 15:29:07.018296+00	2026-10-17 15:37:39.066297+00	t
34ab0b16-7b22-4c14-bb8d-56916acd1730	b9a7384a-1711-40d9-894a-441824cbbe35	to / for / that	\N	\N	3	2026-07-14 15:30:54.484685+00	2026-10-17 15:37:39.066297+00	t
4c70c637-dd58-4d54-9928-127b049a7556	e797b5fd-3fd1-4018-9339-3ab88558e8c6	true / real / actually	\N	\N	2	2026-10-17 12:26:17.135543+00	2026-10-17 15:59:52.644103+00	t
380b1879-2aed-4aba-ad15-f2d428498779	3798e62b-1e9a-479e-80be-e0e35e7d9009	to translate / interpret / decode	\N	\N	2	2026-10-17 15:46:53.368795+00	2026-10-17 15:59:52.644103+00	t
559e715f-2361-4379-a466-77d6d1209206	c9f5bed4-ea05-4e0f-a012-2ed5bcb8aa19	repetition character	\N	<p>A repetition character is used to indicate a repetition of the previous word or phrase.</p>\n<p>This can be used for <strong>emphasizing words</strong>, <strong>indicating plurality</strong>, or <strong>showing repetition of an action</strong>.</p>	2	2026-07-12 15:36:39.821859+00	2026-10-17 15:59:52.644103+00	t
c69149cd-f270-457a-bc70-031f45e618ac	889b4685-fdaf-4e10-877b-e8cd233cc05e	time / occasion	\N	\N	2	2026-10-17 15:55:26.921318+00	2026-10-17 15:59:52.644103+00	t
19a58277-caa3-4321-96b7-3e7aa6907b09	0c92f37b-1583-4678-bac5-70c066d60cff	younger sibling / younger brother / younger sister / junior / younger friend / younger colleague	\N	\N	4	2026-07-19 14:20:04.380507+00	2026-10-17 16:12:56.097975+00	t
64316739-323d-4502-a488-4d521e1d348e	3ef20484-b5b7-4f38-88a2-23d65c202cf2	mother / mom / mum	\N	\N	2	2026-08-08 22:22:19.006611+00	2026-10-17 16:12:56.097975+00	t
06b45d48-ea2d-4425-844d-d0253be80074	22d98275-ce41-4fc6-9319-5cf8a0708560	father / dad	\N	\N	2	2026-08-08 22:23:58.067678+00	2026-10-17 16:12:56.097975+00	t
1820d13e-7bae-4b15-a4cc-4d728c596555	1ef84cc6-22c9-4cbd-813f-d72f6ad8f198	parents / mom & dad	\N	\N	3	2026-08-08 22:22:56.084536+00	2026-10-17 16:12:56.097975+00	t
c431b8ec-20aa-40eb-b3e5-729d6a886733	7d3bea74-57da-4498-896a-b5707dc56b4f	to stand (up) / to stand	verb	\N	1	2026-10-18 16:52:27.623516+00	2026-10-18 16:52:27.623516+00	f
9222e799-c738-48b4-908e-01e9924e191b	470f1d34-36ac-47e1-83ec-0467fba6b243	to cook	\N	\N	2	2026-10-18 16:55:12.248553+00	2026-10-18 16:55:54.362927+00	f
cbf6f3e1-8e76-4cc3-8e96-3f4b39f57071	75b1ba28-4b47-4f85-9c1d-0eda94988b6b	to wash / to clean / to rinse	\N	\N	1	2026-10-18 16:56:47.945611+00	2026-10-18 16:56:47.945611+00	f
c6b97f6b-a639-46c9-8d06-888e30b02312	b5f1cb58-5aa0-4126-9038-89848aedb638	to be aware / to be conscious / self consciousness / self reflection	\N	\N	1	2026-10-18 16:59:58.509451+00	2026-10-18 16:59:58.509451+00	f
74519478-f9b1-4353-bda2-3c596771fc4f	06ba1d68-aa30-4609-9974-7ad73ee94e37	to meet (someone) / to see someone by appointment / rendezvous	\N	\N	1	2026-10-18 17:03:59.954652+00	2026-10-18 17:03:59.954652+00	f
de962d7a-7088-4df8-850b-025e119a814a	06ba1d68-aa30-4609-9974-7ad73ee94e37	to meet / to find / to locate / to encounter / to discover	\N	\N	1	2026-10-18 17:04:01.57122+00	2026-10-18 17:04:01.57122+00	f
f6748361-df91-42b5-a6a2-48ff7cd4ecb6	25da37b6-f226-45f4-93a3-c0a685391b64	to put down / tos et down / to place	\N	\N	1	2026-10-18 17:04:43.730695+00	2026-10-18 17:04:43.730695+00	f
0f5a81d8-cf02-49b2-8a89-6dc40b94a6fc	ad278f47-f5dd-44e4-bfbe-af26bfc44d85	to fall (down) / to drop / fall	\N	\N	1	2026-10-18 17:05:21.891431+00	2026-10-18 17:05:21.891431+00	f
7e98f9c4-2d5b-442a-abe2-9509f8fa5e35	897a72d1-2488-418c-8ac4-40bb1c1e16d4	to sing (a song)	\N	\N	2	2026-08-16 17:22:29.159043+00	2026-10-18 17:06:14.303106+00	f
08d8c482-f0b7-49f2-8941-831f95e73716	d2f79085-39d8-43fa-a2eb-6c35878e5f19	to dance	\N	\N	1	2026-10-18 17:06:39.302004+00	2026-10-18 17:06:39.302004+00	f
c6d0deec-4fb5-4efc-8f43-5257e6ff4d4f	80c303ac-76a7-40eb-8377-711eb9f117a9	to laugh	\N	\N	2	2026-10-18 17:07:21.592676+00	2026-10-18 17:07:51.590819+00	f
81a869f0-1369-4785-8d73-e3976a2ea77d	9538f8bd-5653-48ef-948b-0824dee94bf1	to cry / to weep / lament or mourn	\N	\N	1	2026-10-18 17:11:32.471332+00	2026-10-18 17:11:32.471332+00	f
6d07b2eb-bc1d-4de8-bbfe-46da48292604	31e944f4-7445-4b8f-8ddc-2de389a3842a	to cry / to weep	\N	\N	2	2026-10-18 17:09:18.172188+00	2026-10-18 17:12:02.666323+00	f
731c322d-7229-4d64-9c75-521e721768bb	4375baee-0851-45fa-ba6c-6cd9c736b660	to smile / to beam	\N	\N	1	2026-10-18 17:12:52.095054+00	2026-10-18 17:12:52.095054+00	f
f3536ae0-9330-4308-86f6-9df0977c5dd3	6ae1db17-6ebb-4e31-9a0b-e113d147645b	to stop / to halt	\N	\N	1	2026-10-18 17:13:41.75569+00	2026-10-18 17:13:41.75569+00	f
80cd2e5a-cdbf-49f3-a80b-bfd816f65b0f	24be2de7-8dac-4c60-9073-84eb5747a9a9	to call / to phone / to telephone	\N	\N	1	2026-10-18 17:14:39.018505+00	2026-10-18 17:14:39.018505+00	f
bfbbde19-06f4-4e12-b341-6cf901cea07a	2502995b-e781-4ccf-a20f-aa0d7df9cdbc	to send / to ship / deliver	\N	\N	1	2026-10-18 17:15:23.987358+00	2026-10-18 17:15:23.987358+00	f
92ad37f5-e25d-40b9-b634-650996f0c964	5c2d3d1f-262c-46f1-bd1b-b1cf08dddaf3	to choose / to select / to pick	\N	\N	1	2026-10-18 17:15:53.343858+00	2026-10-18 17:15:53.343858+00	f
fd679b47-4b37-4142-89a1-02095e5d8320	c1470f4a-ee5a-484d-8e7a-a627cff62272	to follow / pursue / come after	\N	\N	1	2026-10-18 17:16:26.873979+00	2026-10-18 17:16:26.873979+00	f
f514c44d-0ef9-4329-8181-19fdf5db9c1b	a675a09a-b637-4483-adfb-b3c8864e7fd3	to rest / to relax / to stop for the night / to halt	\N	\N	1	2026-10-18 17:17:43.814592+00	2026-10-18 17:17:43.814592+00	f
6142fc5b-604f-4e79-b205-bbf34009e576	731184c9-5f47-4fe8-b118-f21f14d9ee69	to look for / to search (for)	\N	\N	1	2026-10-18 17:18:17.141909+00	2026-10-18 17:18:17.141909+00	f
f33e1ac7-86d3-45b4-9a5b-7fe13f74a5fa	951f2751-4ab0-45ec-93f9-24024e6658af	to hold / to carry / to bear	\N	\N	1	2026-10-18 17:18:46.4299+00	2026-10-18 17:18:46.4299+00	f
cd51ae0c-38ac-41f9-a16c-cdfd1a1ea34f	9f0392fc-870d-45d4-a1dc-74804ca04b4a	to count	\N	\N	1	2026-10-18 17:19:17.104915+00	2026-10-18 17:19:17.104915+00	f
b911f5a6-c209-4a2b-bf04-0354c517c484	f075d7a8-ba31-46fe-a180-f28064ef0e91	to decide / to determine / to judge / referee	\N	\N	1	2026-10-18 17:20:31.624505+00	2026-10-18 17:20:31.624505+00	f
a69ee5ca-f3c6-49e0-96e2-e1c8179470ee	b1bac9c6-2a82-46e7-aa2b-68dfa7739743	to decide / to determine / to make up one's mind / declare	\N	\N	2	2026-10-18 17:19:53.539803+00	2026-10-18 17:21:24.445769+00	f
9c33fc26-7fad-4ea4-8079-b632f0ac6880	c7eb6dc4-23ed-44cd-bc56-57ebc1079641	to return / to go back / to reverse	\N	\N	1	2026-10-18 17:21:52.543562+00	2026-10-18 17:21:52.543562+00	f
c4a67675-6db3-4956-b740-994ebe74b84e	45c70726-b87f-4e05-b925-acbb2593f884	to invite / to urge / to persuade / to induce / influance	\N	\N	1	2026-10-18 17:27:31.680525+00	2026-10-18 17:27:31.680525+00	f
35ff23e9-44d9-4322-aa7a-89b60c4a28a2	bf16d2ce-4801-4423-b859-c2f1664b7fb3	work / task / job	\N	\N	1	2026-10-18 17:23:23.188114+00	2026-10-18 17:23:23.188114+00	f
8797fe82-86f9-4028-a178-95c8c28bff84	d9452a28-a387-4fe1-b6d2-7bab16e8582e	to want / to need / to require / to desire	\N	\N	3	2026-10-18 17:22:33.211788+00	2026-10-18 17:23:42.248679+00	f
c79dd19b-dc3c-41cd-962b-36e0d0133a02	47f6c828-5d2d-44a7-97d1-01db585df0db	to swim	\N	\N	1	2026-10-18 17:24:32.756844+00	2026-10-18 17:24:32.756844+00	f
5d9066b1-1498-4611-9daf-0bae37845431	5e27f211-4842-42b8-b42d-55f1f635ea7b	to explain / to describe / to define	\N	\N	1	2026-10-18 17:26:01.431875+00	2026-10-18 17:26:01.431875+00	f
4225bab5-62eb-4319-bc52-307a7b9b751c	e267ba97-d4bc-4f13-ab42-0db209c4d4b1	to greet / to say hello / to address	\N	\N	1	2026-10-18 17:26:34.446997+00	2026-10-18 17:26:34.446997+00	f
4cccb4cd-2ae7-49de-b4fb-a0b6d7ac1296	c9ef6f2b-aa8a-48a9-a8a7-d300ee48f04b	to get up / to rise / to stand up	\N	\N	1	2026-10-18 17:28:21.311999+00	2026-10-18 17:28:21.311999+00	f
edb8fe59-315c-4e9b-9cb9-6ef4727be0b9	368619a3-bc8f-4bf6-b1d1-8f31da1e7a78	to clean	\N	\N	1	2026-10-18 17:29:13.586903+00	2026-10-18 17:29:13.586903+00	f
a25d5d1a-8e2c-440b-8f32-8c465cda73c4	ac5480b1-4513-4d5b-8695-c9cd1ffe2cd5	to keep / to store / to maintain / to collect / to gather	\N	\N	1	2026-10-18 17:29:50.332919+00	2026-10-18 17:29:50.332919+00	f
9cc19dfb-dbdb-49b2-8c13-2180543bd53e	d3da7a3b-5924-4997-9329-131099c2136c	to shoulder / to bear / to carry (a load)	\N	\N	1	2026-10-18 17:31:13.711839+00	2026-10-18 17:31:13.711839+00	f
b0765e70-696c-4b09-a998-985e142759ac	79fc0451-baa2-468c-8638-99fc26e275f3	to pee	\N	\N	1	2026-10-18 17:31:44.347661+00	2026-10-18 17:31:44.347661+00	f
d8541d63-8c34-47ad-8c24-f348425c7db2	8dd2a84b-5329-4eac-b8c2-b7f06ee8e459	to defecate / to shit	\N	\N	1	2026-10-18 17:32:29.063346+00	2026-10-18 17:32:29.063346+00	f
d3eb89d6-abff-44cd-8c2b-30a81efbb311	ebfb3540-841f-4ddd-846c-af352f15219d	can / able to / have the ability to	\N	\N	3	2026-07-12 20:17:24.851641+00	2026-10-21 10:47:19.987468+00	t
01c172e0-1edc-4b37-aa0a-95a52591808e	cf941e39-0ca2-4427-b5b6-fedfc95c1dee	older brother	\N	\N	5	2026-08-08 22:16:11.111552+00	2026-10-21 19:27:27.611808+00	t
4bcfc32a-693c-4d28-9451-6f18e80f4552	8ff15f54-e68b-47f0-a734-e0154936f6d8	younger brother	\N	\N	3	2026-08-08 22:20:46.100096+00	2026-10-21 19:27:53.392279+00	t
016d38f4-e697-4108-911a-9b3a1ea3698a	e744432e-eabd-46f0-a150-d636e027d76c	to press / to push (down)	\N	\N	1	2026-10-18 17:33:17.2412+00	2026-10-18 17:33:17.2412+00	f
147938d9-65de-48a8-a550-8ce1fe88b37b	50ce638b-596f-4522-9bf0-e62307ab4510	to relax / to loosen / to ease / to reduce / to be lenient / to releave / to cut some slack	\N	\N	1	2026-10-18 17:35:19.413394+00	2026-10-18 17:35:19.413394+00	f
0cc5249c-67ce-4e68-b0c5-b875b7c77b7b	8f42af81-be99-483a-a2cc-816df45aeff1	to rest / to relax	\N	\N	2	2026-10-18 17:33:58.055588+00	2026-10-18 17:35:40.739525+00	f
18ffc56f-f313-4e68-a5d8-312bf5237c0c	79cc5a70-f463-4a47-9ee8-5c09dba3261b	to wai [the respectful gesture of thanks, apology or greeting]	\N	\N	1	2026-10-18 17:37:00.261518+00	2026-10-18 17:37:00.261518+00	f
2a026d17-7bda-4946-a347-66411445b804	a99fcf6e-d927-46cc-aa6a-333c5bd3a2a6	sheep / ewe / ram	\N	\N	2	2026-10-18 13:57:26.850455+00	2026-10-18 17:38:30.852722+00	t
a6fb8dd8-2bd1-4cf7-9479-9bc2efaa551c	29a2f23d-3c6e-4279-9757-3b46d9f89716	pig	\N	\N	3	2026-08-10 20:03:18.470791+00	2026-10-18 17:38:30.852722+00	t
a9afda3d-9ba2-4935-a7c1-ec1d9c179a4e	78a53b47-fa17-4d9e-905d-24c85bcba34c	chicken / hen / cock	\N	\N	3	2026-08-10 20:04:05.654072+00	2026-10-18 17:38:30.852722+00	t
aa188f22-c580-4f0e-88de-769d9952e4c7	d968a427-4b4f-49e9-a7bb-8e836b2be41d	cow / bull / bullock / ox / bovine	\N	\N	2	2026-08-10 20:02:43.142118+00	2026-10-18 17:38:30.852722+00	t
ac076666-1aea-4c10-a7c9-2e0b06e3f05c	28c02c4e-cf4d-4fca-ba4d-f8ba54c8eca5	duck	\N	\N	3	2026-08-10 20:06:23.46595+00	2026-10-18 17:38:30.852722+00	t
e700afcc-1b91-481d-8b75-8f60770c8c96	8c7b72de-bca8-4453-b45d-199349f94539	water buffalo	\N	\N	2	2026-10-18 13:53:59.728131+00	2026-10-18 17:38:30.852722+00	t
f5cbbb7a-b808-4fd2-8b78-05505b7b1a6b	7e6179a8-c438-4eed-8aca-ba5efe450c9e	to take care of / to bring up / to raise (a child or animal) / to provide for / to nurse	\N	\N	3	2026-08-10 20:13:13.053442+00	2026-10-18 17:38:48.383535+00	t
8fa2b1be-cd4e-4558-ba5e-73728f56f0d5	15d7edfb-7154-4f2c-88a4-608d0867cde5	fish	\N	\N	2	2026-08-10 20:01:12.607135+00	2026-10-18 17:38:48.383535+00	t
c96f911d-b102-44e9-a6ef-8474e14916fe	d10166b6-9144-45e9-9559-a8cf8b93aeac	dog	\N	\N	2	2026-08-10 19:59:46.939424+00	2026-10-18 17:38:48.383535+00	t
d9e5abea-49d8-43c9-acb4-841cf0b41a6b	ad030853-887b-4049-83d3-44d49b795e9d	rabbit	\N	\N	2	2026-08-10 20:05:56.789761+00	2026-10-18 17:38:48.383535+00	t
c3577177-2e23-47c4-a65f-1a792cbb5b83	34c8038c-0220-4adb-88b5-31ec9a7ca2b8	turtle / tortoise / terrapin	\N	\N	2	2026-10-18 17:39:36.17819+00	2026-10-19 12:24:54.314031+00	t
0c9166b7-b35d-497b-9b04-25409d6a4e5c	a763882b-aad7-4ccf-a964-ec4e5b791def	straight / direct / exactly / upright / vertical	\N	\N	1	2026-10-18 17:49:24.309003+00	2026-10-18 17:49:24.309003+00	f
954e620b-fdbc-474c-a7db-e89ddcff4df0	360d19e0-c3aa-4fa9-a5d6-69a9a1008ee4	to recommend / to advise / to guide / to suggest / to introduce (an idea)	\N	\N	1	2026-10-19 20:56:29.709616+00	2026-10-19 20:56:29.709616+00	f
25e455d8-72f7-4746-8a7e-0d288ed7f09c	a3e16449-3bc0-4ffa-814c-1c614f793fb5	here	\N	\N	1	2026-10-19 20:59:17.464788+00	2026-10-19 20:59:17.464788+00	f
82aa3b98-d6c3-4352-8ced-f35df18e0fc0	b503e82e-118e-4e59-a52a-abe92e967b0b	therefore / so... / then...	\N	\N	1	2026-10-18 20:21:25.409123+00	2026-10-18 20:21:25.409123+00	f
b63813c3-1939-4103-9261-01f3c7dfb471	ead17145-8024-41ef-8f33-2b385b0a1984	bag	\N	\N	1	2026-10-19 21:00:58.569082+00	2026-10-19 21:00:58.569082+00	f
566373e1-f72b-46b2-b5f9-826fd94d1ace	ded1391e-2822-4ba8-95a1-fec3cd606d90	fever / sickness	\N	\N	1	2026-10-18 20:42:53.101714+00	2026-10-18 20:42:53.101714+00	f
7d8023ef-713d-4538-8d95-abec796d12cf	d6b73597-8d81-4429-9588-ad412adb90e5	patient / sick person	\N	\N	3	2026-10-18 20:41:39.569462+00	2026-10-18 20:43:03.676493+00	f
5f45e3f0-c4d3-4fd0-917c-1e10669dc5c2	654a9d18-dc13-42ea-b643-3ef98967e097	to arrive / to get to / to reach	\N	\N	1	2026-10-18 20:50:44.274522+00	2026-10-18 20:50:44.274522+00	f
0e085543-706f-417f-90d9-2494747446af	654a9d18-dc13-42ea-b643-3ef98967e097	even though / even if	\N	\N	1	2026-10-18 20:50:45.417841+00	2026-10-18 20:50:45.417841+00	f
4a26d249-d0bf-411a-b4d5-1c410a6ea124	654a9d18-dc13-42ea-b643-3ef98967e097	about / of	\N	\N	1	2026-10-18 20:50:46.75718+00	2026-10-18 20:50:46.75718+00	f
1d21a51e-2c04-42ec-8b24-98c7ed12ba91	654a9d18-dc13-42ea-b643-3ef98967e097	so / then / therefore	\N	\N	1	2026-10-18 20:50:48.034945+00	2026-10-18 20:50:48.034945+00	f
47542b60-7ea5-4890-8bcb-e18df29a01d6	27b8fc80-e6e4-4b6f-9c52-a84189354bd2	to cheat / to be unfaithful	\N	\N	1	2026-10-18 20:54:06.542772+00	2026-10-18 20:54:06.542772+00	f
6bf4e5fe-6850-4de8-b765-71675e140c70	6fed8279-c81f-46d4-9956-0494779f38de	[informal particle used at the end of a sentence or question to make it less formal, express excitement, resignation or opinion]	\N	\N	1	2026-10-18 20:59:09.892111+00	2026-10-18 20:59:09.892111+00	f
21099aa2-cda1-4bd3-809d-a3c470aa594c	4903b1a1-4f4f-4a4e-9f22-14d9131e22a6	inside / indoors / interior	\N	\N	3	2026-10-18 17:53:20.095352+00	2026-10-18 21:03:04.342412+00	t
4efc1513-8ed4-4315-b837-00e316c0efa2	1ab5a7bc-10c8-403f-9e10-7b3c40fd3341	in / of / inside / within / into / on	\N	\N	2	2026-10-18 17:56:09.753679+00	2026-10-18 21:03:04.342412+00	t
317635b8-eab4-4a13-95e7-a566fe89193a	e1c047ba-c925-4456-bfa6-cc40964ed2d9	in the direction of / towards / next to / near / by	\N	\N	2	2026-10-18 17:55:19.119322+00	2026-10-18 21:03:04.342412+00	t
dac08723-2533-47fc-a305-936dbc9a1502	a763882b-aad7-4ccf-a964-ec4e5b791def	at	\N	\N	3	2026-10-18 17:45:23.255179+00	2026-10-18 21:03:04.342412+00	t
ff9bb364-acdc-4ecd-9ead-808521a8e3ae	dfeb9054-ec41-4ee9-a48f-db4952cb1507	that (one) / those / there	\N	\N	3	2026-10-18 17:49:55.256331+00	2026-10-18 21:03:04.342412+00	t
2c46aaa8-7bf2-4d33-9e07-69d770244a21	93f25f21-8324-4386-a760-df36735078a6	station	\N	\N	2	2026-07-22 14:59:16.456393+00	2026-10-18 21:03:04.342412+00	t
3a92b765-a663-4809-93c1-9b43c012488e	04afe690-cfda-4ee6-9862-2870768ab5cb	train	\N	\N	4	2026-07-22 15:00:42.669896+00	2026-10-18 21:03:04.342412+00	t
1cc8a6e2-d483-4c2f-a23c-eeff06015901	d3118e01-9d64-4155-be95-8ac21ee2573a	fire / flame	\N	\N	2	2026-07-19 13:54:05.073522+00	2026-10-18 21:03:04.342412+00	t
61a12bc8-9f49-458c-aeb5-49327b1ad078	dd1e9e56-bd20-4f1f-a7f3-97b573d771da	left (direction)	\N	\N	2	2026-07-22 16:13:24.827244+00	2026-10-18 21:03:04.342412+00	t
871c70d9-d595-4f13-91c1-6ab15a4cf408	0ca69988-6afb-4353-85f4-0289a415de75	direction / path / way	\N	\N	2	2026-07-22 16:29:49.61494+00	2026-10-18 21:03:04.342412+00	t
1c84c603-307f-49a0-8d96-a746432e70cf	d68ffc40-433d-4d92-8695-0a15643b767c	maybe / possibly / might / perhaps / probably / may	\N	\N	3	2026-10-18 20:26:49.5698+00	2026-10-18 21:03:18.440116+00	t
5d1cdfda-b033-488b-a960-814220f0fe53	1c20f286-ac82-42a0-99dd-3b1a6fda235c	certainly / surely / definitely / for sure / of course	\N	\N	2	2026-10-18 20:23:13.631003+00	2026-10-18 21:03:18.440116+00	t
2cc6d352-7784-471e-8948-16c335ddf01b	b503e82e-118e-4e59-a52a-abe92e967b0b	well... / also / too / as well / should	\N	\N	2	2026-10-18 20:21:23.791945+00	2026-10-18 21:03:18.440116+00	t
878d1454-7de4-4f9a-9bed-a0c4ba3eacac	03373745-749b-4d83-a11b-bc40a063b168	up to (someone) / depends on... / hinges on...	\N	\N	3	2026-10-18 20:32:23.894723+00	2026-10-18 21:03:18.440116+00	t
43beb0db-8014-43f2-8d02-a431a03f9855	e61f9100-4051-4ac1-91c7-556b5c0cb2e3	up to (one)	\N	\N	2	2026-10-18 20:29:48.109369+00	2026-10-18 21:03:18.440116+00	t
554fd72b-92fc-4f53-8397-1039d0699b34	d0328563-5cd9-4a84-9365-53526da89955	separate / to divide / part	\N	\N	2	2026-10-19 21:05:54.995902+00	2026-10-20 20:11:42.81572+00	t
0645f6a5-8349-4e1a-883e-238b0eb7c792	1154d4ee-0693-4728-a320-a0f7be2a4ccf	June	\N	Abbreviation: มิ.ย.	2	2026-10-20 19:31:19.480065+00	2026-10-20 19:36:32.990903+00	t
0f8b219a-a6a1-4248-bf8d-b01bb96a10f1	f964b1dd-ff4c-4dcf-8fcf-7831ceef272e	April	\N	Abbreviation: เม.ย.	2	2026-10-20 19:28:56.697228+00	2026-10-20 19:36:32.990903+00	t
318dd50c-8c98-4859-bbb2-f540da9a9451	d028f02d-41c4-4d60-be60-b02d244a7726	January	\N	Abbreviation: ม.ค.	2	2026-10-20 19:26:21.691585+00	2026-10-20 19:36:32.990903+00	t
3ae04d7c-3416-4c54-8a7b-7e2593795537	d3bc2429-e9c8-4afe-92dd-f159da6f9bb3	October	\N	Abbreviation: ต.ค.	2	2026-10-20 19:34:11.826068+00	2026-10-20 19:36:32.990903+00	t
52251c62-463d-4029-84c5-b46ae2d5d6c6	8e91a1a7-197e-454b-aadd-0a188d1cb12b	September	\N	Abbreviation: ก.ย.	2	2026-10-20 19:33:30.912882+00	2026-10-20 19:36:32.990903+00	t
6716e212-5f2d-4feb-975c-d142a5f1b1bb	cc8828a3-eef6-404e-b095-4035b1239194	November	\N	Abbreviation: พ.ย.	2	2026-10-20 19:34:50.76864+00	2026-10-20 19:36:32.990903+00	t
77a4f797-4c7c-42c1-92a2-d59a1dacde10	ea853e2e-b275-47ce-a012-3294e4a67317	March	\N	Abbreviation: มี.ค.	2	2026-10-20 19:28:10.361433+00	2026-10-20 19:36:32.990903+00	t
8cb019da-0c1e-4979-9b80-276b37ec4e64	dff0b4cd-3860-4154-aabe-1828d4726f2f	May	\N	Abbreviation: พ.ค.	3	2026-10-20 19:30:14.356227+00	2026-10-20 19:36:32.990903+00	t
90879804-1542-400f-80c0-5d883958595c	c95215f9-029c-4076-924e-ebe0a7cd8e44	July	\N	Abbreviation: ก.ค.	2	2026-10-20 19:32:01.517648+00	2026-10-20 19:36:32.990903+00	t
98743533-f088-4cc5-8322-45fe02c072b6	3a54af88-f3a3-4c61-93cc-842ec2056bd7	August	\N	Abbreviation: ส.ค.	2	2026-10-20 19:32:43.774262+00	2026-10-20 19:36:32.990903+00	t
a69eef22-544f-4737-9498-70f4478cbbc2	d16d477c-2995-49bd-8d06-bfe0366a99d6	February	\N	Abbreviation: ก.พ.	2	2026-10-20 19:27:25.501968+00	2026-10-20 19:36:32.990903+00	t
fe88257e-6947-414e-9b52-c1eaff10060f	7c31b9c4-9419-4dbc-b494-106210408b06	December	\N	Abbreviation: ธ.ค.	2	2026-10-20 19:35:28.698239+00	2026-10-20 19:36:32.990903+00	t
d364e6eb-a549-4da9-9ff9-bf70a952c122	83ed560d-d9db-4d83-98c5-82f390992298	[numerical classifier for beverages when served in a glass]	\N	\N	3	2026-10-20 19:40:19.902188+00	2026-10-20 19:42:05.524123+00	f
deed1a76-3529-4a2f-9cd4-ba4a7b7603cb	83ed560d-d9db-4d83-98c5-82f390992298	glass / cup / crystal	\N	\N	1	2026-10-20 19:42:06.787531+00	2026-10-20 19:42:06.787531+00	f
199f4767-bf32-4fbe-b348-fe651008291d	b497c26e-36a4-4e5f-8a49-3fba600eb82c	to feel dizzy / feel giddy	\N	\N	3	2026-10-21 11:38:27.724735+00	2026-10-21 18:57:51.436832+00	t
6c505fa3-6e35-4f64-9f88-f42b63b34e7d	7d064a0b-311d-4998-8a0b-78d62d6befd2	nut / peanut	\N	\N	2	2026-10-20 20:02:27.56126+00	2026-10-20 20:11:42.81572+00	t
fcfe55ae-8824-4ef7-aa21-43849d400462	ac5466db-5b77-46db-9e99-cd45e37e85d4	to circle / revolve / go around / to whirl / to rotate	\N	\N	2	2026-10-21 11:39:58.522912+00	2026-10-21 18:57:51.436832+00	t
f1b0db01-0f93-49c9-ac0c-263d07560dc8	96526106-8f01-41f0-afcd-b4b63d5b09cf	sea food	\N	\N	4	2026-08-14 10:28:40.504751+00	2026-10-20 20:11:42.81572+00	t
4c843750-7e6a-4edd-bf72-161d9e1b31e7	37f06dd0-39f8-4f01-ae5f-e91862e529d3	sea / ocean	\N	\N	2	2026-08-14 10:29:25.365402+00	2026-10-20 20:11:42.81572+00	t
a2d866b2-2ed7-4797-a03b-d83a9104234a	b114c524-fc4c-4551-8dd1-79966abd1a39	peanut	\N	\N	3	2026-10-20 20:03:30.369974+00	2026-10-20 20:11:42.81572+00	t
5668d0d3-f848-4f50-a9b3-98ee36e84809	ec53dacf-9ac3-4d4e-922d-02733c1240ad	to be allergic to / to have an allergy to	\N	\N	4	2026-10-20 19:57:58.329818+00	2026-10-20 20:12:24.437532+00	t
8f61e57f-2ab3-4cf7-bb87-7a04166bf7a0	2a3bba74-e040-46f3-a782-04b5a7874518	that / that one	\N	\N	2	2026-10-21 19:05:38.379883+00	2026-10-21 19:07:06.158883+00	f
d2853a92-c48e-4db8-a2b5-36da1e6d904d	446e09db-5132-4282-b473-372b17cd82fc	blood	\N	\N	1	2026-10-21 11:01:01.409941+00	2026-10-21 11:01:01.409941+00	f
fb80f176-4ddb-4cbe-b315-98ca000678eb	60c74b2f-fbd9-4fdf-8ea8-dfb0930b819f	excited / thrilled / nervous	\N	\N	2	2026-08-07 15:53:06.651033+00	2026-10-21 19:21:58.638192+00	t
3d43d008-2ce7-4235-bfb4-352daac50f01	74b1ff14-5dd1-4050-ab6f-a6bdaa244827	lacking confidence / nervous / bashful / shy / timid	\N	\N	2	2026-08-07 15:54:21.538034+00	2026-10-21 19:21:58.638192+00	t
7995f771-09fb-4b04-ac97-604a73117f97	e59641d2-ed5d-4ba8-ad3e-dfca5f900769	zero / 0	\N	\N	2	2026-10-21 18:40:43.52175+00	2026-10-21 18:40:52.248142+00	t
8eec73e7-a092-4414-bc96-0cff4586e706	615e2110-0a6a-4ce2-a952-4d9d4d24571f	chest / breast / bust	\N	\N	2	2026-10-21 10:59:03.753748+00	2026-10-21 18:57:51.436832+00	t
117bf4ca-5c7a-487a-a3fe-245c99a62b7f	ebd4f4e7-d15a-413a-8a89-f914a601c866	to pass out / to faint / to feel dizzy	\N	\N	3	2026-10-21 11:29:30.697123+00	2026-10-21 18:57:51.436832+00	t
b4d00de0-ab71-4ded-9630-b8ebddaf0d71	54d154eb-6f96-4be1-8afe-bc08bd37a53e	to be afflicted with (disease or medical condition)	\N	\N	2	2026-10-21 11:33:57.457464+00	2026-10-21 18:57:51.436832+00	t
e1b284f3-b911-40bc-916c-ba55782668cf	0bed534b-e4b9-4802-99a9-cbbebaca9a79	bleeding	\N	\N	2	2026-10-21 11:01:52.104651+00	2026-10-21 18:57:51.436832+00	t
24ca06a7-9c7b-4271-843f-780cea5db50e	af0f0f69-54c5-49cb-aede-65098e1af487	to be unconscious / to lose consciousness / to black out / to be in a coma	\N	\N	3	2026-10-21 11:31:47.715691+00	2026-10-21 18:57:51.436832+00	t
619b0678-2950-48a3-a119-a38626461e53	6617309b-96e2-41cc-b2ef-15b622f4e1d6	empty / finished / all used up / complete	\N	\N	2	2026-10-21 11:35:45.642352+00	2026-10-21 18:57:51.436832+00	t
e199ceba-e36a-4143-a868-b7ad19b9889a	552ca60b-18c3-4051-848d-2164e548a167	consciousness / sense / mind / sensibility / responsiveness	\N	\N	2	2026-10-21 11:36:57.661327+00	2026-10-21 18:57:51.436832+00	t
05ce80de-8d71-4758-903f-2cedf6441b81	1d390c94-2549-4104-a863-ca1511a0be80	eighteen / 18	\N	\N	3	2026-10-21 18:55:10.916005+00	2026-10-21 18:56:52.961834+00	t
398af0bb-3dd1-4168-a7ef-acfde2c14c52	e3c8a20e-1f3b-4192-a695-dd5d52a7b0f0	nineteen / 19	\N	\N	3	2026-10-21 18:55:41.41632+00	2026-10-21 18:56:52.961834+00	t
66700fec-8c31-44a2-9058-f7bde85884c4	08c7e6da-89ca-41e0-9e3e-407c2b8eb521	fourteen / 14	\N	\N	3	2026-10-21 18:50:59.946706+00	2026-10-21 18:56:52.961834+00	t
69e7add8-5767-47d0-af1c-fa4df86f1ae2	88c2c842-c8e3-448f-a3d3-e48d30e01cf6	seventeen / 17	\N	\N	3	2026-10-21 18:54:10.353273+00	2026-10-21 18:56:52.961834+00	t
9f61d14f-ac08-4cb5-aeab-df77a3756977	847e0e21-254c-4373-b483-49a5a733279c	fifteen / 15	\N	\N	3	2026-10-21 18:52:09.054167+00	2026-10-21 18:56:52.961834+00	t
a3e20f80-68b7-471b-b2b3-d5433a8afa94	d1b1eff9-ac33-46f9-b301-178f739efb75	thirteen / 13	\N	\N	3	2026-10-21 18:50:04.34218+00	2026-10-21 18:56:52.961834+00	t
ac409f73-f0ce-4a72-9fc2-7ee3746f0daf	ec3d7d8b-8693-4cd6-b00b-d55ecdc42081	twelve / 12	\N	\N	3	2026-10-21 18:47:37.890268+00	2026-10-21 18:56:52.961834+00	t
af2abe8b-4b5c-49c2-a56a-e0daa9b4debe	a4d812e4-7c90-42c4-827e-fd4ab1390a4b	sixteen / 16	\N	\N	3	2026-10-21 18:53:00.409965+00	2026-10-21 18:56:52.961834+00	t
c5751e7a-0445-4c10-b0c4-fb1d8a0cb878	34007870-d65d-4d92-ba3a-f600ed0407ff	eleven / 11	\N	\N	5	2026-10-21 18:44:15.048689+00	2026-10-21 18:56:52.961834+00	t
878d619f-2184-473a-be69-ea941a0bf66d	5c5f5e7f-3342-4958-9f64-931de6fb931f	one [when used as a final digit: eleven, twenty one, one hundred and one, ... ]	\N	\N	2	2026-10-21 18:46:41.475657+00	2026-10-21 18:56:52.961834+00	t
2f999736-b678-4f04-a782-39669b253920	956bcff1-58c9-44a0-a0cc-228285641038	got / did get / did obtain / has gotten [past tense]	\N	\N	4	2026-10-21 10:41:09.32529+00	2026-10-21 18:57:51.436832+00	t
2c4200b9-afd8-4e3c-956d-e3351d5b3c9a	57b58d9b-cd3d-4f7a-9d42-28e8df51f10a	hurt / wounded / injured	\N	\N	3	2026-10-21 10:42:23.657051+00	2026-10-21 18:57:51.436832+00	t
7233b318-1ad1-4a83-8eb4-35ecf2a0b6e6	f0afbfa8-d4a3-475d-9805-d59736689bc6	to obtain / to sustain / to suffer (damage)	\N	\N	2	2026-10-21 10:51:59.417559+00	2026-10-21 18:57:51.436832+00	t
d919815e-e221-4312-a723-9fa75c0ef4c9	ebfb3540-841f-4ddd-846c-af352f15219d	[aspect marker indicating an action that happened in the past and continues into the future - present perfect]	\N	\N	2	2026-10-21 10:47:21.59368+00	2026-10-21 18:57:51.436832+00	t
cad0124d-882d-4d7c-a81a-076ae9031452	e441fedd-8253-4649-bdc1-6fcf39e4814e	to hurt / (to be) injured / (to be) in pain / to be sore	\N	\N	2	2026-10-21 10:55:00.026159+00	2026-10-21 18:57:51.436832+00	t
8c9193ce-d1ba-47a9-80c7-ba05475f29f8	cc690189-03e1-4bd6-ac7e-487709a6dae5	to cut / to wound	\N	\N	2	2026-10-21 10:53:15.520058+00	2026-10-21 18:57:51.436832+00	t
34d97983-01b2-4ac6-b9f4-f9cdd54f26db	6c767e36-db0f-48d2-83d1-ed0bf95d498d	confident / to belive in your abilities / to be certain / to be assured in ones ability / to belive in yourself	\N	\N	3	2026-08-07 15:55:59.530548+00	2026-10-21 19:21:58.638192+00	t
85c5866c-ddb9-490e-ac68-240533381c1e	f9f96579-ba9e-484d-b483-a190d76dcd3b	quiet / peaceful / tranquil / calm	\N	\N	2	2026-08-07 15:57:36.543412+00	2026-10-21 19:21:58.638192+00	t
242b5962-9906-45c8-9665-9761622e9b1e	587745c1-3c4b-425c-b56e-fbde2b600d89	happy / glad / pleased	\N	\N	2	2026-10-21 19:17:43.418456+00	2026-10-21 19:21:58.638192+00	t
83ad0dfc-9c55-498d-813d-da56afb21bdc	53be6510-7da6-4fcc-900f-06ac7a4c289b	female / young woman / girl / maiden / lass / unmarried woman	\N	\N	2	2026-10-21 19:25:04.530107+00	2026-10-21 19:25:33.606017+00	t
f2f5674f-d8b9-4c64-86eb-df6275bf9d8a	d421d179-13b4-4832-8808-93781e1315b0	male / man	\N	\N	2	2026-10-21 19:27:03.71861+00	2026-10-21 19:27:28.873228+00	t
\.


--
-- Data for Name: definition_relations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."definition_relations" ("definition_id", "related_definition_id", "relation_type", "notes", "created_at") FROM stdin;
5a269d08-ee8b-4772-803a-fcfd41d0ddd9	6c4e3283-2c6c-4729-bd04-c24decee1951	synonym	\N	2026-10-16 12:29:01.36507+00
6c4e3283-2c6c-4729-bd04-c24decee1951	5a269d08-ee8b-4772-803a-fcfd41d0ddd9	synonym	\N	2026-10-16 12:29:01.36507+00
5a269d08-ee8b-4772-803a-fcfd41d0ddd9	70acf9d5-5bee-4dae-8503-6fec6c823d20	synonym	\N	2026-10-16 12:29:01.36507+00
70acf9d5-5bee-4dae-8503-6fec6c823d20	5a269d08-ee8b-4772-803a-fcfd41d0ddd9	synonym	\N	2026-10-16 12:29:01.36507+00
daf1915b-d6e7-49da-9a35-76d8dc12efe9	7e0a55f0-3037-461d-a0b2-d14d0105f5c5	related	\N	2026-10-17 12:34:25.341963+00
7e0a55f0-3037-461d-a0b2-d14d0105f5c5	daf1915b-d6e7-49da-9a35-76d8dc12efe9	related	\N	2026-10-17 12:34:25.341963+00
e9a02f32-a0d2-41e3-af8c-bf5376555acb	daf1915b-d6e7-49da-9a35-76d8dc12efe9	related	\N	2026-10-17 12:36:05.247293+00
daf1915b-d6e7-49da-9a35-76d8dc12efe9	e9a02f32-a0d2-41e3-af8c-bf5376555acb	related	\N	2026-10-17 12:36:05.247293+00
e9a02f32-a0d2-41e3-af8c-bf5376555acb	7e0a55f0-3037-461d-a0b2-d14d0105f5c5	related	\N	2026-10-17 12:36:05.247293+00
7e0a55f0-3037-461d-a0b2-d14d0105f5c5	e9a02f32-a0d2-41e3-af8c-bf5376555acb	related	\N	2026-10-17 12:36:05.247293+00
943c02f6-8ea7-44db-8839-7e2b7fb4a23e	7e0a55f0-3037-461d-a0b2-d14d0105f5c5	related	\N	2026-10-17 13:39:54.312268+00
7e0a55f0-3037-461d-a0b2-d14d0105f5c5	943c02f6-8ea7-44db-8839-7e2b7fb4a23e	related	\N	2026-10-17 13:39:54.312268+00
943c02f6-8ea7-44db-8839-7e2b7fb4a23e	daf1915b-d6e7-49da-9a35-76d8dc12efe9	related	\N	2026-10-17 13:39:54.312268+00
daf1915b-d6e7-49da-9a35-76d8dc12efe9	943c02f6-8ea7-44db-8839-7e2b7fb4a23e	related	\N	2026-10-17 13:39:54.312268+00
943c02f6-8ea7-44db-8839-7e2b7fb4a23e	e9a02f32-a0d2-41e3-af8c-bf5376555acb	related	\N	2026-10-17 13:39:54.312268+00
e9a02f32-a0d2-41e3-af8c-bf5376555acb	943c02f6-8ea7-44db-8839-7e2b7fb4a23e	related	\N	2026-10-17 13:39:54.312268+00
9e7d275f-0ab4-41e0-a55f-9dcc645927a4	0daaf882-9b58-44c5-aeb9-c5199e5b1a7c	related	\N	2026-10-17 13:43:43.284812+00
0daaf882-9b58-44c5-aeb9-c5199e5b1a7c	9e7d275f-0ab4-41e0-a55f-9dcc645927a4	related	\N	2026-10-17 13:43:43.284812+00
\.


--
-- Data for Name: knowledge_levels; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."knowledge_levels" ("id", "name", "default_light_color", "default_dark_color") FROM stdin;
0	new	#FF3488F0	#FF7CB4FF
1	recognized	#FFEC81FC	#FFF0A8FC
2	familiar	#FFFB9D60	#FFFFBE8A
3	known	#FFF85A93	#FFFF8FB6
4	mastered	#42a847	#FF7DD181
\.


--
-- Data for Name: rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."rules" ("id", "name", "explanation", "category", "version", "created_at", "updated_at") FROM stdin;
0e3f3b87-3ba5-4fb9-999e-f132964313cf	Silent ห before a low class consonant	<p>The Thai letter <a href="tts:ห">ห</a> is not pronounced if it is followed by a low-class consonant.</p>\n\n<p>Low-class consonants are: <a href="tts:ค">ค</a> <a href="tts:ฅ">ฅ</a> <a href="tts:ฆ">ฆ</a> <a href="tts:ง">ง</a> <a href="tts:ช">ช</a> <a href="tts:ซ">ซ</a> <a href="tts:ฌ">ฌ</a> <a href="tts:ญ">ญ</a> <a href="tts:ฑ">ฑ</a> <a href="tts:ฒ">ฒ</a> <a href="tts:ณ">ณ</a> <a href="tts:ท">ท</a> <a href="tts:ธ">ธ</a> <a href="tts:น">น</a> <a href="tts:พ">พ</a> <a href="tts:ฟ">ฟ</a> <a href="tts:ภ">ภ</a> <a href="tts:ม">ม</a> <a href="tts:ย">ย</a> <a href="tts:ร">ร</a> <a href="tts:ล">ล</a> <a href="tts:ว">ว</a> <a href="tts:ฬ">ฬ</a> <a href="tts:ฮ">ฮ</a></p>	silent	1	2026-07-19 19:33:39.267542+00	2026-07-19 19:33:39.267542+00
ab926495-e0b4-48c6-84b9-217894571824	low tone mark	<p>This symbol represents low tone mark.</p>	tone	1	2026-07-19 19:38:13.978485+00	2026-07-19 19:38:13.978485+00
1f6e4f38-4ad9-49af-a724-c69770ef1315	L sound initial consonant	<p><a href="tts:ล">ล</a> initial sound is L.</p>	initial consonant sound	1	2026-07-19 19:51:32.866916+00	2026-07-19 19:51:32.866916+00
b4f00079-121d-4d82-81d6-b915bd27b755	อ as a vowel	<p><a href="tts:อ">อ</a> as a vowel makes an -AW sound.</p>	vowel sound	1	2026-07-19 19:56:39.62338+00	2026-07-19 19:56:39.62338+00
f291abb8-7667-4a66-bbcf-4c56dd4912b7	Short u sound	<p><a href="tts:อุ">อุ</a> produces a short U sound</p>	vowel	1	2026-07-19 20:03:47.315369+00	2026-07-19 20:03:47.315369+00
18861a5c-1a2d-451e-a0f2-fc6895548ec6	NG final consonant	<p><a href="tts:ง">ง</a> final consonant sound is NG</p>	final consonante	1	2026-07-19 20:06:24.10913+00	2026-07-19 20:06:24.10913+00
4cad538d-2b3d-4ada-870a-f600afcb5285	Low tone mark + low class consonant = FALLING TONE	Whenever there is a low tone mark on top of a low class consonant it turns the sylable into a FALLING TONE.	tone	1	2026-07-19 20:10:45.014757+00	2026-07-19 20:10:45.014757+00
d5a6d4bb-4ed2-4b43-ac19-444072105bf2	Y sound initial consonant	<p><a href="tts:ย">ย</a> initial sound is Y.</p>	initial consonant	1	2026-07-19 20:00:58.826101+00	2026-07-19 20:00:58.826101+00
4a4b8d84-7569-4eb2-ac34-a975e0ddfca8	Long U sound	<p><a href="tts:อู">อู</a> produces a long U sound</p>	vowel	1	2026-07-19 20:37:56.744295+00	2026-07-19 20:37:56.744295+00
f6c54bb2-84b9-408a-940c-b708314eea54	ร as initial consonant: R sound	When ร is the initial consonant it produces an R sound.	initial consonant	1	2026-09-30 11:55:37.594232+00	2026-09-30 11:55:37.594232+00
c374445e-9177-4c0e-b22c-df68fe985b39	เอีย: -iia sound	เอีย produces a LONG vowel sound -IIA	long vowel	1	2026-09-30 12:00:41.914319+00	2026-09-30 12:00:41.914319+00
5c43b46a-c6fa-44e9-82db-cd4fbbd7c956	ก as final consonant: K sound	When ก is the final consonant in a syllable it produces a K sound.	final consonant	1	2026-09-30 12:04:13.414642+00	2026-09-30 12:04:13.414642+00
99f063ab-0c08-423c-9859-0e4a956da9e1	LOW CLASS INITIAL CONSONANT + LONG VOWEL + STOP ENDING = FALLING TONE	Low class consonants: \nค, ฅ, ฆ, ง,  ช, ซ, ฌ, ญ, ฑ, ฒ, ณ, ท, ธ, น, พ, ฟ, ภ, ม, ย, ร, ล, ว, ฬ, ฮ\n\nLong vowels: \n-า-, -า, แ--, แ-, -อ-, -อ, เ--, เ-, โ--, โ-, อื-, อือ, อู-, อู, เอีย-,  เอีย, เอือ-, เอือ, -ว-, อัว\n\nStop ending:\nk, p, t sounds	falling tone	1	2026-09-30 12:20:59.322839+00	2026-09-30 12:20:59.322839+00
6b9f323e-6138-4dd4-855b-b6bbadef99a1	ย as initial consonant: Y sound	ย as initial consonant produces the sound of Y	initial consonant	1	2026-09-30 12:27:12.036398+00	2026-09-30 12:27:12.036398+00
7be5cae8-bd74-429b-9266-eb1429504891	ม as a final conosnant: M sound	ม as a final consonant produces the same sound as initial: M sound	consonant	1	2026-09-30 12:30:48.461052+00	2026-09-30 12:30:48.461052+00
4d7f1032-4040-4ce6-b160-f2446bd5a659	LOW CLASS CONSONANT + LONG VOWEL + LIVE ENDING = MID TONE	Low class consonants:\nค, ฅ, ฆ, ง, ช, ซ, ฌ, ญ, ฑ, ฒ, ณ, ท, ธ, น, พ, ฟ, ภ, ม, ย, ร, ล, ว, ฬ, ฮ\n\nLong vowels:\n-า-, -า, แ--, แ-, -อ-, -อ, เ--, เ-, โ--, โ-, อื-, อือ, อู-, อู, เอีย-, เอีย, เอือ-, เอือ, -ว-, อัว\n\nLive ending:\n- m (ม)\n- n (ญ,ณ,น,ร,ล,ฬ)\n- ng (ง)	tone	1	2026-09-30 12:34:02.317234+00	2026-09-30 12:34:02.317234+00
2c8dd047-5c18-45f6-a172-af960655b683	ว consonant: -W	ว produces a W sound	consonant	1	2026-09-30 12:37:49.609988+00	2026-09-30 12:37:49.609988+00
b781f8cb-3421-4fd2-84fd-e4e9d2a8e43b	อั : short A sound	อั produces a short A sound	vowel	1	2026-09-30 12:39:05.012521+00	2026-09-30 12:39:05.012521+00
4501f966-09e2-46fd-b7fc-0c5eb4979b76	ด as final consonant: T sound	ด as a final consonant produces a T sound	final consonant	1	2026-09-30 12:40:33.929526+00	2026-09-30 12:40:33.929526+00
10848815-fb18-4ffc-8293-8bea2d46d78e	HIGH CLASS INITIAL CONSONANT + NO TONE MARK + STOP ENDING = LOW TONE	High class initial consonants:\nข, ฃ, ฉ, ฐ, ถ, ผ, ฝ, ศ, ษ, ส, ห\n\nStop ending:\n- k (ค,ฅ,ฆ\tก\tข,ฃ)\n- p (พ,ฟ,ภ\tบ,ป)\n- t (ช,ฌ,ฑ,ฒ,ท,ธ\tจ,ฎ,ฏ,ด,ต\tฐ,ถ,ศ,ษ,ส)	tone	1	2026-09-30 12:44:33.286893+00	2026-09-30 12:44:33.286893+00
\.


--
-- Data for Name: sentences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sentences" ("id", "thai", "english", "version", "created_at", "updated_at", "phonetics", "published", "notes") FROM stdin;
b7f42b93-b49f-45ae-b4cf-8e30b8119dc5	\N	Thanks. / Thank you.	3	2026-07-18 00:33:13.002149+00	2026-10-16 12:02:35.734864+00	\N	t	\N
b91d9c29-9627-486a-9d7f-65ab6e3c1924	\N	Hello / Hi (f) ;\nGoodbye / Bye (f)	9	2026-07-11 16:47:13.998692+00	2026-10-16 12:08:41.733155+00	\N	t	\N
3d845823-371a-47a0-9548-b38d4a15313d	\N	I am 18 years old.	3	2026-10-16 14:09:57.796142+00	2026-10-16 14:19:09.874404+00	\N	t	\N
36cdb74a-854a-4711-a39d-00d79b8d4d5d	\N	Have we met before?	2	2026-10-17 15:34:03.424955+00	2026-10-17 15:37:39.066297+00	\N	t	\N
685d22c9-ebdd-4c9a-8b17-911107129bc9	\N	I don't know.	4	2026-07-16 12:32:06.332096+00	2026-10-17 15:59:52.644103+00	\N	t	\N
d8257d6b-576c-43ef-82a4-6b02b41d98f8	\N	What is it?! / What is wrong?!	1	2026-10-18 20:59:34.822371+00	2026-10-18 20:59:34.822371+00	\N	f	\N
2f7832fa-6463-4e95-9c87-63c075e9bf13	\N	It's over there. (f)	2	2026-10-18 17:46:21.520348+00	2026-10-18 21:03:04.342412+00	\N	t	\N
acce6f2e-c76f-4d11-bb53-f40a43d1a13e	\N	It's up to you.	2	2026-10-18 20:32:43.053916+00	2026-10-18 21:03:18.440116+00	\N	t	\N
f0ae8d56-8b50-42e9-9222-fe179d74614f	\N	No. / Not. / Nothing. / Incorrect.	2	2026-10-18 20:46:44.493156+00	2026-10-18 21:03:18.440116+00	\N	t	\N
e4c8c6df-430d-4639-a606-9cd61eb1f472	\N	Are you a student?	2	2026-10-18 18:37:40.656177+00	2026-10-18 21:03:27.7852+00	\N	t	\N
ffe81673-70e8-4ae3-973f-bea730513f9a	\N	Are you ready? / Ready?	3	2026-10-17 12:17:49.752222+00	2026-10-18 21:05:16.381044+00	\N	t	\N
f8599da6-345d-46a5-82ab-2b490e24049a	\N	I don't have any pets.	2	2026-10-19 12:07:25.948175+00	2026-10-19 12:24:54.314031+00	\N	t	\N
98909e49-900b-4773-ac63-e7cf09915b9d	\N	I'll have this one. / I want this one.	1	2026-10-19 20:53:30.623041+00	2026-10-19 20:53:30.623041+00	\N	f	\N
22ee6532-e890-4f1d-b6bc-0ee164467a99	\N	Can I have this one, please?	1	2026-10-19 20:54:19.393199+00	2026-10-19 20:54:19.393199+00	\N	f	\N
925b3233-d21e-4d7b-8634-ced40f348f3e	\N	Can you put it in a bag?	1	2026-10-19 21:01:26.42205+00	2026-10-19 21:01:26.42205+00	\N	f	\N
fdd6ede1-7bb7-40af-b744-942cf1591cfc	\N	Chili on the side, please.	1	2026-10-19 21:06:09.308078+00	2026-10-19 21:06:09.308078+00	\N	f	\N
994091f0-0b3b-48dc-a1bd-de161224df7a	\N	Can this food be prepared separately?	2	2026-10-20 20:07:36.327958+00	2026-10-20 20:11:42.81572+00	\N	t	\N
f1b8834d-db30-4ac8-b576-77785ed67fe2	\N	Are there any foods you're allergic to?	2	2026-10-20 20:00:21.380607+00	2026-10-20 20:11:42.81572+00	\N	t	\N
9d909578-4713-423a-b5df-7a8d40ec0c1d	\N	I can't breathe.	2	2026-10-21 10:57:05.651046+00	2026-10-21 18:57:51.436832+00	\N	t	\N
f28805eb-8c28-4a7f-9e62-e175c9b6edeb	\N	Someone is unconscious.	2	2026-10-21 11:32:09.491337+00	2026-10-21 18:57:51.436832+00	\N	t	\N
6751972f-ec94-4535-b68a-686ea9223d56	\N	\N	2	2026-07-12 20:12:09.200076+00	2026-10-16 11:34:47.268076+00	\N	f	\N
cad46881-7d40-49b0-bde7-da05de36ad31	\N	Can you speak English? (f)	2	2026-07-12 20:18:27.537938+00	2026-10-16 11:34:47.268076+00	\N	f	\N
b2a79960-224d-4308-9688-c9660fe52833	\N	See you later. / See you soon. / Until we meet again.	4	2026-07-18 00:29:35.332564+00	2026-10-16 12:08:41.733155+00	\N	t	\N
d36facf4-5070-433a-b9fe-58599af1c76a	\N	See you soon. / See you later!	4	2026-07-18 00:24:08.734387+00	2026-10-16 12:08:41.733155+00	\N	t	\N
dd398462-a44f-46b4-944f-6e8a88407c0f	\N	I am 25 years old.	2	2026-10-16 14:15:50.568237+00	2026-10-16 14:19:09.874404+00	\N	t	\N
6825ed96-da1a-4a87-bcb6-691410c41671	\N	Let me introduce myself.	2	2026-10-17 15:35:37.676235+00	2026-10-17 15:37:39.066297+00	\N	t	\N
08ba8b0b-0307-4524-9280-04543a012dfe	\N	Really? / Is that true?	3	2026-10-17 12:27:09.417663+00	2026-10-17 15:59:52.644103+00	\N	t	\N
8f46ec66-c16c-44e1-9997-e224ee34b77e	\N	This is mine.	1	2026-10-17 16:16:56.885573+00	2026-10-17 16:16:56.885573+00	\N	f	\N
77280e05-26b6-44a0-82ec-9068f4d858ef	\N	I understand well. / I get it completely.	1	2026-10-18 20:36:56.968265+00	2026-10-18 20:36:56.968265+00	\N	f	\N
9839c09f-0072-4503-bd6b-2bd537bcad68	\N	You've changed.	1	2026-10-18 20:47:57.572733+00	2026-10-18 20:47:57.572733+00	\N	f	\N
8a5ccb5c-d297-42a8-895d-9314b14cf303	\N	It's on the left. (f)	2	2026-10-18 17:52:31.638799+00	2026-10-18 21:03:04.342412+00	\N	t	\N
bdf05763-f85a-4091-be47-730dfa2d9876	\N	Where is the bathroom? (f)	4	2026-07-22 14:58:09.250635+00	2026-10-18 21:03:04.342412+00	\N	t	\N
9372a05e-04d7-4735-bc2a-e26138bbc7db	\N	That's fine. / Sure. / Ok.	2	2026-10-18 20:18:50.026737+00	2026-10-18 21:03:18.440116+00	\N	t	\N
3ad0ca2f-ba02-4395-9e72-920276c17e55	\N	I have one dog. (m)	2	2026-10-19 12:09:44.33584+00	2026-10-19 12:24:54.314031+00	\N	t	\N
5b803618-0fb0-4db9-b591-45946608779f	\N	Do you have any recommendations?	1	2026-10-19 20:56:56.031844+00	2026-10-19 20:56:56.031844+00	\N	f	\N
ee566f4a-b257-4721-8cea-0128c2aa773b	\N	Very delicious!	1	2026-10-19 21:02:34.782504+00	2026-10-19 21:02:34.782504+00	\N	f	\N
e226d561-7079-4294-9fa9-b0d3a905b980	\N	No vegetables, please. / Don't add vegetables.	1	2026-10-19 21:06:59.921877+00	2026-10-19 21:06:59.921877+00	\N	f	\N
53725f72-1751-4aef-b9d8-2099bf37e270	\N	I'm allergic to seafood.	2	2026-10-20 20:08:24.575563+00	2026-10-20 20:11:42.81572+00	\N	t	\N
95c3e222-ca17-4d79-b9af-80bd26c22b58	\N	Does anyone have any food allergies?	2	2026-10-20 20:01:24.122689+00	2026-10-20 20:11:42.81572+00	\N	t	\N
80e37977-be49-47f8-83d7-7ef68e47d578	\N	I feel dizzy.	2	2026-10-21 11:38:45.535162+00	2026-10-21 18:57:51.436832+00	\N	t	\N
8179b743-fc41-40d2-a001-1018779ce488	\N	He has chest pain. / They have chest pain. / She has chest pain.	2	2026-10-21 10:59:45.334835+00	2026-10-21 18:57:51.436832+00	\N	t	\N
b1403c3a-0bb4-487c-9150-721da21c93dc	\N	He is very handsome. / She is very handsome. / They are very handsome.	2	2026-07-15 11:36:27.612554+00	2026-10-16 11:34:47.268076+00	\N	f	\N
6f92dbcb-19fb-41a6-b520-92e86bd8425e	\N	How's the weather today?	2	2026-07-15 15:18:59.361021+00	2026-10-16 11:34:47.268076+00	\N	f	\N
08e2f88a-4285-4842-b045-791b8fdc2ba9	\N	I am from Thailand.	2	2026-10-16 13:59:45.965593+00	2026-10-16 14:19:09.874404+00	\N	t	\N
1b3c3590-bc23-41a5-888f-7eae9432872a	\N	A little spicy.	2	2026-10-17 14:10:13.473977+00	2026-10-17 14:10:24.548582+00	\N	f	\N
bc1840ef-5c02-4880-852f-bcfe138a43e7	\N	What does that mean? (f) / How do you translate this? (f)	2	2026-10-17 15:48:59.38298+00	2026-10-17 15:59:52.644103+00	\N	t	\N
78235781-ebd7-4c71-8d1b-110e160a7dbd	\N	Is this yours? / This is yours right?	3	2026-10-17 16:17:46.474798+00	2026-10-18 16:36:10.409545+00	\N	f	\N
65c4d72c-5449-4996-a8c3-9d528b0eb62c	\N	Did you forget already?	1	2026-10-18 20:39:11.261817+00	2026-10-18 20:39:11.261817+00	\N	f	\N
7dc22d62-098a-448a-85f9-b624289dcaae	\N	Why did you break up?	1	2026-10-18 20:52:08.491261+00	2026-10-18 20:52:08.491261+00	\N	f	\N
13bd0cbe-b2b4-4a70-b0be-1ba97bd53fc0	\N	It's inside. (m)	2	2026-10-18 17:53:43.567506+00	2026-10-18 21:03:04.342412+00	\N	t	\N
6473fc5e-7762-4a09-94b9-e25197a05fd7	\N	For sure. / Definetly. / Certainly.	2	2026-10-18 20:23:53.353566+00	2026-10-18 21:03:18.440116+00	\N	t	\N
5084e3f8-7e66-4c3e-bdb3-deacdc4f1720	\N	Where are you from?	2	2026-10-18 18:35:42.780016+00	2026-10-18 21:03:27.7852+00	\N	t	\N
735fce8d-9294-4b8e-8df0-b0110a97620e	\N	Is it hot?	2	2026-10-17 12:14:55.022692+00	2026-10-18 21:05:16.381044+00	\N	t	\N
14e8d184-addc-4cf2-9210-ba16d4437c5c	\N	We have 5 fish. / I have 5 fish.	2	2026-10-19 12:22:07.776654+00	2026-10-19 12:24:54.314031+00	\N	t	\N
6cc28cb0-4f35-49ae-b674-3182b7c5939c	\N	I'll have the same.	1	2026-10-19 20:58:16.464246+00	2026-10-19 20:58:16.464246+00	\N	f	\N
6d0e5b4d-5046-4c0d-ac5f-c1d7ada2b1ef	\N	Is it sweet?	1	2026-10-19 21:03:08.545039+00	2026-10-19 21:03:08.545039+00	\N	f	\N
f6d72fa6-f542-408c-bcef-700fe9acbc05	\N	One coffee, please.	1	2026-10-20 19:40:46.938366+00	2026-10-20 19:40:46.938366+00	\N	f	\N
432d5473-e46c-4a67-ad5d-01c2b0451eb7	\N	He is allergic to shrimp. / She is allergic to shrimp. / They are allergic to shrimp.	2	2026-10-20 20:09:47.919812+00	2026-10-20 20:11:42.81572+00	\N	t	\N
f4b77908-99b7-44a9-89a0-b12d9344ad9e	\N	I'm allergic to peanuts.	2	2026-10-20 20:03:50.81973+00	2026-10-20 20:11:42.81572+00	\N	t	\N
dd6b683c-5a6d-491a-944e-1c041d976a70	\N	He is bleeding. / They are bleeding. / She is bleeding.	2	2026-10-21 11:02:32.649236+00	2026-10-21 18:57:51.436832+00	\N	t	\N
5800d511-ae7b-4682-835a-a8a623bce07d	\N	Whose is that one?	1	2026-10-21 19:06:23.722068+00	2026-10-21 19:06:23.722068+00	\N	f	\N
22e9d665-6a37-4697-bbb3-956a69b0b573	\N	Please make it a little spicy. / A little spicy, please.	2	2026-07-30 20:30:50.284993+00	2026-10-16 11:34:47.268076+00	\N	f	\N
73a6e6dd-136d-4d5e-8024-b3e53681375b	\N	I'm sorry / Excuse me (m)	4	2026-07-11 17:24:44.842722+00	2026-10-16 12:02:35.734864+00	\N	t	\N
1da74290-c064-4069-bb09-0b73a2b08b49	\N	I'm sorry / Excuse me (f)	5	2026-07-11 17:24:06.775805+00	2026-10-16 12:02:35.734864+00	\N	t	\N
94292da6-5eec-4057-bd10-4ae5d06a3430	\N	Thank you (m)	4	2026-07-11 17:18:14.957255+00	2026-10-16 12:02:35.734864+00	\N	t	\N
60964f68-31b0-4766-8633-d5c8c0b01baa	\N	Thank you (f)	5	2026-07-11 17:17:29.885867+00	2026-10-16 12:02:35.734864+00	\N	t	\N
af766c32-a7de-4de1-ac45-216ddfc07e97	\N	It's ok. / Don't worry about it. / It's fine. / Never mind. / No problem	5	2026-07-12 00:00:42.002167+00	2026-10-16 12:02:35.734864+00	\N	t	\N
2de9ad49-d28e-42d0-b257-38543e03988f	\N	Yes (f)	4	2026-07-12 15:20:35.177701+00	2026-10-16 12:02:35.734864+00	\N	t	\N
94f7ca91-9d15-4d06-ad6b-28690ee0a025	\N	No (m)	3	2026-07-12 15:21:40.001866+00	2026-10-16 12:02:35.734864+00	\N	t	\N
14f7bbb3-ecf5-4a08-ada4-1e160f544976	\N	Incorrect / No (m)	3	2026-07-12 15:22:24.883965+00	2026-10-16 12:02:35.734864+00	\N	t	\N
e679f83d-2945-4b9f-a987-663a9dda0630	\N	Can you speak Thai?	3	2026-07-12 20:21:27.444712+00	2026-10-16 11:34:47.268076+00	\N	f	\N
3afb5394-3426-4dab-b36f-1f2801078d70	\N	The sun is setting.	2	2026-08-28 20:39:21.600936+00	2026-10-16 11:34:47.268076+00	\N	f	\N
b6cca451-9bd0-46a6-8db6-48c632ce8d88	\N	Please, go ahead / Please, help yourself / Please, I invite you to...	3	2026-07-12 00:03:25.074299+00	2026-10-16 11:34:47.268076+00	\N	f	\N
bc029dd2-3831-4968-a25c-240820487687	\N	(I'm) kidding! (m) / (I'm) joking / (I'm) teasing (you)	2	2026-07-12 00:08:09.719726+00	2026-10-16 11:34:47.268076+00	\N	f	\N
94249b9b-94c4-4022-bd5b-7751dbbfc85c	\N	Help! / Please help!	2	2026-07-12 00:12:52.925014+00	2026-10-16 11:34:47.268076+00	\N	f	\N
eabc8814-f8d0-483f-81df-0be16fd414a0	\N	You’ve crossed the line already / You've gone too far / You've overstepped	3	2026-07-12 13:40:09.809283+00	2026-10-16 11:34:47.268076+00	\N	f	\N
0d741e4e-2cd1-4fab-b6a6-6877498991fe	\N	Easy for you to say / Sounds simple, right?	2	2026-07-12 13:53:28.890264+00	2026-10-16 11:34:47.268076+00	\N	f	\N
0f9a5c5e-c5d7-493c-822b-e7cad9106506	\N	Always blaming others / Keep blaming other people / You always blame other people	3	2026-07-12 14:00:40.547537+00	2026-10-16 11:34:47.268076+00	\N	f	\N
03a7a0a7-f199-460a-b8f7-711fc0c24f81	\N	Sweet dreams! / Dream well	2	2026-07-12 15:31:14.013905+00	2026-10-16 11:34:47.268076+00	\N	f	\N
4dd47272-1cf4-40e5-b703-74223bca86aa	\N	I love you	2	2026-07-12 15:39:26.332543+00	2026-10-16 11:34:47.268076+00	\N	f	\N
68174184-70bc-4b58-a256-56cfd3578791	\N	I love you / I love her (m)	2	2026-07-12 15:41:18.907036+00	2026-10-16 11:34:47.268076+00	\N	f	\N
80b343ab-5423-4a0a-88f2-f1e1d2586734	\N	Calm down / Relax / Stay calm / Take it easy (f)	2	2026-07-12 16:04:18.886242+00	2026-10-16 11:34:47.268076+00	\N	f	\N
de4efe17-fa92-40a5-b5bb-5764d9edb34a	\N	When did you fall in love with her / him / them.	2	2026-07-14 13:08:50.756791+00	2026-10-16 11:34:47.268076+00	\N	f	\N
32340036-a2f2-45d9-b99b-c8b096bbf32b	\N	I don't want to fall in love with anyone again	2	2026-07-14 13:52:38.269039+00	2026-10-16 11:34:47.268076+00	\N	f	\N
62776da7-16fb-4472-ad06-7bd169e8cb33	\N	Let it go / Forget it / It's not important / Let it be / Never mind	3	2026-07-12 18:36:12.203727+00	2026-10-16 11:34:47.268076+00	\N	f	\N
580e921b-cdcb-4dba-90be-932917021465	\N	Don't generalize / Don't paint everyone with the same brush	2	2026-07-12 18:59:24.84969+00	2026-10-16 11:34:47.268076+00	\N	f	\N
96dc762a-2c3e-4772-a1d0-6848dc052e63	\N	This is clearly a generalization / That's obviously stereotyping / This is a blatant overgeneralization / That is such a massive generalization	3	2026-07-12 19:07:39.459855+00	2026-10-16 11:34:47.268076+00	\N	f	\N
714016dc-e0da-44d4-9986-79b94df84fee	\N	I don't want to argue anymore.	3	2026-07-12 18:29:16.094382+00	2026-10-16 11:34:47.268076+00	\N	f	\N
3f42ba8b-9f0d-496f-aad9-df09e37524c4	\N	I miss you too.	3	2026-07-12 16:16:02.42566+00	2026-10-16 11:34:47.268076+00	\N	f	\N
b74662a4-c5e9-4a92-9468-2fc47a3b4c2d	\N	So what?	3	2026-07-12 19:10:59.179528+00	2026-10-16 11:34:47.268076+00	\N	f	\N
66be0c9f-1dba-40df-aa48-2e09bcbafb4f	\N	I miss you	4	2026-07-12 16:14:27.934534+00	2026-10-16 11:34:47.268076+00	\N	f	\N
f3ffc857-22c3-407f-9f1f-85cfcb1de9f1	\N	Keep fighting! / You can do it! / Keep going!	3	2026-07-12 16:11:44.841639+00	2026-10-16 11:34:47.268076+00	\N	f	\N
5105d2c7-c5ad-44da-9d5a-937738f6105b	\N	Be careful! / Watch out!	3	2026-07-12 15:24:28.909287+00	2026-10-16 11:34:47.268076+00	\N	f	\N
ef5da869-b652-4a25-b7f6-089974b64d4b	\N	Have you eaten yet?	2	2026-07-12 20:10:55.894514+00	2026-10-16 11:34:47.268076+00	\N	f	\N
e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	\N	I secretly like you / I have a crush on you / I have a crush on her	2	2026-07-14 14:06:09.815297+00	2026-10-16 11:34:47.268076+00	\N	f	\N
20071b94-7c71-4aba-a90d-b17f64967c97	\N	I used to have a crush on her / him / them.	2	2026-07-14 14:09:21.142162+00	2026-10-16 11:34:47.268076+00	\N	f	\N
302b8f91-4003-4e9c-8596-b06adfcab70b	\N	I fell in love with your smile / I'm captivated by your smile	2	2026-07-14 14:18:10.828706+00	2026-10-16 11:34:47.268076+00	\N	f	\N
d4e68862-d5f4-4e94-a5d7-f7b1f344b209	\N	I can speak English.	3	2026-07-12 20:19:46.577346+00	2026-10-16 11:34:47.268076+00	\N	f	\N
e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	\N	What should we eat? / What would be good to eat?	3	2026-07-14 15:12:29.688754+00	2026-10-16 11:34:47.268076+00	\N	f	\N
7c734fa1-b478-45b0-bc48-546195998d71	\N	We are watching a movie. / I am watching a movie.	3	2026-07-14 17:06:22.60252+00	2026-10-16 11:34:47.268076+00	\N	f	\N
ad2cfecc-8e1d-458c-99f7-fc4e9c2eee22	\N	What are (you) doing? / What are you doing (right now)?	4	2026-07-14 16:55:22.732784+00	2026-10-16 11:34:47.268076+00	\N	f	\N
72f3a119-648e-4baf-99cb-2410689f864c	\N	I am working (right now).	2	2026-07-14 16:58:50.257684+00	2026-10-16 11:34:47.268076+00	\N	f	\N
d706a862-f0ed-4a84-8a0b-146bb58e2261	\N	Ice is having a meal (right now). / I'm (Ice is) eating food right now. - if the speaker is named Ice	2	2026-07-14 17:09:43.670722+00	2026-10-16 11:34:47.268076+00	\N	f	\N
368c7896-f721-411e-bf26-247801866071	\N	I like watching the sunset.	3	2026-08-28 20:40:03.966557+00	2026-10-16 11:34:47.268076+00	\N	f	\N
88bf949b-e5bb-46a4-b527-e6bea5cd8215	\N	I like watching the sunrise.	3	2026-08-28 20:37:41.143129+00	2026-10-16 11:34:47.268076+00	\N	f	\N
2ae58d9a-4392-402b-9ede-ec5a6562ae6a	\N	Where is north? / Which way is north?	2	2026-08-29 13:34:44.839316+00	2026-10-16 11:34:47.268076+00	\N	f	\N
9e66c960-96a5-475d-ac6a-32928ef2b144	\N	Chiang Mai is north of Bangkok.	2	2026-08-29 14:58:43.840359+00	2026-10-16 11:34:47.268076+00	\N	f	\N
6d04eea0-8f76-4928-8d8b-bf1432dfb182	\N	I'm fine. / I'm well.	4	2026-07-14 14:44:37.783522+00	2026-10-16 12:08:41.733155+00	\N	t	\N
5945ce1a-b5c6-493a-8627-bebaafe0592e	\N	I'm from England.	2	2026-10-16 14:00:48.086808+00	2026-10-16 14:19:09.874404+00	\N	t	\N
0ecafd78-6258-45d9-a37a-12d892414459	\N	What is (your / his / her) nickname? / What is the nickname?	4	2026-07-14 14:57:15.464722+00	2026-10-17 15:32:07.016042+00	\N	f	\N
5553ab9d-ab62-41f5-8e6a-142be931ecfe	\N	Are you sure?	4	2026-07-12 19:14:16.07349+00	2026-10-17 13:35:10.572064+00	\N	f	\N
e78abdcc-17c8-4069-9382-ee6b58069340	\N	Medium spicy.	2	2026-10-17 14:14:51.957942+00	2026-10-17 14:16:15.950132+00	\N	f	\N
ca905226-6ae6-4de0-b59b-b4f57feecd7e	\N	My name is Ice. / I'm Ice.	5	2026-07-14 14:50:31.992933+00	2026-10-17 15:29:41.53077+00	\N	t	\N
75552068-b8f5-47e3-959e-b17744719375	\N	What is your name? (f)	3	2026-07-14 14:53:43.016542+00	2026-10-17 15:37:39.066297+00	\N	t	\N
3ba2e787-da94-4c20-9546-640efb2de8c9	\N	What should I call you?	3	2026-07-14 15:04:01.376702+00	2026-10-17 15:37:39.066297+00	\N	t	\N
619d07ee-c770-4a3d-8072-f2b6a8f83547	\N	Nice to meet you. / It is a pleasure to meet you.	3	2026-07-14 15:33:00.263104+00	2026-10-17 15:37:39.066297+00	\N	t	\N
9cbff467-d7e1-4f70-8b64-d71637374255	\N	My name is Somchai. / I am Somchai.	5	2026-07-14 14:52:01.912095+00	2026-10-17 15:37:39.066297+00	\N	t	\N
988163eb-b345-4329-adb4-e68352fb2544	\N	It's not mine. (m)	2	2026-10-17 16:18:33.377717+00	2026-10-17 16:29:43.274701+00	\N	f	\N
ac4404fe-f7ed-43e4-abbe-6885da7abf7d	\N	What? / Come again? (friendly)	4	2026-07-14 15:26:38.956355+00	2026-10-17 15:59:52.644103+00	\N	t	\N
b478a907-14d1-4b4c-b79e-3ed31e7aa7ae	\N	I don't understand	5	2026-07-12 16:09:26.90993+00	2026-10-17 15:59:52.644103+00	\N	t	\N
27090a94-576d-4f04-b11f-501a794b53e7	\N	Can you speak more slowly?	2	2026-10-17 15:50:55.067201+00	2026-10-17 15:59:52.644103+00	\N	t	\N
aeffd153-92fa-453b-bd15-4b3a7e61ce4d	\N	I understand. (f) / I understand already.	7	2026-07-12 16:08:48.381113+00	2026-10-17 15:59:52.644103+00	\N	t	\N
bf36137b-96c0-4f94-8932-1a9939e3f7f4	\N	How old are you? (f)	2	2026-10-18 18:33:51.575374+00	2026-10-18 21:03:27.7852+00	\N	t	\N
4912794f-a31f-48a2-b13e-f21a0107f308	\N	I don't want to win anymore.	1	2026-10-18 20:40:16.56871+00	2026-10-18 20:40:16.56871+00	\N	f	\N
038835de-1e2d-4608-900f-98827ff80582	\N	I think so. / I'd say so.	3	2026-10-18 20:25:42.54413+00	2026-10-18 21:03:18.440116+00	\N	t	\N
a467fea2-ef7e-497b-ade5-6e76469154dd	\N	How are you? / Are you well?	5	2026-07-12 20:24:18.779894+00	2026-10-18 21:05:16.381044+00	\N	t	\N
130c07d6-e903-4e8f-8224-3389c26bc515	\N	I am waiting (for you). / Your older sibling is waiting.	2	2026-07-14 17:15:33.398556+00	2026-10-16 11:34:47.268076+00	\N	f	\N
bb58d920-56b6-4afe-a5d3-3626ddf1efb2	\N	What time is it (now)?	2	2026-07-14 17:23:06.680466+00	2026-10-16 11:34:47.268076+00	\N	f	\N
da5dee00-8325-4fdc-a0a9-334324b68cc5	\N	Where are you going? (f)	5	2026-07-14 17:28:22.046878+00	2026-10-16 11:34:47.268076+00	\N	f	\N
be8f34f5-ca5d-4e92-804a-7fcb2a60fd7b	\N	What are we?	2	2026-07-14 18:15:11.811312+00	2026-10-16 11:34:47.268076+00	\N	f	\N
f536e2f1-f0a2-49bc-8c70-f36bafc4d381	\N	We are dating each other. / The two of us, we are dating (currently).	2	2026-07-14 18:26:13.490405+00	2026-10-16 11:34:47.268076+00	\N	f	\N
07a4f22c-f509-470d-b953-8460a0c75c58	\N	I fell in love with you / I feel in love with her	3	2026-07-14 12:59:31.264706+00	2026-10-16 11:34:47.268076+00	\N	f	\N
506d05ca-dd18-42e3-96c1-4564546f2533	\N	She is very beautiful. / He is very beautiful. / They are very beautiful.	2	2026-07-15 11:34:06.972558+00	2026-10-16 11:34:47.268076+00	\N	f	\N
6f095bab-9373-4482-a9e6-9a89f0816f2e	\N	It's raining again.	3	2026-07-15 15:22:56.242865+00	2026-10-16 11:34:47.268076+00	\N	f	\N
c787a0b5-ddac-4f82-8d76-2e36c93ff138	\N	Looks like it's going to rain.	2	2026-07-15 15:30:34.89454+00	2026-10-16 11:34:47.268076+00	\N	f	\N
b3da75bc-70bd-45f6-8a84-edad866138e3	\N	The weather is nice today.	2	2026-07-15 15:44:54.511441+00	2026-10-16 11:34:47.268076+00	\N	f	\N
5d4a2702-331f-4574-8400-5c7da1d17a5b	\N	I hope it doesn't rain.	2	2026-07-15 15:47:59.25664+00	2026-10-16 11:34:47.268076+00	\N	f	\N
9ef37779-6967-4ce5-8d70-c6e94ae9ed14	\N	Sorry that I came late. / I apologize for being late.	2	2026-07-17 11:48:57.821315+00	2026-10-16 11:34:47.268076+00	\N	f	\N
941b8f4f-2543-4f32-9197-389d424a2144	\N	Why are you late?	2	2026-07-17 11:53:32.086867+00	2026-10-16 11:34:47.268076+00	\N	f	\N
a33cc97d-3e8f-4a90-8279-5083d42c88da	\N	I already ate. / I had a meal already.	2	2026-07-18 00:49:05.776998+00	2026-10-16 11:34:47.268076+00	\N	f	\N
8d216e72-95f0-4e08-a5d4-9b9f1a79c759	\N	(You can) call me New. (m)	3	2026-07-19 13:52:44.3408+00	2026-10-16 11:34:47.268076+00	\N	f	Usually used when telling someone to use your nickname.
010ec073-74fe-413c-af51-7897e95e21f7	\N	Hear me out first / Listen to the whole thing first / Let me finish first	3	2026-07-12 18:46:49.196716+00	2026-10-16 11:34:47.268076+00	\N	f	\N
4ed966f8-0f59-4c12-a135-54be64d925bf	\N	Take a seat first. / Sit down first. / Have a seat. / Please sit down first.	2	2026-07-19 13:17:47.20676+00	2026-10-16 11:34:47.268076+00	\N	f	\N
b6ce3328-3887-47ec-b5d6-aa45464e96d3	\N	Wait a moment. / Wait a second. / Just a moment.	2	2026-07-19 13:27:55.475953+00	2026-10-16 11:34:47.268076+00	\N	f	\N
4154a41c-3533-405f-a84d-cb27c4e324eb	\N	Hear me out first. / Listen to me first. (m)	2	2026-07-19 13:29:37.150936+00	2026-10-16 11:34:47.268076+00	\N	f	\N
6c80df19-cf8a-491d-bff8-aa190671e5e6	\N	Take your time. / No need to rush. / It’s okay to do it slowly.	2	2026-07-19 13:35:38.364261+00	2026-10-16 11:34:47.268076+00	\N	f	\N
cbaf3689-4999-4188-8997-29bdebd4a75d	\N	Can you help me please?	2	2026-07-19 13:45:30.551531+00	2026-10-16 11:34:47.268076+00	\N	f	\N
e4fb5e47-a1b5-482d-a13f-4eba8168a590	\N	Please tell me. / Could you let me know? / Tell me.	2	2026-07-19 13:50:47.599975+00	2026-10-16 11:34:47.268076+00	\N	f	\N
4aadb1b6-308a-4532-9df7-601e80d0de60	\N	Fire! / Fire is burning! / There is a fire!	3	2026-07-19 13:58:10.54739+00	2026-10-16 11:34:47.268076+00	\N	f	\N
16e6375d-ce10-4c15-9703-28cb3b6e1736	\N	I don't know him. / I don't know her. / I don't know them.	2	2026-07-19 14:00:53.244397+00	2026-10-16 11:34:47.268076+00	\N	f	\N
625d7065-500b-4ffe-9d61-ebaa7e0039f6	\N	Leave me alone! / Stay out of it! / Don't bother me. / Don't mess with me.	3	2026-07-19 14:08:26.240639+00	2026-10-16 11:34:47.268076+00	\N	f	\N
4e2b9955-5a3a-480f-b9da-ea0191aea144	\N	We’re siblings, (you know).	2	2026-07-19 14:18:44.31186+00	2026-10-16 11:34:47.268076+00	\N	f	\N
6b2d5c12-bd5f-4014-bb2b-4993ddc7b3a7	\N	We live together.	2	2026-07-19 14:34:58.892479+00	2026-10-16 11:34:47.268076+00	\N	f	\N
65c17f3b-d36a-4b22-8b80-378fe5214934	\N	We grew up together.	2	2026-07-19 14:38:44.431609+00	2026-10-16 11:34:47.268076+00	\N	f	\N
ff1a6ded-6a8f-4468-b6d9-32e803a4252f	\N	I have thought this way for a long time.	2	2026-07-19 14:57:36.838178+00	2026-10-16 11:34:47.268076+00	\N	f	\N
2e90c591-98a3-4102-af43-38925a4da785	\N	Family is the most important.	2	2026-07-19 15:00:43.054475+00	2026-10-16 11:34:47.268076+00	\N	f	\N
f2324e26-9cd2-47d0-8ded-23181042d756	\N	He has changed a lot. / She has changed a lot. / They have changed a lot.	3	2026-07-19 14:51:03.512341+00	2026-10-16 11:34:47.268076+00	\N	f	\N
77637b65-3285-46b7-991d-2d4be54c7f98	\N	I am lost. (m)	2	2026-07-22 15:04:34.168153+00	2026-10-16 11:34:47.268076+00	\N	f	\N
cecfefb8-8c88-46cf-91ab-a306665162ce	\N	Can (we / I / you) walk there? / Can we go on foot?	2	2026-07-22 15:17:30.217672+00	2026-10-16 11:34:47.268076+00	\N	f	\N
1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	\N	How long does it take? / How many minutes does it take?	2	2026-07-22 15:22:28.227259+00	2026-10-16 11:34:47.268076+00	\N	f	\N
abad63f1-2a8e-406c-a8f2-0454d945fc8b	\N	Go this way, right?	2	2026-07-22 16:11:00.128765+00	2026-10-16 11:34:47.268076+00	\N	f	\N
7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	\N	Turn left there, right? / Should I turn left right there?	2	2026-07-22 16:17:13.368104+00	2026-10-16 11:34:47.268076+00	\N	f	\N
71bc51a4-0ed7-4ee2-a3cf-e89c1488cea0	\N	Where do I turn? / Where do I make a turn?	2	2026-07-22 16:20:57.901082+00	2026-10-16 11:34:47.268076+00	\N	f	\N
9046c00f-4b8a-4e29-adad-b98dfe116fb9	\N	The shop is on the right.	2	2026-07-22 16:31:41.44417+00	2026-10-16 11:34:47.268076+00	\N	f	\N
365afb4d-ff8d-4b6c-852e-6c5e842d293d	\N	I'm hungry (now).	2	2026-07-23 14:12:54.403059+00	2026-10-16 11:34:47.268076+00	\N	f	\N
a78015d3-584a-4d73-8e32-548a71b8b2d3	\N	I'm tired.	3	2026-07-23 14:09:02.236646+00	2026-10-16 11:34:47.268076+00	\N	f	\N
2daa28d1-9edd-4993-8547-539d8f9b2a1e	\N	I'm very sleepy. / We're very sleepy.	2	2026-07-23 14:18:54.79309+00	2026-10-16 11:34:47.268076+00	\N	f	\N
80935951-a4ef-4529-a5ad-828616417213	\N	I feel good.	2	2026-07-23 14:25:29.262177+00	2026-10-16 11:34:47.268076+00	\N	f	\N
e8156625-bceb-4770-9a34-10a3c106b767	\N	I don't feel well. / I'm feeling unwell.	3	2026-07-23 14:36:20.188612+00	2026-10-16 11:34:47.268076+00	\N	f	\N
01246217-ab3e-41df-b9c8-da7d20590036	\N	I'm happy.	2	2026-07-23 14:40:00.531383+00	2026-10-16 11:34:47.268076+00	\N	f	\N
85efe4fd-955b-4168-8754-99493ab889af	\N	I would like to order food.	2	2026-07-30 20:24:13.480554+00	2026-10-16 11:34:47.268076+00	\N	f	\N
fc370890-c3b4-44e8-a05d-55c6a698ed8b	\N	I'm leaving now. / I'm going now. / I'll head off first.	5	2026-07-18 00:39:08.999768+00	2026-10-16 12:08:41.733155+00	\N	t	\N
9573044c-ce35-4f79-a6d9-1694eb32dd57	\N	Is it close? / Is it near?	3	2026-07-22 15:25:31.802911+00	2026-10-17 12:09:28.007036+00	\N	f	\N
4bb1d6d5-9d7e-477f-92b0-13c44770cfb8	\N	Are you single?	3	2026-07-14 18:32:19.028646+00	2026-10-17 12:18:29.015033+00	\N	f	\N
1ec56b2d-df16-48bc-98b3-a7a9b1e05644	\N	Do you have a boyfriend? / Do you have a girlfriend? / Do you have a partner?	3	2026-07-18 00:43:52.293407+00	2026-10-17 12:18:36.110834+00	\N	f	\N
82176c5c-89e3-4b69-8cab-7fefef5b1879	\N	Can I have the menu, please?	3	2026-07-30 20:21:58.938368+00	2026-10-17 14:05:06.375026+00	\N	f	\N
4c67223d-d4a7-4617-bf8e-019f3ebb6729	\N	Not spicy.	3	2026-07-30 20:28:15.292363+00	2026-10-17 14:08:53.359784+00	\N	f	\N
4fa44a23-49de-49b8-8d7e-6277126e0345	\N	What is your surname? / What is your last name?	3	2026-07-19 11:34:41.550526+00	2026-10-17 15:30:17.770683+00	\N	f	\N
8a425c60-1e64-4af5-b341-7f91eb54cefb	\N	His surname is Suwan. / Her surname is Suwan. / They go buy the surname Suwan.	3	2026-07-19 11:51:22.73345+00	2026-10-17 15:30:47.057899+00	\N	f	\N
7ce11e63-75d4-4178-a8b4-764729a9e1b6	\N	I would like you to meet Somchai. / Let me introduce you to Somchai.	4	2026-07-17 20:33:49.81056+00	2026-10-17 15:31:00.717149+00	\N	f	\N
596f5935-3694-4ef6-9b44-998425459e8a	\N	I'm sorry, I can't remember your name.	4	2026-07-16 13:01:43.749429+00	2026-10-17 15:31:09.623505+00	\N	f	\N
c305b49d-499a-4d69-96ff-8be56196d7e1	\N	Let me introduce my friend. / I'd like to introduce my friend.	5	2026-07-17 20:25:45.614294+00	2026-10-17 15:37:39.066297+00	\N	t	\N
0942ce39-a5d1-470c-8a13-4c6561bcd1d8	\N	We are biological siblings. / We are siblings of the same womb. / We are siblings from the same mother.	4	2026-07-19 14:32:15.057312+00	2026-10-17 16:05:07.092512+00	\N	f	\N
90d84d1c-30bb-4949-9be3-cdf04f6078a2	\N	Where are you from? / What is your nationality?	5	2026-07-18 00:37:14.221589+00	2026-10-18 21:03:27.7852+00	\N	t	\N
acf90969-c881-441d-91ca-7c94834b1385	\N	And what about you? / How about you? / And you?	5	2026-07-19 12:07:07.618445+00	2026-10-17 15:59:52.644103+00	\N	t	\N
82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	\N	Is it far?	4	2026-07-22 15:24:11.298488+00	2026-10-18 21:05:16.381044+00	\N	t	\N
1653c88f-d90b-423e-8b38-3aa54860cb99	\N	Where is the restaurant?	4	2026-07-22 15:29:58.641848+00	2026-10-18 21:03:04.342412+00	\N	t	\N
47111217-82c9-4d1d-97cb-acf67854743f	\N	Where is the train station?	4	2026-07-22 15:01:24.070587+00	2026-10-18 21:03:04.342412+00	\N	t	\N
0cdd139b-b114-45bb-8373-c046683bd09a	\N	We are biological siblings. / We are real siblings.	3	2026-07-19 14:25:18.711809+00	2026-10-16 11:34:47.268076+00	\N	f	\N
e6a8c5a7-27b2-4382-ae96-840c5842434f	\N	Try it. / Give it a try.	3	2026-07-19 13:38:34.552504+00	2026-10-16 11:34:47.268076+00	\N	f	\N
318de17c-e8b8-4db6-8d53-c225c4303823	\N	The food is very delicious. / The food is very good.	2	2026-07-30 20:33:09.552797+00	2026-10-16 11:34:47.268076+00	\N	f	\N
0b415d8e-734a-4ff0-b7fb-d0ed6737bf7b	\N	Can I have extra ice, please? / I'd like more ice, please. / Could I have more ice, please?	2	2026-07-30 20:37:29.840232+00	2026-10-16 11:34:47.268076+00	\N	f	\N
c926039a-e4a8-4007-a78b-b40c39cd62f9	\N	\N	2	2026-07-30 20:41:09.479879+00	2026-10-16 11:34:47.268076+00	\N	f	\N
a8551464-09c4-4530-ad6b-cd3450020d59	\N	Could I have chopsticks too, please? / Can I also get chopsticks, please?	2	2026-07-30 20:44:32.756959+00	2026-10-16 11:34:47.268076+00	\N	f	\N
4909ed42-2acf-4a6f-a5c6-0c15bbdabb56	\N	How much is this?	2	2026-07-30 21:03:22.969874+00	2026-10-16 11:34:47.268076+00	\N	f	\N
95642c20-f5db-4f5b-bae5-571d0be59c0e	\N	I'll pay by card.	3	2026-07-30 21:08:52.067048+00	2026-10-16 11:34:47.268076+00	\N	f	\N
3a9c898c-be9e-4d57-a5e6-9020acaac454	\N	I'll use a card. / I'll pay by card.	2	2026-07-30 21:10:42.500275+00	2026-10-16 11:34:47.268076+00	\N	f	\N
f21e6d0b-71a3-454c-be66-f219008df5de	\N	I'll pay in cash.	2	2026-07-30 21:12:47.611564+00	2026-10-16 11:34:47.268076+00	\N	f	\N
adea4783-10b8-4314-ae68-cb8c31f02dc4	\N	Do you accept credit cards?	2	2026-07-30 21:16:48.536412+00	2026-10-16 11:34:47.268076+00	\N	f	\N
25a3f68f-0fde-4bf9-993a-15ac5c89c559	\N	I have an appointment with the doctor.	2	2026-07-31 09:25:07.262854+00	2026-10-16 11:34:47.268076+00	\N	f	\N
09a0265a-39a6-4370-abc2-914463f5a500	\N	I have a headache. / My head hurts.	3	2026-07-31 09:29:26.059508+00	2026-10-16 11:34:47.268076+00	\N	f	\N
39794236-b2c4-460d-b1e8-22cd01671d4c	\N	I have three siblings.	2	2026-08-08 22:12:57.151985+00	2026-10-16 11:34:47.268076+00	\N	f	\N
315c75b3-623c-4d25-ac2b-55de187e5e0a	\N	My family has five people.	3	2026-08-08 22:11:13.008591+00	2026-10-16 11:34:47.268076+00	\N	f	\N
0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	\N	He has one older brother. / She has one older brother. / They have one older brother.	2	2026-08-08 22:17:14.891598+00	2026-10-16 11:34:47.268076+00	\N	f	\N
63ca3e07-ea8f-4935-bb96-361625702286	\N	I don't have any siblings. (m)	2	2026-08-08 22:25:00.671769+00	2026-10-16 11:34:47.268076+00	\N	f	\N
e285ac10-ec9c-42a9-b45e-3bff62379c5c	\N	I am the oldest child.	2	2026-08-08 22:30:42.636492+00	2026-10-16 11:34:47.268076+00	\N	f	\N
34a82dce-e3c5-47b9-90c3-2939d035f28c	\N	He is the middle child. / She is the middle child. / They are the middle child.	2	2026-08-08 22:33:19.815457+00	2026-10-16 11:34:47.268076+00	\N	f	\N
33560d31-49b3-49ac-bb67-9b379ab273cf	\N	I live with my family.	2	2026-08-08 22:39:21.00785+00	2026-10-16 11:34:47.268076+00	\N	f	\N
5352a0ac-0ff3-4112-ac76-f25cffaa4c25	\N	My family isn't very big.	2	2026-08-08 22:41:51.775529+00	2026-10-16 11:34:47.268076+00	\N	f	\N
bc6042e5-d7a6-4e69-b224-957b34a1f4ac	\N	What is this?	3	2026-08-07 16:23:10.61562+00	2026-10-16 11:34:47.268076+00	\N	f	\N
d69e852c-f635-4caa-8211-b82b6dbeb51d	\N	Today is unbearably hot. / Today it's hot enough (I) could die.	4	2026-07-15 15:36:15.826808+00	2026-10-16 11:34:47.268076+00	\N	f	\N
2ac2599f-1933-4cac-835f-4e6a43121b37	\N	What happened?	3	2026-08-09 10:57:44.227133+00	2026-10-16 11:34:47.268076+00	\N	f	\N
c1579f77-3977-4956-9082-594d7edaaaf7	\N	What are you doing tomorrow?	2	2026-08-09 11:00:59.751485+00	2026-10-16 11:34:47.268076+00	\N	f	\N
5d46fe39-084b-41b3-9f5b-45e37bed517d	\N	Do you have any plans?	2	2026-08-09 11:12:09.415776+00	2026-10-16 11:34:47.268076+00	\N	f	\N
246e5bac-1a3c-4ef1-ac3b-dd059212be33	\N	Do you have any plans this weekend?	2	2026-08-09 11:15:23.144069+00	2026-10-16 11:34:47.268076+00	\N	f	\N
2ddc2572-ee64-4769-98d4-a93d84299bef	\N	Are you free tonight?	2	2026-08-09 11:18:07.841694+00	2026-10-16 11:34:47.268076+00	\N	f	\N
0cfac981-7ff3-477f-8e96-3688051f7eff	\N	He has been unemployed for three months now. / They has been unemployed for three months now. / She has been unemployed for three months now.	2	2026-08-09 11:23:55.944967+00	2026-10-16 11:34:47.268076+00	\N	f	\N
40d39b8d-8402-4a45-b2b6-f6ac1f3fe592	\N	Sounds good. / That sounds good.	2	2026-08-09 11:29:51.198751+00	2026-10-16 11:34:47.268076+00	\N	f	\N
ee0fe609-522a-4978-9d9f-e435aac37350	\N	We have a meeting this afternoon.	2	2026-08-09 11:46:31.595666+00	2026-10-16 11:34:47.268076+00	\N	f	\N
d2c868f1-64b8-43bd-bead-e3322fa37082	\N	Today I woke up at 7 o’clock.	2	2026-08-09 14:38:46.131803+00	2026-10-16 11:34:47.268076+00	\N	f	\N
c43616a3-1ff4-4ae5-bbfc-9f485a09cb5f	\N	I'm going to take a shower first. / Take a shower first.	2	2026-08-10 18:30:33.488335+00	2026-10-16 11:34:47.268076+00	\N	f	\N
c7a96266-53db-45c4-af43-cb2fb06026ec	\N	I usually wake up early.	2	2026-08-10 18:39:27.744536+00	2026-10-16 11:34:47.268076+00	\N	f	\N
0d990701-9ce0-4db8-982b-55700e6054e0	\N	Is it dangerous?	2	2026-08-10 20:26:54.799383+00	2026-10-16 11:34:47.268076+00	\N	f	\N
c1edfb92-d22f-47d2-b16c-33e988c992dd	\N	I am still a child. / I'm still young. / I'm still a kid.	3	2026-08-10 20:45:54.754285+00	2026-10-16 11:34:47.268076+00	\N	f	\N
78d060a9-5e4b-48a3-a64b-dff2fdb515f0	\N	I’m going to go take a shower.	3	2026-08-10 18:29:21.080472+00	2026-10-16 11:34:47.268076+00	\N	f	\N
767653da-5be0-405c-bbca-b2c82aa92919	\N	He is still sleeping. / She is still sleeping. / They are still sleeping.	3	2026-08-10 20:47:26.991056+00	2026-10-16 11:34:47.268076+00	\N	f	\N
e2662c74-ce5e-4fd4-b048-4ba45cf45fbb	\N	Is something wrong? / What's the matter? / Is there something? / What's up?	3	2026-08-13 17:34:34.993963+00	2026-10-16 11:34:47.268076+00	\N	f	\N
137f83eb-7935-43a4-a610-9d2bcada4640	\N	I'm sorry. / My condolences.	2	2026-08-13 17:51:13.365398+00	2026-10-16 11:34:47.268076+00	\N	f	\N
6d520f20-b110-410e-8c52-5f2e3aa1e629	\N	He is so in love lately. / She is crazy in love lately. / They are just so in love lately.	3	2026-08-14 13:33:06.329683+00	2026-10-16 11:34:47.268076+00	\N	f	\N
13b14810-0b22-4d99-a35d-26671ebd22de	\N	Those two are so in love lately. / Lately the two of them are just so madly in love.	2	2026-08-14 13:38:41.333429+00	2026-10-16 11:34:47.268076+00	\N	f	\N
e21938f5-c84c-4104-89fd-a030234cb5de	\N	Well done! / Really good! / That's really impressive! / Great job!	3	2026-08-14 13:49:36.623987+00	2026-10-16 11:34:47.268076+00	\N	f	\N
de1acd25-0f59-4844-99c8-6c7deb411b8a	\N	I already know.	2	2026-08-14 13:52:27.479778+00	2026-10-16 11:34:47.268076+00	\N	f	\N
2c320f47-0559-420e-bc4f-68b434019014	\N	Are you married? / Did you get married?	2	2026-08-15 13:34:27.676971+00	2026-10-16 11:34:47.268076+00	\N	f	\N
feccd93e-c6cc-4500-bc9a-6d2bfbb22063	\N	It is hot today. / The weather is hot today.	2	2026-08-15 13:38:36.278612+00	2026-10-16 11:34:47.268076+00	\N	f	\N
819f188f-a2ca-4946-82a1-9fb35db50fa8	\N	It is sunny today.	2	2026-08-15 13:43:23.784986+00	2026-10-16 11:34:47.268076+00	\N	f	\N
672f910e-25b4-4361-9dff-079f53023c40	\N	It is not sunny today. / There is no sunshine today.	2	2026-08-15 13:45:10.016667+00	2026-10-16 11:34:47.268076+00	\N	f	\N
f18bca2c-d54e-470a-8277-d12c566d5f91	\N	What season is it now?	2	2026-08-15 13:50:33.175644+00	2026-10-16 11:34:47.268076+00	\N	f	\N
609dc2fa-cfe8-4726-81ae-4763378d7ba8	\N	It is very cloudy today. / There are a lot of clouds today.	2	2026-08-15 14:01:38.2739+00	2026-10-16 11:34:47.268076+00	\N	f	\N
2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	\N	It is very windy today. / the wind is very strong today.	2	2026-08-15 14:10:40.424433+00	2026-10-16 11:34:47.268076+00	\N	f	\N
d74f56c7-3f54-4be3-bc61-d1ce2756472e	\N	A storm is coming.	2	2026-08-15 14:16:37.527957+00	2026-10-16 11:34:47.268076+00	\N	f	\N
448e8871-f835-4aad-8428-279b90ae21ba	\N	The storm is very strong.	2	2026-08-15 14:17:37.174352+00	2026-10-16 11:34:47.268076+00	\N	f	\N
60246017-3a33-4ad4-8ec3-66e47cf0a8d5	\N	There was a storm last night.	2	2026-08-15 14:18:52.197349+00	2026-10-16 11:34:47.268076+00	\N	f	\N
d29e1418-1d14-4f4e-9c2d-0b0edf9b1b36	\N	The thunder was really loud last night.	2	2026-08-15 14:20:59.564882+00	2026-10-16 11:34:47.268076+00	\N	f	\N
f8e5d91e-1973-469d-a0f1-01aba151e440	\N	Can you hear the thunder?	2	2026-08-15 14:23:30.286495+00	2026-10-16 11:34:47.268076+00	\N	f	\N
fb68f487-7332-4fbb-95e5-4e115211e6f4	\N	I'm heartbroken.	2	2026-08-25 21:50:24.594098+00	2026-10-16 11:34:47.268076+00	\N	f	\N
0ea1a418-6d41-45b0-9304-b5af470af768	\N	I still miss them.	2	2026-08-25 21:51:33.545217+00	2026-10-16 11:34:47.268076+00	\N	f	\N
8acb2782-5d25-42b7-936d-0190d892bed0	\N	I can't forget them.	2	2026-08-25 21:53:56.923037+00	2026-10-16 11:34:47.268076+00	\N	f	\N
157de1bf-0b28-4b0b-b157-6f4393dece6a	\N	I still love them.	2	2026-08-25 22:06:34.367781+00	2026-10-16 11:34:47.268076+00	\N	f	\N
16cbf7a1-56cc-401e-807a-dbd5b892ae35	\N	We broke up.	2	2026-08-25 22:09:01.209376+00	2026-10-16 11:34:47.268076+00	\N	f	\N
314a3900-f987-4107-bad6-da4ef158ef42	\N	I'm Thai.	2	2026-10-16 14:01:59.885889+00	2026-10-16 14:19:09.874404+00	\N	t	\N
168f1999-ab6f-4532-92e6-c0c8b54b0e47	\N	I'll have Pad Thai.	3	2026-07-30 20:25:21.299802+00	2026-10-17 14:06:59.120958+00	\N	f	\N
6375bdf3-93a0-4e0b-959c-6db7ef8bb497	\N	Whose is this?	1	2026-10-17 16:19:16.568459+00	2026-10-17 16:19:16.568459+00	\N	f	\N
ca6a78e9-b454-4c2b-af4c-103cdbf12b1d	\N	I'm a patient.	1	2026-10-18 20:44:12.887648+00	2026-10-18 20:44:12.887648+00	\N	f	\N
50b55b34-be31-44f6-93c6-8dac48844547	\N	I've been injured.	2	2026-10-21 10:44:28.612686+00	2026-10-21 18:57:51.436832+00	\N	t	\N
7da68cbd-acf4-4c39-8cac-04bab4504f3e	\N	That one is yours.	1	2026-10-21 19:07:56.220545+00	2026-10-21 19:07:56.220545+00	\N	f	\N
c0f52386-a764-43d2-b3c7-efd99a96ae33	\N	The sun has risen already.	2	2026-08-28 20:36:05.657203+00	2026-10-16 11:34:47.268076+00	\N	f	\N
b742040d-8686-47b5-922c-664e7b7dbb53	\N	The sun is rising.	2	2026-08-28 20:37:03.521244+00	2026-10-16 11:34:47.268076+00	\N	f	\N
506a32bb-a3a6-41f2-8556-cd49bdee1af8	\N	The sunrise is very beautiful today.	2	2026-08-28 20:38:39.082936+00	2026-10-16 11:34:47.268076+00	\N	f	\N
da6b314c-d114-49c7-9d3d-55e61e667189	\N	No need to worry.	2	2026-09-27 16:30:26.01932+00	2026-10-16 11:34:47.268076+00	\N	f	\N
1eb95e4f-a247-4a91-8fbe-72fe37fcf490	\N	Hello / Hi (m) ;\nGoodbye / Bye (m)	9	2026-07-11 17:05:07.171303+00	2026-10-16 12:02:35.734864+00	\N	t	\N
426a0a7e-e4b3-4880-96b2-95888769984d	\N	Hi. / Hey. / Hello.	3	2026-10-15 20:20:55.222848+00	2026-10-16 12:08:41.733155+00	\N	t	\N
484b551d-cefc-4c20-9e82-e073b1828978	\N	What's up? / How's it going? / How are things?	3	2026-10-15 20:23:17.050497+00	2026-10-16 12:08:41.733155+00	\N	t	Informal.
90f284a5-200c-4ad7-88c8-fd7f79450ced	\N	Goodbye. / Farewell.	6	2026-07-18 00:14:40.295952+00	2026-10-16 12:08:41.733155+00	\N	t	\N
9b116210-dc93-42d6-9a56-9509d699c445	\N	I'm English.	2	2026-10-16 14:03:19.165036+00	2026-10-16 14:19:09.874404+00	\N	t	\N
a84061a5-c912-4b88-a5a1-fd02a369a26d	\N	My nickname is New.	3	2026-10-15 21:27:15.010248+00	2026-10-16 14:19:09.874404+00	\N	t	\N
2e5769fc-c2cc-48ac-9788-d96499f804dc	\N	No chilli, please. / Don't add chilli.	1	2026-10-17 15:15:52.391873+00	2026-10-17 15:15:52.391873+00	\N	f	\N
0ebc1ecb-ebbb-4ad6-b3eb-7b02b8ff76f0	\N	Can you repeat that? / Can you say that one more time?	2	2026-10-17 15:56:02.050093+00	2026-10-17 15:59:52.644103+00	\N	t	\N
6282c1a1-c320-49fd-b0fc-432580d75daa	\N	The patient is waiting.	1	2026-10-18 20:45:14.124964+00	2026-10-18 20:45:14.124964+00	\N	f	\N
1536fd83-9808-4a5a-910b-992b465cc3a7	\N	He’s being unfaithful to me. / He cheated on me. / She cheated on me. / They were unfaithful.	1	2026-10-18 20:55:12.804637+00	2026-10-18 20:55:12.804637+00	\N	f	\N
5d725797-eccb-44eb-83ec-05cf026e25f3	\N	Maybe. / Possibly. / Perhaps.	2	2026-10-18 20:27:37.628744+00	2026-10-18 21:03:18.440116+00	\N	t	\N
47a265d8-5c8e-42e8-a48d-003254a126fe	\N	What do you do for work? (f)	2	2026-10-18 18:36:43.171706+00	2026-10-18 21:03:27.7852+00	\N	t	\N
5a4f363c-b6fe-4962-b6b3-0c6de403d02a	\N	Are you hungry? / Hungry?	2	2026-10-17 12:15:53.083849+00	2026-10-18 21:05:16.381044+00	\N	t	\N
18ed8e8f-5979-4aca-85e2-3d535a9c4548	\N	Do you understand?	6	2026-07-12 16:07:52.02293+00	2026-10-18 21:05:16.381044+00	\N	t	\N
f5dcc8bf-bc56-467b-b264-207f34a3ac75	\N	Are you tired? / Tired?	2	2026-10-17 12:16:37.375146+00	2026-10-18 21:05:16.381044+00	\N	t	\N
29b1707d-0483-481d-bde2-47ee88ce79f1	\N	I have two cats.	4	2026-08-10 20:20:02.755487+00	2026-10-19 12:24:54.314031+00	\N	t	\N
c5b41fc2-5c88-45d9-b0ef-5c2efcc540af	\N	He has one turtle.	2	2026-10-19 12:24:08.157653+00	2026-10-19 12:24:54.314031+00	\N	t	\N
fb3970bc-ac4b-45da-8512-674beef934ce	\N	Do you have any pets?	4	2026-08-10 20:14:35.966155+00	2026-10-19 12:24:54.314031+00	\N	t	\N
b950e9a6-7d9a-4474-ba17-c52c27a26845	\N	Eat here. / For here.	1	2026-10-19 21:00:19.812932+00	2026-10-19 21:00:19.812932+00	\N	f	\N
98871a6a-a0aa-420d-968f-33853eec4eda	\N	No sugar, please. / Don't add sugar.	1	2026-10-19 21:04:34.684347+00	2026-10-19 21:04:34.684347+00	\N	f	\N
0bcc5253-5c87-4161-963d-d0030badc293	\N	Does this dish contain nuts?	2	2026-10-20 20:06:09.62263+00	2026-10-20 20:11:42.81572+00	\N	t	\N
28753735-87b3-4005-8b64-27b680f666e7	\N	Do you have any allergies? / Are you allergic to anything?	2	2026-10-20 19:58:48.237526+00	2026-10-20 20:11:42.81572+00	\N	t	\N
71029919-8d46-4f3b-be73-bb03e7e439d2	\N	I'm in a lot of pain.	2	2026-10-21 10:56:10.054348+00	2026-10-21 18:57:51.436832+00	\N	t	\N
b89287ea-9bef-47ce-bf4c-efd373331340	\N	He fainted. / They passed out. / She fainted.	2	2026-10-21 11:30:02.224734+00	2026-10-21 18:57:51.436832+00	\N	t	\N
\.


--
-- Data for Name: sentence_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sentence_tokens" ("sentence_id", "position", "definition_id", "suffix", "featured_example") FROM stdin;
f3ffc857-22c3-407f-9f1f-85cfcb1de9f1	0	a1b2a8d2-815f-49b6-b32e-69f495f7e2e5		t
f3ffc857-22c3-407f-9f1f-85cfcb1de9f1	1	559e715f-2361-4379-a466-77d6d1209206		t
f3ffc857-22c3-407f-9f1f-85cfcb1de9f1	2	02a350d1-6be3-4026-a28d-f45559ae3d1e		t
f3ffc857-22c3-407f-9f1f-85cfcb1de9f1	2	465cb91e-6996-47b5-8d40-9ba6718ae538		t
18ed8e8f-5979-4aca-85e2-3d535a9c4548	0	cacfd512-5b0e-43dd-83a2-a2154b869280		t
18ed8e8f-5979-4aca-85e2-3d535a9c4548	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
5105d2c7-c5ad-44da-9d5a-937738f6105b	0	1de975c3-5346-4aa7-9736-d038f06343fd		t
5105d2c7-c5ad-44da-9d5a-937738f6105b	1	5428d2e2-1ff8-4744-87f6-0173ed850199		t
ef5da869-b652-4a25-b7f6-089974b64d4b	0	417f2c72-c72d-4ace-a55e-9f7ed0a9ed72		t
ef5da869-b652-4a25-b7f6-089974b64d4b	1	6f6ef364-f329-4afd-b339-d545624a5edf		t
ef5da869-b652-4a25-b7f6-089974b64d4b	2	2a197f22-8828-4008-b50d-a3cc245da22e		t
6751972f-ec94-4535-b68a-686ea9223d56	0	f7ccfa85-d1bc-4f3c-9a49-67e6d5163334		t
6751972f-ec94-4535-b68a-686ea9223d56	1	6f6ef364-f329-4afd-b339-d545624a5edf		t
6751972f-ec94-4535-b68a-686ea9223d56	2	2a197f22-8828-4008-b50d-a3cc245da22e		t
cad46881-7d40-49b0-bde7-da05de36ad31	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
cad46881-7d40-49b0-bde7-da05de36ad31	1	2778776c-7ac8-4598-8461-8112dc805f39		t
cad46881-7d40-49b0-bde7-da05de36ad31	2	ddfb39c4-5854-4f29-8fbb-100e01f1475f		t
cad46881-7d40-49b0-bde7-da05de36ad31	3	fc3711e6-80b3-43a8-83d8-1afa04202965		t
cad46881-7d40-49b0-bde7-da05de36ad31	4	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
cad46881-7d40-49b0-bde7-da05de36ad31	5	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
cad46881-7d40-49b0-bde7-da05de36ad31	6	6854f448-1f2a-4b65-b756-a34bd714cf44		t
bc1840ef-5c02-4880-852f-bcfe138a43e7	0	380b1879-2aed-4aba-ad15-f2d428498779		t
bc1840ef-5c02-4880-852f-bcfe138a43e7	1	c0cb144c-8745-481d-81f6-907a6d55acc5		t
bc1840ef-5c02-4880-852f-bcfe138a43e7	2	6c4e3283-2c6c-4729-bd04-c24decee1951		t
bc1840ef-5c02-4880-852f-bcfe138a43e7	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
0942ce39-a5d1-470c-8a13-4c6561bcd1d8	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
0942ce39-a5d1-470c-8a13-4c6561bcd1d8	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
0942ce39-a5d1-470c-8a13-4c6561bcd1d8	2	f6d9301e-3591-48b7-8fb6-783c4c2849a9		t
0942ce39-a5d1-470c-8a13-4c6561bcd1d8	3	2510b6d5-e9d8-48fa-b02d-8cfd85765f9d		t
0942ce39-a5d1-470c-8a13-4c6561bcd1d8	4	ddd30e0e-9863-4360-9317-afb6c533443e		t
73a6e6dd-136d-4d5e-8024-b3e53681375b	0	0d39ecf0-4c59-4dee-8960-5e2742d6f147		t
73a6e6dd-136d-4d5e-8024-b3e53681375b	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
1da74290-c064-4069-bb09-0b73a2b08b49	0	0d39ecf0-4c59-4dee-8960-5e2742d6f147		t
1da74290-c064-4069-bb09-0b73a2b08b49	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
94292da6-5eec-4057-bd10-4ae5d06a3430	0	3b583729-4f78-4500-8f8e-5233f27a16be		t
94292da6-5eec-4057-bd10-4ae5d06a3430	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
60964f68-31b0-4766-8633-d5c8c0b01baa	0	3b583729-4f78-4500-8f8e-5233f27a16be		t
60964f68-31b0-4766-8633-d5c8c0b01baa	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
0942ce39-a5d1-470c-8a13-4c6561bcd1d8	5	092087b3-4b38-43fe-a926-80a45e679953		t
988163eb-b345-4329-adb4-e68352fb2544	0	f2d4f534-90e1-4708-9f49-e00cd5c14176		t
988163eb-b345-4329-adb4-e68352fb2544	1	ec88f280-c529-4384-acfc-3b3bbcb45855		t
988163eb-b345-4329-adb4-e68352fb2544	2	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
2f7832fa-6463-4e95-9c87-63c075e9bf13	0	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
2f7832fa-6463-4e95-9c87-63c075e9bf13	1	4cdd688c-a7db-4abb-a1b7-a960968782d7		t
2f7832fa-6463-4e95-9c87-63c075e9bf13	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
5084e3f8-7e66-4c3e-bdb3-deacdc4f1720	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
b7f42b93-b49f-45ae-b4cf-8e30b8119dc5	0	c0f55cd4-fc31-46b6-8730-93e076a2dd73		t
e679f83d-2945-4b9f-a987-663a9dda0630	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
b6cca451-9bd0-46a6-8db6-48c632ce8d88	0	a7bd3517-7442-4e31-880e-3dcaae2edde0		t
b6cca451-9bd0-46a6-8db6-48c632ce8d88	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
e679f83d-2945-4b9f-a987-663a9dda0630	1	2778776c-7ac8-4598-8461-8112dc805f39		t
e679f83d-2945-4b9f-a987-663a9dda0630	2	ddfb39c4-5854-4f29-8fbb-100e01f1475f		t
bc029dd2-3831-4968-a25c-240820487687	0	13195427-02e1-4aac-93d5-d2c41e0d341a		t
bc029dd2-3831-4968-a25c-240820487687	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
94249b9b-94c4-4022-bd5b-7751dbbfc85c	0	070da027-3de9-48b5-9337-c341f978d31a		t
94249b9b-94c4-4022-bd5b-7751dbbfc85c	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
e679f83d-2945-4b9f-a987-663a9dda0630	3	d2d9aaf6-1644-4d56-b93c-c705fa922939		t
e679f83d-2945-4b9f-a987-663a9dda0630	4	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
e679f83d-2945-4b9f-a987-663a9dda0630	5	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
eabc8814-f8d0-483f-81df-0be16fd414a0	0	54a70df8-eb25-4347-8df9-9583ed72fe14		t
eabc8814-f8d0-483f-81df-0be16fd414a0	1	d2658b3c-1389-4d33-b469-63b9b0ab5c53		t
eabc8814-f8d0-483f-81df-0be16fd414a0	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
0d741e4e-2cd1-4fab-b6a6-6877498991fe	0	2778776c-7ac8-4598-8461-8112dc805f39		t
0d741e4e-2cd1-4fab-b6a6-6877498991fe	1	f368191c-5d31-4a7b-a420-46553949a832		t
0d741e4e-2cd1-4fab-b6a6-6877498991fe	2	679ce06c-a6f6-45b4-973d-60ff843f8f6c		t
5084e3f8-7e66-4c3e-bdb3-deacdc4f1720	1	fd4c8398-1e4f-48e3-91bd-23ce55caeece		t
5084e3f8-7e66-4c3e-bdb3-deacdc4f1720	2	12470fe5-2259-4287-af22-75b95583d8c1		t
b7f42b93-b49f-45ae-b4cf-8e30b8119dc5	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
0f9a5c5e-c5d7-493c-822b-e7cad9106506	0	6431a1e7-9017-443b-b46a-dc62683fd44b		t
0f9a5c5e-c5d7-493c-822b-e7cad9106506	1	ca7084f9-31ef-4c57-a637-defd1863417d		t
0f9a5c5e-c5d7-493c-822b-e7cad9106506	2	ba93f0f2-ee9c-4af0-8e20-a02a849717a4		t
af766c32-a7de-4de1-ac45-216ddfc07e97	0	e59ecc38-4645-4e44-9484-97b925497171		t
af766c32-a7de-4de1-ac45-216ddfc07e97	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
5084e3f8-7e66-4c3e-bdb3-deacdc4f1720	3	04d7d004-0513-4f16-b3ca-de208056e947		t
5084e3f8-7e66-4c3e-bdb3-deacdc4f1720	4	6854f448-1f2a-4b65-b756-a34bd714cf44		t
9372a05e-04d7-4735-bc2a-e26138bbc7db	0	409950dc-0bc2-40b9-80e2-c20fd2d05549		t
2de9ad49-d28e-42d0-b257-38543e03988f	0	2830825d-9c94-4d54-84a6-2ef180735925		t
2de9ad49-d28e-42d0-b257-38543e03988f	0	6c6d90c2-c302-427c-8f13-6b5ad646a4e3		t
2de9ad49-d28e-42d0-b257-38543e03988f	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
94f7ca91-9d15-4d06-ad6b-28690ee0a025	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
94f7ca91-9d15-4d06-ad6b-28690ee0a025	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
14f7bbb3-ecf5-4a08-ada4-1e160f544976	0	f2d4f534-90e1-4708-9f49-e00cd5c14176		t
14f7bbb3-ecf5-4a08-ada4-1e160f544976	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
9372a05e-04d7-4735-bc2a-e26138bbc7db	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
03a7a0a7-f199-460a-b8f7-711fc0c24f81	0	487bc441-12c9-4e54-b241-7e7aa50ac423		t
03a7a0a7-f199-460a-b8f7-711fc0c24f81	1	2f7557d2-9abe-46b6-9806-e94a9b5879f3		t
03a7a0a7-f199-460a-b8f7-711fc0c24f81	2	5428d2e2-1ff8-4744-87f6-0173ed850199		t
03a7a0a7-f199-460a-b8f7-711fc0c24f81	2	02a350d1-6be3-4026-a28d-f45559ae3d1e		t
4dd47272-1cf4-40e5-b703-74223bca86aa	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
4dd47272-1cf4-40e5-b703-74223bca86aa	1	ea3f0313-7726-4a00-b28b-cbf66943adbd		t
4dd47272-1cf4-40e5-b703-74223bca86aa	2	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
68174184-70bc-4b58-a256-56cfd3578791	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
68174184-70bc-4b58-a256-56cfd3578791	1	ea3f0313-7726-4a00-b28b-cbf66943adbd		t
68174184-70bc-4b58-a256-56cfd3578791	2	bb29351e-2d82-4f6d-824a-56d90e629089		t
68174184-70bc-4b58-a256-56cfd3578791	2	f823dfea-81d8-4d94-82a5-4407e76ca023		t
80b343ab-5423-4a0a-88f2-f1e1d2586734	0	68f1883b-5089-4add-b8a2-0a9890241a5b		t
80b343ab-5423-4a0a-88f2-f1e1d2586734	1	0e5b745d-a94f-4492-ba2b-3a18dfdc1d27		t
62776da7-16fb-4472-ad06-7bd169e8cb33	0	1fc9c920-346b-4401-a41b-c169ddb6c8f1		t
62776da7-16fb-4472-ad06-7bd169e8cb33	1	d9abe490-29e6-4739-952a-78ef549e1e4e		t
580e921b-cdcb-4dba-90be-932917021465	0	2054a4b3-63e4-472b-aa5d-c6b5bf10eb60		t
580e921b-cdcb-4dba-90be-932917021465	1	5650c4da-5c80-4c79-8676-6d81bbcc0928		t
96dc762a-2c3e-4772-a1d0-6848dc052e63	0	6b8c8002-71c1-4225-b296-e2d33c91cac3		t
96dc762a-2c3e-4772-a1d0-6848dc052e63	1	61cfcd09-b00b-4122-891e-267f691b2b29		t
96dc762a-2c3e-4772-a1d0-6848dc052e63	2	5650c4da-5c80-4c79-8676-6d81bbcc0928		t
96dc762a-2c3e-4772-a1d0-6848dc052e63	3	d3773e44-1486-4969-a862-d79dc0676c6d		t
96dc762a-2c3e-4772-a1d0-6848dc052e63	4	559e715f-2361-4379-a466-77d6d1209206		t
714016dc-e0da-44d4-9986-79b94df84fee	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
714016dc-e0da-44d4-9986-79b94df84fee	1	49411dbb-16b5-4f07-9c5a-9d02f8c0ba8c		t
714016dc-e0da-44d4-9986-79b94df84fee	2	35cefbce-b3e7-4814-95f2-6b92f949c8ea		t
714016dc-e0da-44d4-9986-79b94df84fee	3	3b70696c-9c25-4a17-800b-177a03cd062d		t
3f42ba8b-9f0d-496f-aad9-df09e37524c4	0	984f9da5-c164-4d89-8224-03888d4b2db0		t
3f42ba8b-9f0d-496f-aad9-df09e37524c4	1	2358eb7e-8fd4-4010-bf69-d7e19f852da8		t
3f42ba8b-9f0d-496f-aad9-df09e37524c4	2	5428d2e2-1ff8-4744-87f6-0173ed850199		t
b74662a4-c5e9-4a92-9468-2fc47a3b4c2d	0	772022f5-2d25-49c4-a9f4-06b143a9821d		t
b74662a4-c5e9-4a92-9468-2fc47a3b4c2d	1	4413b365-83e2-4613-bfca-bda6c28d576e		t
66be0c9f-1dba-40df-aa48-2e09bcbafb4f	0	984f9da5-c164-4d89-8224-03888d4b2db0		t
66be0c9f-1dba-40df-aa48-2e09bcbafb4f	1	0e5b745d-a94f-4492-ba2b-3a18dfdc1d27		t
27090a94-576d-4f04-b11f-501a794b53e7	0	2778776c-7ac8-4598-8461-8112dc805f39		t
27090a94-576d-4f04-b11f-501a794b53e7	1	ca63da6e-4036-426c-9c8c-142620c93a6b		t
27090a94-576d-4f04-b11f-501a794b53e7	2	559e715f-2361-4379-a466-77d6d1209206		t
de4efe17-fa92-40a5-b5bb-5764d9edb34a	0	e3731965-d272-4d3a-ad7e-3c7b9b5f59a7		t
de4efe17-fa92-40a5-b5bb-5764d9edb34a	1	81f9dbb8-1144-45e2-a012-c8b85f2de1ea		t
de4efe17-fa92-40a5-b5bb-5764d9edb34a	2	285cc2d6-aecf-4aaa-8c76-c8a72204e35d		t
de4efe17-fa92-40a5-b5bb-5764d9edb34a	3	4b611fad-c610-4256-bbcb-79f11772889d		t
32340036-a2f2-45d9-b99b-c8b096bbf32b	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
32340036-a2f2-45d9-b99b-c8b096bbf32b	1	05814f0b-5390-4b98-b689-ae1ed953620b		t
32340036-a2f2-45d9-b99b-c8b096bbf32b	2	49411dbb-16b5-4f07-9c5a-9d02f8c0ba8c		t
32340036-a2f2-45d9-b99b-c8b096bbf32b	3	81f9dbb8-1144-45e2-a012-c8b85f2de1ea		t
32340036-a2f2-45d9-b99b-c8b096bbf32b	4	c754e203-0313-4023-83a4-bd1806208e3d		t
32340036-a2f2-45d9-b99b-c8b096bbf32b	5	1bd92e67-4ad4-4d25-99bf-ae418ed29225		t
e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	1	6379ff9c-ee57-48d8-95c2-08299c906ba7		t
e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	2	bb29351e-2d82-4f6d-824a-56d90e629089		t
e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	2	f823dfea-81d8-4d94-82a5-4407e76ca023		t
20071b94-7c71-4aba-a90d-b17f64967c97	0	ed2e2e28-2703-4183-81b8-0fcdde2327d9		t
20071b94-7c71-4aba-a90d-b17f64967c97	1	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
20071b94-7c71-4aba-a90d-b17f64967c97	2	6379ff9c-ee57-48d8-95c2-08299c906ba7		t
20071b94-7c71-4aba-a90d-b17f64967c97	3	285cc2d6-aecf-4aaa-8c76-c8a72204e35d		t
302b8f91-4003-4e9c-8596-b06adfcab70b	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
302b8f91-4003-4e9c-8596-b06adfcab70b	1	12bcfb4c-379d-4add-9444-6534a5bd31b0		t
302b8f91-4003-4e9c-8596-b06adfcab70b	2	6401c8a4-d1f9-41f6-b68b-b6e61c696fc7		t
302b8f91-4003-4e9c-8596-b06adfcab70b	3	ec88f280-c529-4384-acfc-3b3bbcb45855		t
302b8f91-4003-4e9c-8596-b06adfcab70b	4	bb29351e-2d82-4f6d-824a-56d90e629089		t
302b8f91-4003-4e9c-8596-b06adfcab70b	4	f823dfea-81d8-4d94-82a5-4407e76ca023		t
d4e68862-d5f4-4e94-a5d7-f7b1f344b209	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
d4e68862-d5f4-4e94-a5d7-f7b1f344b209	1	2778776c-7ac8-4598-8461-8112dc805f39		t
d4e68862-d5f4-4e94-a5d7-f7b1f344b209	2	ddfb39c4-5854-4f29-8fbb-100e01f1475f		t
d4e68862-d5f4-4e94-a5d7-f7b1f344b209	3	fc3711e6-80b3-43a8-83d8-1afa04202965		t
d4e68862-d5f4-4e94-a5d7-f7b1f344b209	4	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
d4e68862-d5f4-4e94-a5d7-f7b1f344b209	5	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
27090a94-576d-4f04-b11f-501a794b53e7	3	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
27090a94-576d-4f04-b11f-501a794b53e7	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
6d04eea0-8f76-4928-8d8b-bf1432dfb182	0	6b6675e0-ff0c-46c9-b1ab-d451bc097a88		t
6d04eea0-8f76-4928-8d8b-bf1432dfb182	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
8f46ec66-c16c-44e1-9997-e224ee34b77e	0	3edfc07a-b087-4f58-83a6-398040a769d9		t
8f46ec66-c16c-44e1-9997-e224ee34b77e	1	ec88f280-c529-4384-acfc-3b3bbcb45855		t
8f46ec66-c16c-44e1-9997-e224ee34b77e	2	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
78235781-ebd7-4c71-8d1b-110e160a7dbd	0	3edfc07a-b087-4f58-83a6-398040a769d9		t
78235781-ebd7-4c71-8d1b-110e160a7dbd	1	ec88f280-c529-4384-acfc-3b3bbcb45855		t
75552068-b8f5-47e3-959e-b17744719375	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
75552068-b8f5-47e3-959e-b17744719375	1	784fe782-42f4-4172-b79c-4cecea10d010		t
75552068-b8f5-47e3-959e-b17744719375	2	6c4e3283-2c6c-4729-bd04-c24decee1951		t
75552068-b8f5-47e3-959e-b17744719375	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
9cbff467-d7e1-4f70-8b64-d71637374255	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
9cbff467-d7e1-4f70-8b64-d71637374255	1	784fe782-42f4-4172-b79c-4cecea10d010		t
9cbff467-d7e1-4f70-8b64-d71637374255	2	66a4e32c-9477-4a59-9cd8-065c6c04376d		t
9cbff467-d7e1-4f70-8b64-d71637374255	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
3ba2e787-da94-4c20-9546-640efb2de8c9	0	eecf011f-c90e-4c9f-9d23-96397096b2de		t
3ba2e787-da94-4c20-9546-640efb2de8c9	1	c0cb144c-8745-481d-81f6-907a6d55acc5		t
3ba2e787-da94-4c20-9546-640efb2de8c9	2	6c4e3283-2c6c-4729-bd04-c24decee1951		t
3ba2e787-da94-4c20-9546-640efb2de8c9	3	bb16404f-718e-4aa4-ba8d-79f14a3e1dd8		t
3ba2e787-da94-4c20-9546-640efb2de8c9	4	6854f448-1f2a-4b65-b756-a34bd714cf44		t
e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	0	a993b4f3-e795-41c7-ac90-996416a46b36		t
e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	1	6c4e3283-2c6c-4729-bd04-c24decee1951		t
e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	1	70acf9d5-5bee-4dae-8503-6fec6c823d20		t
e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	2	bb16404f-718e-4aa4-ba8d-79f14a3e1dd8		t
e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
ac4404fe-f7ed-43e4-abbe-6885da7abf7d	0	6c4e3283-2c6c-4729-bd04-c24decee1951		t
ac4404fe-f7ed-43e4-abbe-6885da7abf7d	1	5428d2e2-1ff8-4744-87f6-0173ed850199		t
619d07ee-c770-4a3d-8072-f2b6a8f83547	0	0656b9ed-e0b7-43eb-892e-e1a3588f81b6		t
619d07ee-c770-4a3d-8072-f2b6a8f83547	1	34ab0b16-7b22-4c14-bb8d-56916acd1730		t
619d07ee-c770-4a3d-8072-f2b6a8f83547	2	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
619d07ee-c770-4a3d-8072-f2b6a8f83547	3	b44d3b6f-1986-4832-93bc-5c4d0148d578		t
619d07ee-c770-4a3d-8072-f2b6a8f83547	4	9a823d89-75e7-42fc-b659-0cc512db39eb		t
ad2cfecc-8e1d-458c-99f7-fc4e9c2eee22	0	c9af9d0e-2c27-4a74-a239-eb9e03b370fc		t
ad2cfecc-8e1d-458c-99f7-fc4e9c2eee22	1	6c4e3283-2c6c-4729-bd04-c24decee1951		t
ad2cfecc-8e1d-458c-99f7-fc4e9c2eee22	2	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
ad2cfecc-8e1d-458c-99f7-fc4e9c2eee22	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
72f3a119-648e-4baf-99cb-2410689f864c	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
72f3a119-648e-4baf-99cb-2410689f864c	1	b0f62ee6-b49a-4448-9971-bde162966f9a		t
72f3a119-648e-4baf-99cb-2410689f864c	2	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
72f3a119-648e-4baf-99cb-2410689f864c	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
d706a862-f0ed-4a84-8a0b-146bb58e2261	0	f1296ab1-67b8-47cc-84d8-28168c1fc314		t
d706a862-f0ed-4a84-8a0b-146bb58e2261	1	417f2c72-c72d-4ace-a55e-9f7ed0a9ed72		t
d706a862-f0ed-4a84-8a0b-146bb58e2261	2	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
d706a862-f0ed-4a84-8a0b-146bb58e2261	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
7c734fa1-b478-45b0-bc48-546195998d71	0	0973bd19-d068-4f27-9402-45c8a8ef375b		t
7c734fa1-b478-45b0-bc48-546195998d71	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
7c734fa1-b478-45b0-bc48-546195998d71	1	491fc137-38f0-43c0-b442-da5ad8bff2ba		t
7c734fa1-b478-45b0-bc48-546195998d71	2	ed7a6c2f-13a7-4e8f-ba4f-46e12be6216c		t
7c734fa1-b478-45b0-bc48-546195998d71	3	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
7c734fa1-b478-45b0-bc48-546195998d71	4	9a823d89-75e7-42fc-b659-0cc512db39eb		t
130c07d6-e903-4e8f-8224-3389c26bc515	0	7b8bd6e9-4ea2-4b52-908b-fae1fb4bdd76		t
130c07d6-e903-4e8f-8224-3389c26bc515	1	1fb400fe-9ba3-429c-9839-cf6bbe92c11b		t
130c07d6-e903-4e8f-8224-3389c26bc515	2	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
130c07d6-e903-4e8f-8224-3389c26bc515	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
bb58d920-56b6-4afe-a5d3-3626ddf1efb2	0	cb907179-eb05-4320-9b99-d78baf522a03		t
bb58d920-56b6-4afe-a5d3-3626ddf1efb2	1	770dd9be-8c86-41fe-bce2-f89c121497d6		t
bb58d920-56b6-4afe-a5d3-3626ddf1efb2	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
da5dee00-8325-4fdc-a0a9-334324b68cc5	0	89bca261-d27e-489a-804d-1b3650c60c9e		t
da5dee00-8325-4fdc-a0a9-334324b68cc5	1	1f8cf53b-62fc-477b-89cd-f7b3525409cd		t
da5dee00-8325-4fdc-a0a9-334324b68cc5	2	04d7d004-0513-4f16-b3ca-de208056e947		t
da5dee00-8325-4fdc-a0a9-334324b68cc5	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
be8f34f5-ca5d-4e92-804a-7fcb2a60fd7b	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
be8f34f5-ca5d-4e92-804a-7fcb2a60fd7b	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
be8f34f5-ca5d-4e92-804a-7fcb2a60fd7b	2	6c4e3283-2c6c-4729-bd04-c24decee1951		t
be8f34f5-ca5d-4e92-804a-7fcb2a60fd7b	3	092087b3-4b38-43fe-a926-80a45e679953		t
f536e2f1-f0a2-49bc-8c70-f36bafc4d381	0	580d4ec2-363a-4e0e-81e0-da73cf2e7437		t
f536e2f1-f0a2-49bc-8c70-f36bafc4d381	1	1b024330-9b68-4dc5-b1d6-1d7f58296190		t
f536e2f1-f0a2-49bc-8c70-f36bafc4d381	2	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
f536e2f1-f0a2-49bc-8c70-f36bafc4d381	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
07a4f22c-f509-470d-b953-8460a0c75c58	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
07a4f22c-f509-470d-b953-8460a0c75c58	1	81f9dbb8-1144-45e2-a012-c8b85f2de1ea		t
07a4f22c-f509-470d-b953-8460a0c75c58	2	bb29351e-2d82-4f6d-824a-56d90e629089		t
07a4f22c-f509-470d-b953-8460a0c75c58	2	f823dfea-81d8-4d94-82a5-4407e76ca023		t
506d05ca-dd18-42e3-96c1-4564546f2533	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
506d05ca-dd18-42e3-96c1-4564546f2533	1	c58978c4-f111-4ae2-af9f-4167f5f8aba8		t
506d05ca-dd18-42e3-96c1-4564546f2533	2	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
506d05ca-dd18-42e3-96c1-4564546f2533	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
b1403c3a-0bb4-487c-9150-721da21c93dc	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
b1403c3a-0bb4-487c-9150-721da21c93dc	1	dbea365e-1871-4ed8-8ae3-e64dfaa472c6		t
b1403c3a-0bb4-487c-9150-721da21c93dc	2	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
b1403c3a-0bb4-487c-9150-721da21c93dc	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
6f92dbcb-19fb-41a6-b520-92e86bd8425e	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
6f92dbcb-19fb-41a6-b520-92e86bd8425e	1	c51e5efc-e07c-46fa-96ff-d92b08d035ae		t
6f92dbcb-19fb-41a6-b520-92e86bd8425e	2	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
6f92dbcb-19fb-41a6-b520-92e86bd8425e	3	d72802d4-fe82-4b2e-a9cc-c0717681ccb8		t
0ebc1ecb-ebbb-4ad6-b3eb-7b02b8ff76f0	0	2778776c-7ac8-4598-8461-8112dc805f39		t
0ebc1ecb-ebbb-4ad6-b3eb-7b02b8ff76f0	1	1bd92e67-4ad4-4d25-99bf-ae418ed29225		t
0ebc1ecb-ebbb-4ad6-b3eb-7b02b8ff76f0	2	c69149cd-f270-457a-bc70-031f45e618ac		t
0ebc1ecb-ebbb-4ad6-b3eb-7b02b8ff76f0	3	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
6f095bab-9373-4482-a9e6-9a89f0816f2e	0	cdd2a1f3-71f3-4f49-bb6a-a9282752ef42		t
6f095bab-9373-4482-a9e6-9a89f0816f2e	1	1bd92e67-4ad4-4d25-99bf-ae418ed29225		t
6f095bab-9373-4482-a9e6-9a89f0816f2e	2	770dd9be-8c86-41fe-bce2-f89c121497d6		t
6f095bab-9373-4482-a9e6-9a89f0816f2e	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
c787a0b5-ddac-4f82-8d76-2e36c93ff138	0	9f019583-eeea-478a-9f0b-a887ea73d904		t
c787a0b5-ddac-4f82-8d76-2e36c93ff138	1	e0770667-6df5-4a3a-bf16-9aefff47ff06		t
c787a0b5-ddac-4f82-8d76-2e36c93ff138	2	89bca261-d27e-489a-804d-1b3650c60c9e		t
c787a0b5-ddac-4f82-8d76-2e36c93ff138	3	34243bf6-f018-4b2d-a935-ba7ec127b0b3		t
0ebc1ecb-ebbb-4ad6-b3eb-7b02b8ff76f0	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
b3da75bc-70bd-45f6-8a84-edad866138e3	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
b3da75bc-70bd-45f6-8a84-edad866138e3	1	c51e5efc-e07c-46fa-96ff-d92b08d035ae		t
b3da75bc-70bd-45f6-8a84-edad866138e3	2	f6696507-34b4-4ed0-83ca-925113531271		t
b3da75bc-70bd-45f6-8a84-edad866138e3	3	5428d2e2-1ff8-4744-87f6-0173ed850199		t
5d4a2702-331f-4574-8400-5c7da1d17a5b	0	d3b7afe5-796d-45c5-9afc-21c3a0247d0f		t
5d4a2702-331f-4574-8400-5c7da1d17a5b	1	c0cb144c-8745-481d-81f6-907a6d55acc5		t
5d4a2702-331f-4574-8400-5c7da1d17a5b	2	e0770667-6df5-4a3a-bf16-9aefff47ff06		t
5d4a2702-331f-4574-8400-5c7da1d17a5b	3	05814f0b-5390-4b98-b689-ae1ed953620b		t
5d4a2702-331f-4574-8400-5c7da1d17a5b	4	34243bf6-f018-4b2d-a935-ba7ec127b0b3		t
78235781-ebd7-4c71-8d1b-110e160a7dbd	2	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
78235781-ebd7-4c71-8d1b-110e160a7dbd	3	2830825d-9c94-4d54-84a6-2ef180735925		t
78235781-ebd7-4c71-8d1b-110e160a7dbd	3	6c6d90c2-c302-427c-8f13-6b5ad646a4e3		t
78235781-ebd7-4c71-8d1b-110e160a7dbd	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
8a5ccb5c-d297-42a8-895d-9314b14cf303	0	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
8a5ccb5c-d297-42a8-895d-9314b14cf303	1	871c70d9-d595-4f13-91c1-6ab15a4cf408		t
8a5ccb5c-d297-42a8-895d-9314b14cf303	2	61a12bc8-9f49-458c-aeb5-49327b1ad078		t
8a5ccb5c-d297-42a8-895d-9314b14cf303	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
47a265d8-5c8e-42e8-a48d-003254a126fe	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
47a265d8-5c8e-42e8-a48d-003254a126fe	1	b0f62ee6-b49a-4448-9971-bde162966f9a		t
47a265d8-5c8e-42e8-a48d-003254a126fe	2	6c4e3283-2c6c-4729-bd04-c24decee1951		t
47a265d8-5c8e-42e8-a48d-003254a126fe	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
6473fc5e-7762-4a09-94b9-e25197a05fd7	0	5d1cdfda-b033-488b-a960-814220f0fe53		t
6473fc5e-7762-4a09-94b9-e25197a05fd7	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
5d725797-eccb-44eb-83ec-05cf026e25f3	0	1c84c603-307f-49a0-8d96-a746432e70cf		t
5d725797-eccb-44eb-83ec-05cf026e25f3	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
65c4d72c-5449-4996-a8c3-9d528b0eb62c	0	2fc73293-51d3-4793-bc5a-48b481918dcf		t
65c4d72c-5449-4996-a8c3-9d528b0eb62c	1	3b70696c-9c25-4a17-800b-177a03cd062d		t
65c4d72c-5449-4996-a8c3-9d528b0eb62c	2	7e0a55f0-3037-461d-a0b2-d14d0105f5c5		t
6282c1a1-c320-49fd-b0fc-432580d75daa	0	7d8023ef-713d-4538-8d95-abec796d12cf		t
6282c1a1-c320-49fd-b0fc-432580d75daa	1	1fb400fe-9ba3-429c-9839-cf6bbe92c11b		t
6282c1a1-c320-49fd-b0fc-432580d75daa	2	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
9ef37779-6967-4ce5-8d70-c6e94ae9ed14	0	0d39ecf0-4c59-4dee-8960-5e2742d6f147		t
9ef37779-6967-4ce5-8d70-c6e94ae9ed14	1	0e5b745d-a94f-4492-ba2b-3a18dfdc1d27		t
9ef37779-6967-4ce5-8d70-c6e94ae9ed14	2	34ab0b16-7b22-4c14-bb8d-56916acd1730		t
9ef37779-6967-4ce5-8d70-c6e94ae9ed14	3	fd4c8398-1e4f-48e3-91bd-23ce55caeece		t
9ef37779-6967-4ce5-8d70-c6e94ae9ed14	4	bae9d021-6508-4f8f-8f44-383373846da9		t
941b8f4f-2543-4f32-9197-389d424a2144	0	43d0c18d-65b7-4928-9fab-ea53a60e4b54		t
941b8f4f-2543-4f32-9197-389d424a2144	1	fd4c8398-1e4f-48e3-91bd-23ce55caeece		t
941b8f4f-2543-4f32-9197-389d424a2144	2	ed126099-3421-49a2-8c6d-915b64248ca6		t
6282c1a1-c320-49fd-b0fc-432580d75daa	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
7dc22d62-098a-448a-85f9-b624289dcaae	0	43d0c18d-65b7-4928-9fab-ea53a60e4b54		t
7dc22d62-098a-448a-85f9-b624289dcaae	1	5f45e3f0-c4d3-4fd0-917c-1e10669dc5c2		t
7dc22d62-098a-448a-85f9-b624289dcaae	2	0d403033-b28f-4222-9970-b5275ea0a0c8		t
a33cc97d-3e8f-4a90-8279-5083d42c88da	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
a33cc97d-3e8f-4a90-8279-5083d42c88da	1	417f2c72-c72d-4ace-a55e-9f7ed0a9ed72		t
a33cc97d-3e8f-4a90-8279-5083d42c88da	2	c0e2bd42-c370-4a00-8d35-c90924fead77		t
a33cc97d-3e8f-4a90-8279-5083d42c88da	2	770dd9be-8c86-41fe-bce2-f89c121497d6		t
a33cc97d-3e8f-4a90-8279-5083d42c88da	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
c305b49d-499a-4d69-96ff-8be56196d7e1	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
c305b49d-499a-4d69-96ff-8be56196d7e1	1	c0a76c22-36cf-4045-8ddd-59b19347717c		t
c305b49d-499a-4d69-96ff-8be56196d7e1	2	72c2d681-1858-49d8-8fd1-5274b1d5f264		t
c305b49d-499a-4d69-96ff-8be56196d7e1	3	ec88f280-c529-4384-acfc-3b3bbcb45855		t
c305b49d-499a-4d69-96ff-8be56196d7e1	4	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
c305b49d-499a-4d69-96ff-8be56196d7e1	5	9a823d89-75e7-42fc-b659-0cc512db39eb		t
7dc22d62-098a-448a-85f9-b624289dcaae	3	bddca145-e7a3-4c1e-aafa-afb5c61d8d69		t
f8599da6-345d-46a5-82ab-2b490e24049a	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
f8599da6-345d-46a5-82ab-2b490e24049a	1	05814f0b-5390-4b98-b689-ae1ed953620b		t
f8599da6-345d-46a5-82ab-2b490e24049a	2	a34549b7-4054-49cb-b1df-d8360a177721		t
f8599da6-345d-46a5-82ab-2b490e24049a	3	1467dd10-a147-4fd5-b72b-bac1ce6880b5		t
f8599da6-345d-46a5-82ab-2b490e24049a	4	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
14e8d184-addc-4cf2-9210-ba16d4437c5c	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
14e8d184-addc-4cf2-9210-ba16d4437c5c	0	0973bd19-d068-4f27-9402-45c8a8ef375b		t
14e8d184-addc-4cf2-9210-ba16d4437c5c	1	a34549b7-4054-49cb-b1df-d8360a177721		t
14e8d184-addc-4cf2-9210-ba16d4437c5c	2	8fa2b1be-cd4e-4558-ba5e-73728f56f0d5		t
14e8d184-addc-4cf2-9210-ba16d4437c5c	3	e2d56d3d-7c4a-4f7c-b1ef-24e90fbdd565		t
14e8d184-addc-4cf2-9210-ba16d4437c5c	4	2d7c1c46-f7c9-43f4-bbaf-e6d8ef57413e		t
14e8d184-addc-4cf2-9210-ba16d4437c5c	5	9a823d89-75e7-42fc-b659-0cc512db39eb		t
98909e49-900b-4773-ac63-e7cf09915b9d	0	14bcb1a9-6807-4ad0-8b80-952aa0d87930		t
98909e49-900b-4773-ac63-e7cf09915b9d	0	d90bf329-6bce-4a60-8f7f-502e12b650ac		t
98909e49-900b-4773-ac63-e7cf09915b9d	1	3edfc07a-b087-4f58-83a6-398040a769d9		t
98909e49-900b-4773-ac63-e7cf09915b9d	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
5b803618-0fb0-4db9-b591-45946608779f	0	a34549b7-4054-49cb-b1df-d8360a177721		t
5b803618-0fb0-4db9-b591-45946608779f	1	70acf9d5-5bee-4dae-8503-6fec6c823d20		t
010ec073-74fe-413c-af51-7897e95e21f7	0	733e0d3d-a29f-4018-9f6a-f422a1cc33db		t
010ec073-74fe-413c-af51-7897e95e21f7	1	50aa77e4-73df-41db-95c0-5edca8e16336		t
010ec073-74fe-413c-af51-7897e95e21f7	2	8cb977c6-a283-4879-bbb0-a7957ae728ab		t
010ec073-74fe-413c-af51-7897e95e21f7	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
4ed966f8-0f59-4c12-a135-54be64d925bf	0	f999f701-d068-4bab-961d-2fa2e2beeb65		t
4ed966f8-0f59-4c12-a135-54be64d925bf	1	8cb977c6-a283-4879-bbb0-a7957ae728ab		t
4ed966f8-0f59-4c12-a135-54be64d925bf	2	9c232518-f096-4df1-8a0b-fcf4a00b679d		t
4ed966f8-0f59-4c12-a135-54be64d925bf	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
b6ce3328-3887-47ec-b5d6-aa45464e96d3	0	1fb400fe-9ba3-429c-9839-cf6bbe92c11b		t
b6ce3328-3887-47ec-b5d6-aa45464e96d3	1	c0826c73-38b8-46ea-a4d1-31edbc87151c		t
b6ce3328-3887-47ec-b5d6-aa45464e96d3	2	3b6b1696-3333-4074-820f-5257d0e9107f		t
b6ce3328-3887-47ec-b5d6-aa45464e96d3	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
4154a41c-3533-405f-a84d-cb27c4e324eb	0	733e0d3d-a29f-4018-9f6a-f422a1cc33db		t
4154a41c-3533-405f-a84d-cb27c4e324eb	1	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
4154a41c-3533-405f-a84d-cb27c4e324eb	2	8cb977c6-a283-4879-bbb0-a7957ae728ab		t
4154a41c-3533-405f-a84d-cb27c4e324eb	3	5428d2e2-1ff8-4744-87f6-0173ed850199		t
6c80df19-cf8a-491d-bff8-aa190671e5e6	0	a7fa7b1a-4787-4c7a-b0b8-93c7201a85a1	 	t
6c80df19-cf8a-491d-bff8-aa190671e5e6	1	c9af9d0e-2c27-4a74-a239-eb9e03b370fc		t
6c80df19-cf8a-491d-bff8-aa190671e5e6	1	d0a956c6-a0ca-482f-8239-84175a5b78f8		t
6c80df19-cf8a-491d-bff8-aa190671e5e6	2	409950dc-0bc2-40b9-80e2-c20fd2d05549		t
6c80df19-cf8a-491d-bff8-aa190671e5e6	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
5b803618-0fb0-4db9-b591-45946608779f	1	6c4e3283-2c6c-4729-bd04-c24decee1951		t
5b803618-0fb0-4db9-b591-45946608779f	2	954e620b-fdbc-474c-a7db-e89ddcff4df0		t
5b803618-0fb0-4db9-b591-45946608779f	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
cbaf3689-4999-4188-8997-29bdebd4a75d	0	1914c099-3b8a-4a7a-8a3a-5f0b2ab5a559		t
cbaf3689-4999-4188-8997-29bdebd4a75d	1	33a0ab01-1636-4469-a704-f5a6d9e71453		t
b950e9a6-7d9a-4474-ba17-c52c27a26845	0	a993b4f3-e795-41c7-ac90-996416a46b36		t
b950e9a6-7d9a-4474-ba17-c52c27a26845	1	25e455d8-72f7-4746-8a7e-0d288ed7f09c		t
ee566f4a-b257-4721-8cea-0128c2aa773b	0	40fc326a-acf4-4798-800e-42bf03505ae2		t
ee566f4a-b257-4721-8cea-0128c2aa773b	1	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
cbaf3689-4999-4188-8997-29bdebd4a75d	1	f8c6c233-0b7f-430f-b874-1cf404366c4d		t
cbaf3689-4999-4188-8997-29bdebd4a75d	2	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
cbaf3689-4999-4188-8997-29bdebd4a75d	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
cbaf3689-4999-4188-8997-29bdebd4a75d	4	6854f448-1f2a-4b65-b756-a34bd714cf44		t
e4fb5e47-a1b5-482d-a13f-4eba8168a590	0	09eab945-1f2c-46ab-b73d-0a0c0ac87d2f		t
e4fb5e47-a1b5-482d-a13f-4eba8168a590	1	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
e4fb5e47-a1b5-482d-a13f-4eba8168a590	2	33a0ab01-1636-4469-a704-f5a6d9e71453		t
e4fb5e47-a1b5-482d-a13f-4eba8168a590	2	f8c6c233-0b7f-430f-b874-1cf404366c4d		t
e4fb5e47-a1b5-482d-a13f-4eba8168a590	3	5428d2e2-1ff8-4744-87f6-0173ed850199		t
4aadb1b6-308a-4532-9df7-601e80d0de60	0	e0783946-5eca-4407-8075-aa7b45ddac25		t
4aadb1b6-308a-4532-9df7-601e80d0de60	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
16e6375d-ce10-4c15-9703-28cb3b6e1736	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
16e6375d-ce10-4c15-9703-28cb3b6e1736	1	05814f0b-5390-4b98-b689-ae1ed953620b		t
16e6375d-ce10-4c15-9703-28cb3b6e1736	2	b44d3b6f-1986-4832-93bc-5c4d0148d578		t
16e6375d-ce10-4c15-9703-28cb3b6e1736	3	285cc2d6-aecf-4aaa-8c76-c8a72204e35d		t
1653c88f-d90b-423e-8b38-3aa54860cb99	0	7f2210c1-eb37-477f-8104-70f8621abaa3		t
1653c88f-d90b-423e-8b38-3aa54860cb99	1	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
1653c88f-d90b-423e-8b38-3aa54860cb99	2	554e0cae-41f2-4b5f-8de4-13337aa67615		t
625d7065-500b-4ffe-9d61-ebaa7e0039f6	0	2054a4b3-63e4-472b-aa5d-c6b5bf10eb60		t
625d7065-500b-4ffe-9d61-ebaa7e0039f6	1	fd4c8398-1e4f-48e3-91bd-23ce55caeece		t
625d7065-500b-4ffe-9d61-ebaa7e0039f6	2	6a3bafc0-0246-4984-9905-63fc9004363d		t
625d7065-500b-4ffe-9d61-ebaa7e0039f6	3	8f210c7c-1b07-4b76-8c13-34dfe4b0a9bd		t
4e2b9955-5a3a-480f-b9da-ea0191aea144	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
4e2b9955-5a3a-480f-b9da-ea0191aea144	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
4e2b9955-5a3a-480f-b9da-ea0191aea144	2	f6d9301e-3591-48b7-8fb6-783c4c2849a9		t
4e2b9955-5a3a-480f-b9da-ea0191aea144	3	092087b3-4b38-43fe-a926-80a45e679953		t
4e2b9955-5a3a-480f-b9da-ea0191aea144	4	5428d2e2-1ff8-4744-87f6-0173ed850199		t
13bd0cbe-b2b4-4a70-b0be-1ba97bd53fc0	0	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
13bd0cbe-b2b4-4a70-b0be-1ba97bd53fc0	1	21099aa2-cda1-4bd3-809d-a3c470aa594c		t
13bd0cbe-b2b4-4a70-b0be-1ba97bd53fc0	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
e4c8c6df-430d-4639-a606-9cd61eb1f472	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
e4c8c6df-430d-4639-a606-9cd61eb1f472	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
e4c8c6df-430d-4639-a606-9cd61eb1f472	2	4078fbce-8b37-4922-9f03-111b70c84bfb		t
e4c8c6df-430d-4639-a606-9cd61eb1f472	3	daf1915b-d6e7-49da-9a35-76d8dc12efe9		t
e4c8c6df-430d-4639-a606-9cd61eb1f472	4	6854f448-1f2a-4b65-b756-a34bd714cf44		t
6b2d5c12-bd5f-4014-bb2b-4993ddc7b3a7	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
6b2d5c12-bd5f-4014-bb2b-4993ddc7b3a7	1	ef9ec75b-c715-41ac-a0d8-4e4ba5a96288		t
6b2d5c12-bd5f-4014-bb2b-4993ddc7b3a7	2	9090c521-842b-4674-9030-8e6dd62bfc9d		t
6b2d5c12-bd5f-4014-bb2b-4993ddc7b3a7	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
65c17f3b-d36a-4b22-8b80-378fe5214934	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
65c17f3b-d36a-4b22-8b80-378fe5214934	1	f0997b88-2d0a-441a-854f-5fad2691c634		t
65c17f3b-d36a-4b22-8b80-378fe5214934	2	6a910dab-af90-4f2c-be85-a41776c4fd82		t
65c17f3b-d36a-4b22-8b80-378fe5214934	3	9090c521-842b-4674-9030-8e6dd62bfc9d		t
65c17f3b-d36a-4b22-8b80-378fe5214934	4	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
acce6f2e-c76f-4d11-bb53-f40a43d1a13e	0	878d1454-7de4-4f9a-9bed-a0c4ba3eacac		t
acce6f2e-c76f-4d11-bb53-f40a43d1a13e	1	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
4912794f-a31f-48a2-b13e-f21a0107f308	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
ff1a6ded-6a8f-4468-b6d9-32e803a4252f	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
ff1a6ded-6a8f-4468-b6d9-32e803a4252f	1	bd2d623e-ff0e-45d1-9ae4-b3345423ee12		t
ff1a6ded-6a8f-4468-b6d9-32e803a4252f	2	d4cb459a-01af-4aa1-aba4-11aa51476102		t
ff1a6ded-6a8f-4468-b6d9-32e803a4252f	3	6a910dab-af90-4f2c-be85-a41776c4fd82		t
ff1a6ded-6a8f-4468-b6d9-32e803a4252f	4	e1a50e9d-ed4d-4390-92ea-952a5c9a693a		t
ff1a6ded-6a8f-4468-b6d9-32e803a4252f	5	770dd9be-8c86-41fe-bce2-f89c121497d6		t
2e90c591-98a3-4102-af43-38925a4da785	0	c8736c6b-c84e-46d8-bd1d-f0e3ada0bb5e		t
2e90c591-98a3-4102-af43-38925a4da785	1	115b2e62-8145-408a-8d59-78faec6c0852		t
2e90c591-98a3-4102-af43-38925a4da785	2	26802bad-df0a-4028-9ada-806a81c70c08		t
2e90c591-98a3-4102-af43-38925a4da785	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
f2324e26-9cd2-47d0-8ded-23181042d756	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
f2324e26-9cd2-47d0-8ded-23181042d756	1	049f3d08-6c93-4a93-acaa-e3449da59b30		t
f2324e26-9cd2-47d0-8ded-23181042d756	2	c6807f32-9cf3-4611-94cf-8453acfafda6		t
f2324e26-9cd2-47d0-8ded-23181042d756	3	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
77637b65-3285-46b7-991d-2d4be54c7f98	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
77637b65-3285-46b7-991d-2d4be54c7f98	1	e0d91459-0d51-4fd6-a7e0-253614ba0186		t
77637b65-3285-46b7-991d-2d4be54c7f98	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
cecfefb8-8c88-46cf-91ab-a306665162ce	0	9738f293-021a-4eb3-a47c-ab79aa441a0c		t
cecfefb8-8c88-46cf-91ab-a306665162ce	1	1f8cf53b-62fc-477b-89cd-f7b3525409cd		t
cecfefb8-8c88-46cf-91ab-a306665162ce	1	c6807f32-9cf3-4611-94cf-8453acfafda6		t
cecfefb8-8c88-46cf-91ab-a306665162ce	2	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
cecfefb8-8c88-46cf-91ab-a306665162ce	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	0	a9a73e99-7180-450b-b254-3ccf7d804976		t
1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	1	b0e19db8-8dcc-4831-a1ff-02c7452acd3f		t
1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	2	b1bb4dba-cd94-4cba-897d-f1a50b087d64		t
1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	3	682fd9f5-71ad-48aa-a41e-f07c99eb594b		t
1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	4	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
4912794f-a31f-48a2-b13e-f21a0107f308	1	05814f0b-5390-4b98-b689-ae1ed953620b		t
4912794f-a31f-48a2-b13e-f21a0107f308	2	49411dbb-16b5-4f07-9c5a-9d02f8c0ba8c		t
4912794f-a31f-48a2-b13e-f21a0107f308	3	84f3c186-fe4a-4894-896e-34ecd8e1b8cd		t
4912794f-a31f-48a2-b13e-f21a0107f308	4	3b70696c-9c25-4a17-800b-177a03cd062d		t
82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	0	742b7ca7-c9e9-400b-8f90-84965d65dcf4		t
82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
abad63f1-2a8e-406c-a8f2-0454d945fc8b	0	1f8cf53b-62fc-477b-89cd-f7b3525409cd		t
abad63f1-2a8e-406c-a8f2-0454d945fc8b	1	adaa2f95-5f2d-4e7f-a630-08940d3fa07c		t
abad63f1-2a8e-406c-a8f2-0454d945fc8b	2	6c6d90c2-c302-427c-8f13-6b5ad646a4e3		t
abad63f1-2a8e-406c-a8f2-0454d945fc8b	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
abad63f1-2a8e-406c-a8f2-0454d945fc8b	4	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	0	00f050b5-2f41-463b-8aa9-16b7ee56f5eb		t
7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	1	61a12bc8-9f49-458c-aeb5-49327b1ad078		t
7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	2	4cdd688c-a7db-4abb-a1b7-a960968782d7		t
7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	3	6c6d90c2-c302-427c-8f13-6b5ad646a4e3		t
7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	5	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
71bc51a4-0ed7-4ee2-a3cf-e89c1488cea0	0	00f050b5-2f41-463b-8aa9-16b7ee56f5eb		t
71bc51a4-0ed7-4ee2-a3cf-e89c1488cea0	1	999dd2f9-6073-4ccc-86e6-8efe8c9dfbc4		t
71bc51a4-0ed7-4ee2-a3cf-e89c1488cea0	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
9046c00f-4b8a-4e29-adad-b98dfe116fb9	0	6e43fdc2-de4e-43be-b4cc-23a7cf9a2f6c		t
9046c00f-4b8a-4e29-adad-b98dfe116fb9	1	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
9046c00f-4b8a-4e29-adad-b98dfe116fb9	2	871c70d9-d595-4f13-91c1-6ab15a4cf408		t
9046c00f-4b8a-4e29-adad-b98dfe116fb9	3	79db768a-060e-4442-8d84-69e9750cfc7a		t
9046c00f-4b8a-4e29-adad-b98dfe116fb9	4	9a823d89-75e7-42fc-b659-0cc512db39eb		t
f0ae8d56-8b50-42e9-9222-fe179d74614f	0	fb7bb9ed-6604-4252-8fa8-bc2e5444e525		t
f0ae8d56-8b50-42e9-9222-fe179d74614f	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
1536fd83-9808-4a5a-910b-992b465cc3a7	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
365afb4d-ff8d-4b6c-852e-6c5e842d293d	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
365afb4d-ff8d-4b6c-852e-6c5e842d293d	1	734ceaab-2f9f-4e55-90df-024ea1d609c9		t
365afb4d-ff8d-4b6c-852e-6c5e842d293d	2	770dd9be-8c86-41fe-bce2-f89c121497d6		t
365afb4d-ff8d-4b6c-852e-6c5e842d293d	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
a78015d3-584a-4d73-8e32-548a71b8b2d3	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
a78015d3-584a-4d73-8e32-548a71b8b2d3	1	3a455389-447b-465e-93bb-fcb351dfa755		t
a78015d3-584a-4d73-8e32-548a71b8b2d3	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
2daa28d1-9edd-4993-8547-539d8f9b2a1e	0	0973bd19-d068-4f27-9402-45c8a8ef375b		t
1536fd83-9808-4a5a-910b-992b465cc3a7	1	47542b60-7ea5-4890-8bcb-e18df29a01d6		t
1536fd83-9808-4a5a-910b-992b465cc3a7	2	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
1536fd83-9808-4a5a-910b-992b465cc3a7	3	02a350d1-6be3-4026-a28d-f45559ae3d1e		t
3ad0ca2f-ba02-4395-9e72-920276c17e55	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
3ad0ca2f-ba02-4395-9e72-920276c17e55	1	a34549b7-4054-49cb-b1df-d8360a177721		t
3ad0ca2f-ba02-4395-9e72-920276c17e55	2	c96f911d-b102-44e9-a6ef-8474e14916fe		t
3ad0ca2f-ba02-4395-9e72-920276c17e55	3	02512113-58d3-4d33-aa21-5a4e74536ee1		t
3ad0ca2f-ba02-4395-9e72-920276c17e55	4	2d7c1c46-f7c9-43f4-bbaf-e6d8ef57413e		t
2daa28d1-9edd-4993-8547-539d8f9b2a1e	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
2daa28d1-9edd-4993-8547-539d8f9b2a1e	1	43d4541f-534f-4a41-be45-4d1ec3a1e44c		t
2daa28d1-9edd-4993-8547-539d8f9b2a1e	2	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
80935951-a4ef-4529-a5ad-828616417213	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
80935951-a4ef-4529-a5ad-828616417213	1	3c2a0eda-da67-4052-89a6-53efe6171a23		t
80935951-a4ef-4529-a5ad-828616417213	2	f6696507-34b4-4ed0-83ca-925113531271		t
80935951-a4ef-4529-a5ad-828616417213	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
6375bdf3-93a0-4e0b-959c-6db7ef8bb497	0	3edfc07a-b087-4f58-83a6-398040a769d9		t
e8156625-bceb-4770-9a34-10a3c106b767	0	f96e41a9-4ad3-4827-b5e6-6e85939da4b8		t
e8156625-bceb-4770-9a34-10a3c106b767	1	3c2a0eda-da67-4052-89a6-53efe6171a23		t
e8156625-bceb-4770-9a34-10a3c106b767	2	220613a0-ea53-41c6-acda-608ca05a31bc		t
e8156625-bceb-4770-9a34-10a3c106b767	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
01246217-ab3e-41df-b9c8-da7d20590036	0	0973bd19-d068-4f27-9402-45c8a8ef375b		t
01246217-ab3e-41df-b9c8-da7d20590036	1	b5417cdf-147b-461c-ac40-2e95a9940d73		t
01246217-ab3e-41df-b9c8-da7d20590036	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
6375bdf3-93a0-4e0b-959c-6db7ef8bb497	1	ec88f280-c529-4384-acfc-3b3bbcb45855		t
6375bdf3-93a0-4e0b-959c-6db7ef8bb497	2	f656be3a-3b62-4ef6-a963-e2447e74d555		t
47111217-82c9-4d1d-97cb-acf67854743f	0	2c46aaa8-7bf2-4d33-9e07-69d770244a21		t
47111217-82c9-4d1d-97cb-acf67854743f	1	3a92b765-a663-4809-93c1-9b43c012488e		t
85efe4fd-955b-4168-8754-99493ab889af	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
85efe4fd-955b-4168-8754-99493ab889af	1	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
85efe4fd-955b-4168-8754-99493ab889af	2	60dd39c6-e6b0-48bc-a1f2-f79f77f78898		t
85efe4fd-955b-4168-8754-99493ab889af	3	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f		t
85efe4fd-955b-4168-8754-99493ab889af	4	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
47111217-82c9-4d1d-97cb-acf67854743f	2	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
47111217-82c9-4d1d-97cb-acf67854743f	3	554e0cae-41f2-4b5f-8de4-13337aa67615		t
47111217-82c9-4d1d-97cb-acf67854743f	4	6854f448-1f2a-4b65-b756-a34bd714cf44		t
bf36137b-96c0-4f94-8932-1a9939e3f7f4	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
bf36137b-96c0-4f94-8932-1a9939e3f7f4	1	c6e0613c-702b-43fd-a771-e29dbb609752		t
bf36137b-96c0-4f94-8932-1a9939e3f7f4	2	8d397b9a-7937-41ee-a6bb-cdadd0139335		t
22e9d665-6a37-4697-bbb3-956a69b0b573	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
22e9d665-6a37-4697-bbb3-956a69b0b573	1	dd953f16-8954-4922-af4a-c4206ecbf36f		t
22e9d665-6a37-4697-bbb3-956a69b0b573	2	8f300950-be69-4881-bd9a-187a074890bc		t
22e9d665-6a37-4697-bbb3-956a69b0b573	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
318de17c-e8b8-4db6-8d53-c225c4303823	0	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f		t
318de17c-e8b8-4db6-8d53-c225c4303823	1	40fc326a-acf4-4798-800e-42bf03505ae2		t
318de17c-e8b8-4db6-8d53-c225c4303823	2	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
318de17c-e8b8-4db6-8d53-c225c4303823	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
0b415d8e-734a-4ff0-b7fb-d0ed6737bf7b	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
0b415d8e-734a-4ff0-b7fb-d0ed6737bf7b	1	cb4f03ef-f3ea-459d-8191-15b6b65cd707		t
0b415d8e-734a-4ff0-b7fb-d0ed6737bf7b	2	202d07e2-4d72-4f1e-9bd7-2ae5b8f1b59e		t
0b415d8e-734a-4ff0-b7fb-d0ed6737bf7b	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
c926039a-e4a8-4007-a78b-b40c39cd62f9	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
c926039a-e4a8-4007-a78b-b40c39cd62f9	1	0e454ae7-1ac5-45ad-88d9-5001d87cd655		t
c926039a-e4a8-4007-a78b-b40c39cd62f9	2	f8c6c233-0b7f-430f-b874-1cf404366c4d		t
c926039a-e4a8-4007-a78b-b40c39cd62f9	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
a8551464-09c4-4530-ad6b-cd3450020d59	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
a8551464-09c4-4530-ad6b-cd3450020d59	1	8b2b8ecd-9a67-4ab4-9a06-4a6b4afa6df6		t
a8551464-09c4-4530-ad6b-cd3450020d59	2	e0b1caeb-3263-4347-ace3-198be6b08a4e		t
a8551464-09c4-4530-ad6b-cd3450020d59	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
4909ed42-2acf-4a6f-a5c6-0c15bbdabb56	0	3edfc07a-b087-4f58-83a6-398040a769d9		t
4909ed42-2acf-4a6f-a5c6-0c15bbdabb56	1	3c4a4ddc-2e77-48b9-a373-7ce70a4124af		t
4909ed42-2acf-4a6f-a5c6-0c15bbdabb56	2	8d397b9a-7937-41ee-a6bb-cdadd0139335		t
4909ed42-2acf-4a6f-a5c6-0c15bbdabb56	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
bf36137b-96c0-4f94-8932-1a9939e3f7f4	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
90d84d1c-30bb-4949-9be3-cdf04f6078a2	0	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
95642c20-f5db-4f5b-bae5-571d0be59c0e	0	7c29c59b-7af3-4151-b9e4-240c3216a496		t
95642c20-f5db-4f5b-bae5-571d0be59c0e	1	f9453e7b-7ab2-4f6e-ae3f-ccca2095473d		t
95642c20-f5db-4f5b-bae5-571d0be59c0e	2	d178a54b-2bd9-41ae-9cd6-a3905576f50a		t
95642c20-f5db-4f5b-bae5-571d0be59c0e	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
3a9c898c-be9e-4d57-a5e6-9020acaac454	0	a9a73e99-7180-450b-b254-3ccf7d804976		t
3a9c898c-be9e-4d57-a5e6-9020acaac454	0	da4faa2d-4f5c-49c9-9e3b-667f215d3755		t
3a9c898c-be9e-4d57-a5e6-9020acaac454	1	d178a54b-2bd9-41ae-9cd6-a3905576f50a		t
3a9c898c-be9e-4d57-a5e6-9020acaac454	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
f21e6d0b-71a3-454c-be66-f219008df5de	0	7c29c59b-7af3-4151-b9e4-240c3216a496		t
f21e6d0b-71a3-454c-be66-f219008df5de	1	367ace64-8985-467e-9ffd-9f18b1c22f52		t
f21e6d0b-71a3-454c-be66-f219008df5de	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
adea4783-10b8-4314-ae68-cb8c31f02dc4	0	a7a84ee5-b335-4421-ab6a-a0fa69763f5f		t
adea4783-10b8-4314-ae68-cb8c31f02dc4	1	b73a59c6-e2bd-483c-8702-2efd92f9f2ce		t
adea4783-10b8-4314-ae68-cb8c31f02dc4	2	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
adea4783-10b8-4314-ae68-cb8c31f02dc4	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
25a3f68f-0fde-4bf9-993a-15ac5c89c559	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
25a3f68f-0fde-4bf9-993a-15ac5c89c559	1	a34549b7-4054-49cb-b1df-d8360a177721		t
25a3f68f-0fde-4bf9-993a-15ac5c89c559	2	ae264311-f689-4612-b539-7c2bcdfa8336		t
25a3f68f-0fde-4bf9-993a-15ac5c89c559	3	a8e4e70a-4c48-4a7e-842c-51269fd310e8		t
25a3f68f-0fde-4bf9-993a-15ac5c89c559	4	c972cb45-1fab-43e5-a4e2-20cae18b1ea7		t
25a3f68f-0fde-4bf9-993a-15ac5c89c559	5	9a823d89-75e7-42fc-b659-0cc512db39eb		t
09a0265a-39a6-4370-abc2-914463f5a500	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
09a0265a-39a6-4370-abc2-914463f5a500	1	22db3a58-9264-4fe4-b086-51e98f525cc8		t
09a0265a-39a6-4370-abc2-914463f5a500	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
39794236-b2c4-460d-b1e8-22cd01671d4c	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
39794236-b2c4-460d-b1e8-22cd01671d4c	1	a34549b7-4054-49cb-b1df-d8360a177721		t
39794236-b2c4-460d-b1e8-22cd01671d4c	2	f6d9301e-3591-48b7-8fb6-783c4c2849a9		t
39794236-b2c4-460d-b1e8-22cd01671d4c	3	6f034e1b-3c62-41d4-9f68-862d5c769c9a		t
39794236-b2c4-460d-b1e8-22cd01671d4c	4	2f25cc1c-10f0-4e4b-ae8b-434b50c9dd3b		t
39794236-b2c4-460d-b1e8-22cd01671d4c	5	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
315c75b3-623c-4d25-ac2b-55de187e5e0a	0	c8736c6b-c84e-46d8-bd1d-f0e3ada0bb5e		t
315c75b3-623c-4d25-ac2b-55de187e5e0a	1	ec88f280-c529-4384-acfc-3b3bbcb45855		t
315c75b3-623c-4d25-ac2b-55de187e5e0a	2	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
315c75b3-623c-4d25-ac2b-55de187e5e0a	3	a34549b7-4054-49cb-b1df-d8360a177721		t
315c75b3-623c-4d25-ac2b-55de187e5e0a	4	e2d56d3d-7c4a-4f7c-b1ef-24e90fbdd565		t
315c75b3-623c-4d25-ac2b-55de187e5e0a	5	2f25cc1c-10f0-4e4b-ae8b-434b50c9dd3b		t
315c75b3-623c-4d25-ac2b-55de187e5e0a	6	9a823d89-75e7-42fc-b659-0cc512db39eb		t
0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	1	a34549b7-4054-49cb-b1df-d8360a177721		t
0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	2	01c172e0-1edc-4b37-aa0a-95a52591808e		t
0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	3	02512113-58d3-4d33-aa21-5a4e74536ee1		t
0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	4	2f25cc1c-10f0-4e4b-ae8b-434b50c9dd3b		t
0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	5	9a823d89-75e7-42fc-b659-0cc512db39eb		t
63ca3e07-ea8f-4935-bb96-361625702286	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
63ca3e07-ea8f-4935-bb96-361625702286	1	05814f0b-5390-4b98-b689-ae1ed953620b		t
63ca3e07-ea8f-4935-bb96-361625702286	2	a34549b7-4054-49cb-b1df-d8360a177721		t
63ca3e07-ea8f-4935-bb96-361625702286	3	f6d9301e-3591-48b7-8fb6-783c4c2849a9		t
63ca3e07-ea8f-4935-bb96-361625702286	4	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
e285ac10-ec9c-42a9-b45e-3bff62379c5c	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
e285ac10-ec9c-42a9-b45e-3bff62379c5c	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
e285ac10-ec9c-42a9-b45e-3bff62379c5c	2	a2900d78-2478-4f29-b44d-6863eeb4e13d		t
34a82dce-e3c5-47b9-90c3-2939d035f28c	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
34a82dce-e3c5-47b9-90c3-2939d035f28c	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
34a82dce-e3c5-47b9-90c3-2939d035f28c	2	aa97989e-7b70-4036-8c1f-adb05cbcca5a		t
33560d31-49b3-49ac-bb67-9b379ab273cf	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
33560d31-49b3-49ac-bb67-9b379ab273cf	1	1975ec73-506b-4029-bcc8-17daf0bff9b4		t
33560d31-49b3-49ac-bb67-9b379ab273cf	2	a8e4e70a-4c48-4a7e-842c-51269fd310e8		t
33560d31-49b3-49ac-bb67-9b379ab273cf	3	c8736c6b-c84e-46d8-bd1d-f0e3ada0bb5e		t
33560d31-49b3-49ac-bb67-9b379ab273cf	4	9a823d89-75e7-42fc-b659-0cc512db39eb		t
5352a0ac-0ff3-4112-ac76-f25cffaa4c25	0	c8736c6b-c84e-46d8-bd1d-f0e3ada0bb5e		t
5352a0ac-0ff3-4112-ac76-f25cffaa4c25	1	ec88f280-c529-4384-acfc-3b3bbcb45855		t
5352a0ac-0ff3-4112-ac76-f25cffaa4c25	2	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
5352a0ac-0ff3-4112-ac76-f25cffaa4c25	3	05814f0b-5390-4b98-b689-ae1ed953620b		t
5352a0ac-0ff3-4112-ac76-f25cffaa4c25	4	7fdbe1c8-77d0-44e8-bec4-d8504a53faec		t
5352a0ac-0ff3-4112-ac76-f25cffaa4c25	5	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
5352a0ac-0ff3-4112-ac76-f25cffaa4c25	6	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
bc6042e5-d7a6-4e69-b224-957b34a1f4ac	0	3edfc07a-b087-4f58-83a6-398040a769d9		t
bc6042e5-d7a6-4e69-b224-957b34a1f4ac	1	ce179d72-1ea4-4981-8fd1-b0fd4365a184		t
bc6042e5-d7a6-4e69-b224-957b34a1f4ac	2	6c4e3283-2c6c-4729-bd04-c24decee1951		t
bc6042e5-d7a6-4e69-b224-957b34a1f4ac	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
d69e852c-f635-4caa-8211-b82b6dbeb51d	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
d69e852c-f635-4caa-8211-b82b6dbeb51d	1	d44e2ca6-53dc-4893-94df-ea6c29b165c8		t
d69e852c-f635-4caa-8211-b82b6dbeb51d	2	89bca261-d27e-489a-804d-1b3650c60c9e		t
d69e852c-f635-4caa-8211-b82b6dbeb51d	3	2aa4f090-74ba-4247-a6be-d9ac2f257edc		t
0cdd139b-b114-45bb-8373-c046683bd09a	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
0cdd139b-b114-45bb-8373-c046683bd09a	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
0cdd139b-b114-45bb-8373-c046683bd09a	2	f6d9301e-3591-48b7-8fb6-783c4c2849a9		t
0cdd139b-b114-45bb-8373-c046683bd09a	3	fc7ea20b-5eda-479b-8cf8-b52d2771cde1		t
0cdd139b-b114-45bb-8373-c046683bd09a	4	559e715f-2361-4379-a466-77d6d1209206		t
0cdd139b-b114-45bb-8373-c046683bd09a	5	092087b3-4b38-43fe-a926-80a45e679953		t
e6a8c5a7-27b2-4382-ae96-840c5842434f	0	b72d414b-1529-4aa8-81c2-e049fceb930b		t
e6a8c5a7-27b2-4382-ae96-840c5842434f	1	9c232518-f096-4df1-8a0b-fcf4a00b679d		t
e6a8c5a7-27b2-4382-ae96-840c5842434f	2	6854f448-1f2a-4b65-b756-a34bd714cf44		t
2ac2599f-1933-4cac-835f-4e6a43121b37	0	c4beb48c-a30b-41b7-bfcc-1287b9fbb1a3		t
2ac2599f-1933-4cac-835f-4e6a43121b37	1	6c4e3283-2c6c-4729-bd04-c24decee1951		t
2ac2599f-1933-4cac-835f-4e6a43121b37	2	6e2c1407-639a-47c1-b275-9c20c50cbaf4		t
c1579f77-3977-4956-9082-594d7edaaaf7	0	0b9c45b0-a08f-4528-8f8d-ae64b4885434		t
c1579f77-3977-4956-9082-594d7edaaaf7	1	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
c1579f77-3977-4956-9082-594d7edaaaf7	2	c9af9d0e-2c27-4a74-a239-eb9e03b370fc		t
c1579f77-3977-4956-9082-594d7edaaaf7	3	6c4e3283-2c6c-4729-bd04-c24decee1951		t
c1579f77-3977-4956-9082-594d7edaaaf7	4	6854f448-1f2a-4b65-b756-a34bd714cf44		t
5d46fe39-084b-41b3-9f5b-45e37bed517d	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
5d46fe39-084b-41b3-9f5b-45e37bed517d	1	a34549b7-4054-49cb-b1df-d8360a177721		t
5d46fe39-084b-41b3-9f5b-45e37bed517d	2	95aa2fa2-ef9f-40c7-8590-8efb6bb7eff4		t
5d46fe39-084b-41b3-9f5b-45e37bed517d	3	70acf9d5-5bee-4dae-8503-6fec6c823d20		t
5d46fe39-084b-41b3-9f5b-45e37bed517d	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
246e5bac-1a3c-4ef1-ac3b-dd059212be33	0	3ad5c645-91d7-49d3-b950-895982b17cd3		t
246e5bac-1a3c-4ef1-ac3b-dd059212be33	1	6b8c8002-71c1-4225-b296-e2d33c91cac3		t
246e5bac-1a3c-4ef1-ac3b-dd059212be33	2	a34549b7-4054-49cb-b1df-d8360a177721		t
246e5bac-1a3c-4ef1-ac3b-dd059212be33	3	95aa2fa2-ef9f-40c7-8590-8efb6bb7eff4		t
246e5bac-1a3c-4ef1-ac3b-dd059212be33	4	70acf9d5-5bee-4dae-8503-6fec6c823d20		t
246e5bac-1a3c-4ef1-ac3b-dd059212be33	4	6c4e3283-2c6c-4729-bd04-c24decee1951		t
246e5bac-1a3c-4ef1-ac3b-dd059212be33	5	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
2ddc2572-ee64-4769-98d4-a93d84299bef	0	74cfe458-3890-480d-bc36-d69dbabef539		t
2ddc2572-ee64-4769-98d4-a93d84299bef	1	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
2ddc2572-ee64-4769-98d4-a93d84299bef	2	c2d232de-212b-4304-a683-20fc1e11123f		t
2ddc2572-ee64-4769-98d4-a93d84299bef	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
0cfac981-7ff3-477f-8e96-3688051f7eff	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
0cfac981-7ff3-477f-8e96-3688051f7eff	1	9af7a2ab-2d70-424a-81ff-e5e9f370ca76		t
0cfac981-7ff3-477f-8e96-3688051f7eff	2	6a910dab-af90-4f2c-be85-a41776c4fd82		t
0cfac981-7ff3-477f-8e96-3688051f7eff	3	6f034e1b-3c62-41d4-9f68-862d5c769c9a		t
0cfac981-7ff3-477f-8e96-3688051f7eff	4	20a758cf-142a-4345-931b-3dd8c9cc075f		t
0cfac981-7ff3-477f-8e96-3688051f7eff	5	770dd9be-8c86-41fe-bce2-f89c121497d6		t
40d39b8d-8402-4a45-b2b6-f6ac1f3fe592	0	4fd75909-b453-4de2-b065-55fd6a487aef		t
40d39b8d-8402-4a45-b2b6-f6ac1f3fe592	1	f6696507-34b4-4ed0-83ca-925113531271		t
40d39b8d-8402-4a45-b2b6-f6ac1f3fe592	2	5428d2e2-1ff8-4744-87f6-0173ed850199		t
ee0fe609-522a-4978-9d9f-e435aac37350	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
ee0fe609-522a-4978-9d9f-e435aac37350	1	a34549b7-4054-49cb-b1df-d8360a177721		t
ee0fe609-522a-4978-9d9f-e435aac37350	2	3fb918b9-3bf2-4ef3-9a42-c8336a4baed0		t
ee0fe609-522a-4978-9d9f-e435aac37350	3	8cdd39c7-4dec-4572-82db-1d019f78b8d0		t
ee0fe609-522a-4978-9d9f-e435aac37350	4	dbda2039-34c6-40da-ac2d-931d0a14f230		t
d2c868f1-64b8-43bd-bead-e3322fa37082	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
d2c868f1-64b8-43bd-bead-e3322fa37082	1	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
d2c868f1-64b8-43bd-bead-e3322fa37082	2	ecc60b37-84e0-424d-8d12-6d889b396d7d		t
d2c868f1-64b8-43bd-bead-e3322fa37082	3	8b28f5db-7bd4-498a-8dee-02b1e572aefa	 	t
d2c868f1-64b8-43bd-bead-e3322fa37082	4	98d16472-3085-4fef-b3e3-ef1b27516020	 	t
d2c868f1-64b8-43bd-bead-e3322fa37082	5	065d3f35-8633-4c28-a152-5f282ab89af7		t
d2c868f1-64b8-43bd-bead-e3322fa37082	6	9a823d89-75e7-42fc-b659-0cc512db39eb		t
c43616a3-1ff4-4ae5-bbfc-9f485a09cb5f	0	1f8cf53b-62fc-477b-89cd-f7b3525409cd		t
c43616a3-1ff4-4ae5-bbfc-9f485a09cb5f	1	6b6a7b5b-b4af-4c41-9893-922f218d9a2a		t
c43616a3-1ff4-4ae5-bbfc-9f485a09cb5f	2	8cb977c6-a283-4879-bbb0-a7957ae728ab		t
c43616a3-1ff4-4ae5-bbfc-9f485a09cb5f	3	5428d2e2-1ff8-4744-87f6-0173ed850199		t
c7a96266-53db-45c4-af43-cb2fb06026ec	0	48150d1e-7836-40a2-ba5d-93f9e4002f55		t
c7a96266-53db-45c4-af43-cb2fb06026ec	1	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
c7a96266-53db-45c4-af43-cb2fb06026ec	2	52a6fdba-df7c-41b1-97d9-fc3d98c717ae		t
c7a96266-53db-45c4-af43-cb2fb06026ec	3	b881ffcc-257e-48a9-be07-23036ec93523		t
c7a96266-53db-45c4-af43-cb2fb06026ec	4	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
fb3970bc-ac4b-45da-8512-674beef934ce	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
fb3970bc-ac4b-45da-8512-674beef934ce	1	a34549b7-4054-49cb-b1df-d8360a177721		t
fb3970bc-ac4b-45da-8512-674beef934ce	2	1467dd10-a147-4fd5-b72b-bac1ce6880b5		t
fb3970bc-ac4b-45da-8512-674beef934ce	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
29b1707d-0483-481d-bde2-47ee88ce79f1	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
29b1707d-0483-481d-bde2-47ee88ce79f1	1	a34549b7-4054-49cb-b1df-d8360a177721		t
29b1707d-0483-481d-bde2-47ee88ce79f1	2	290c633d-51b4-456b-a14a-226ccc5ec2b3		t
29b1707d-0483-481d-bde2-47ee88ce79f1	3	c7633828-73b9-4409-95c8-92bff803725b		t
29b1707d-0483-481d-bde2-47ee88ce79f1	4	2d7c1c46-f7c9-43f4-bbaf-e6d8ef57413e		t
0d990701-9ce0-4db8-982b-55700e6054e0	0	61cfcd09-b00b-4122-891e-267f691b2b29		t
0d990701-9ce0-4db8-982b-55700e6054e0	1	c3e5f0f1-8dcc-4135-b332-01d331ea7950		t
0d990701-9ce0-4db8-982b-55700e6054e0	2	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
c1edfb92-d22f-47d2-b16c-33e988c992dd	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
c1edfb92-d22f-47d2-b16c-33e988c992dd	1	2a197f22-8828-4008-b50d-a3cc245da22e		t
c1edfb92-d22f-47d2-b16c-33e988c992dd	2	0daaf882-9b58-44c5-aeb9-c5199e5b1a7c		t
c1edfb92-d22f-47d2-b16c-33e988c992dd	3	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
78d060a9-5e4b-48a3-a64b-dff2fdb515f0	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
78d060a9-5e4b-48a3-a64b-dff2fdb515f0	1	89bca261-d27e-489a-804d-1b3650c60c9e		t
78d060a9-5e4b-48a3-a64b-dff2fdb515f0	2	1f8cf53b-62fc-477b-89cd-f7b3525409cd		t
78d060a9-5e4b-48a3-a64b-dff2fdb515f0	3	6b6a7b5b-b4af-4c41-9893-922f218d9a2a		t
78d060a9-5e4b-48a3-a64b-dff2fdb515f0	4	9a823d89-75e7-42fc-b659-0cc512db39eb		t
767653da-5be0-405c-bbca-b2c82aa92919	0	285cc2d6-aecf-4aaa-8c76-c8a72204e35d		t
767653da-5be0-405c-bbca-b2c82aa92919	1	2a197f22-8828-4008-b50d-a3cc245da22e		t
767653da-5be0-405c-bbca-b2c82aa92919	2	09bddbde-16f9-4d2f-9d54-f074f05fc5f8		t
767653da-5be0-405c-bbca-b2c82aa92919	3	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
e2662c74-ce5e-4fd4-b048-4ba45cf45fbb	0	0a980715-0795-4077-89a2-bd7319482f37		t
e2662c74-ce5e-4fd4-b048-4ba45cf45fbb	1	6c4e3283-2c6c-4729-bd04-c24decee1951		t
e2662c74-ce5e-4fd4-b048-4ba45cf45fbb	1	70acf9d5-5bee-4dae-8503-6fec6c823d20		t
e2662c74-ce5e-4fd4-b048-4ba45cf45fbb	2	d11362f4-fd2a-41b6-8e5f-249a44675cd4		t
137f83eb-7935-43a4-a610-9d2bcada4640	0	7c303118-db8c-4fb3-82db-304cdac779a7		t
137f83eb-7935-43a4-a610-9d2bcada4640	1	dfc292f7-92c5-4f8a-834b-c691d649c1a4		t
137f83eb-7935-43a4-a610-9d2bcada4640	2	5428d2e2-1ff8-4744-87f6-0173ed850199		t
6d520f20-b110-410e-8c52-5f2e3aa1e629	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
6d520f20-b110-410e-8c52-5f2e3aa1e629	1	4a61d420-f80c-4a89-8055-e39405de7d72		t
6d520f20-b110-410e-8c52-5f2e3aa1e629	2	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
6d520f20-b110-410e-8c52-5f2e3aa1e629	3	d7f9442d-8c71-4039-9b69-f06b832cad33		t
13b14810-0b22-4d99-a35d-26671ebd22de	0	d7f9442d-8c71-4039-9b69-f06b832cad33		t
13b14810-0b22-4d99-a35d-26671ebd22de	1	5d0949f1-eee8-429b-8504-d92d41fa6bb1		t
13b14810-0b22-4d99-a35d-26671ebd22de	2	4a61d420-f80c-4a89-8055-e39405de7d72		t
13b14810-0b22-4d99-a35d-26671ebd22de	3	092087b3-4b38-43fe-a926-80a45e679953		t
13b14810-0b22-4d99-a35d-26671ebd22de	4	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
e21938f5-c84c-4104-89fd-a030234cb5de	0	12e749ce-d90f-479c-ad9c-94a0ab2f5876		t
e21938f5-c84c-4104-89fd-a030234cb5de	1	8f210c7c-1b07-4b76-8c13-34dfe4b0a9bd		t
e21938f5-c84c-4104-89fd-a030234cb5de	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
de1acd25-0f59-4844-99c8-6c7deb411b8a	0	68cfc6df-7733-444c-bdf4-cf72591e5bda		t
de1acd25-0f59-4844-99c8-6c7deb411b8a	1	770dd9be-8c86-41fe-bce2-f89c121497d6		t
de1acd25-0f59-4844-99c8-6c7deb411b8a	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
2c320f47-0559-420e-bc4f-68b434019014	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
2c320f47-0559-420e-bc4f-68b434019014	1	8345e74c-7155-4c13-99b6-6d1ced3ce2a0		t
2c320f47-0559-420e-bc4f-68b434019014	2	770dd9be-8c86-41fe-bce2-f89c121497d6		t
2c320f47-0559-420e-bc4f-68b434019014	3	d11362f4-fd2a-41b6-8e5f-249a44675cd4		t
feccd93e-c6cc-4500-bc9a-6d2bfbb22063	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
feccd93e-c6cc-4500-bc9a-6d2bfbb22063	1	c51e5efc-e07c-46fa-96ff-d92b08d035ae		t
feccd93e-c6cc-4500-bc9a-6d2bfbb22063	2	d44e2ca6-53dc-4893-94df-ea6c29b165c8		t
819f188f-a2ca-4946-82a1-9fb35db50fa8	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
819f188f-a2ca-4946-82a1-9fb35db50fa8	1	56e2faac-97ec-49e9-a5ca-997204d30018		t
672f910e-25b4-4361-9dff-079f53023c40	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
672f910e-25b4-4361-9dff-079f53023c40	1	05814f0b-5390-4b98-b689-ae1ed953620b		t
672f910e-25b4-4361-9dff-079f53023c40	2	0a980715-0795-4077-89a2-bd7319482f37		t
672f910e-25b4-4361-9dff-079f53023c40	3	419e0e73-28a5-4e4a-a269-fe371d4020a0		t
f18bca2c-d54e-470a-8277-d12c566d5f91	0	3a7dd7ef-9787-491c-a0ae-34ca0dca62cc		t
f18bca2c-d54e-470a-8277-d12c566d5f91	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
f18bca2c-d54e-470a-8277-d12c566d5f91	2	0aa7dc29-99a6-4c0e-a536-f4f8d89b1ca2		t
f18bca2c-d54e-470a-8277-d12c566d5f91	3	6c4e3283-2c6c-4729-bd04-c24decee1951		t
609dc2fa-cfe8-4726-81ae-4763378d7ba8	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
609dc2fa-cfe8-4726-81ae-4763378d7ba8	1	0a980715-0795-4077-89a2-bd7319482f37		t
609dc2fa-cfe8-4726-81ae-4763378d7ba8	2	3b75d690-99be-4300-80c8-7b7b4634aa67		t
609dc2fa-cfe8-4726-81ae-4763378d7ba8	3	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	1	468fbc53-32bd-4520-b2f1-8008a28cee75		t
2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	2	5093166e-5ae2-424c-a9cf-c93e4dd98488		t
2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	3	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
d74f56c7-3f54-4be3-bc61-d1ce2756472e	0	f37a977b-2a0a-4c87-892e-da46590ec635		t
d74f56c7-3f54-4be3-bc61-d1ce2756472e	1	4e1dfa17-9ecd-469d-a18e-c6c95478e0e4		t
d74f56c7-3f54-4be3-bc61-d1ce2756472e	2	ef4f1af6-7dac-4753-9632-668dfa8ba888		t
448e8871-f835-4aad-8428-279b90ae21ba	0	f37a977b-2a0a-4c87-892e-da46590ec635		t
448e8871-f835-4aad-8428-279b90ae21ba	1	5093166e-5ae2-424c-a9cf-c93e4dd98488		t
448e8871-f835-4aad-8428-279b90ae21ba	2	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
60246017-3a33-4ad4-8ec3-66e47cf0a8d5	0	00bf24a8-fda1-4a8c-8147-87bac8167a7f		t
60246017-3a33-4ad4-8ec3-66e47cf0a8d5	1	0a980715-0795-4077-89a2-bd7319482f37		t
60246017-3a33-4ad4-8ec3-66e47cf0a8d5	2	f37a977b-2a0a-4c87-892e-da46590ec635		t
d29e1418-1d14-4f4e-9c2d-0b0edf9b1b36	0	00bf24a8-fda1-4a8c-8147-87bac8167a7f		t
d29e1418-1d14-4f4e-9c2d-0b0edf9b1b36	1	b11dd1d1-c4da-42af-b375-60a028e6df97		t
d29e1418-1d14-4f4e-9c2d-0b0edf9b1b36	2	f19cec0c-bce5-4d38-b030-d0484e9f312e		t
d29e1418-1d14-4f4e-9c2d-0b0edf9b1b36	3	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
f8e5d91e-1973-469d-a0f1-01aba151e440	0	af4df313-16c4-4306-8aaf-5a176dffcc45		t
f8e5d91e-1973-469d-a0f1-01aba151e440	1	ab2e73e6-fe47-4a23-860b-96e7de4b8356		t
f8e5d91e-1973-469d-a0f1-01aba151e440	2	b11dd1d1-c4da-42af-b375-60a028e6df97		t
f8e5d91e-1973-469d-a0f1-01aba151e440	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
b91d9c29-9627-486a-9d7f-65ab6e3c1924	0	43b9b073-4932-4dab-b81d-81068aec8eaf		t
b91d9c29-9627-486a-9d7f-65ab6e3c1924	0	a4c53bef-09c4-4812-aa4e-7622f3671ba0		t
b91d9c29-9627-486a-9d7f-65ab6e3c1924	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
fb68f487-7332-4fbb-95e5-4e115211e6f4	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
fb68f487-7332-4fbb-95e5-4e115211e6f4	1	4442fa59-38e6-4224-98c8-a3d13980c228		t
0ea1a418-6d41-45b0-9304-b5af470af768	0	0973bd19-d068-4f27-9402-45c8a8ef375b		t
0ea1a418-6d41-45b0-9304-b5af470af768	1	2a197f22-8828-4008-b50d-a3cc245da22e		t
0ea1a418-6d41-45b0-9304-b5af470af768	2	984f9da5-c164-4d89-8224-03888d4b2db0		t
0ea1a418-6d41-45b0-9304-b5af470af768	3	285cc2d6-aecf-4aaa-8c76-c8a72204e35d		t
0ea1a418-6d41-45b0-9304-b5af470af768	4	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
8acb2782-5d25-42b7-936d-0190d892bed0	0	0973bd19-d068-4f27-9402-45c8a8ef375b		t
8acb2782-5d25-42b7-936d-0190d892bed0	1	2fc73293-51d3-4793-bc5a-48b481918dcf		t
8acb2782-5d25-42b7-936d-0190d892bed0	2	285cc2d6-aecf-4aaa-8c76-c8a72204e35d		t
8acb2782-5d25-42b7-936d-0190d892bed0	3	935ba807-d5e3-4053-87fd-50ead0be1161		t
157de1bf-0b28-4b0b-b157-6f4393dece6a	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
157de1bf-0b28-4b0b-b157-6f4393dece6a	1	2a197f22-8828-4008-b50d-a3cc245da22e		t
157de1bf-0b28-4b0b-b157-6f4393dece6a	2	ea3f0313-7726-4a00-b28b-cbf66943adbd		t
157de1bf-0b28-4b0b-b157-6f4393dece6a	3	285cc2d6-aecf-4aaa-8c76-c8a72204e35d		t
157de1bf-0b28-4b0b-b157-6f4393dece6a	4	9d59a19e-4474-499c-9b4d-f93e71cf2ae3		t
16cbf7a1-56cc-401e-807a-dbd5b892ae35	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
16cbf7a1-56cc-401e-807a-dbd5b892ae35	1	0d403033-b28f-4222-9970-b5275ea0a0c8		t
16cbf7a1-56cc-401e-807a-dbd5b892ae35	2	770dd9be-8c86-41fe-bce2-f89c121497d6		t
c0f52386-a764-43d2-b3c7-efd99a96ae33	0	1047da71-944f-440e-8d21-c1c609bbb55e		t
c0f52386-a764-43d2-b3c7-efd99a96ae33	1	770dd9be-8c86-41fe-bce2-f89c121497d6		t
b742040d-8686-47b5-922c-664e7b7dbb53	0	3af3c502-8b70-49be-9aa8-6a41515cd1f4		t
b742040d-8686-47b5-922c-664e7b7dbb53	1	4e1dfa17-9ecd-469d-a18e-c6c95478e0e4		t
b742040d-8686-47b5-922c-664e7b7dbb53	2	3e66c159-b476-41c8-bd2b-73c780198705		t
506a32bb-a3a6-41f2-8556-cd49bdee1af8	0	5b7e950c-1693-4755-984f-18a0b24bd71c		t
506a32bb-a3a6-41f2-8556-cd49bdee1af8	1	1047da71-944f-440e-8d21-c1c609bbb55e		t
506a32bb-a3a6-41f2-8556-cd49bdee1af8	2	c58978c4-f111-4ae2-af9f-4167f5f8aba8		t
506a32bb-a3a6-41f2-8556-cd49bdee1af8	3	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
3afb5394-3426-4dab-b36f-1f2801078d70	0	3af3c502-8b70-49be-9aa8-6a41515cd1f4		t
3afb5394-3426-4dab-b36f-1f2801078d70	1	4e1dfa17-9ecd-469d-a18e-c6c95478e0e4		t
3afb5394-3426-4dab-b36f-1f2801078d70	2	34243bf6-f018-4b2d-a935-ba7ec127b0b3		t
368c7896-f721-411e-bf26-247801866071	0	0973bd19-d068-4f27-9402-45c8a8ef375b		t
368c7896-f721-411e-bf26-247801866071	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
368c7896-f721-411e-bf26-247801866071	1	0cf57a0d-7579-4b8b-9dd9-0acc1a8b363a		t
368c7896-f721-411e-bf26-247801866071	2	491fc137-38f0-43c0-b442-da5ad8bff2ba		t
368c7896-f721-411e-bf26-247801866071	3	0a79cb69-fd23-47e4-af09-518bf778ba9c		t
88bf949b-e5bb-46a4-b527-e6bea5cd8215	0	0973bd19-d068-4f27-9402-45c8a8ef375b		t
88bf949b-e5bb-46a4-b527-e6bea5cd8215	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
88bf949b-e5bb-46a4-b527-e6bea5cd8215	1	0cf57a0d-7579-4b8b-9dd9-0acc1a8b363a		t
88bf949b-e5bb-46a4-b527-e6bea5cd8215	2	491fc137-38f0-43c0-b442-da5ad8bff2ba		t
88bf949b-e5bb-46a4-b527-e6bea5cd8215	3	1047da71-944f-440e-8d21-c1c609bbb55e		t
2ae58d9a-4392-402b-9ede-ec5a6562ae6a	0	041f52e3-ba5c-411a-ab76-1512a76e3628		t
2ae58d9a-4392-402b-9ede-ec5a6562ae6a	1	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
2ae58d9a-4392-402b-9ede-ec5a6562ae6a	2	871c70d9-d595-4f13-91c1-6ab15a4cf408		t
2ae58d9a-4392-402b-9ede-ec5a6562ae6a	3	04d7d004-0513-4f16-b3ca-de208056e947		t
9e66c960-96a5-475d-ac6a-32928ef2b144	0	09f563f1-9c89-40e1-9585-3d2442cdad63		t
9e66c960-96a5-475d-ac6a-32928ef2b144	1	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
9e66c960-96a5-475d-ac6a-32928ef2b144	2	871c70d9-d595-4f13-91c1-6ab15a4cf408		t
9e66c960-96a5-475d-ac6a-32928ef2b144	3	b3e7054e-73a9-47e3-804c-6b45f10e7a7b		t
9e66c960-96a5-475d-ac6a-32928ef2b144	4	ec88f280-c529-4384-acfc-3b3bbcb45855		t
9e66c960-96a5-475d-ac6a-32928ef2b144	5	12a27f52-da0a-4c35-9e58-ad75b29ff3ed		t
da6b314c-d114-49c7-9d3d-55e61e667189	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
da6b314c-d114-49c7-9d3d-55e61e667189	1	6b0bd3bf-a87a-4c2c-a368-731fba2d33e0		t
da6b314c-d114-49c7-9d3d-55e61e667189	2	0195b084-4e4e-4fa5-8a98-4dd556bca0c7		t
da6b314c-d114-49c7-9d3d-55e61e667189	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
1eb95e4f-a247-4a91-8fbe-72fe37fcf490	0	43b9b073-4932-4dab-b81d-81068aec8eaf		t
1eb95e4f-a247-4a91-8fbe-72fe37fcf490	0	a4c53bef-09c4-4812-aa4e-7622f3671ba0		t
1eb95e4f-a247-4a91-8fbe-72fe37fcf490	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
426a0a7e-e4b3-4880-96b2-95888769984d	0	701dc331-2b55-4825-84d8-e916cd741585		t
426a0a7e-e4b3-4880-96b2-95888769984d	1	9a823d89-75e7-42fc-b659-0cc512db39eb		t
a467fea2-ef7e-497b-ade5-6e76469154dd	0	6b6675e0-ff0c-46c9-b1ab-d451bc097a88		t
a467fea2-ef7e-497b-ade5-6e76469154dd	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
484b551d-cefc-4c20-9e82-e073b1828978	0	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
484b551d-cefc-4c20-9e82-e073b1828978	1	4413b365-83e2-4613-bfca-bda6c28d576e		t
484b551d-cefc-4c20-9e82-e073b1828978	2	922b505f-3e36-40d3-aedf-a1a5411eaea3		t
b2a79960-224d-4308-9688-c9660fe52833	0	c1372afb-7ab7-4fc4-b58f-1477339b6c87		t
b2a79960-224d-4308-9688-c9660fe52833	1	ac844730-3e6b-4e47-8348-645efbda82b3		t
b2a79960-224d-4308-9688-c9660fe52833	2	092087b3-4b38-43fe-a926-80a45e679953		t
b2a79960-224d-4308-9688-c9660fe52833	3	5428d2e2-1ff8-4744-87f6-0173ed850199		t
d36facf4-5070-433a-b9fe-58599af1c76a	0	87e4edd9-7f2b-4759-8390-d0ed78320da3		t
d36facf4-5070-433a-b9fe-58599af1c76a	1	ac844730-3e6b-4e47-8348-645efbda82b3		t
d36facf4-5070-433a-b9fe-58599af1c76a	2	092087b3-4b38-43fe-a926-80a45e679953		t
d36facf4-5070-433a-b9fe-58599af1c76a	3	5428d2e2-1ff8-4744-87f6-0173ed850199		t
aeffd153-92fa-453b-bd15-4b3a7e61ce4d	0	cacfd512-5b0e-43dd-83a2-a2154b869280		t
aeffd153-92fa-453b-bd15-4b3a7e61ce4d	1	770dd9be-8c86-41fe-bce2-f89c121497d6		t
fc370890-c3b4-44e8-a05d-55c6a698ed8b	0	1f8cf53b-62fc-477b-89cd-f7b3525409cd		t
fc370890-c3b4-44e8-a05d-55c6a698ed8b	1	8cb977c6-a283-4879-bbb0-a7957ae728ab		t
fc370890-c3b4-44e8-a05d-55c6a698ed8b	2	5428d2e2-1ff8-4744-87f6-0173ed850199		t
fc370890-c3b4-44e8-a05d-55c6a698ed8b	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
90f284a5-200c-4ad7-88c8-fd7f79450ced	0	12981808-bed6-4992-b253-683a9ce4e123		t
90f284a5-200c-4ad7-88c8-fd7f79450ced	1	5428d2e2-1ff8-4744-87f6-0173ed850199		t
8d216e72-95f0-4e08-a5d4-9b9f1a79c759	0	eecf011f-c90e-4c9f-9d23-96397096b2de		t
8d216e72-95f0-4e08-a5d4-9b9f1a79c759	1	654e94bb-80f4-4930-9553-7059ca578b47		t
8d216e72-95f0-4e08-a5d4-9b9f1a79c759	2	409950dc-0bc2-40b9-80e2-c20fd2d05549		t
8d216e72-95f0-4e08-a5d4-9b9f1a79c759	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
a84061a5-c912-4b88-a5a1-fd02a369a26d	0	d40bc2ed-4323-4c60-b290-66f0e1b16cdb		t
a84061a5-c912-4b88-a5a1-fd02a369a26d	1	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
a84061a5-c912-4b88-a5a1-fd02a369a26d	2	654e94bb-80f4-4930-9553-7059ca578b47		t
a84061a5-c912-4b88-a5a1-fd02a369a26d	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
08e2f88a-4285-4842-b045-791b8fdc2ba9	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
08e2f88a-4285-4842-b045-791b8fdc2ba9	1	fd4c8398-1e4f-48e3-91bd-23ce55caeece		t
08e2f88a-4285-4842-b045-791b8fdc2ba9	2	12470fe5-2259-4287-af22-75b95583d8c1		t
08e2f88a-4285-4842-b045-791b8fdc2ba9	3	8bede74d-a838-42fc-b8b8-df98c5450388		t
5945ce1a-b5c6-493a-8627-bebaafe0592e	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
5945ce1a-b5c6-493a-8627-bebaafe0592e	1	fd4c8398-1e4f-48e3-91bd-23ce55caeece		t
5945ce1a-b5c6-493a-8627-bebaafe0592e	2	12470fe5-2259-4287-af22-75b95583d8c1		t
5945ce1a-b5c6-493a-8627-bebaafe0592e	3	578e7289-cded-4440-bb01-f0f023404bcd		t
314a3900-f987-4107-bad6-da4ef158ef42	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
314a3900-f987-4107-bad6-da4ef158ef42	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
314a3900-f987-4107-bad6-da4ef158ef42	2	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27		t
314a3900-f987-4107-bad6-da4ef158ef42	3	d2d9aaf6-1644-4d56-b93c-c705fa922939		t
9b116210-dc93-42d6-9a56-9509d699c445	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
9b116210-dc93-42d6-9a56-9509d699c445	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
9b116210-dc93-42d6-9a56-9509d699c445	2	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27		t
9b116210-dc93-42d6-9a56-9509d699c445	3	fc3711e6-80b3-43a8-83d8-1afa04202965		t
3d845823-371a-47a0-9548-b38d4a15313d	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
3d845823-371a-47a0-9548-b38d4a15313d	1	c6e0613c-702b-43fd-a771-e29dbb609752	 	t
3d845823-371a-47a0-9548-b38d4a15313d	2	e650a236-b9bb-440f-bb62-ade8d1a185b5	 	t
3d845823-371a-47a0-9548-b38d4a15313d	3	bd9105e6-7ca2-40a4-9492-eb017ab53c49		t
dd398462-a44f-46b4-944f-6e8a88407c0f	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
dd398462-a44f-46b4-944f-6e8a88407c0f	1	c6e0613c-702b-43fd-a771-e29dbb609752	 	t
dd398462-a44f-46b4-944f-6e8a88407c0f	2	38ecd1a2-8859-4a50-b4a3-591b2dfc2200	 	t
dd398462-a44f-46b4-944f-6e8a88407c0f	3	bd9105e6-7ca2-40a4-9492-eb017ab53c49		t
9573044c-ce35-4f79-a6d9-1694eb32dd57	0	51aa5f23-05b8-4947-8d46-e3d919e40e76		t
9573044c-ce35-4f79-a6d9-1694eb32dd57	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
735fce8d-9294-4b8e-8df0-b0110a97620e	0	d44e2ca6-53dc-4893-94df-ea6c29b165c8		t
735fce8d-9294-4b8e-8df0-b0110a97620e	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
5a4f363c-b6fe-4962-b6b3-0c6de403d02a	0	734ceaab-2f9f-4e55-90df-024ea1d609c9		t
5a4f363c-b6fe-4962-b6b3-0c6de403d02a	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
f5dcc8bf-bc56-467b-b264-207f34a3ac75	0	3a455389-447b-465e-93bb-fcb351dfa755		t
f5dcc8bf-bc56-467b-b264-207f34a3ac75	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
ffe81673-70e8-4ae3-973f-bea730513f9a	0	464f8633-9f89-4f60-a6f4-ff1e511a68e1		t
ffe81673-70e8-4ae3-973f-bea730513f9a	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
4bb1d6d5-9d7e-477f-92b0-13c44770cfb8	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
4bb1d6d5-9d7e-477f-92b0-13c44770cfb8	1	2a7df2e3-3831-42cc-8237-487eaec7c02b		t
4bb1d6d5-9d7e-477f-92b0-13c44770cfb8	2	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
1ec56b2d-df16-48bc-98b3-a7a9b1e05644	0	a34549b7-4054-49cb-b1df-d8360a177721		t
1ec56b2d-df16-48bc-98b3-a7a9b1e05644	1	e003ae19-2137-4806-8a8e-14c4f22b66c1		t
1ec56b2d-df16-48bc-98b3-a7a9b1e05644	2	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
5553ab9d-ab62-41f5-8e6a-142be931ecfe	0	054d5661-73ca-4bc8-bab1-a89c460d439c		t
5553ab9d-ab62-41f5-8e6a-142be931ecfe	1	daf1915b-d6e7-49da-9a35-76d8dc12efe9		t
82176c5c-89e3-4b69-8cab-7fefef5b1879	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
82176c5c-89e3-4b69-8cab-7fefef5b1879	1	016dafeb-3a70-44a1-af12-3fb5444f52d9		t
82176c5c-89e3-4b69-8cab-7fefef5b1879	2	f8c6c233-0b7f-430f-b874-1cf404366c4d		t
82176c5c-89e3-4b69-8cab-7fefef5b1879	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
168f1999-ab6f-4532-92e6-c0c8b54b0e47	0	14bcb1a9-6807-4ad0-8b80-952aa0d87930		t
168f1999-ab6f-4532-92e6-c0c8b54b0e47	1	b0f178da-e224-4dc9-86a1-282961027a86		t
168f1999-ab6f-4532-92e6-c0c8b54b0e47	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
4c67223d-d4a7-4617-bf8e-019f3ebb6729	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
4c67223d-d4a7-4617-bf8e-019f3ebb6729	1	dd953f16-8954-4922-af4a-c4206ecbf36f		t
4c67223d-d4a7-4617-bf8e-019f3ebb6729	2	0e5b745d-a94f-4492-ba2b-3a18dfdc1d27		t
1b3c3590-bc23-41a5-888f-7eae9432872a	0	dd953f16-8954-4922-af4a-c4206ecbf36f		t
1b3c3590-bc23-41a5-888f-7eae9432872a	1	8f300950-be69-4881-bd9a-187a074890bc		t
1b3c3590-bc23-41a5-888f-7eae9432872a	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
e78abdcc-17c8-4069-9382-ee6b58069340	0	dd953f16-8954-4922-af4a-c4206ecbf36f		t
e78abdcc-17c8-4069-9382-ee6b58069340	1	80707627-22da-46f0-b417-6a1c4d192340		t
e78abdcc-17c8-4069-9382-ee6b58069340	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
2e5769fc-c2cc-48ac-9788-d96499f804dc	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
2e5769fc-c2cc-48ac-9788-d96499f804dc	1	fcd2a08a-880e-4e04-9a77-9c1e50284ee8		t
2e5769fc-c2cc-48ac-9788-d96499f804dc	2	ff9e7876-1f99-4543-848c-a6167792cebc		t
2e5769fc-c2cc-48ac-9788-d96499f804dc	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
ca905226-6ae6-4de0-b59b-b4f57feecd7e	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
ca905226-6ae6-4de0-b59b-b4f57feecd7e	1	784fe782-42f4-4172-b79c-4cecea10d010		t
ca905226-6ae6-4de0-b59b-b4f57feecd7e	2	f1296ab1-67b8-47cc-84d8-28168c1fc314		t
ca905226-6ae6-4de0-b59b-b4f57feecd7e	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
4fa44a23-49de-49b8-8d7e-6277126e0345	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
4fa44a23-49de-49b8-8d7e-6277126e0345	1	90b1709e-6808-479b-8749-49e65b559070		t
4fa44a23-49de-49b8-8d7e-6277126e0345	2	6c4e3283-2c6c-4729-bd04-c24decee1951		t
4fa44a23-49de-49b8-8d7e-6277126e0345	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
8a425c60-1e64-4af5-b341-7f91eb54cefb	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
8a425c60-1e64-4af5-b341-7f91eb54cefb	1	da4faa2d-4f5c-49c9-9e3b-667f215d3755		t
8a425c60-1e64-4af5-b341-7f91eb54cefb	2	90b1709e-6808-479b-8749-49e65b559070		t
8a425c60-1e64-4af5-b341-7f91eb54cefb	3	c52bb022-8f2e-4a81-a2c5-bd2619b2f4bd		t
8a425c60-1e64-4af5-b341-7f91eb54cefb	4	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
7ce11e63-75d4-4178-a8b4-764729a9e1b6	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
7ce11e63-75d4-4178-a8b4-764729a9e1b6	1	c0a76c22-36cf-4045-8ddd-59b19347717c		t
7ce11e63-75d4-4178-a8b4-764729a9e1b6	2	bc277b11-6fcb-4e23-9e71-5759caa196c1		t
7ce11e63-75d4-4178-a8b4-764729a9e1b6	3	b44d3b6f-1986-4832-93bc-5c4d0148d578		t
7ce11e63-75d4-4178-a8b4-764729a9e1b6	4	a8e4e70a-4c48-4a7e-842c-51269fd310e8		t
7ce11e63-75d4-4178-a8b4-764729a9e1b6	5	66a4e32c-9477-4a59-9cd8-065c6c04376d		t
7ce11e63-75d4-4178-a8b4-764729a9e1b6	6	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
596f5935-3694-4ef6-9b44-998425459e8a	0	0d39ecf0-4c59-4dee-8960-5e2742d6f147		t
596f5935-3694-4ef6-9b44-998425459e8a	1	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	 	t
596f5935-3694-4ef6-9b44-998425459e8a	2	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
596f5935-3694-4ef6-9b44-998425459e8a	3	00dd6eba-0255-45b7-9f29-202970b2cc8b		t
596f5935-3694-4ef6-9b44-998425459e8a	4	28635068-b0b7-4702-98ee-c2aa9bb47dd9		t
596f5935-3694-4ef6-9b44-998425459e8a	5	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
596f5935-3694-4ef6-9b44-998425459e8a	6	05814f0b-5390-4b98-b689-ae1ed953620b		t
596f5935-3694-4ef6-9b44-998425459e8a	7	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
0ecafd78-6258-45d9-a37a-12d892414459	0	d40bc2ed-4323-4c60-b290-66f0e1b16cdb		t
0ecafd78-6258-45d9-a37a-12d892414459	1	6c4e3283-2c6c-4729-bd04-c24decee1951		t
0ecafd78-6258-45d9-a37a-12d892414459	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
36cdb74a-854a-4711-a39d-00d79b8d4d5d	0	c1973d35-044f-494d-8a09-e6a0360f863d		t
36cdb74a-854a-4711-a39d-00d79b8d4d5d	1	98b25819-0a67-4177-a051-2b36ac7ad75f		t
36cdb74a-854a-4711-a39d-00d79b8d4d5d	2	ac844730-3e6b-4e47-8348-645efbda82b3		t
36cdb74a-854a-4711-a39d-00d79b8d4d5d	3	092087b3-4b38-43fe-a926-80a45e679953		t
36cdb74a-854a-4711-a39d-00d79b8d4d5d	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
6825ed96-da1a-4a87-bcb6-691410c41671	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
6825ed96-da1a-4a87-bcb6-691410c41671	1	c0a76c22-36cf-4045-8ddd-59b19347717c		t
6825ed96-da1a-4a87-bcb6-691410c41671	2	1e9d4f3a-566c-41ae-b280-5fd5dcd106d7		t
6825ed96-da1a-4a87-bcb6-691410c41671	3	5428d2e2-1ff8-4744-87f6-0173ed850199		t
08ba8b0b-0307-4524-9280-04543a012dfe	0	4c70c637-dd58-4d54-9928-127b049a7556		t
08ba8b0b-0307-4524-9280-04543a012dfe	1	7e0a55f0-3037-461d-a0b2-d14d0105f5c5		t
acf90969-c881-441d-91ca-7c94834b1385	0	772022f5-2d25-49c4-a9f4-06b143a9821d		t
acf90969-c881-441d-91ca-7c94834b1385	1	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
acf90969-c881-441d-91ca-7c94834b1385	2	bddca145-e7a3-4c1e-aafa-afb5c61d8d69		t
685d22c9-ebdd-4c9a-8b17-911107129bc9	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
685d22c9-ebdd-4c9a-8b17-911107129bc9	1	68cfc6df-7733-444c-bdf4-cf72591e5bda		t
685d22c9-ebdd-4c9a-8b17-911107129bc9	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
b478a907-14d1-4b4c-b79e-3ed31e7aa7ae	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
b478a907-14d1-4b4c-b79e-3ed31e7aa7ae	1	cacfd512-5b0e-43dd-83a2-a2154b869280		t
b478a907-14d1-4b4c-b79e-3ed31e7aa7ae	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
aeffd153-92fa-453b-bd15-4b3a7e61ce4d	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
bdf05763-f85a-4091-be47-730dfa2d9876	0	5afbd857-1bca-475e-9610-a8ce21942444		t
bdf05763-f85a-4091-be47-730dfa2d9876	1	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20		t
bdf05763-f85a-4091-be47-730dfa2d9876	2	554e0cae-41f2-4b5f-8de4-13337aa67615		t
bdf05763-f85a-4091-be47-730dfa2d9876	3	6854f448-1f2a-4b65-b756-a34bd714cf44		t
90d84d1c-30bb-4949-9be3-cdf04f6078a2	1	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27		t
90d84d1c-30bb-4949-9be3-cdf04f6078a2	2	554e0cae-41f2-4b5f-8de4-13337aa67615		t
90d84d1c-30bb-4949-9be3-cdf04f6078a2	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
038835de-1e2d-4608-900f-98827ff80582	0	bd2d623e-ff0e-45d1-9ae4-b3345423ee12		t
038835de-1e2d-4608-900f-98827ff80582	1	c0cb144c-8745-481d-81f6-907a6d55acc5		t
038835de-1e2d-4608-900f-98827ff80582	2	2830825d-9c94-4d54-84a6-2ef180735925		t
038835de-1e2d-4608-900f-98827ff80582	2	6c6d90c2-c302-427c-8f13-6b5ad646a4e3		t
038835de-1e2d-4608-900f-98827ff80582	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
77280e05-26b6-44a0-82ec-9068f4d858ef	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
77280e05-26b6-44a0-82ec-9068f4d858ef	1	cacfd512-5b0e-43dd-83a2-a2154b869280		t
77280e05-26b6-44a0-82ec-9068f4d858ef	2	f6696507-34b4-4ed0-83ca-925113531271		t
77280e05-26b6-44a0-82ec-9068f4d858ef	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
ca6a78e9-b454-4c2b-af4c-103cdbf12b1d	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
ca6a78e9-b454-4c2b-af4c-103cdbf12b1d	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
ca6a78e9-b454-4c2b-af4c-103cdbf12b1d	2	7d8023ef-713d-4538-8d95-abec796d12cf		t
ca6a78e9-b454-4c2b-af4c-103cdbf12b1d	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
9839c09f-0072-4503-bd6b-2bd537bcad68	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
9839c09f-0072-4503-bd6b-2bd537bcad68	1	049f3d08-6c93-4a93-acaa-e3449da59b30		t
9839c09f-0072-4503-bd6b-2bd537bcad68	2	c6807f32-9cf3-4611-94cf-8453acfafda6		t
9839c09f-0072-4503-bd6b-2bd537bcad68	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
d8257d6b-576c-43ef-82a4-6b02b41d98f8	0	20d33e84-aa7d-42c9-8da5-d5d70bf830f0		t
d8257d6b-576c-43ef-82a4-6b02b41d98f8	1	5a269d08-ee8b-4772-803a-fcfd41d0ddd9		t
d8257d6b-576c-43ef-82a4-6b02b41d98f8	2	6bf4e5fe-6850-4de8-b765-71675e140c70		t
3ad0ca2f-ba02-4395-9e72-920276c17e55	5	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
c5b41fc2-5c88-45d9-b0ef-5c2efcc540af	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
c5b41fc2-5c88-45d9-b0ef-5c2efcc540af	1	a34549b7-4054-49cb-b1df-d8360a177721		t
c5b41fc2-5c88-45d9-b0ef-5c2efcc540af	2	c3577177-2e23-47c4-a65f-1a792cbb5b83		t
c5b41fc2-5c88-45d9-b0ef-5c2efcc540af	3	02512113-58d3-4d33-aa21-5a4e74536ee1		t
c5b41fc2-5c88-45d9-b0ef-5c2efcc540af	4	2d7c1c46-f7c9-43f4-bbaf-e6d8ef57413e		t
c5b41fc2-5c88-45d9-b0ef-5c2efcc540af	5	9a823d89-75e7-42fc-b659-0cc512db39eb		t
22ee6532-e890-4f1d-b6bc-0ee164467a99	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
22ee6532-e890-4f1d-b6bc-0ee164467a99	1	3edfc07a-b087-4f58-83a6-398040a769d9		t
22ee6532-e890-4f1d-b6bc-0ee164467a99	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
6cc28cb0-4f35-49ae-b674-3182b7c5939c	0	14bcb1a9-6807-4ad0-8b80-952aa0d87930		t
6cc28cb0-4f35-49ae-b674-3182b7c5939c	0	d90bf329-6bce-4a60-8f7f-502e12b650ac		t
6cc28cb0-4f35-49ae-b674-3182b7c5939c	1	2358eb7e-8fd4-4010-bf69-d7e19f852da8		t
6cc28cb0-4f35-49ae-b674-3182b7c5939c	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
925b3233-d21e-4d7b-8634-ced40f348f3e	0	fcd2a08a-880e-4e04-9a77-9c1e50284ee8		t
925b3233-d21e-4d7b-8634-ced40f348f3e	1	b63813c3-1939-4103-9261-01f3c7dfb471		t
925b3233-d21e-4d7b-8634-ced40f348f3e	2	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
925b3233-d21e-4d7b-8634-ced40f348f3e	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
ee566f4a-b257-4721-8cea-0128c2aa773b	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
6d0e5b4d-5046-4c0d-ac5f-c1d7ada2b1ef	0	df50c61d-ffe8-4d07-833f-9c49672997b2		t
6d0e5b4d-5046-4c0d-ac5f-c1d7ada2b1ef	1	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
98871a6a-a0aa-420d-968f-33853eec4eda	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
98871a6a-a0aa-420d-968f-33853eec4eda	1	fcd2a08a-880e-4e04-9a77-9c1e50284ee8		t
98871a6a-a0aa-420d-968f-33853eec4eda	2	163d3e08-4b1f-4b18-b660-a55da26fe7f2		t
98871a6a-a0aa-420d-968f-33853eec4eda	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
fdd6ede1-7bb7-40af-b744-942cf1591cfc	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
fdd6ede1-7bb7-40af-b744-942cf1591cfc	1	dd953f16-8954-4922-af4a-c4206ecbf36f		t
fdd6ede1-7bb7-40af-b744-942cf1591cfc	2	554fd72b-92fc-4f53-8397-1039d0699b34		t
fdd6ede1-7bb7-40af-b744-942cf1591cfc	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
e226d561-7079-4294-9fa9-b0d3a905b980	0	05814f0b-5390-4b98-b689-ae1ed953620b		t
e226d561-7079-4294-9fa9-b0d3a905b980	1	fcd2a08a-880e-4e04-9a77-9c1e50284ee8		t
e226d561-7079-4294-9fa9-b0d3a905b980	2	bfcd6cf8-cdb5-4b13-83c8-589fe990039f		t
e226d561-7079-4294-9fa9-b0d3a905b980	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
f6d72fa6-f542-408c-bcef-700fe9acbc05	0	4f1ea486-0155-4643-9757-12e3bc1e8e4f		t
f6d72fa6-f542-408c-bcef-700fe9acbc05	1	c1e61f84-0229-4ae1-85ac-5278c1300232		t
f6d72fa6-f542-408c-bcef-700fe9acbc05	2	02512113-58d3-4d33-aa21-5a4e74536ee1		t
f6d72fa6-f542-408c-bcef-700fe9acbc05	3	d364e6eb-a549-4da9-9ff9-bf70a952c122		t
f6d72fa6-f542-408c-bcef-700fe9acbc05	4	9a823d89-75e7-42fc-b659-0cc512db39eb		t
28753735-87b3-4005-8b64-27b680f666e7	0	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
28753735-87b3-4005-8b64-27b680f666e7	1	5668d0d3-f848-4f50-a9b3-98ee36e84809		t
28753735-87b3-4005-8b64-27b680f666e7	2	70acf9d5-5bee-4dae-8503-6fec6c823d20		t
28753735-87b3-4005-8b64-27b680f666e7	3	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
f1b8834d-db30-4ac8-b576-77785ed67fe2	0	0a980715-0795-4077-89a2-bd7319482f37		t
f1b8834d-db30-4ac8-b576-77785ed67fe2	1	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f		t
f1b8834d-db30-4ac8-b576-77785ed67fe2	2	8d7dcad5-fc1a-4d9f-884a-9c41f428004d		t
f1b8834d-db30-4ac8-b576-77785ed67fe2	3	5668d0d3-f848-4f50-a9b3-98ee36e84809		t
f1b8834d-db30-4ac8-b576-77785ed67fe2	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
95c3e222-ca17-4d79-b9af-80bd26c22b58	0	0a980715-0795-4077-89a2-bd7319482f37		t
95c3e222-ca17-4d79-b9af-80bd26c22b58	1	c754e203-0313-4023-83a4-bd1806208e3d		t
95c3e222-ca17-4d79-b9af-80bd26c22b58	2	5668d0d3-f848-4f50-a9b3-98ee36e84809		t
95c3e222-ca17-4d79-b9af-80bd26c22b58	3	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f		t
95c3e222-ca17-4d79-b9af-80bd26c22b58	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
f4b77908-99b7-44a9-89a0-b12d9344ad9e	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
f4b77908-99b7-44a9-89a0-b12d9344ad9e	1	5668d0d3-f848-4f50-a9b3-98ee36e84809		t
f4b77908-99b7-44a9-89a0-b12d9344ad9e	2	a2d866b2-2ed7-4797-a03b-d83a9104234a		t
f4b77908-99b7-44a9-89a0-b12d9344ad9e	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
0bcc5253-5c87-4161-963d-d0030badc293	0	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f		t
0bcc5253-5c87-4161-963d-d0030badc293	1	37d71b2f-8162-473d-8c59-dce81f6fa944		t
0bcc5253-5c87-4161-963d-d0030badc293	2	a34549b7-4054-49cb-b1df-d8360a177721		t
0bcc5253-5c87-4161-963d-d0030badc293	2	0a980715-0795-4077-89a2-bd7319482f37		t
0bcc5253-5c87-4161-963d-d0030badc293	3	6c505fa3-6e35-4f64-9f88-f42b63b34e7d		t
0bcc5253-5c87-4161-963d-d0030badc293	4	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
994091f0-0b3b-48dc-a1bd-de161224df7a	0	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f		t
994091f0-0b3b-48dc-a1bd-de161224df7a	1	37d71b2f-8162-473d-8c59-dce81f6fa944		t
994091f0-0b3b-48dc-a1bd-de161224df7a	2	d0a956c6-a0ca-482f-8239-84175a5b78f8		t
994091f0-0b3b-48dc-a1bd-de161224df7a	2	c9af9d0e-2c27-4a74-a239-eb9e03b370fc		t
994091f0-0b3b-48dc-a1bd-de161224df7a	3	554fd72b-92fc-4f53-8397-1039d0699b34		t
994091f0-0b3b-48dc-a1bd-de161224df7a	4	d3eb89d6-abff-44cd-8c2b-30a81efbb311		t
994091f0-0b3b-48dc-a1bd-de161224df7a	5	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b		t
53725f72-1751-4aef-b9d8-2099bf37e270	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
53725f72-1751-4aef-b9d8-2099bf37e270	1	5668d0d3-f848-4f50-a9b3-98ee36e84809		t
53725f72-1751-4aef-b9d8-2099bf37e270	2	f1b0db01-0f93-49c9-ac0c-263d07560dc8		t
53725f72-1751-4aef-b9d8-2099bf37e270	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
432d5473-e46c-4a67-ad5d-01c2b0451eb7	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
432d5473-e46c-4a67-ad5d-01c2b0451eb7	1	5668d0d3-f848-4f50-a9b3-98ee36e84809		t
432d5473-e46c-4a67-ad5d-01c2b0451eb7	2	e5f095e6-e855-47aa-9487-9d5607cba51b		t
432d5473-e46c-4a67-ad5d-01c2b0451eb7	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
50b55b34-be31-44f6-93c6-8dac48844547	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
50b55b34-be31-44f6-93c6-8dac48844547	1	2f999736-b678-4f04-a782-39669b253920		t
50b55b34-be31-44f6-93c6-8dac48844547	2	2c4200b9-afd8-4e3c-956d-e3351d5b3c9a		t
50b55b34-be31-44f6-93c6-8dac48844547	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
71029919-8d46-4f3b-be73-bb03e7e439d2	0	a455b186-07cc-44f4-9dd1-53ddd0f01763		t
71029919-8d46-4f3b-be73-bb03e7e439d2	1	cad0124d-882d-4d7c-a81a-076ae9031452		t
71029919-8d46-4f3b-be73-bb03e7e439d2	2	36f8633a-fb05-466b-93e8-eaaf1a12d305		t
71029919-8d46-4f3b-be73-bb03e7e439d2	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
9d909578-4713-423a-b5df-7a8d40ec0c1d	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
9d909578-4713-423a-b5df-7a8d40ec0c1d	1	8bc76026-d1c8-49f6-937d-450b0a19eaba		t
9d909578-4713-423a-b5df-7a8d40ec0c1d	2	05814f0b-5390-4b98-b689-ae1ed953620b		t
9d909578-4713-423a-b5df-7a8d40ec0c1d	3	4eeb1c7c-0532-481f-ad71-7cf2a39ebdb3		t
8179b743-fc41-40d2-a001-1018779ce488	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
8179b743-fc41-40d2-a001-1018779ce488	1	cad0124d-882d-4d7c-a81a-076ae9031452		t
8179b743-fc41-40d2-a001-1018779ce488	2	8eec73e7-a092-4414-bc96-0cff4586e706		t
8179b743-fc41-40d2-a001-1018779ce488	3	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
dd6b683c-5a6d-491a-944e-1c041d976a70	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
dd6b683c-5a6d-491a-944e-1c041d976a70	1	e1b284f3-b911-40bc-916c-ba55782668cf		t
dd6b683c-5a6d-491a-944e-1c041d976a70	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
b89287ea-9bef-47ce-bf4c-efd373331340	0	c25d3152-bcd0-4112-903d-901968ec1d14		t
b89287ea-9bef-47ce-bf4c-efd373331340	1	117bf4ca-5c7a-487a-a3fe-245c99a62b7f		t
b89287ea-9bef-47ce-bf4c-efd373331340	2	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29		t
f28805eb-8c28-4a7f-9e62-e175c9b6edeb	0	0a980715-0795-4077-89a2-bd7319482f37		t
f28805eb-8c28-4a7f-9e62-e175c9b6edeb	1	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27		t
f28805eb-8c28-4a7f-9e62-e175c9b6edeb	2	24ca06a7-9c7b-4271-843f-780cea5db50e		t
f28805eb-8c28-4a7f-9e62-e175c9b6edeb	3	9a823d89-75e7-42fc-b659-0cc512db39eb		t
80e37977-be49-47f8-83d7-7ef68e47d578	0	00ccb0b7-af00-416f-8292-1c089fd77d5f		t
80e37977-be49-47f8-83d7-7ef68e47d578	1	199f4767-bf32-4fbe-b348-fe651008291d		t
80e37977-be49-47f8-83d7-7ef68e47d578	2	9a823d89-75e7-42fc-b659-0cc512db39eb		t
5800d511-ae7b-4682-835a-a8a623bce07d	0	8f61e57f-2ab3-4cf7-bb87-7a04166bf7a0		t
5800d511-ae7b-4682-835a-a8a623bce07d	1	ec88f280-c529-4384-acfc-3b3bbcb45855		t
5800d511-ae7b-4682-835a-a8a623bce07d	2	f656be3a-3b62-4ef6-a963-e2447e74d555		t
7da68cbd-acf4-4c39-8cac-04bab4504f3e	0	8f61e57f-2ab3-4cf7-bb87-7a04166bf7a0		t
7da68cbd-acf4-4c39-8cac-04bab4504f3e	1	ec88f280-c529-4384-acfc-3b3bbcb45855		t
7da68cbd-acf4-4c39-8cac-04bab4504f3e	2	d97480ca-3bda-4d09-87e1-19b8a14a2f7d		t
\.


--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."stories" ("id", "title", "title_thai", "description", "version", "public", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: story_sentences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."story_sentences" ("story_id", "sentence_id", "position", "paragraph", "speaker_id") FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tags" ("id", "name", "unit_name", "unit_order", "primary_goal", "description", "published", "is_group") FROM stdin;
59246c16-40c3-4222-8687-05156f432549	essential thai	💬 Essential Thai	0	vocabulary	\N	t	f
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	body part	\N	\N	\N	\N	f	f
a4c8894a-95ab-4b21-b812-8090608f4bc7	beginner	\N	\N	\N	\N	f	f
e71ae818-ac34-4727-9a71-22ad2f52b02c	greetings	👋 Greetings & Farewell	1	vocabulary	\N	t	f
49305cb3-618d-4efe-8ea7-4b473e3af306	farewell	\N	\N	\N	\N	f	f
1bba3181-8fbe-45e4-95c0-e2392f134200	ending particle	\N	\N	\N	\N	f	f
0722ff26-e6c2-4b9a-b683-948e93daa6dc	food	\N	\N	\N	\N	f	f
4f348c2a-ac29-4649-9305-1cf19064370f	question particle	\N	\N	\N	\N	f	f
16d56169-7fa1-4243-a2fb-3cc3f781ec07	question word	\N	\N	\N	\N	f	f
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	must know	\N	\N	\N	\N	f	f
196eaea2-9900-4cee-9ed4-5a895e269342	travel 1	\N	\N	\N	\N	f	f
2f7ee6fd-115f-4f44-b45a-e583b0576a59	politeness	\N	\N	\N	\N	f	f
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	arguments	\N	\N	\N	\N	f	f
1b06774b-092a-4d8c-9e38-a33240f642c1	special character	\N	\N	\N	\N	f	f
ba6631f1-c97a-477c-9476-ecd44f05b610	dating	\N	\N	\N	\N	f	f
0ff2914f-39e8-42fc-bd0c-7ba73d07640d	informal	\N	\N	\N	\N	f	f
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	questions	\N	\N	\N	\N	f	f
9256a49c-9954-4bc8-8480-073dad6c6310	short	\N	\N	\N	\N	f	f
0c070304-251b-48cc-8ee6-be642155ecce	crush	\N	\N	\N	\N	f	f
8024977e-cb4c-415e-ad87-1c6c2a23b704	present tense	\N	\N	\N	\N	f	f
afe899a5-184d-48ba-bf85-4cd7f9fc7ddf	time	\N	\N	\N	\N	f	f
175e2618-7834-4b93-9333-43e19555addf	pets	🐶 Pets	37	vocabulary	\N	t	f
208e8e50-fdfd-49f4-885e-63a1d82bacce	long	\N	\N	\N	\N	f	f
910c5e78-b30b-41f8-86aa-b1e790dc3528	shopping	\N	\N	\N	\N	f	f
fc4ffac2-d5a0-41e7-ae60-3549f006232b	house	\N	\N	\N	\N	f	f
d3c58237-4a0a-4175-904f-3e029bfae19e	simple conversations	\N	\N	\N	\N	f	f
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	months	🗓 Months	32	vocabulary	\N	t	f
e57101a4-b7bc-4484-8de7-41b082dd9e74	directions	\N	\N	\N	\N	f	f
c2550bae-6cdf-4b1a-bd1a-7ad42f2695e2	taxi	\N	\N	\N	\N	f	f
2405754e-79cf-40f1-8038-9457feed5f5a	health	\N	\N	\N	\N	f	f
fbec1635-e444-42d8-9450-2c9875a15b97	feelings	😡 Emotions	20	vocabulary	\N	t	f
66c73498-c70c-4dea-b886-2a4d77c78b30	restaurant	\N	\N	\N	\N	f	f
a1788daf-c8ba-400e-bd30-8b1dd89d779c	school	\N	\N	\N	\N	f	f
e695ea06-fd05-4cf7-a0d8-c49987e9e63d	instructions	\N	\N	\N	\N	f	f
f709887e-4708-4f63-a8aa-5179317e43ba	making plans	\N	\N	\N	\N	f	f
34899e15-c18f-42db-88d5-51bba0f73a07	jobs	\N	\N	\N	\N	f	f
ad28bfaa-cb5b-4c1d-8ad7-2a61ab38486d	describing your day	\N	\N	\N	\N	f	f
a761f011-dc14-4dc6-9598-0fd9e953267d	swear words	\N	\N	\N	\N	f	f
80e39880-7241-42d5-ac08-4f903ff3d494	future	\N	\N	\N	\N	f	f
2d84bf6d-dd2a-4940-97c5-5e28fdf35382	drinks	\N	\N	\N	\N	f	f
b85f5ed1-83d7-45cf-9554-0a77af0c0e7f	compliments	\N	\N	\N	\N	f	f
70ebdf67-ade0-495f-bbb3-d1bf5940cf94	seasons	\N	\N	\N	\N	f	f
53e33c98-ce68-49a0-a8f8-877a1211889e	hobbies	\N	\N	\N	\N	f	f
36e15af3-497e-410e-a99b-8d6238c863e7	rue as question	📝Forming questions: หรือ	34	grammar	\N	f	f
26687439-4c11-4bb3-932a-204348dfd4d1	sports	⛹ Sports	18	vocabulary	\N	f	f
f17ee86d-aa66-4779-84cd-78b9904e27d9	love	❤ Love	24	vocabulary	\N	f	f
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	professions	👨‍🔧 Professions	21	vocabulary	\N	f	f
a409b122-d42c-46f4-8ede-0cc09eb5f58f	family	👨‍👩‍👦 Family 1	13	vocabulary	\N	t	f
fe05a72b-dcd1-41fa-8194-d64b81f87b74	colours	🎨 Colours	12	vocabulary	\N	t	f
a8e82f4d-d7c7-4e9f-a072-76ba0099d938	transport	🚌 Transport	19	vocabulary	\N	f	f
59ebc961-d7a1-402f-8965-bf1f11cacfaf	rooms	🏡 Rooms	17	vocabulary	\N	f	f
36d38961-cbc1-440b-aa9b-a1dc0229bdb6	news	📰 News	23	vocabulary	\N	f	f
21f1e72f-a8fc-4af1-9a99-0f41dd350427	weather	🌤️ Weather	16	vocabulary	\N	f	f
728b5cb8-d21a-47c4-9495-74d050925d80	possession	🫴 Possession	9	vocabulary	\N	f	f
2888210b-b467-4edf-8704-978972c48a32	head	👦 Head (Body parts)	22	vocabulary	\N	f	f
f88c9fb6-2d01-46af-bae7-799f2b6e295d	where is it	❓Where is it?	39	vocabulary	\N	t	f
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	numbers	🔢 Numbers (0 - 10)	11	vocabulary	\N	t	f
f5d5b718-edef-42e2-b9c3-70ec74b02a50	spice level	🌶Spice level	36	vocabulary	\N	f	f
183bbfa8-ca46-4e74-9868-604a6847f70d	animals	🐾 Animals	14	vocabulary	\N	f	f
2923f311-d0ff-4373-99c4-fc3470ff76fa	body	🧍 Human body	15	vocabulary	\N	f	f
e6322e18-58cc-4550-9f41-436219028763	pronouns	👤 Pronouns	7	vocabulary	\N	t	f
bc9ca459-b960-4efc-876a-3f10b42afde2	countries	🌍Countries	8	vocabulary	\N	t	f
cc99a20c-e918-4d71-9bba-593cd5ac6f12	emergency	🚨 Emergency	2	vocabulary	\N	f	f
12cbabda-d33d-40ad-814d-a88c9a1723e0	hospital	\N	\N	\N	\N	f	f
f85abc12-7561-4280-aba4-f60e81aa84ee	numbers 11-20	🔢Numbers 11-20	46	vocabulary	\N	t	f
f366477f-9794-40bf-aad4-e0eb431f56ae	Medical Problems	🚑 Medical Problems	45	vocabulary	\N	t	f
2c033211-0542-4d49-bff5-f5c42e65c7e0	days of a week	📆 Week days	31	vocabulary	\N	t	f
30250d22-9dcf-424b-af19-63f14fa0c34e	ordering food	🍴Restaurant: Ordering food	35	vocabulary	\N	f	f
ddc98d5c-abae-4e0c-832c-a25d90925539	farm animals	🐄 Farm animals	38	vocabulary	\N	t	f
1f2325c3-93cc-4e69-94b3-a8d244314da2	sunrise & sunset	🌅 Sunrise & Sunset	26	vocabulary	\N	f	f
1fc514a9-efbc-4d49-9e3e-a31a46a671c7	sea	\N	\N	\N	\N	f	f
21ffe215-dd63-4eec-af8d-1fbeddbfc55d	furniture	🪑Furniture	28	vocabulary	\N	f	f
9af5f9bb-0348-40af-833d-890a9859d8d9	thai cities	\N	\N	\N	\N	f	f
f8350d7f-07b2-4466-b322-9cda7e14431d	short responses	💬 Short responses	42	vocabulary	\N	t	f
d1821967-861e-4381-ac28-fff3d62ccfab	heartbroken	💔 Heartbreak	25	vocabulary	\N	f	f
7be48e49-cb44-4657-855e-ce56eb592935	allergies	⚠️ Allergies	43	vocabulary	\N	t	f
527ab007-d420-48c4-bb61-b081d6bcec04	family 2	👨‍👩‍👧‍👦 Family 2	29	vocabulary	\N	f	f
a8f9d016-3454-4aac-835f-8d2bdbffdb3e	cardinal directions	🧭 Cardinal directions	27	vocabulary	\N	f	f
a918f0dc-2265-4826-a995-71b1c6c3d59d	kha & krap	📝 ค่ะ & ครับ	40	grammar	<p>\r\n  In Thai, it’s common to add particles at the end of sentences to express tone\r\n  and convey how something is meant. There are many different particles, which\r\n  can express things like politeness, friendliness, excitement, anger, or\r\n  impoliteness.\r\n</p>\r\n\n<p>\n  As a general rule, <a href="tts:ค่ะ">ค่ะ</a> or\n  <a href="tts:ครับ">ครับ</a> can be added to the end of a statement to make\n  it sound more polite and respectful.\n</p>\n<p>\r\n  Two of the most common are <a href="tts:ค่ะ"><strong>ค่ะ</strong></a> (kha)\r\n  and <a href="tts:ครับ"><strong>ครับ</strong></a> (khrap), which are used at\r\n  the end of statements to make them sound more polite and natural.\r\n  Traditionally, <a href="tts:ค่ะ">ค่ะ</a> is associated with female speakers\r\n  and <a href="tts:ครับ">ครับ</a> with male speakers, though usage can vary\r\n  with personal preference and gender expression.\r\n</p>	f	f
8bf4bbff-b4cc-4311-b1e4-a7f3e123f916	today_tomorrow_yesterday	🕒 Today, Tomorrow & Yesterday	30	vocabulary	\N	f	f
3983b504-56c7-434a-b632-31a12bb87edb	Conversation Basics	🗣️ Conversation Basics	5	vocabulary	\N	t	f
e250ce4b-75fc-4a4a-bbf7-d762c2d0d6b1	personal questions	👤 Personal Questions	6	vocabulary	\N	t	f
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	about me	👤About Me	3	vocabulary	\N	t	f
ddfb393b-d84f-4de1-a31e-30a558aaac1a	introductions	🤝 Introductions	4	vocabulary	\N	t	f
67066979-e6c8-41a4-a10c-141c28da09c8	mai as a question	📝Forming questions: ไหม	33	vocabulary	\N	t	f
e74bb51c-e1e6-4ae0-b5e6-64c9bb308f83	medical emergency	🏥 Medical emergencies	44	vocabulary	\N	f	f
41ea6a31-6ea0-409f-8b91-63d0f492ffa4	🐾 Animals	\N	\N	\N	\N	t	t
caa359d4-3111-4e77-a299-9ec9fd862302	🔢 Numbers	\N	\N	\N	\N	t	t
55d6be3b-5e29-40da-a009-e27fbd93d47b	basic word order	📝 Basic word order: SVO	41	grammar	<h1>Basic word order: Subject + Verb + Object</h1>\n\n<p>\n  Thai usually follows a simple <strong>Subject + Verb + Object (SVO)</strong>\n  word order, similar to English.\n</p>\n\n<p>\n  For example:\n</p>\n\n<p>\n  <a href="tts:ฉันชอบแมว">ฉันชอบแมว</a><br>\n  <em>chǎn chɔ̂ɔp mɛɛw</em><br>\n  “I like cats.”\n</p>\n\n<ul>\n  <li><strong>Subject:</strong> <a href="tts:ฉัน">ฉัน</a> = I</li>\n  <li><strong>Verb:</strong> <a href="tts:ชอบ">ชอบ</a> = like</li>\n  <li><strong>Object:</strong> <a href="tts:แมว">แมว</a> = cat / cats</li>\n</ul>\n\n<p>\n  So the basic pattern is:\n  <strong>Subject + Verb + Object</strong>\n</p>\n\n<p>\n  <a href="tts:ฉัน">ฉัน</a> + <a href="tts:ชอบ">ชอบ</a> + <a href="tts:แมว">แมว</a>\n</p>\n\n<p>\n  Thai nouns do not normally change form to show plural, so\n  <a href="tts:แมว">แมว</a> can mean either “cat” or “cats,” depending on context.\n</p>	f	f
8c2887d8-c367-4722-901c-da1322549fb3	no to be before adjectives	📝 No “to be” before adjectives	10	grammar	<h1>No “to be” before adjectives</h1>\n\n<p>\n  In Thai, you generally don't need a verb meaning “to be” before an adjective.\n  The adjective can come directly after the subject.\n</p>\n\n<p>\n  For example:\n</p>\n\n<p>\n  <a href="tts:เขาสวย">เขาสวย</a><br>\n  <em>khǎo sǔai</em><br>\n  “She is beautiful.”\n</p>\n\n<ul>\n  <li><strong>Subject:</strong> <a href="tts:เขา">เขา</a> = he / she / they</li>\n  <li><strong>Adjective:</strong> <a href="tts:สวย">สวย</a> = beautiful</li>\n</ul>\n\n<p>\n  There is no separate word for “is” in this sentence. The Thai sentence is\n  essentially just:\n  <strong>Subject + Adjective</strong>\n</p>\n\n<p>\n  <a href="tts:เขา">เขา</a> + <a href="tts:สวย">สวย</a>\n</p>\n\n<p>\n  This same pattern works with many common adjectives:\n</p>\n\n<ul>\n  <li><a href="tts:ฉันเหนื่อย">ฉันเหนื่อย</a> — “I am tired.”</li>\n  <li><a href="tts:อากาศร้อน">อากาศร้อน</a> — “The weather is hot.”</li>\n  <li><a href="tts:อาหารอร่อย">อาหารอร่อย</a> — “The food is delicious.”</li>\n</ul>\n\n<p>\n  So when you want to say that something <em>is</em> a certain way, don't automatically\n  look for a Thai equivalent of “is.” With adjectives, simply put the adjective\n  after the subject.\n</p>	f	f
\.


--
-- Data for Name: tag_definitions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_definitions" ("tag_id", "definition_id", "position") FROM stdin;
527ab007-d420-48c4-bb61-b081d6bcec04	6ddc071a-1820-482e-b168-681ec24ab264	1
59246c16-40c3-4222-8687-05156f432549	a4c53bef-09c4-4812-aa4e-7622f3671ba0	0
8bf4bbff-b4cc-4311-b1e4-a7f3e123f916	2455b617-384a-4f1e-8c1e-87589a8eeb76	2
bc9ca459-b960-4efc-876a-3f10b42afde2	cade8788-e7b3-4030-9ca9-f0852bcdf3c7	1
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	bd9105e6-7ca2-40a4-9492-eb017ab53c49	4
2c033211-0542-4d49-bff5-f5c42e65c7e0	65b6a72b-7b47-4c20-b6b0-9cf90a0d5166	5
bc9ca459-b960-4efc-876a-3f10b42afde2	e35c1fbd-62c7-46a6-8621-d56f36cbdf6e	8
ddfb393b-d84f-4de1-a31e-30a558aaac1a	ac844730-3e6b-4e47-8348-645efbda82b3	3
175e2618-7834-4b93-9333-43e19555addf	d9e5abea-49d8-43c9-acb4-841cf0b41a6b	4
ddc98d5c-abae-4e0c-832c-a25d90925539	99973db7-4bc9-423a-b303-3dd136284d0e	5
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	a69eef22-544f-4737-9498-70f4478cbbc2	1
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	0f8b219a-a6a1-4248-bf8d-b01bb96a10f1	3
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	98743533-f088-4cc5-8322-45fe02c072b6	7
fe05a72b-dcd1-41fa-8194-d64b81f87b74	40c45244-0d21-4323-8772-e864d93e718c	7
59246c16-40c3-4222-8687-05156f432549	f2d4f534-90e1-4708-9f49-e00cd5c14176	10
7be48e49-cb44-4657-855e-ce56eb592935	5668d0d3-f848-4f50-a9b3-98ee36e84809	0
a409b122-d42c-46f4-8ede-0cc09eb5f58f	01c172e0-1edc-4b37-aa0a-95a52591808e	7
1f2325c3-93cc-4e69-94b3-a8d244314da2	0a79cb69-fd23-47e4-af09-518bf778ba9c	1
a8f9d016-3454-4aac-835f-8d2bdbffdb3e	4e730728-94f2-4fcb-a5b7-0cef1c810846	3
9af5f9bb-0348-40af-833d-890a9859d8d9	09f563f1-9c89-40e1-9585-3d2442cdad63	1
21ffe215-dd63-4eec-af8d-1fbeddbfc55d	4c64adcf-9101-4c7c-9ac4-3734ed01ec1b	3
e71ae818-ac34-4727-9a71-22ad2f52b02c	43b9b073-4932-4dab-b81d-81068aec8eaf	2
caa359d4-3111-4e77-a299-9ec9fd862302	c5751e7a-0445-4c10-b0c4-fb1d8a0cb878	3
a8e82f4d-d7c7-4e9f-a072-76ba0099d938	3a92b765-a663-4809-93c1-9b43c012488e	1
caa359d4-3111-4e77-a299-9ec9fd862302	af2abe8b-4b5c-49c2-a56a-e0daa9b4debe	8
f85abc12-7561-4280-aba4-f60e81aa84ee	af2abe8b-4b5c-49c2-a56a-e0daa9b4debe	5
fbec1635-e444-42d8-9450-2c9875a15b97	242b5962-9906-45c8-9665-9761622e9b1e	0
fbec1635-e444-42d8-9450-2c9875a15b97	96f3b001-fefe-4576-bd9c-86ea170c83b0	1
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	1fc9c920-346b-4401-a41b-c169ddb6c8f1	1
0722ff26-e6c2-4b9a-b683-948e93daa6dc	163d3e08-4b1f-4b18-b660-a55da26fe7f2	3
0722ff26-e6c2-4b9a-b683-948e93daa6dc	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f	7
0722ff26-e6c2-4b9a-b683-948e93daa6dc	404e4d7c-fbce-4f72-b726-3c7e6f74fa70	8
0722ff26-e6c2-4b9a-b683-948e93daa6dc	40fc326a-acf4-4798-800e-42bf03505ae2	9
0722ff26-e6c2-4b9a-b683-948e93daa6dc	a993b4f3-e795-41c7-ac90-996416a46b36	17
0722ff26-e6c2-4b9a-b683-948e93daa6dc	b7167c0b-f6ac-4457-8b2b-1adc5b7ba12e	18
0722ff26-e6c2-4b9a-b683-948e93daa6dc	d6fa7e77-b103-44f8-b7e2-02e32cb8f089	26
0722ff26-e6c2-4b9a-b683-948e93daa6dc	dcf04254-41b0-4c09-b436-f8f01a7ab814	27
0722ff26-e6c2-4b9a-b683-948e93daa6dc	fe19cb46-4092-4e28-a90e-766f3824cacc	30
16d56169-7fa1-4243-a2fb-3cc3f781ec07	4b611fad-c610-4256-bbcb-79f11772889d	2
16d56169-7fa1-4243-a2fb-3cc3f781ec07	6c4e3283-2c6c-4729-bd04-c24decee1951	4
16d56169-7fa1-4243-a2fb-3cc3f781ec07	7e0a55f0-3037-461d-a0b2-d14d0105f5c5	5
16d56169-7fa1-4243-a2fb-3cc3f781ec07	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b	6
1b06774b-092a-4d8c-9e38-a33240f642c1	559e715f-2361-4379-a466-77d6d1209206	1
1bba3181-8fbe-45e4-95c0-e2392f134200	02a350d1-6be3-4026-a28d-f45559ae3d1e	1
1bba3181-8fbe-45e4-95c0-e2392f134200	465cb91e-6996-47b5-8d40-9ba6718ae538	2
1bba3181-8fbe-45e4-95c0-e2392f134200	5428d2e2-1ff8-4744-87f6-0173ed850199	3
527ab007-d420-48c4-bb61-b081d6bcec04	5c3d33ec-b8c1-4884-9997-8c8d0c515298	2
59246c16-40c3-4222-8687-05156f432549	9a823d89-75e7-42fc-b659-0cc512db39eb	5
8bf4bbff-b4cc-4311-b1e4-a7f3e123f916	0b9c45b0-a08f-4528-8f8d-ae64b4885434	3
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	c6e0613c-702b-43fd-a771-e29dbb609752	3
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	00ccb0b7-af00-416f-8292-1c089fd77d5f	0
bc9ca459-b960-4efc-876a-3f10b42afde2	578e7289-cded-4440-bb01-f0f023404bcd	4
2c033211-0542-4d49-bff5-f5c42e65c7e0	de83260d-64d5-45d1-83cd-c160e1ed064f	6
bc9ca459-b960-4efc-876a-3f10b42afde2	8bede74d-a838-42fc-b8b8-df98c5450388	9
ddfb393b-d84f-4de1-a31e-30a558aaac1a	b44d3b6f-1986-4832-93bc-5c4d0148d578	4
175e2618-7834-4b93-9333-43e19555addf	8fa2b1be-cd4e-4558-ba5e-73728f56f0d5	5
ddc98d5c-abae-4e0c-832c-a25d90925539	ac076666-1aea-4c10-a7c9-2e0b06e3f05c	6
a409b122-d42c-46f4-8ede-0cc09eb5f58f	06b45d48-ea2d-4425-844d-d0253be80074	1
a409b122-d42c-46f4-8ede-0cc09eb5f58f	1820d13e-7bae-4b15-a4cc-4d728c596555	3
1f2325c3-93cc-4e69-94b3-a8d244314da2	1047da71-944f-440e-8d21-c1c609bbb55e	2
a8f9d016-3454-4aac-835f-8d2bdbffdb3e	ebb07ff8-6fb9-4dc9-8e7c-e4ce3e1a5aae	4
9af5f9bb-0348-40af-833d-890a9859d8d9	12a27f52-da0a-4c35-9e58-ad75b29ff3ed	2
21ffe215-dd63-4eec-af8d-1fbeddbfc55d	b35ad025-eec6-4a18-a9d4-3391c66a1c74	4
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	77a4f797-4c7c-42c1-92a2-d59a1dacde10	2
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	52251c62-463d-4029-84c5-b46ae2d5d6c6	8
fe05a72b-dcd1-41fa-8194-d64b81f87b74	6f5ae9ee-8ae2-4534-bf11-6fb90f75a09a	1
e71ae818-ac34-4727-9a71-22ad2f52b02c	701dc331-2b55-4825-84d8-e916cd741585	3
7be48e49-cb44-4657-855e-ce56eb592935	a2d866b2-2ed7-4797-a03b-d83a9104234a	1
caa359d4-3111-4e77-a299-9ec9fd862302	7995f771-09fb-4b04-ac97-604a73117f97	1
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	7995f771-09fb-4b04-ac97-604a73117f97	0
caa359d4-3111-4e77-a299-9ec9fd862302	a5391f27-2a64-41ec-b046-ee87033e9a93	4
a8e82f4d-d7c7-4e9f-a072-76ba0099d938	4fdca0b8-6103-4c35-b3f3-aa1d4e15f817	4
a8e82f4d-d7c7-4e9f-a072-76ba0099d938	87012023-74eb-4ac6-8cf8-629383033fd8	0
caa359d4-3111-4e77-a299-9ec9fd862302	9f61d14f-ac08-4cb5-aeab-df77a3756977	7
caa359d4-3111-4e77-a299-9ec9fd862302	69e7add8-5767-47d0-af1c-fa4df86f1ae2	9
caa359d4-3111-4e77-a299-9ec9fd862302	05ce80de-8d71-4758-903f-2cedf6441b81	10
f85abc12-7561-4280-aba4-f60e81aa84ee	9f61d14f-ac08-4cb5-aeab-df77a3756977	4
f85abc12-7561-4280-aba4-f60e81aa84ee	69e7add8-5767-47d0-af1c-fa4df86f1ae2	6
f85abc12-7561-4280-aba4-f60e81aa84ee	a5391f27-2a64-41ec-b046-ee87033e9a93	9
f85abc12-7561-4280-aba4-f60e81aa84ee	05ce80de-8d71-4758-903f-2cedf6441b81	7
fbec1635-e444-42d8-9450-2c9875a15b97	446fe8e1-75f7-40a8-9d8a-f7e9caec259a	9
0722ff26-e6c2-4b9a-b683-948e93daa6dc	c3f9edb5-b161-44d4-b648-83be3504b3cf	21
0c070304-251b-48cc-8ee6-be642155ecce	0cf57a0d-7579-4b8b-9dd9-0acc1a8b363a	1
527ab007-d420-48c4-bb61-b081d6bcec04	9e7d275f-0ab4-41e0-a55f-9dcc645927a4	3
59246c16-40c3-4222-8687-05156f432549	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	6
8bf4bbff-b4cc-4311-b1e4-a7f3e123f916	74cfe458-3890-480d-bc36-d69dbabef539	4
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	a455b186-07cc-44f4-9dd1-53ddd0f01763	1
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	fd4c8398-1e4f-48e3-91bd-23ce55caeece	5
2c033211-0542-4d49-bff5-f5c42e65c7e0	3466aa28-3424-475f-afec-e2d080690e6b	1
bc9ca459-b960-4efc-876a-3f10b42afde2	afe8df22-3d3a-400b-a72f-bcd59da305f5	5
bc9ca459-b960-4efc-876a-3f10b42afde2	f9b39ba3-cd8e-4fce-898d-7f588a0933cb	10
fe05a72b-dcd1-41fa-8194-d64b81f87b74	7631b303-96d0-4acc-b5d8-b2e41c385a10	3
59246c16-40c3-4222-8687-05156f432549	05814f0b-5390-4b98-b689-ae1ed953620b	7
e71ae818-ac34-4727-9a71-22ad2f52b02c	6b6675e0-ff0c-46c9-b1ab-d451bc097a88	4
e71ae818-ac34-4727-9a71-22ad2f52b02c	12981808-bed6-4992-b253-683a9ce4e123	5
d1821967-861e-4381-ac28-fff3d62ccfab	4442fa59-38e6-4224-98c8-a3d13980c228	1
a8f9d016-3454-4aac-835f-8d2bdbffdb3e	489b874b-c307-46d3-af79-52a47ce9a365	1
a8f9d016-3454-4aac-835f-8d2bdbffdb3e	e12b7122-c41c-4903-9a87-c70b5a23af0f	5
21ffe215-dd63-4eec-af8d-1fbeddbfc55d	f2d9f527-1d4b-47ba-b508-7aa383844b34	1
175e2618-7834-4b93-9333-43e19555addf	1467dd10-a147-4fd5-b72b-bac1ce6880b5	1
ddc98d5c-abae-4e0c-832c-a25d90925539	aa188f22-c580-4f0e-88de-769d9952e4c7	1
26687439-4c11-4bb3-932a-204348dfd4d1	4e17a679-1072-496a-a809-ad8bf7f316d2	6
ddc98d5c-abae-4e0c-832c-a25d90925539	2a026d17-7bda-4946-a347-66411445b804	7
a8e82f4d-d7c7-4e9f-a072-76ba0099d938	799f8a15-2e1c-45cc-a648-d84abd81a041	3
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	3ae04d7c-3416-4c54-8a7b-7e2593795537	9
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	6716e212-5f2d-4feb-975c-d142a5f1b1bb	10
21f1e72f-a8fc-4af1-9a99-0f41dd350427	3b75d690-99be-4300-80c8-7b7b4634aa67	5
21f1e72f-a8fc-4af1-9a99-0f41dd350427	468fbc53-32bd-4520-b2f1-8008a28cee75	4
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	0645f6a5-8349-4e1a-883e-238b0eb7c792	5
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	fe88257e-6947-414e-9b52-c1eaff10060f	11
7be48e49-cb44-4657-855e-ce56eb592935	f1b0db01-0f93-49c9-ac0c-263d07560dc8	3
caa359d4-3111-4e77-a299-9ec9fd862302	a3e20f80-68b7-471b-b2b3-d5433a8afa94	5
caa359d4-3111-4e77-a299-9ec9fd862302	398af0bb-3dd1-4168-a7ef-acfde2c14c52	11
f85abc12-7561-4280-aba4-f60e81aa84ee	c5751e7a-0445-4c10-b0c4-fb1d8a0cb878	0
f85abc12-7561-4280-aba4-f60e81aa84ee	398af0bb-3dd1-4168-a7ef-acfde2c14c52	8
f85abc12-7561-4280-aba4-f60e81aa84ee	a3e20f80-68b7-471b-b2b3-d5433a8afa94	2
fbec1635-e444-42d8-9450-2c9875a15b97	3eff4caf-b1e1-4d7d-98b3-28f180ad57b3	8
0722ff26-e6c2-4b9a-b683-948e93daa6dc	0f2776b0-80a8-4bf6-9b3b-a46749628ff9	1
0722ff26-e6c2-4b9a-b683-948e93daa6dc	14cc1566-9d89-4546-a524-b6921f1d83d9	2
0722ff26-e6c2-4b9a-b683-948e93daa6dc	1c9ad9a7-2417-401f-941a-744b96cba263	4
0722ff26-e6c2-4b9a-b683-948e93daa6dc	233e765f-d505-485f-9493-69561826dbf9	5
0722ff26-e6c2-4b9a-b683-948e93daa6dc	23d6787a-3a1e-4f74-bc01-2c2bbe6e3cdc	6
0722ff26-e6c2-4b9a-b683-948e93daa6dc	5ff84097-1f0c-4042-8e3c-f0840ca08e36	10
0722ff26-e6c2-4b9a-b683-948e93daa6dc	63ac0065-4b9b-4ce5-afbf-16ff0070ee10	11
0722ff26-e6c2-4b9a-b683-948e93daa6dc	925c9920-9b10-4d20-87b1-339b10fb6861	12
0722ff26-e6c2-4b9a-b683-948e93daa6dc	9a8fe316-ae82-42aa-bab8-f6f6e17e0bdb	13
0722ff26-e6c2-4b9a-b683-948e93daa6dc	9dfe36c4-884a-4258-af97-7489e2f85aee	14
0722ff26-e6c2-4b9a-b683-948e93daa6dc	a430bbb6-5d29-4a4e-b8f4-93bdc55200cb	15
0722ff26-e6c2-4b9a-b683-948e93daa6dc	a8f6f028-18d9-4ad9-ad32-11c98345c4b6	16
0722ff26-e6c2-4b9a-b683-948e93daa6dc	bfcd6cf8-cdb5-4b13-83c8-589fe990039f	19
0722ff26-e6c2-4b9a-b683-948e93daa6dc	c1e61f84-0229-4ae1-85ac-5278c1300232	20
0722ff26-e6c2-4b9a-b683-948e93daa6dc	c6a5a053-dcf3-41da-9a35-f5207882be59	22
0722ff26-e6c2-4b9a-b683-948e93daa6dc	c8a2657b-5597-489d-9dec-76855126d27a	23
0722ff26-e6c2-4b9a-b683-948e93daa6dc	cf87797c-8fb0-4e83-8878-a9883479bb54	24
0722ff26-e6c2-4b9a-b683-948e93daa6dc	d0f19aec-605f-4966-a5ea-6669a19c2527	25
0722ff26-e6c2-4b9a-b683-948e93daa6dc	e5f095e6-e855-47aa-9487-9d5607cba51b	28
0722ff26-e6c2-4b9a-b683-948e93daa6dc	f1b0db01-0f93-49c9-ac0c-263d07560dc8	29
0c070304-251b-48cc-8ee6-be642155ecce	4a61d420-f80c-4a89-8055-e39405de7d72	2
0c070304-251b-48cc-8ee6-be642155ecce	6379ff9c-ee57-48d8-95c2-08299c906ba7	3
16d56169-7fa1-4243-a2fb-3cc3f781ec07	49f6f416-42eb-46b9-932f-2ed4d77b136e	1
16d56169-7fa1-4243-a2fb-3cc3f781ec07	561acf33-a656-40fd-90e1-c466f2e6efae	3
16d56169-7fa1-4243-a2fb-3cc3f781ec07	d11362f4-fd2a-41b6-8e5f-249a44675cd4	7
16d56169-7fa1-4243-a2fb-3cc3f781ec07	f656be3a-3b62-4ef6-a963-e2447e74d555	8
16d56169-7fa1-4243-a2fb-3cc3f781ec07	f7af7b54-553c-4c5d-bd24-fb673115288d	9
183bbfa8-ca46-4e74-9868-604a6847f70d	020117c9-d3f5-46c7-92a4-9270c30ed976	1
183bbfa8-ca46-4e74-9868-604a6847f70d	290c633d-51b4-456b-a14a-226ccc5ec2b3	2
183bbfa8-ca46-4e74-9868-604a6847f70d	4da53e3b-b463-47d5-8d1b-58aa84e2324e	3
183bbfa8-ca46-4e74-9868-604a6847f70d	70000bd0-b9c5-4e26-8a84-7f7496bcc5d2	4
183bbfa8-ca46-4e74-9868-604a6847f70d	8fa2b1be-cd4e-4558-ba5e-73728f56f0d5	5
183bbfa8-ca46-4e74-9868-604a6847f70d	914c20dd-7cbf-474c-b210-524282f0f75e	6
183bbfa8-ca46-4e74-9868-604a6847f70d	99973db7-4bc9-423a-b303-3dd136284d0e	7
183bbfa8-ca46-4e74-9868-604a6847f70d	a6fb8dd8-2bd1-4cf7-9479-9bc2efaa551c	8
183bbfa8-ca46-4e74-9868-604a6847f70d	a9afda3d-9ba2-4935-a7c1-ec1d9c179a4e	9
183bbfa8-ca46-4e74-9868-604a6847f70d	aa188f22-c580-4f0e-88de-769d9952e4c7	10
183bbfa8-ca46-4e74-9868-604a6847f70d	ac076666-1aea-4c10-a7c9-2e0b06e3f05c	11
183bbfa8-ca46-4e74-9868-604a6847f70d	ae6f3e0c-22d3-41d4-b1ab-8971d17b90df	12
183bbfa8-ca46-4e74-9868-604a6847f70d	baee6eee-b5ac-497e-9a4f-a8fbedd1d008	13
183bbfa8-ca46-4e74-9868-604a6847f70d	c02fff63-7ad4-4a46-9ed5-cb259e3911f8	14
183bbfa8-ca46-4e74-9868-604a6847f70d	c96f911d-b102-44e9-a6ef-8474e14916fe	15
183bbfa8-ca46-4e74-9868-604a6847f70d	ce172c61-583c-4c51-9a11-3f8e748c957f	16
183bbfa8-ca46-4e74-9868-604a6847f70d	d9e5abea-49d8-43c9-acb4-841cf0b41a6b	17
183bbfa8-ca46-4e74-9868-604a6847f70d	e7eb8019-72f8-44c0-8292-0455fa8542bc	18
183bbfa8-ca46-4e74-9868-604a6847f70d	f3a35996-d848-40b3-aeac-d2d96d8e12bb	19
196eaea2-9900-4cee-9ed4-5a895e269342	4c843750-7e6a-4edd-bf72-161d9e1b31e7	1
1bba3181-8fbe-45e4-95c0-e2392f134200	679ce06c-a6f6-45b4-973d-60ff843f8f6c	4
1bba3181-8fbe-45e4-95c0-e2392f134200	6854f448-1f2a-4b65-b756-a34bd714cf44	5
1bba3181-8fbe-45e4-95c0-e2392f134200	9a823d89-75e7-42fc-b659-0cc512db39eb	6
1bba3181-8fbe-45e4-95c0-e2392f134200	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	7
1fc514a9-efbc-4d49-9e3e-a31a46a671c7	4da53e3b-b463-47d5-8d1b-58aa84e2324e	1
2405754e-79cf-40f1-8038-9457feed5f5a	6c1234f6-1c07-417a-9b2c-fd06dc104131	1
2405754e-79cf-40f1-8038-9457feed5f5a	705921cf-09c7-4a0a-8364-f54d76ad6767	2
2405754e-79cf-40f1-8038-9457feed5f5a	c972cb45-1fab-43e5-a4e2-20cae18b1ea7	3
2888210b-b467-4edf-8704-978972c48a32	2205da7a-c8f2-48cc-a9ad-9020c0c8b067	1
2888210b-b467-4edf-8704-978972c48a32	3b928e5e-675b-4418-ba67-757fbf690e90	2
2888210b-b467-4edf-8704-978972c48a32	5e2d2077-cfe8-4e80-8bfa-a00759d5f854	3
2888210b-b467-4edf-8704-978972c48a32	7af7d988-adfc-4218-8894-15816f7cc8fe	4
2888210b-b467-4edf-8704-978972c48a32	be140005-36f1-4ea3-b5b4-7842eef49d48	5
2888210b-b467-4edf-8704-978972c48a32	d8cb2712-f31a-4c77-ac70-ad41deba6b81	6
2888210b-b467-4edf-8704-978972c48a32	e68fcdf6-b08e-4415-bb68-a816f7e15ac3	7
2888210b-b467-4edf-8704-978972c48a32	f0a0c198-ec45-4bb6-84f2-71e4f0ab01a9	8
2888210b-b467-4edf-8704-978972c48a32	f5926cde-6885-4deb-94ce-c112a11e8dad	9
2d84bf6d-dd2a-4940-97c5-5e28fdf35382	925c9920-9b10-4d20-87b1-339b10fb6861	1
2d84bf6d-dd2a-4940-97c5-5e28fdf35382	c1e61f84-0229-4ae1-85ac-5278c1300232	2
2d84bf6d-dd2a-4940-97c5-5e28fdf35382	c6a5a053-dcf3-41da-9a35-f5207882be59	3
36d38961-cbc1-440b-aa9b-a1dc0229bdb6	05163c86-7cff-49e6-bfef-5031281208da	1
36d38961-cbc1-440b-aa9b-a1dc0229bdb6	e5addb1d-264f-4f50-83c1-86d6d1497841	2
49305cb3-618d-4efe-8ea7-4b473e3af306	43b9b073-4932-4dab-b81d-81068aec8eaf	1
4f348c2a-ac29-4649-9305-1cf19064370f	6854f448-1f2a-4b65-b756-a34bd714cf44	1
4f348c2a-ac29-4649-9305-1cf19064370f	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b	2
527ab007-d420-48c4-bb61-b081d6bcec04	0daaf882-9b58-44c5-aeb9-c5199e5b1a7c	4
53e33c98-ce68-49a0-a8f8-877a1211889e	18344eff-4026-4e3f-bb81-1e176fa3bb27	1
53e33c98-ce68-49a0-a8f8-877a1211889e	381b1332-5448-4f91-a2c9-112e12e28a16	2
53e33c98-ce68-49a0-a8f8-877a1211889e	47a85613-c7b9-44f2-852c-359ecf191e43	3
53e33c98-ce68-49a0-a8f8-877a1211889e	5cd3a598-b52e-4231-a17d-3071c73504e2	4
53e33c98-ce68-49a0-a8f8-877a1211889e	7e98f9c4-2d5b-442a-abe2-9509f8fa5e35	5
53e33c98-ce68-49a0-a8f8-877a1211889e	fb8c574e-6602-430f-8289-7d0c7e97554c	6
59246c16-40c3-4222-8687-05156f432549	43b9b073-4932-4dab-b81d-81068aec8eaf	3
8bf4bbff-b4cc-4311-b1e4-a7f3e123f916	00bf24a8-fda1-4a8c-8147-87bac8167a7f	5
fe05a72b-dcd1-41fa-8194-d64b81f87b74	9455b556-fad2-48ae-9037-fd465ce02600	8
59246c16-40c3-4222-8687-05156f432549	2830825d-9c94-4d54-84a6-2ef180735925	8
59ebc961-d7a1-402f-8965-bf1f11cacfaf	1c7cb6e1-a94d-4e6d-ae29-bf6a861089c5	1
59ebc961-d7a1-402f-8965-bf1f11cacfaf	5afbd857-1bca-475e-9610-a8ce21942444	2
59ebc961-d7a1-402f-8965-bf1f11cacfaf	d6a46bcf-b396-467e-8855-0370544e6911	3
66c73498-c70c-4dea-b886-2a4d77c78b30	0e454ae7-1ac5-45ad-88d9-5001d87cd655	1
66c73498-c70c-4dea-b886-2a4d77c78b30	60dd39c6-e6b0-48bc-a1f2-f79f77f78898	2
70ebdf67-ade0-495f-bbb3-d1bf5940cf94	0aa7dc29-99a6-4c0e-a536-f4f8d89b1ca2	1
70ebdf67-ade0-495f-bbb3-d1bf5940cf94	4c3bd46b-368b-47ae-b4dd-ed62c29ee188	2
910c5e78-b30b-41f8-86aa-b1e790dc3528	11e86160-0bcc-424b-a167-8aa508c861b1	1
910c5e78-b30b-41f8-86aa-b1e790dc3528	229391aa-d163-4cb1-90fc-dd012159617d	2
910c5e78-b30b-41f8-86aa-b1e790dc3528	f1e33dc9-4b78-4ef9-9579-052edd53a41b	3
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	05814f0b-5390-4b98-b689-ae1ed953620b	1
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	2830825d-9c94-4d54-84a6-2ef180735925	2
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	6c6d90c2-c302-427c-8f13-6b5ad646a4e3	3
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	e59ecc38-4645-4e44-9484-97b925497171	4
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	f2d4f534-90e1-4708-9f49-e00cd5c14176	5
a1788daf-c8ba-400e-bd30-8b1dd89d779c	4078fbce-8b37-4922-9f03-111b70c84bfb	1
a1788daf-c8ba-400e-bd30-8b1dd89d779c	47b6a1b1-13e9-4648-aa33-4b91bd58c61d	2
a1788daf-c8ba-400e-bd30-8b1dd89d779c	633feabe-50ec-481f-ba97-10677b7d6b29	3
a1788daf-c8ba-400e-bd30-8b1dd89d779c	838d6e3d-2a30-4036-87ba-86ec8058a178	4
a1788daf-c8ba-400e-bd30-8b1dd89d779c	f608cc1d-8f4f-4fbf-992f-690ddd52c0d5	5
2c033211-0542-4d49-bff5-f5c42e65c7e0	d9acfed6-742b-4f18-ac94-4eed3e340e18	2
2c033211-0542-4d49-bff5-f5c42e65c7e0	1986d5b4-6d99-4699-af05-3947a66cfec5	7
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	12470fe5-2259-4287-af22-75b95583d8c1	6
a4c8894a-95ab-4b21-b812-8090608f4bc7	02512113-58d3-4d33-aa21-5a4e74536ee1	1
a4c8894a-95ab-4b21-b812-8090608f4bc7	05814f0b-5390-4b98-b689-ae1ed953620b	2
a4c8894a-95ab-4b21-b812-8090608f4bc7	0826f63a-2a73-49ce-8289-1bf53131e318	3
a4c8894a-95ab-4b21-b812-8090608f4bc7	09bddbde-16f9-4d2f-9d54-f074f05fc5f8	4
a4c8894a-95ab-4b21-b812-8090608f4bc7	0a980715-0795-4077-89a2-bd7319482f37	5
a4c8894a-95ab-4b21-b812-8090608f4bc7	0cf57a0d-7579-4b8b-9dd9-0acc1a8b363a	6
a4c8894a-95ab-4b21-b812-8090608f4bc7	0d39ecf0-4c59-4dee-8960-5e2742d6f147	7
a4c8894a-95ab-4b21-b812-8090608f4bc7	11e86160-0bcc-424b-a167-8aa508c861b1	8
a4c8894a-95ab-4b21-b812-8090608f4bc7	20d33e84-aa7d-42c9-8da5-d5d70bf830f0	9
a4c8894a-95ab-4b21-b812-8090608f4bc7	2830825d-9c94-4d54-84a6-2ef180735925	10
a4c8894a-95ab-4b21-b812-8090608f4bc7	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20	11
a4c8894a-95ab-4b21-b812-8090608f4bc7	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f	12
a4c8894a-95ab-4b21-b812-8090608f4bc7	404e4d7c-fbce-4f72-b726-3c7e6f74fa70	13
a4c8894a-95ab-4b21-b812-8090608f4bc7	4078fbce-8b37-4922-9f03-111b70c84bfb	14
a4c8894a-95ab-4b21-b812-8090608f4bc7	43b9b073-4932-4dab-b81d-81068aec8eaf	15
a4c8894a-95ab-4b21-b812-8090608f4bc7	4d2bcb83-a208-427e-ac54-8b3fd897aadf	16
a4c8894a-95ab-4b21-b812-8090608f4bc7	4f1ea486-0155-4643-9757-12e3bc1e8e4f	17
a4c8894a-95ab-4b21-b812-8090608f4bc7	5afbd857-1bca-475e-9610-a8ce21942444	18
a4c8894a-95ab-4b21-b812-8090608f4bc7	6c6d90c2-c302-427c-8f13-6b5ad646a4e3	19
a4c8894a-95ab-4b21-b812-8090608f4bc7	6f034e1b-3c62-41d4-9f68-862d5c769c9a	20
a4c8894a-95ab-4b21-b812-8090608f4bc7	838d6e3d-2a30-4036-87ba-86ec8058a178	21
59246c16-40c3-4222-8687-05156f432549	3b583729-4f78-4500-8f8e-5233f27a16be	2
59246c16-40c3-4222-8687-05156f432549	0d39ecf0-4c59-4dee-8960-5e2742d6f147	1
59246c16-40c3-4222-8687-05156f432549	c0f55cd4-fc31-46b6-8730-93e076a2dd73	4
a409b122-d42c-46f4-8ede-0cc09eb5f58f	19a58277-caa3-4321-96b7-3e7aa6907b09	5
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	d724e649-5625-4040-92fb-caff7f799263	7
a409b122-d42c-46f4-8ede-0cc09eb5f58f	b7a10438-8d03-4334-af92-d3044c6cec8d	8
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	6f034e1b-3c62-41d4-9f68-862d5c769c9a	3
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	e2d56d3d-7c4a-4f7c-b1ef-24e90fbdd565	5
a409b122-d42c-46f4-8ede-0cc09eb5f58f	4bcfc32a-693c-4d28-9451-6f18e80f4552	9
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	f11c92f6-aee3-4295-8ef2-624c5285db73	6
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	02512113-58d3-4d33-aa21-5a4e74536ee1	1
a409b122-d42c-46f4-8ede-0cc09eb5f58f	0494d204-b24b-4248-a131-32dd9ea774b7	10
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	d0c9b77a-3efe-43cb-9c72-4c68c5fab3dd	4
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	c7633828-73b9-4409-95c8-92bff803725b	2
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	8c04f298-85d0-4b08-b4cd-afa9e50952b8	10
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	a90155d3-aa81-4f55-a5c9-ac5d18015874	8
4f5f01b6-3c62-49eb-b2fd-40951cfeb329	853376fb-d714-4626-94d0-cbabed6b1f67	9
a409b122-d42c-46f4-8ede-0cc09eb5f58f	7b8bd6e9-4ea2-4b52-908b-fae1fb4bdd76	4
a409b122-d42c-46f4-8ede-0cc09eb5f58f	64316739-323d-4502-a488-4d521e1d348e	2
a409b122-d42c-46f4-8ede-0cc09eb5f58f	c8736c6b-c84e-46d8-bd1d-f0e3ada0bb5e	0
26687439-4c11-4bb3-932a-204348dfd4d1	8bd31b5e-93f6-4dc5-8bf5-bf685af7bd99	0
26687439-4c11-4bb3-932a-204348dfd4d1	df25adec-5994-4726-b00f-c9585331e82d	5
26687439-4c11-4bb3-932a-204348dfd4d1	9cb40f57-fd04-4d83-923a-88cfd02ec475	4
26687439-4c11-4bb3-932a-204348dfd4d1	b5d6a720-7eb0-45e8-8c28-734d8456f629	3
26687439-4c11-4bb3-932a-204348dfd4d1	aa133384-3260-45bf-ae12-0cbad3b07dad	2
21f1e72f-a8fc-4af1-9a99-0f41dd350427	56e2faac-97ec-49e9-a5ca-997204d30018	3
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	784fe782-42f4-4172-b79c-4cecea10d010	2
21f1e72f-a8fc-4af1-9a99-0f41dd350427	cdd2a1f3-71f3-4f49-bb6a-a9282752ef42	2
21f1e72f-a8fc-4af1-9a99-0f41dd350427	f37a977b-2a0a-4c87-892e-da46590ec635	8
21f1e72f-a8fc-4af1-9a99-0f41dd350427	647e3ab5-bdd2-4dc8-afee-db4e33cf2142	6
21f1e72f-a8fc-4af1-9a99-0f41dd350427	de51bd5a-ff34-40f2-8996-3751f7230f8d	7
21f1e72f-a8fc-4af1-9a99-0f41dd350427	c51e5efc-e07c-46fa-96ff-d92b08d035ae	0
21f1e72f-a8fc-4af1-9a99-0f41dd350427	e0770667-6df5-4a3a-bf16-9aefff47ff06	1
a4c8894a-95ab-4b21-b812-8090608f4bc7	84d708a1-1449-48fe-8e11-161065f50fc4	22
a4c8894a-95ab-4b21-b812-8090608f4bc7	853376fb-d714-4626-94d0-cbabed6b1f67	23
a4c8894a-95ab-4b21-b812-8090608f4bc7	8c04f298-85d0-4b08-b4cd-afa9e50952b8	24
a4c8894a-95ab-4b21-b812-8090608f4bc7	92a995fe-ed78-4ffd-924a-19e93e27d28d	25
a4c8894a-95ab-4b21-b812-8090608f4bc7	9a823d89-75e7-42fc-b659-0cc512db39eb	26
a4c8894a-95ab-4b21-b812-8090608f4bc7	9ae6d5a9-b765-4a43-be09-dbd163e25f29	27
a4c8894a-95ab-4b21-b812-8090608f4bc7	a34549b7-4054-49cb-b1df-d8360a177721	28
a4c8894a-95ab-4b21-b812-8090608f4bc7	a4c53bef-09c4-4812-aa4e-7622f3671ba0	29
a4c8894a-95ab-4b21-b812-8090608f4bc7	a90155d3-aa81-4f55-a5c9-ac5d18015874	31
a4c8894a-95ab-4b21-b812-8090608f4bc7	ac844730-3e6b-4e47-8348-645efbda82b3	32
a4c8894a-95ab-4b21-b812-8090608f4bc7	b5d6a720-7eb0-45e8-8c28-734d8456f629	33
a4c8894a-95ab-4b21-b812-8090608f4bc7	bae9d021-6508-4f8f-8f44-383373846da9	34
a4c8894a-95ab-4b21-b812-8090608f4bc7	bd2d623e-ff0e-45d1-9ae4-b3345423ee12	35
a4c8894a-95ab-4b21-b812-8090608f4bc7	c7633828-73b9-4409-95c8-92bff803725b	36
a4c8894a-95ab-4b21-b812-8090608f4bc7	ca63da6e-4036-426c-9c8c-142620c93a6b	37
a4c8894a-95ab-4b21-b812-8090608f4bc7	ce179d72-1ea4-4981-8fd1-b0fd4365a184	38
a4c8894a-95ab-4b21-b812-8090608f4bc7	d0c9b77a-3efe-43cb-9c72-4c68c5fab3dd	39
a4c8894a-95ab-4b21-b812-8090608f4bc7	d3fdf0ad-b81e-4c1f-b304-487d4824e27a	40
a4c8894a-95ab-4b21-b812-8090608f4bc7	d724e649-5625-4040-92fb-caff7f799263	41
a4c8894a-95ab-4b21-b812-8090608f4bc7	e2d56d3d-7c4a-4f7c-b1ef-24e90fbdd565	42
a4c8894a-95ab-4b21-b812-8090608f4bc7	e59ecc38-4645-4e44-9484-97b925497171	43
a4c8894a-95ab-4b21-b812-8090608f4bc7	ec88f280-c529-4384-acfc-3b3bbcb45855	44
a4c8894a-95ab-4b21-b812-8090608f4bc7	f11c92f6-aee3-4295-8ef2-624c5285db73	45
a4c8894a-95ab-4b21-b812-8090608f4bc7	f2d4f534-90e1-4708-9f49-e00cd5c14176	46
a4c8894a-95ab-4b21-b812-8090608f4bc7	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	47
a4c8894a-95ab-4b21-b812-8090608f4bc7	f6696507-34b4-4ed0-83ca-925113531271	48
a4c8894a-95ab-4b21-b812-8090608f4bc7	fd4c8398-1e4f-48e3-91bd-23ce55caeece	49
a761f011-dc14-4dc6-9598-0fd9e953267d	1d2adb42-9f7b-4e67-87a9-fac6129acb27	1
a761f011-dc14-4dc6-9598-0fd9e953267d	d42e4c75-1920-419e-ac89-a665882beed7	2
2405754e-79cf-40f1-8038-9457feed5f5a	1401aef0-1ae3-4084-9a51-c5179172c676	4
8bf4bbff-b4cc-4311-b1e4-a7f3e123f916	3a7dd7ef-9787-491c-a0ae-34ca0dca62cc	6
a918f0dc-2265-4826-a995-71b1c6c3d59d	9a823d89-75e7-42fc-b659-0cc512db39eb	1
a918f0dc-2265-4826-a995-71b1c6c3d59d	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	2
afe899a5-184d-48ba-bf85-4cd7f9fc7ddf	2365ac3e-e95c-4708-ada5-dd2f2cb58145	1
afe899a5-184d-48ba-bf85-4cd7f9fc7ddf	cb907179-eb05-4320-9b99-d78baf522a03	2
afe899a5-184d-48ba-bf85-4cd7f9fc7ddf	eeb398f9-c775-4546-8702-46548baa6cfa	3
b85f5ed1-83d7-45cf-9554-0a77af0c0e7f	12e749ce-d90f-479c-ad9c-94a0ab2f5876	1
ba6631f1-c97a-477c-9476-ecd44f05b610	12bcfb4c-379d-4add-9444-6534a5bd31b0	1
ba6631f1-c97a-477c-9476-ecd44f05b610	4a61d420-f80c-4a89-8055-e39405de7d72	2
ba6631f1-c97a-477c-9476-ecd44f05b610	6379ff9c-ee57-48d8-95c2-08299c906ba7	3
ba6631f1-c97a-477c-9476-ecd44f05b610	81f9dbb8-1144-45e2-a012-c8b85f2de1ea	4
c2550bae-6cdf-4b1a-bd1a-7ad42f2695e2	c2b6b591-d1b1-4b7a-a05e-c90473d800cc	1
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	02b62740-da17-4c58-8d42-a30ff014a523	1
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	1a48345b-981f-46d5-a966-640dd3453379	2
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	1f2283b7-2d12-4bd8-87ed-db700b092217	3
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	2205da7a-c8f2-48cc-a9ad-9020c0c8b067	4
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	2e29cdf2-1689-41a9-b953-e9c67ba20093	5
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	3b928e5e-675b-4418-ba67-757fbf690e90	6
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	5e2d2077-cfe8-4e80-8bfa-a00759d5f854	7
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	7af7d988-adfc-4218-8894-15816f7cc8fe	8
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	86fe0f54-b8f6-4ddc-b457-27aecdcdcc67	9
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	bc59c646-80a7-4ee4-b959-9fc8796b165e	10
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	be140005-36f1-4ea3-b5b4-7842eef49d48	11
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	d8cb2712-f31a-4c77-ac70-ad41deba6b81	12
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	e68fcdf6-b08e-4415-bb68-a816f7e15ac3	13
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	f0a0c198-ec45-4bb6-84f2-71e4f0ab01a9	14
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	f33ebc11-2b5c-4845-ab7d-6b3233246b44	15
c59aa39e-ff0b-43fc-9401-93d88be4ef8c	f5926cde-6885-4deb-94ce-c112a11e8dad	16
cc99a20c-e918-4d71-9bba-593cd5ac6f12	070da027-3de9-48b5-9337-c341f978d31a	1
cc99a20c-e918-4d71-9bba-593cd5ac6f12	68f1883b-5089-4add-b8a2-0a9890241a5b	2
cc99a20c-e918-4d71-9bba-593cd5ac6f12	9b4d4bff-68b0-402d-8d04-dc8c4fbab203	3
e6322e18-58cc-4550-9f41-436219028763	0973bd19-d068-4f27-9402-45c8a8ef375b	2
e6322e18-58cc-4550-9f41-436219028763	92fe8165-5244-4c69-8919-96f9c0674ac1	4
e6322e18-58cc-4550-9f41-436219028763	c25d3152-bcd0-4112-903d-901968ec1d14	8
e6322e18-58cc-4550-9f41-436219028763	f823dfea-81d8-4d94-82a5-4407e76ca023	11
e71ae818-ac34-4727-9a71-22ad2f52b02c	a4c53bef-09c4-4812-aa4e-7622f3671ba0	1
f17ee86d-aa66-4779-84cd-78b9904e27d9	12bcfb4c-379d-4add-9444-6534a5bd31b0	1
f17ee86d-aa66-4779-84cd-78b9904e27d9	6379ff9c-ee57-48d8-95c2-08299c906ba7	2
f17ee86d-aa66-4779-84cd-78b9904e27d9	81f9dbb8-1144-45e2-a012-c8b85f2de1ea	3
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	1b4d3a1f-0853-4b6e-9d7d-521b966e790d	1
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	2eab4445-0aac-483a-b643-4edb1cf698a0	2
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	3080bb06-0190-43c8-857e-616aca4509a6	3
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	47269e8e-370d-4989-acd7-560dc4f52a3c	4
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	68eb6144-5fdf-49da-a1e3-6418fb0a14e4	5
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	6c1234f6-1c07-417a-9b2c-fd06dc104131	6
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	6df80793-de46-4a1e-8f37-0fd87b6a177c	7
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	705921cf-09c7-4a0a-8364-f54d76ad6767	8
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	8f8c9bcf-bab4-46cf-a2be-c2592818c4b6	9
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	9b4d4bff-68b0-402d-8d04-dc8c4fbab203	10
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	be6a0139-db4f-44f7-af3b-1e28a7c567f9	11
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	c2b6b591-d1b1-4b7a-a05e-c90473d800cc	12
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	c972cb45-1fab-43e5-a4e2-20cae18b1ea7	13
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	e5addb1d-264f-4f50-83c1-86d6d1497841	14
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	f4355043-d9c1-4e90-9cf5-2335ad276fd1	15
f2184d33-6a76-4b95-a2fe-9f586b3ae11f	f608cc1d-8f4f-4fbf-992f-690ddd52c0d5	16
fc4ffac2-d5a0-41e7-ae60-3549f006232b	1c7cb6e1-a94d-4e6d-ae29-bf6a861089c5	1
fc4ffac2-d5a0-41e7-ae60-3549f006232b	4d2bcb83-a208-427e-ac54-8b3fd897aadf	2
fc4ffac2-d5a0-41e7-ae60-3549f006232b	5afbd857-1bca-475e-9610-a8ce21942444	3
fc4ffac2-d5a0-41e7-ae60-3549f006232b	7821dc4a-6770-4d1c-a7ba-b40e3f0b4ca1	4
fc4ffac2-d5a0-41e7-ae60-3549f006232b	d60bff46-74e7-4844-8430-f075b4b8ea70	5
fc4ffac2-d5a0-41e7-ae60-3549f006232b	d6a46bcf-b396-467e-8855-0370544e6911	6
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	7
2c033211-0542-4d49-bff5-f5c42e65c7e0	e1124488-6563-4d71-8cdd-08d082f0a16f	3
bc9ca459-b960-4efc-876a-3f10b42afde2	5b25c84c-697d-4714-b656-a08ac962fe05	6
ddfb393b-d84f-4de1-a31e-30a558aaac1a	c0a76c22-36cf-4045-8ddd-59b19347717c	1
175e2618-7834-4b93-9333-43e19555addf	c96f911d-b102-44e9-a6ef-8474e14916fe	2
175e2618-7834-4b93-9333-43e19555addf	225f8c88-6ea9-436a-bb67-8c8bea62f4ff	6
ddc98d5c-abae-4e0c-832c-a25d90925539	e700afcc-1b91-481d-8b75-8f60770c8c96	2
ddc98d5c-abae-4e0c-832c-a25d90925539	a6fb8dd8-2bd1-4cf7-9479-9bc2efaa551c	4
175e2618-7834-4b93-9333-43e19555addf	c3577177-2e23-47c4-a65f-1a792cbb5b83	7
a8e82f4d-d7c7-4e9f-a072-76ba0099d938	8d83f3c4-5b96-4f73-839c-69228773d032	2
fbec1635-e444-42d8-9450-2c9875a15b97	fb80f176-4ddb-4cbe-b315-98ca000678eb	5
fe05a72b-dcd1-41fa-8194-d64b81f87b74	b123d09c-483f-4526-8b4d-768545638a16	5
e6322e18-58cc-4550-9f41-436219028763	d97480ca-3bda-4d09-87e1-19b8a14a2f7d	2
e6322e18-58cc-4550-9f41-436219028763	bb29351e-2d82-4f6d-824a-56d90e629089	5
e6322e18-58cc-4550-9f41-436219028763	a455b186-07cc-44f4-9dd1-53ddd0f01763	1
e6322e18-58cc-4550-9f41-436219028763	285cc2d6-aecf-4aaa-8c76-c8a72204e35d	3
e6322e18-58cc-4550-9f41-436219028763	c1973d35-044f-494d-8a09-e6a0360f863d	4
e6322e18-58cc-4550-9f41-436219028763	00ccb0b7-af00-416f-8292-1c089fd77d5f	0
e6322e18-58cc-4550-9f41-436219028763	e3731965-d272-4d3a-ad7e-3c7b9b5f59a7	6
fbec1635-e444-42d8-9450-2c9875a15b97	3d43d008-2ce7-4235-bfb4-352daac50f01	7
fbec1635-e444-42d8-9450-2c9875a15b97	e01c1214-ac1e-4995-8432-41d6dccc179e	3
fbec1635-e444-42d8-9450-2c9875a15b97	85c5866c-ddb9-490e-ac68-240533381c1e	4
fbec1635-e444-42d8-9450-2c9875a15b97	34d97983-01b2-4ac6-b9f4-f9cdd54f26db	6
fbec1635-e444-42d8-9450-2c9875a15b97	197cd7ce-7865-4a0b-b129-fd97df9cf056	2
8bf4bbff-b4cc-4311-b1e4-a7f3e123f916	5b7e950c-1693-4755-984f-18a0b24bd71c	1
59246c16-40c3-4222-8687-05156f432549	e59ecc38-4645-4e44-9484-97b925497171	3
2c033211-0542-4d49-bff5-f5c42e65c7e0	b701d407-8dc5-4f1a-bf1c-9e74a9ad3641	4
bc9ca459-b960-4efc-876a-3f10b42afde2	ecfabf83-d249-4b0d-afa0-6d35db92ed4c	7
ddfb393b-d84f-4de1-a31e-30a558aaac1a	72c2d681-1858-49d8-8fd1-5274b1d5f264	2
175e2618-7834-4b93-9333-43e19555addf	290c633d-51b4-456b-a14a-226ccc5ec2b3	3
ddc98d5c-abae-4e0c-832c-a25d90925539	a9afda3d-9ba2-4935-a7c1-ec1d9c179a4e	3
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	318dd50c-8c98-4859-bbb2-f540da9a9451	0
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	90879804-1542-400f-80c0-5d883958595c	6
a409b122-d42c-46f4-8ede-0cc09eb5f58f	f6d9301e-3591-48b7-8fb6-783c4c2849a9	6
d1821967-861e-4381-ac28-fff3d62ccfab	0d403033-b28f-4222-9970-b5275ea0a0c8	2
a8f9d016-3454-4aac-835f-8d2bdbffdb3e	b3e7054e-73a9-47e3-804c-6b45f10e7a7b	2
1b06774b-092a-4d8c-9e38-a33240f642c1	0668ab57-ce6c-4491-abc5-2fc5fd2b475a	2
21ffe215-dd63-4eec-af8d-1fbeddbfc55d	1ddb5bae-2b46-469c-8498-72bc287ede38	2
aefc26ee-eb35-40b7-bfca-80ba88f9d1eb	8cb019da-0c1e-4979-9b80-276b37ec4e64	4
7be48e49-cb44-4657-855e-ce56eb592935	e5f095e6-e855-47aa-9487-9d5607cba51b	2
26687439-4c11-4bb3-932a-204348dfd4d1	92a995fe-ed78-4ffd-924a-19e93e27d28d	1
caa359d4-3111-4e77-a299-9ec9fd862302	ac409f73-f0ce-4a72-9fc2-7ee3746f0daf	2
caa359d4-3111-4e77-a299-9ec9fd862302	66700fec-8c31-44a2-9058-f7bde85884c4	6
f85abc12-7561-4280-aba4-f60e81aa84ee	66700fec-8c31-44a2-9058-f7bde85884c4	3
f85abc12-7561-4280-aba4-f60e81aa84ee	ac409f73-f0ce-4a72-9fc2-7ee3746f0daf	1
59ebc961-d7a1-402f-8965-bf1f11cacfaf	d60bff46-74e7-4844-8430-f075b4b8ea70	4
fe05a72b-dcd1-41fa-8194-d64b81f87b74	91346b4d-d856-4abc-8fc5-6cde4cf0ca70	9
fe05a72b-dcd1-41fa-8194-d64b81f87b74	fed3f5b8-2480-4d28-a7d7-2a7255c35c62	0
fe05a72b-dcd1-41fa-8194-d64b81f87b74	edf913ba-22f6-4904-b40d-c4983fe8d612	6
fe05a72b-dcd1-41fa-8194-d64b81f87b74	dfdc0f54-6c73-4829-9f30-ac88090a40fd	4
fe05a72b-dcd1-41fa-8194-d64b81f87b74	5a05ed04-6464-4066-9992-ccabee686f31	2
59246c16-40c3-4222-8687-05156f432549	6c6d90c2-c302-427c-8f13-6b5ad646a4e3	9
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	28635068-b0b7-4702-98ee-c2aa9bb47dd9	2
a8e82f4d-d7c7-4e9f-a072-76ba0099d938	cd43a762-b13a-4dde-850c-828ad2f016a8	5
\.


--
-- Data for Name: tag_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_groups" ("group_id", "unit_id") FROM stdin;
41ea6a31-6ea0-409f-8b91-63d0f492ffa4	175e2618-7834-4b93-9333-43e19555addf
41ea6a31-6ea0-409f-8b91-63d0f492ffa4	ddc98d5c-abae-4e0c-832c-a25d90925539
caa359d4-3111-4e77-a299-9ec9fd862302	4f5f01b6-3c62-49eb-b2fd-40951cfeb329
caa359d4-3111-4e77-a299-9ec9fd862302	f85abc12-7561-4280-aba4-f60e81aa84ee
\.


--
-- Data for Name: tag_sentences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_sentences" ("tag_id", "sentence_id", "position") FROM stdin;
1f2325c3-93cc-4e69-94b3-a8d244314da2	c0f52386-a764-43d2-b3c7-efd99a96ae33	1
a8f9d016-3454-4aac-835f-8d2bdbffdb3e	2ae58d9a-4392-402b-9ede-ec5a6562ae6a	1
59246c16-40c3-4222-8687-05156f432549	2de9ad49-d28e-42d0-b257-38543e03988f	8
728b5cb8-d21a-47c4-9495-74d050925d80	8f46ec66-c16c-44e1-9997-e224ee34b77e	1
59246c16-40c3-4222-8687-05156f432549	b91d9c29-9627-486a-9d7f-65ab6e3c1924	0
e71ae818-ac34-4727-9a71-22ad2f52b02c	b2a79960-224d-4308-9688-c9660fe52833	6
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	3d845823-371a-47a0-9548-b38d4a15313d	8
a918f0dc-2265-4826-a995-71b1c6c3d59d	60964f68-31b0-4766-8633-d5c8c0b01baa	4
a918f0dc-2265-4826-a995-71b1c6c3d59d	94292da6-5eec-4057-bd10-4ae5d06a3430	5
f88c9fb6-2d01-46af-bae7-799f2b6e295d	8a5ccb5c-d297-42a8-895d-9314b14cf303	5
d1821967-861e-4381-ac28-fff3d62ccfab	8acb2782-5d25-42b7-936d-0190d892bed0	3
e250ce4b-75fc-4a4a-bbf7-d762c2d0d6b1	47a265d8-5c8e-42e8-a48d-003254a126fe	4
67066979-e6c8-41a4-a10c-141c28da09c8	f5dcc8bf-bc56-467b-b264-207f34a3ac75	4
30250d22-9dcf-424b-af19-63f14fa0c34e	82176c5c-89e3-4b69-8cab-7fefef5b1879	1
f5d5b718-edef-42e2-b9c3-70ec74b02a50	2e5769fc-c2cc-48ac-9788-d96499f804dc	4
f8350d7f-07b2-4466-b322-9cda7e14431d	5d725797-eccb-44eb-83ec-05cf026e25f3	4
ba6631f1-c97a-477c-9476-ecd44f05b610	1536fd83-9808-4a5a-910b-992b465cc3a7	15
175e2618-7834-4b93-9333-43e19555addf	fb3970bc-ac4b-45da-8512-674beef934ce	0
175e2618-7834-4b93-9333-43e19555addf	c5b41fc2-5c88-45d9-b0ef-5c2efcc540af	5
30250d22-9dcf-424b-af19-63f14fa0c34e	98909e49-900b-4773-ac63-e7cf09915b9d	3
66c73498-c70c-4dea-b886-2a4d77c78b30	98909e49-900b-4773-ac63-e7cf09915b9d	12
0722ff26-e6c2-4b9a-b683-948e93daa6dc	ee566f4a-b257-4721-8cea-0128c2aa773b	3
3983b504-56c7-434a-b632-31a12bb87edb	ac4404fe-f7ed-43e4-abbe-6885da7abf7d	0
3983b504-56c7-434a-b632-31a12bb87edb	685d22c9-ebdd-4c9a-8b17-911107129bc9	6
7be48e49-cb44-4657-855e-ce56eb592935	28753735-87b3-4005-8b64-27b680f666e7	0
7be48e49-cb44-4657-855e-ce56eb592935	f1b8834d-db30-4ac8-b576-77785ed67fe2	2
7be48e49-cb44-4657-855e-ce56eb592935	53725f72-1751-4aef-b9d8-2099bf37e270	3
f366477f-9794-40bf-aad4-e0eb431f56ae	8179b743-fc41-40d2-a001-1018779ce488	3
728b5cb8-d21a-47c4-9495-74d050925d80	7da68cbd-acf4-4c39-8cac-04bab4504f3e	5
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	010ec073-74fe-413c-af51-7897e95e21f7	1
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	0d741e4e-2cd1-4fab-b6a6-6877498991fe	2
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	0f9a5c5e-c5d7-493c-822b-e7cad9106506	3
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	580e921b-cdcb-4dba-90be-932917021465	4
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	62776da7-16fb-4472-ad06-7bd169e8cb33	5
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	714016dc-e0da-44d4-9986-79b94df84fee	6
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	96dc762a-2c3e-4772-a1d0-6848dc052e63	7
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	b74662a4-c5e9-4a92-9468-2fc47a3b4c2d	8
1f2325c3-93cc-4e69-94b3-a8d244314da2	b742040d-8686-47b5-922c-664e7b7dbb53	2
a8f9d016-3454-4aac-835f-8d2bdbffdb3e	9e66c960-96a5-475d-ac6a-32928ef2b144	2
59246c16-40c3-4222-8687-05156f432549	94f7ca91-9d15-4d06-ad6b-28690ee0a025	9
728b5cb8-d21a-47c4-9495-74d050925d80	78235781-ebd7-4c71-8d1b-110e160a7dbd	2
e71ae818-ac34-4727-9a71-22ad2f52b02c	d36facf4-5070-433a-b9fe-58599af1c76a	7
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	a84061a5-c912-4b88-a5a1-fd02a369a26d	3
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	dd398462-a44f-46b4-944f-6e8a88407c0f	9
a918f0dc-2265-4826-a995-71b1c6c3d59d	1da74290-c064-4069-bb09-0b73a2b08b49	2
a918f0dc-2265-4826-a995-71b1c6c3d59d	af766c32-a7de-4de1-ac45-216ddfc07e97	6
f88c9fb6-2d01-46af-bae7-799f2b6e295d	1653c88f-d90b-423e-8b38-3aa54860cb99	2
f88c9fb6-2d01-46af-bae7-799f2b6e295d	13bd0cbe-b2b4-4a70-b0be-1ba97bd53fc0	1
d1821967-861e-4381-ac28-fff3d62ccfab	157de1bf-0b28-4b0b-b157-6f4393dece6a	4
e250ce4b-75fc-4a4a-bbf7-d762c2d0d6b1	e4c8c6df-430d-4639-a606-9cd61eb1f472	5
67066979-e6c8-41a4-a10c-141c28da09c8	ffe81673-70e8-4ae3-973f-bea730513f9a	5
30250d22-9dcf-424b-af19-63f14fa0c34e	168f1999-ab6f-4532-92e6-c0c8b54b0e47	2
f8350d7f-07b2-4466-b322-9cda7e14431d	acce6f2e-c76f-4d11-bb53-f40a43d1a13e	5
0ff2914f-39e8-42fc-bd0c-7ba73d07640d	d8257d6b-576c-43ef-82a4-6b02b41d98f8	3
ddfb393b-d84f-4de1-a31e-30a558aaac1a	36cdb74a-854a-4711-a39d-00d79b8d4d5d	6
ddfb393b-d84f-4de1-a31e-30a558aaac1a	c305b49d-499a-4d69-96ff-8be56196d7e1	5
30250d22-9dcf-424b-af19-63f14fa0c34e	22ee6532-e890-4f1d-b6bc-0ee164467a99	4
66c73498-c70c-4dea-b886-2a4d77c78b30	22ee6532-e890-4f1d-b6bc-0ee164467a99	13
0722ff26-e6c2-4b9a-b683-948e93daa6dc	6d0e5b4d-5046-4c0d-ac5f-c1d7ada2b1ef	4
3983b504-56c7-434a-b632-31a12bb87edb	b478a907-14d1-4b4c-b79e-3ed31e7aa7ae	2
3983b504-56c7-434a-b632-31a12bb87edb	0ebc1ecb-ebbb-4ad6-b3eb-7b02b8ff76f0	7
7be48e49-cb44-4657-855e-ce56eb592935	95c3e222-ca17-4d79-b9af-80bd26c22b58	4
7be48e49-cb44-4657-855e-ce56eb592935	432d5473-e46c-4a67-ad5d-01c2b0451eb7	5
f366477f-9794-40bf-aad4-e0eb431f56ae	dd6b683c-5a6d-491a-944e-1c041d976a70	4
1f2325c3-93cc-4e69-94b3-a8d244314da2	88bf949b-e5bb-46a4-b527-e6bea5cd8215	3
59246c16-40c3-4222-8687-05156f432549	14f7bbb3-ecf5-4a08-ada4-1e160f544976	10
728b5cb8-d21a-47c4-9495-74d050925d80	988163eb-b345-4329-adb4-e68352fb2544	3
e71ae818-ac34-4727-9a71-22ad2f52b02c	fc370890-c3b4-44e8-a05d-55c6a698ed8b	5
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	08e2f88a-4285-4842-b045-791b8fdc2ba9	4
f88c9fb6-2d01-46af-bae7-799f2b6e295d	47111217-82c9-4d1d-97cb-acf67854743f	4
e250ce4b-75fc-4a4a-bbf7-d762c2d0d6b1	bf36137b-96c0-4f94-8932-1a9939e3f7f4	1
67066979-e6c8-41a4-a10c-141c28da09c8	18ed8e8f-5979-4aca-85e2-3d535a9c4548	2
67066979-e6c8-41a4-a10c-141c28da09c8	a467fea2-ef7e-497b-ade5-6e76469154dd	3
f5d5b718-edef-42e2-b9c3-70ec74b02a50	4c67223d-d4a7-4617-bf8e-019f3ebb6729	1
f8350d7f-07b2-4466-b322-9cda7e14431d	9372a05e-04d7-4735-bc2a-e26138bbc7db	1
ddfb393b-d84f-4de1-a31e-30a558aaac1a	6825ed96-da1a-4a87-bcb6-691410c41671	4
12cbabda-d33d-40ad-814d-a88c9a1723e0	6282c1a1-c320-49fd-b0fc-432580d75daa	1
175e2618-7834-4b93-9333-43e19555addf	f8599da6-345d-46a5-82ab-2b490e24049a	1
30250d22-9dcf-424b-af19-63f14fa0c34e	5b803618-0fb0-4db9-b591-45946608779f	5
66c73498-c70c-4dea-b886-2a4d77c78b30	5b803618-0fb0-4db9-b591-45946608779f	14
30250d22-9dcf-424b-af19-63f14fa0c34e	98871a6a-a0aa-420d-968f-33853eec4eda	8
3983b504-56c7-434a-b632-31a12bb87edb	bc1840ef-5c02-4880-852f-bcfe138a43e7	9
3983b504-56c7-434a-b632-31a12bb87edb	aeffd153-92fa-453b-bd15-4b3a7e61ce4d	3
0722ff26-e6c2-4b9a-b683-948e93daa6dc	98871a6a-a0aa-420d-968f-33853eec4eda	5
7be48e49-cb44-4657-855e-ce56eb592935	f4b77908-99b7-44a9-89a0-b12d9344ad9e	1
59246c16-40c3-4222-8687-05156f432549	1da74290-c064-4069-bb09-0b73a2b08b49	2
59246c16-40c3-4222-8687-05156f432549	60964f68-31b0-4766-8633-d5c8c0b01baa	4
59246c16-40c3-4222-8687-05156f432549	94292da6-5eec-4057-bd10-4ae5d06a3430	5
59246c16-40c3-4222-8687-05156f432549	b7f42b93-b49f-45ae-b4cf-8e30b8119dc5	7
59246c16-40c3-4222-8687-05156f432549	af766c32-a7de-4de1-ac45-216ddfc07e97	6
a918f0dc-2265-4826-a995-71b1c6c3d59d	b91d9c29-9627-486a-9d7f-65ab6e3c1924	0
d1821967-861e-4381-ac28-fff3d62ccfab	fb68f487-7332-4fbb-95e5-4e115211e6f4	0
d1821967-861e-4381-ac28-fff3d62ccfab	16cbf7a1-56cc-401e-807a-dbd5b892ae35	1
f366477f-9794-40bf-aad4-e0eb431f56ae	50b55b34-be31-44f6-93c6-8dac48844547	6
f366477f-9794-40bf-aad4-e0eb431f56ae	b89287ea-9bef-47ce-bf4c-efd373331340	5
f366477f-9794-40bf-aad4-e0eb431f56ae	f28805eb-8c28-4a7f-9e62-e175c9b6edeb	7
02a9fa15-2243-45c4-ad84-dd4f6ffe5b57	eabc8814-f8d0-483f-81df-0be16fd414a0	9
0722ff26-e6c2-4b9a-b683-948e93daa6dc	365afb4d-ff8d-4b6c-852e-6c5e842d293d	1
0722ff26-e6c2-4b9a-b683-948e93daa6dc	e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	2
0c070304-251b-48cc-8ee6-be642155ecce	13b14810-0b22-4d99-a35d-26671ebd22de	1
0c070304-251b-48cc-8ee6-be642155ecce	20071b94-7c71-4aba-a90d-b17f64967c97	2
0c070304-251b-48cc-8ee6-be642155ecce	6d520f20-b110-410e-8c52-5f2e3aa1e629	3
0c070304-251b-48cc-8ee6-be642155ecce	e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	4
0ff2914f-39e8-42fc-bd0c-7ba73d07640d	b74662a4-c5e9-4a92-9468-2fc47a3b4c2d	1
0ff2914f-39e8-42fc-bd0c-7ba73d07640d	d69e852c-f635-4caa-8211-b82b6dbeb51d	2
183bbfa8-ca46-4e74-9868-604a6847f70d	29b1707d-0483-481d-bde2-47ee88ce79f1	1
196eaea2-9900-4cee-9ed4-5a895e269342	18ed8e8f-5979-4aca-85e2-3d535a9c4548	1
196eaea2-9900-4cee-9ed4-5a895e269342	1da74290-c064-4069-bb09-0b73a2b08b49	2
196eaea2-9900-4cee-9ed4-5a895e269342	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	3
196eaea2-9900-4cee-9ed4-5a895e269342	60964f68-31b0-4766-8633-d5c8c0b01baa	4
196eaea2-9900-4cee-9ed4-5a895e269342	73a6e6dd-136d-4d5e-8024-b3e53681375b	5
196eaea2-9900-4cee-9ed4-5a895e269342	94292da6-5eec-4057-bd10-4ae5d06a3430	6
196eaea2-9900-4cee-9ed4-5a895e269342	aeffd153-92fa-453b-bd15-4b3a7e61ce4d	7
196eaea2-9900-4cee-9ed4-5a895e269342	b91d9c29-9627-486a-9d7f-65ab6e3c1924	8
196eaea2-9900-4cee-9ed4-5a895e269342	cad46881-7d40-49b0-bde7-da05de36ad31	9
196eaea2-9900-4cee-9ed4-5a895e269342	d4e68862-d5f4-4e94-a5d7-f7b1f344b209	10
196eaea2-9900-4cee-9ed4-5a895e269342	e679f83d-2945-4b9f-a987-663a9dda0630	11
208e8e50-fdfd-49f4-885e-63a1d82bacce	596f5935-3694-4ef6-9b44-998425459e8a	1
21f1e72f-a8fc-4af1-9a99-0f41dd350427	2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	1
21f1e72f-a8fc-4af1-9a99-0f41dd350427	448e8871-f835-4aad-8428-279b90ae21ba	2
21f1e72f-a8fc-4af1-9a99-0f41dd350427	5d4a2702-331f-4574-8400-5c7da1d17a5b	3
21f1e72f-a8fc-4af1-9a99-0f41dd350427	60246017-3a33-4ad4-8ec3-66e47cf0a8d5	4
21f1e72f-a8fc-4af1-9a99-0f41dd350427	609dc2fa-cfe8-4726-81ae-4763378d7ba8	5
21f1e72f-a8fc-4af1-9a99-0f41dd350427	672f910e-25b4-4361-9dff-079f53023c40	6
21f1e72f-a8fc-4af1-9a99-0f41dd350427	6f095bab-9373-4482-a9e6-9a89f0816f2e	7
21f1e72f-a8fc-4af1-9a99-0f41dd350427	6f92dbcb-19fb-41a6-b520-92e86bd8425e	8
21f1e72f-a8fc-4af1-9a99-0f41dd350427	819f188f-a2ca-4946-82a1-9fb35db50fa8	9
21f1e72f-a8fc-4af1-9a99-0f41dd350427	b3da75bc-70bd-45f6-8a84-edad866138e3	10
21f1e72f-a8fc-4af1-9a99-0f41dd350427	c787a0b5-ddac-4f82-8d76-2e36c93ff138	11
21f1e72f-a8fc-4af1-9a99-0f41dd350427	d29e1418-1d14-4f4e-9c2d-0b0edf9b1b36	12
21f1e72f-a8fc-4af1-9a99-0f41dd350427	d69e852c-f635-4caa-8211-b82b6dbeb51d	13
21f1e72f-a8fc-4af1-9a99-0f41dd350427	d74f56c7-3f54-4be3-bc61-d1ce2756472e	14
21f1e72f-a8fc-4af1-9a99-0f41dd350427	f18bca2c-d54e-470a-8277-d12c566d5f91	15
21f1e72f-a8fc-4af1-9a99-0f41dd350427	f8e5d91e-1973-469d-a0f1-01aba151e440	16
21f1e72f-a8fc-4af1-9a99-0f41dd350427	feccd93e-c6cc-4500-bc9a-6d2bfbb22063	17
2405754e-79cf-40f1-8038-9457feed5f5a	09a0265a-39a6-4370-abc2-914463f5a500	1
2405754e-79cf-40f1-8038-9457feed5f5a	25a3f68f-0fde-4bf9-993a-15ac5c89c559	2
2405754e-79cf-40f1-8038-9457feed5f5a	e8156625-bceb-4770-9a34-10a3c106b767	3
2f7ee6fd-115f-4f44-b45a-e583b0576a59	6d04eea0-8f76-4928-8d8b-bf1432dfb182	1
2f7ee6fd-115f-4f44-b45a-e583b0576a59	a467fea2-ef7e-497b-ade5-6e76469154dd	2
2f7ee6fd-115f-4f44-b45a-e583b0576a59	af766c32-a7de-4de1-ac45-216ddfc07e97	3
2f7ee6fd-115f-4f44-b45a-e583b0576a59	b6cca451-9bd0-46a6-8db6-48c632ce8d88	4
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	0d990701-9ce0-4db8-982b-55700e6054e0	1
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	0ecafd78-6258-45d9-a37a-12d892414459	2
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	1653c88f-d90b-423e-8b38-3aa54860cb99	3
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	4
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	2ac2599f-1933-4cac-835f-4e6a43121b37	5
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	47111217-82c9-4d1d-97cb-acf67854743f	6
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	4bb1d6d5-9d7e-477f-92b0-13c44770cfb8	7
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	5553ab9d-ab62-41f5-8e6a-142be931ecfe	8
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	71bc51a4-0ed7-4ee2-a3cf-e89c1488cea0	9
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	75552068-b8f5-47e3-959e-b17744719375	10
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	11
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	12
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	9573044c-ce35-4f79-a6d9-1694eb32dd57	13
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	a467fea2-ef7e-497b-ade5-6e76469154dd	14
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	abad63f1-2a8e-406c-a8f2-0454d945fc8b	15
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	ac4404fe-f7ed-43e4-abbe-6885da7abf7d	16
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	bb58d920-56b6-4afe-a5d3-3626ddf1efb2	17
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	bc6042e5-d7a6-4e69-b224-957b34a1f4ac	18
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	bdf05763-f85a-4091-be47-730dfa2d9876	19
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	be8f34f5-ca5d-4e92-804a-7fcb2a60fd7b	20
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	cecfefb8-8c88-46cf-91ab-a306665162ce	21
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	da5dee00-8325-4fdc-a0a9-334324b68cc5	22
31fa8c3d-22b2-4be9-a2f1-e56cf8c2b51a	e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	23
34899e15-c18f-42db-88d5-51bba0f73a07	0cfac981-7ff3-477f-8e96-3688051f7eff	1
34899e15-c18f-42db-88d5-51bba0f73a07	ee0fe609-522a-4978-9d9f-e435aac37350	2
49305cb3-618d-4efe-8ea7-4b473e3af306	90f284a5-200c-4ad7-88c8-fd7f79450ced	1
49305cb3-618d-4efe-8ea7-4b473e3af306	b2a79960-224d-4308-9688-c9660fe52833	2
49305cb3-618d-4efe-8ea7-4b473e3af306	d36facf4-5070-433a-b9fe-58599af1c76a	3
49305cb3-618d-4efe-8ea7-4b473e3af306	fc370890-c3b4-44e8-a05d-55c6a698ed8b	4
1f2325c3-93cc-4e69-94b3-a8d244314da2	506a32bb-a3a6-41f2-8556-cd49bdee1af8	4
e71ae818-ac34-4727-9a71-22ad2f52b02c	426a0a7e-e4b3-4880-96b2-95888769984d	1
e71ae818-ac34-4727-9a71-22ad2f52b02c	90f284a5-200c-4ad7-88c8-fd7f79450ced	8
66c73498-c70c-4dea-b886-2a4d77c78b30	0b415d8e-734a-4ff0-b7fb-d0ed6737bf7b	1
66c73498-c70c-4dea-b886-2a4d77c78b30	168f1999-ab6f-4532-92e6-c0c8b54b0e47	2
66c73498-c70c-4dea-b886-2a4d77c78b30	22e9d665-6a37-4697-bbb3-956a69b0b573	3
66c73498-c70c-4dea-b886-2a4d77c78b30	318de17c-e8b8-4db6-8d53-c225c4303823	4
66c73498-c70c-4dea-b886-2a4d77c78b30	4c67223d-d4a7-4617-bf8e-019f3ebb6729	5
66c73498-c70c-4dea-b886-2a4d77c78b30	82176c5c-89e3-4b69-8cab-7fefef5b1879	6
66c73498-c70c-4dea-b886-2a4d77c78b30	85efe4fd-955b-4168-8754-99493ab889af	7
66c73498-c70c-4dea-b886-2a4d77c78b30	95642c20-f5db-4f5b-bae5-571d0be59c0e	8
66c73498-c70c-4dea-b886-2a4d77c78b30	a8551464-09c4-4530-ad6b-cd3450020d59	9
66c73498-c70c-4dea-b886-2a4d77c78b30	c926039a-e4a8-4007-a78b-b40c39cd62f9	10
66c73498-c70c-4dea-b886-2a4d77c78b30	f21e6d0b-71a3-454c-be66-f219008df5de	11
8024977e-cb4c-415e-ad87-1c6c2a23b704	130c07d6-e903-4e8f-8224-3389c26bc515	1
8024977e-cb4c-415e-ad87-1c6c2a23b704	72f3a119-648e-4baf-99cb-2410689f864c	2
8024977e-cb4c-415e-ad87-1c6c2a23b704	7c734fa1-b478-45b0-bc48-546195998d71	3
8024977e-cb4c-415e-ad87-1c6c2a23b704	ad2cfecc-8e1d-458c-99f7-fc4e9c2eee22	4
8024977e-cb4c-415e-ad87-1c6c2a23b704	d706a862-f0ed-4a84-8a0b-146bb58e2261	5
80e39880-7241-42d5-ac08-4f903ff3d494	78d060a9-5e4b-48a3-a64b-dff2fdb515f0	1
910c5e78-b30b-41f8-86aa-b1e790dc3528	3a9c898c-be9e-4d57-a5e6-9020acaac454	1
910c5e78-b30b-41f8-86aa-b1e790dc3528	4909ed42-2acf-4a6f-a5c6-0c15bbdabb56	2
910c5e78-b30b-41f8-86aa-b1e790dc3528	95642c20-f5db-4f5b-bae5-571d0be59c0e	3
910c5e78-b30b-41f8-86aa-b1e790dc3528	adea4783-10b8-4314-ae68-cb8c31f02dc4	4
910c5e78-b30b-41f8-86aa-b1e790dc3528	f21e6d0b-71a3-454c-be66-f219008df5de	5
9256a49c-9954-4bc8-8480-073dad6c6310	18ed8e8f-5979-4aca-85e2-3d535a9c4548	1
9256a49c-9954-4bc8-8480-073dad6c6310	5105d2c7-c5ad-44da-9d5a-937738f6105b	2
9256a49c-9954-4bc8-8480-073dad6c6310	5553ab9d-ab62-41f5-8e6a-142be931ecfe	3
9256a49c-9954-4bc8-8480-073dad6c6310	66be0c9f-1dba-40df-aa48-2e09bcbafb4f	4
9256a49c-9954-4bc8-8480-073dad6c6310	685d22c9-ebdd-4c9a-8b17-911107129bc9	5
9256a49c-9954-4bc8-8480-073dad6c6310	82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	6
9256a49c-9954-4bc8-8480-073dad6c6310	9573044c-ce35-4f79-a6d9-1694eb32dd57	7
9256a49c-9954-4bc8-8480-073dad6c6310	a78015d3-584a-4d73-8e32-548a71b8b2d3	8
9256a49c-9954-4bc8-8480-073dad6c6310	aeffd153-92fa-453b-bd15-4b3a7e61ce4d	9
9256a49c-9954-4bc8-8480-073dad6c6310	b74662a4-c5e9-4a92-9468-2fc47a3b4c2d	10
9256a49c-9954-4bc8-8480-073dad6c6310	f3ffc857-22c3-407f-9f1f-85cfcb1de9f1	11
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	1da74290-c064-4069-bb09-0b73a2b08b49	1
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	2
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	60964f68-31b0-4766-8633-d5c8c0b01baa	3
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	73a6e6dd-136d-4d5e-8024-b3e53681375b	4
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	94249b9b-94c4-4022-bd5b-7751dbbfc85c	5
59246c16-40c3-4222-8687-05156f432549	73a6e6dd-136d-4d5e-8024-b3e53681375b	3
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	5945ce1a-b5c6-493a-8627-bebaafe0592e	5
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	94292da6-5eec-4057-bd10-4ae5d06a3430	6
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	af766c32-a7de-4de1-ac45-216ddfc07e97	7
93224f5b-ca3d-4e5f-bd14-e1ae1d0198c9	b91d9c29-9627-486a-9d7f-65ab6e3c1924	8
728b5cb8-d21a-47c4-9495-74d050925d80	6375bdf3-93a0-4e0b-959c-6db7ef8bb497	0
f88c9fb6-2d01-46af-bae7-799f2b6e295d	bdf05763-f85a-4091-be47-730dfa2d9876	0
e250ce4b-75fc-4a4a-bbf7-d762c2d0d6b1	90d84d1c-30bb-4949-9be3-cdf04f6078a2	2
175e2618-7834-4b93-9333-43e19555addf	3ad0ca2f-ba02-4395-9e72-920276c17e55	3
f8350d7f-07b2-4466-b322-9cda7e14431d	6473fc5e-7762-4a09-94b9-e25197a05fd7	2
f8350d7f-07b2-4466-b322-9cda7e14431d	f0ae8d56-8b50-42e9-9222-fe179d74614f	6
66c73498-c70c-4dea-b886-2a4d77c78b30	6cc28cb0-4f35-49ae-b674-3182b7c5939c	15
30250d22-9dcf-424b-af19-63f14fa0c34e	6cc28cb0-4f35-49ae-b674-3182b7c5939c	6
0722ff26-e6c2-4b9a-b683-948e93daa6dc	e226d561-7079-4294-9fa9-b0d3a905b980	6
30250d22-9dcf-424b-af19-63f14fa0c34e	e226d561-7079-4294-9fa9-b0d3a905b980	9
a4c8894a-95ab-4b21-b812-8090608f4bc7	1653c88f-d90b-423e-8b38-3aa54860cb99	1
a4c8894a-95ab-4b21-b812-8090608f4bc7	1da74290-c064-4069-bb09-0b73a2b08b49	2
a4c8894a-95ab-4b21-b812-8090608f4bc7	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	3
a4c8894a-95ab-4b21-b812-8090608f4bc7	1ec56b2d-df16-48bc-98b3-a7a9b1e05644	4
a4c8894a-95ab-4b21-b812-8090608f4bc7	2daa28d1-9edd-4993-8547-539d8f9b2a1e	5
a4c8894a-95ab-4b21-b812-8090608f4bc7	2de9ad49-d28e-42d0-b257-38543e03988f	6
a4c8894a-95ab-4b21-b812-8090608f4bc7	365afb4d-ff8d-4b6c-852e-6c5e842d293d	7
a4c8894a-95ab-4b21-b812-8090608f4bc7	47111217-82c9-4d1d-97cb-acf67854743f	8
a4c8894a-95ab-4b21-b812-8090608f4bc7	4ed966f8-0f59-4c12-a135-54be64d925bf	9
a4c8894a-95ab-4b21-b812-8090608f4bc7	596f5935-3694-4ef6-9b44-998425459e8a	10
a4c8894a-95ab-4b21-b812-8090608f4bc7	60964f68-31b0-4766-8633-d5c8c0b01baa	11
a4c8894a-95ab-4b21-b812-8090608f4bc7	619d07ee-c770-4a3d-8072-f2b6a8f83547	12
a4c8894a-95ab-4b21-b812-8090608f4bc7	685d22c9-ebdd-4c9a-8b17-911107129bc9	13
a4c8894a-95ab-4b21-b812-8090608f4bc7	6d04eea0-8f76-4928-8d8b-bf1432dfb182	14
a4c8894a-95ab-4b21-b812-8090608f4bc7	73a6e6dd-136d-4d5e-8024-b3e53681375b	15
a4c8894a-95ab-4b21-b812-8090608f4bc7	80935951-a4ef-4529-a5ad-828616417213	16
a4c8894a-95ab-4b21-b812-8090608f4bc7	82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	17
a4c8894a-95ab-4b21-b812-8090608f4bc7	90d84d1c-30bb-4949-9be3-cdf04f6078a2	18
a4c8894a-95ab-4b21-b812-8090608f4bc7	90f284a5-200c-4ad7-88c8-fd7f79450ced	19
a4c8894a-95ab-4b21-b812-8090608f4bc7	94292da6-5eec-4057-bd10-4ae5d06a3430	20
a4c8894a-95ab-4b21-b812-8090608f4bc7	9573044c-ce35-4f79-a6d9-1694eb32dd57	21
a4c8894a-95ab-4b21-b812-8090608f4bc7	9cbff467-d7e1-4f70-8b64-d71637374255	22
a4c8894a-95ab-4b21-b812-8090608f4bc7	9ef37779-6967-4ce5-8d70-c6e94ae9ed14	23
a4c8894a-95ab-4b21-b812-8090608f4bc7	a78015d3-584a-4d73-8e32-548a71b8b2d3	24
a4c8894a-95ab-4b21-b812-8090608f4bc7	ac4404fe-f7ed-43e4-abbe-6885da7abf7d	25
a4c8894a-95ab-4b21-b812-8090608f4bc7	acf90969-c881-441d-91ca-7c94834b1385	26
a4c8894a-95ab-4b21-b812-8090608f4bc7	af766c32-a7de-4de1-ac45-216ddfc07e97	27
a4c8894a-95ab-4b21-b812-8090608f4bc7	b2a79960-224d-4308-9688-c9660fe52833	28
a4c8894a-95ab-4b21-b812-8090608f4bc7	b91d9c29-9627-486a-9d7f-65ab6e3c1924	29
a4c8894a-95ab-4b21-b812-8090608f4bc7	bc6042e5-d7a6-4e69-b224-957b34a1f4ac	30
a4c8894a-95ab-4b21-b812-8090608f4bc7	bdf05763-f85a-4091-be47-730dfa2d9876	31
a4c8894a-95ab-4b21-b812-8090608f4bc7	ca905226-6ae6-4de0-b59b-b4f57feecd7e	32
a4c8894a-95ab-4b21-b812-8090608f4bc7	d36facf4-5070-433a-b9fe-58599af1c76a	33
a4c8894a-95ab-4b21-b812-8090608f4bc7	e8156625-bceb-4770-9a34-10a3c106b767	34
a4c8894a-95ab-4b21-b812-8090608f4bc7	fc370890-c3b4-44e8-a05d-55c6a698ed8b	35
cc99a20c-e918-4d71-9bba-593cd5ac6f12	94249b9b-94c4-4022-bd5b-7751dbbfc85c	0
cc99a20c-e918-4d71-9bba-593cd5ac6f12	16e6375d-ce10-4c15-9703-28cb3b6e1736	3
cc99a20c-e918-4d71-9bba-593cd5ac6f12	625d7065-500b-4ffe-9d61-ebaa7e0039f6	4
1f2325c3-93cc-4e69-94b3-a8d244314da2	3afb5394-3426-4dab-b36f-1f2801078d70	5
cc99a20c-e918-4d71-9bba-593cd5ac6f12	2ac2599f-1933-4cac-835f-4e6a43121b37	2
ad28bfaa-cb5b-4c1d-8ad7-2a61ab38486d	767653da-5be0-405c-bbca-b2c82aa92919	1
ad28bfaa-cb5b-4c1d-8ad7-2a61ab38486d	78d060a9-5e4b-48a3-a64b-dff2fdb515f0	2
ad28bfaa-cb5b-4c1d-8ad7-2a61ab38486d	c43616a3-1ff4-4ae5-bbfc-9f485a09cb5f	3
ad28bfaa-cb5b-4c1d-8ad7-2a61ab38486d	c7a96266-53db-45c4-af43-cb2fb06026ec	4
ad28bfaa-cb5b-4c1d-8ad7-2a61ab38486d	d2c868f1-64b8-43bd-bead-e3322fa37082	5
afe899a5-184d-48ba-bf85-4cd7f9fc7ddf	bb58d920-56b6-4afe-a5d3-3626ddf1efb2	1
b85f5ed1-83d7-45cf-9554-0a77af0c0e7f	e21938f5-c84c-4104-89fd-a030234cb5de	1
ba6631f1-c97a-477c-9476-ecd44f05b610	13b14810-0b22-4d99-a35d-26671ebd22de	1
ba6631f1-c97a-477c-9476-ecd44f05b610	1ec56b2d-df16-48bc-98b3-a7a9b1e05644	2
ba6631f1-c97a-477c-9476-ecd44f05b610	32340036-a2f2-45d9-b99b-c8b096bbf32b	3
ba6631f1-c97a-477c-9476-ecd44f05b610	3f42ba8b-9f0d-496f-aad9-df09e37524c4	4
ba6631f1-c97a-477c-9476-ecd44f05b610	4bb1d6d5-9d7e-477f-92b0-13c44770cfb8	5
ba6631f1-c97a-477c-9476-ecd44f05b610	4dd47272-1cf4-40e5-b703-74223bca86aa	6
ba6631f1-c97a-477c-9476-ecd44f05b610	66be0c9f-1dba-40df-aa48-2e09bcbafb4f	7
ba6631f1-c97a-477c-9476-ecd44f05b610	68174184-70bc-4b58-a256-56cfd3578791	8
ba6631f1-c97a-477c-9476-ecd44f05b610	6d520f20-b110-410e-8c52-5f2e3aa1e629	9
ba6631f1-c97a-477c-9476-ecd44f05b610	be8f34f5-ca5d-4e92-804a-7fcb2a60fd7b	10
ba6631f1-c97a-477c-9476-ecd44f05b610	de4efe17-fa92-40a5-b5bb-5764d9edb34a	11
ba6631f1-c97a-477c-9476-ecd44f05b610	e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	12
ba6631f1-c97a-477c-9476-ecd44f05b610	f536e2f1-f0a2-49bc-8c70-f36bafc4d381	13
c2550bae-6cdf-4b1a-bd1a-7ad42f2695e2	71bc51a4-0ed7-4ee2-a3cf-e89c1488cea0	1
d3c58237-4a0a-4175-904f-3e029bfae19e	4ed966f8-0f59-4c12-a135-54be64d925bf	1
d3c58237-4a0a-4175-904f-3e029bfae19e	b6ce3328-3887-47ec-b5d6-aa45464e96d3	2
d3c58237-4a0a-4175-904f-3e029bfae19e	bc6042e5-d7a6-4e69-b224-957b34a1f4ac	3
7be48e49-cb44-4657-855e-ce56eb592935	0bcc5253-5c87-4161-963d-d0030badc293	6
f366477f-9794-40bf-aad4-e0eb431f56ae	80e37977-be49-47f8-83d7-7ef68e47d578	2
cc99a20c-e918-4d71-9bba-593cd5ac6f12	4aadb1b6-308a-4532-9df7-601e80d0de60	1
e71ae818-ac34-4727-9a71-22ad2f52b02c	b91d9c29-9627-486a-9d7f-65ab6e3c1924	0
e57101a4-b7bc-4484-8de7-41b082dd9e74	1653c88f-d90b-423e-8b38-3aa54860cb99	1
e57101a4-b7bc-4484-8de7-41b082dd9e74	1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	2
e57101a4-b7bc-4484-8de7-41b082dd9e74	47111217-82c9-4d1d-97cb-acf67854743f	3
e57101a4-b7bc-4484-8de7-41b082dd9e74	71bc51a4-0ed7-4ee2-a3cf-e89c1488cea0	4
e57101a4-b7bc-4484-8de7-41b082dd9e74	77637b65-3285-46b7-991d-2d4be54c7f98	5
e57101a4-b7bc-4484-8de7-41b082dd9e74	7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	6
e57101a4-b7bc-4484-8de7-41b082dd9e74	82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	7
e57101a4-b7bc-4484-8de7-41b082dd9e74	9046c00f-4b8a-4e29-adad-b98dfe116fb9	8
e57101a4-b7bc-4484-8de7-41b082dd9e74	9573044c-ce35-4f79-a6d9-1694eb32dd57	9
e57101a4-b7bc-4484-8de7-41b082dd9e74	abad63f1-2a8e-406c-a8f2-0454d945fc8b	10
e57101a4-b7bc-4484-8de7-41b082dd9e74	bdf05763-f85a-4091-be47-730dfa2d9876	11
e57101a4-b7bc-4484-8de7-41b082dd9e74	cecfefb8-8c88-46cf-91ab-a306665162ce	12
e695ea06-fd05-4cf7-a0d8-c49987e9e63d	e6a8c5a7-27b2-4382-ae96-840c5842434f	1
f366477f-9794-40bf-aad4-e0eb431f56ae	71029919-8d46-4f3b-be73-bb03e7e439d2	0
f17ee86d-aa66-4779-84cd-78b9904e27d9	07a4f22c-f509-470d-b953-8460a0c75c58	1
f17ee86d-aa66-4779-84cd-78b9904e27d9	20071b94-7c71-4aba-a90d-b17f64967c97	2
f17ee86d-aa66-4779-84cd-78b9904e27d9	32340036-a2f2-45d9-b99b-c8b096bbf32b	3
f17ee86d-aa66-4779-84cd-78b9904e27d9	3f42ba8b-9f0d-496f-aad9-df09e37524c4	4
f17ee86d-aa66-4779-84cd-78b9904e27d9	4dd47272-1cf4-40e5-b703-74223bca86aa	5
e71ae818-ac34-4727-9a71-22ad2f52b02c	6d04eea0-8f76-4928-8d8b-bf1432dfb182	3
a918f0dc-2265-4826-a995-71b1c6c3d59d	73a6e6dd-136d-4d5e-8024-b3e53681375b	3
ddfb393b-d84f-4de1-a31e-30a558aaac1a	619d07ee-c770-4a3d-8072-f2b6a8f83547	0
ddfb393b-d84f-4de1-a31e-30a558aaac1a	3ba2e787-da94-4c20-9546-640efb2de8c9	2
36e15af3-497e-410e-a99b-8d6238c863e7	08ba8b0b-0307-4524-9280-04543a012dfe	1
ddfb393b-d84f-4de1-a31e-30a558aaac1a	75552068-b8f5-47e3-959e-b17744719375	1
ddfb393b-d84f-4de1-a31e-30a558aaac1a	9cbff467-d7e1-4f70-8b64-d71637374255	3
f5d5b718-edef-42e2-b9c3-70ec74b02a50	1b3c3590-bc23-41a5-888f-7eae9432872a	2
e71ae818-ac34-4727-9a71-22ad2f52b02c	a467fea2-ef7e-497b-ade5-6e76469154dd	2
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	ca905226-6ae6-4de0-b59b-b4f57feecd7e	1
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	314a3900-f987-4107-bad6-da4ef158ef42	6
3983b504-56c7-434a-b632-31a12bb87edb	27090a94-576d-4f04-b11f-501a794b53e7	8
67066979-e6c8-41a4-a10c-141c28da09c8	735fce8d-9294-4b8e-8df0-b0110a97620e	0
3983b504-56c7-434a-b632-31a12bb87edb	08ba8b0b-0307-4524-9280-04543a012dfe	4
f17ee86d-aa66-4779-84cd-78b9904e27d9	66be0c9f-1dba-40df-aa48-2e09bcbafb4f	6
f17ee86d-aa66-4779-84cd-78b9904e27d9	68174184-70bc-4b58-a256-56cfd3578791	7
f17ee86d-aa66-4779-84cd-78b9904e27d9	de4efe17-fa92-40a5-b5bb-5764d9edb34a	8
f17ee86d-aa66-4779-84cd-78b9904e27d9	e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	9
f709887e-4708-4f63-a8aa-5179317e43ba	246e5bac-1a3c-4ef1-ac3b-dd059212be33	1
f709887e-4708-4f63-a8aa-5179317e43ba	2ddc2572-ee64-4769-98d4-a93d84299bef	2
f709887e-4708-4f63-a8aa-5179317e43ba	40d39b8d-8402-4a45-b2b6-f6ac1f3fe592	3
f709887e-4708-4f63-a8aa-5179317e43ba	5d46fe39-084b-41b3-9f5b-45e37bed517d	4
f709887e-4708-4f63-a8aa-5179317e43ba	c1579f77-3977-4956-9082-594d7edaaaf7	5
1f2325c3-93cc-4e69-94b3-a8d244314da2	368c7896-f721-411e-bf26-247801866071	6
59246c16-40c3-4222-8687-05156f432549	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	1
e71ae818-ac34-4727-9a71-22ad2f52b02c	484b551d-cefc-4c20-9e82-e073b1828978	4
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	9cbff467-d7e1-4f70-8b64-d71637374255	2
fdd754fd-79c7-405b-9c27-3e132c9d9fc4	9b116210-dc93-42d6-9a56-9509d699c445	7
a918f0dc-2265-4826-a995-71b1c6c3d59d	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	1
d1821967-861e-4381-ac28-fff3d62ccfab	0ea1a418-6d41-45b0-9304-b5af470af768	2
f88c9fb6-2d01-46af-bae7-799f2b6e295d	2f7832fa-6463-4e95-9c87-63c075e9bf13	3
e250ce4b-75fc-4a4a-bbf7-d762c2d0d6b1	5084e3f8-7e66-4c3e-bdb3-deacdc4f1720	3
f8350d7f-07b2-4466-b322-9cda7e14431d	038835de-1e2d-4608-900f-98827ff80582	3
ba6631f1-c97a-477c-9476-ecd44f05b610	7dc22d62-098a-448a-85f9-b624289dcaae	14
175e2618-7834-4b93-9333-43e19555addf	29b1707d-0483-481d-bde2-47ee88ce79f1	2
175e2618-7834-4b93-9333-43e19555addf	14e8d184-addc-4cf2-9210-ba16d4437c5c	4
30250d22-9dcf-424b-af19-63f14fa0c34e	b950e9a6-7d9a-4474-ba17-c52c27a26845	7
67066979-e6c8-41a4-a10c-141c28da09c8	82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	6
67066979-e6c8-41a4-a10c-141c28da09c8	5a4f363c-b6fe-4962-b6b3-0c6de403d02a	1
36e15af3-497e-410e-a99b-8d6238c863e7	5553ab9d-ab62-41f5-8e6a-142be931ecfe	2
f5d5b718-edef-42e2-b9c3-70ec74b02a50	e78abdcc-17c8-4069-9382-ee6b58069340	3
66c73498-c70c-4dea-b886-2a4d77c78b30	b950e9a6-7d9a-4474-ba17-c52c27a26845	16
30250d22-9dcf-424b-af19-63f14fa0c34e	f6d72fa6-f542-408c-bcef-700fe9acbc05	10
0722ff26-e6c2-4b9a-b683-948e93daa6dc	f6d72fa6-f542-408c-bcef-700fe9acbc05	7
7be48e49-cb44-4657-855e-ce56eb592935	994091f0-0b3b-48dc-a1bd-de161224df7a	7
3983b504-56c7-434a-b632-31a12bb87edb	acf90969-c881-441d-91ca-7c94834b1385	5
3983b504-56c7-434a-b632-31a12bb87edb	18ed8e8f-5979-4aca-85e2-3d535a9c4548	1
f366477f-9794-40bf-aad4-e0eb431f56ae	9d909578-4713-423a-b5df-7a8d40ec0c1d	1
728b5cb8-d21a-47c4-9495-74d050925d80	5800d511-ae7b-4682-835a-a8a623bce07d	4
\.


--
-- Data for Name: tag_stories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_stories" ("tag_id", "story_id") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "email", "display_name", "created_at", "multi_sense_strategy", "is_admin") FROM stdin;
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	net599930@gmail.com	Net	2026-08-11 17:19:49.793349+00	lowest	t
9bef0cde-6915-43cb-a0d7-37b590f7f151	\N	\N	2026-08-11 20:44:58.268845+00	lowest	f
40ac697c-48ff-4f3a-b479-0e8c6d6ea3a0	\N	\N	2026-08-11 20:55:25.700838+00	lowest	f
f544881d-7515-4568-a8f0-bb620f4cec66	k.black000000@gmail.com	K Black	2026-08-11 20:51:57.584242+00	lowest	f
c76fb13a-017f-49e1-9ac9-70dc3c6d7682	\N	\N	2026-08-11 21:08:17.938963+00	lowest	f
46fae9b4-ed74-4139-ba79-c207e73da2fb	\N	\N	2026-08-11 21:12:21.933477+00	lowest	f
45f6b261-2c1b-4c01-8e24-703d7bbc7f74	\N	\N	2026-08-11 21:21:26.012961+00	lowest	f
8acd1e7c-40e6-400c-8429-9a7ba473299c	\N	\N	2026-08-11 21:30:06.179308+00	lowest	f
215928c5-9268-4e42-9560-3426b3b63a41	nthings778@gmail.com	New Things	2026-08-13 16:34:33.359553+00	lowest	f
3924c36d-82d6-4b65-b441-61a63256cf68	\N	\N	2026-08-18 15:47:52.471507+00	lowest	f
687cbee6-3f81-49a1-9915-c7babd17b096	\N	\N	2026-08-21 13:16:28.934283+00	lowest	f
b249485c-b7a9-40fd-bc98-776588cc987d	ftp000000000@gmail.com	Ftp	2026-09-22 11:59:23.597223+00	lowest	f
74c3ff16-f356-4a1d-8476-79a04cdc3940	\N	\N	2026-10-04 11:16:31.867785+00	lowest	f
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	\N	\N	2026-10-04 12:10:46.335242+00	lowest	f
b068ddfe-ae63-4528-9156-ca6285630043	\N	\N	2026-10-14 12:17:27.645358+00	lowest	f
71b295da-88b8-4214-91c2-72ed945b6a36	thail3arning@gmail.com	Thai 101	2026-10-15 10:04:08.315653+00	lowest	f
\.


--
-- Data for Name: user_definition_knowledge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_definition_knowledge" ("user_id", "definition_id", "rating", "review_count", "last_reviewed_at", "created_at", "updated_at", "bookmarked", "bookmarked_at") FROM stdin;
40ac697c-48ff-4f3a-b479-0e8c6d6ea3a0	a455b186-07cc-44f4-9dd1-53ddd0f01763	4	1	2026-08-11 20:55:44.349+00	2026-08-11 20:55:44.863485+00	2026-08-11 20:55:44.863485+00	f	\N
f544881d-7515-4568-a8f0-bb620f4cec66	285cc2d6-aecf-4aaa-8c76-c8a72204e35d	4	1	2026-08-11 20:57:06.1+00	2026-08-11 20:57:06.710362+00	2026-08-11 20:57:06.710362+00	f	\N
f544881d-7515-4568-a8f0-bb620f4cec66	2a197f22-8828-4008-b50d-a3cc245da22e	4	1	2026-08-11 21:22:53.863361+00	2026-08-11 21:22:52.702474+00	2026-08-11 21:22:54.377792+00	f	\N
f544881d-7515-4568-a8f0-bb620f4cec66	09bddbde-16f9-4d2f-9d54-f074f05fc5f8	3	1	2026-08-11 21:22:56.899738+00	2026-08-11 21:22:57.377358+00	2026-08-11 21:22:57.377358+00	f	\N
f544881d-7515-4568-a8f0-bb620f4cec66	9d59a19e-4474-499c-9b4d-f93e71cf2ae3	2	1	2026-08-11 21:22:59.97623+00	2026-08-11 21:23:00.471805+00	2026-08-11 21:23:00.471805+00	f	\N
f544881d-7515-4568-a8f0-bb620f4cec66	ef9ec75b-c715-41ac-a0d8-4e4ba5a96288	3	1	2026-08-11 21:23:01.700803+00	2026-08-11 21:23:02.192734+00	2026-08-11 21:23:02.192734+00	f	\N
f544881d-7515-4568-a8f0-bb620f4cec66	2bfeedca-71d4-437d-863a-5868e41596eb	3	1	2026-08-11 21:23:03.30889+00	2026-08-11 21:23:03.77851+00	2026-08-11 21:23:03.77851+00	f	\N
f544881d-7515-4568-a8f0-bb620f4cec66	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20	3	1	2026-08-11 21:23:04.349224+00	2026-08-11 21:23:04.820426+00	2026-08-11 21:23:04.820426+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	09bddbde-16f9-4d2f-9d54-f074f05fc5f8	4	1	2026-08-13 18:13:18.499422+00	2026-08-13 18:13:19.100807+00	2026-08-13 18:13:19.100807+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d11362f4-fd2a-41b6-8e5f-249a44675cd4	4	1	2026-08-13 18:13:22.095949+00	2026-08-13 18:13:22.553496+00	2026-08-13 18:13:22.553496+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	70acf9d5-5bee-4dae-8503-6fec6c823d20	4	1	2026-08-13 18:13:22.09533+00	2026-08-13 18:13:22.559296+00	2026-08-13 18:13:22.559296+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0a980715-0795-4077-89a2-bd7319482f37	4	1	2026-08-13 18:13:22.093621+00	2026-08-13 18:13:22.561394+00	2026-08-13 18:13:22.561394+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6c4e3283-2c6c-4729-bd04-c24decee1951	4	1	2026-08-13 18:13:22.094627+00	2026-08-13 18:13:22.557103+00	2026-08-13 18:13:22.557103+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7c303118-db8c-4fb3-82db-304cdac779a7	4	1	2026-08-13 18:13:24.812391+00	2026-08-13 18:13:25.198997+00	2026-08-13 18:13:25.198997+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	dfc292f7-92c5-4f8a-834b-c691d649c1a4	4	1	2026-08-13 18:13:24.813192+00	2026-08-13 18:13:25.212222+00	2026-08-13 18:13:25.212222+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5428d2e2-1ff8-4744-87f6-0173ed850199	4	1	2026-08-13 18:13:24.813829+00	2026-08-13 18:13:25.230486+00	2026-08-13 18:13:25.230486+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0daaf882-9b58-44c5-aeb9-c5199e5b1a7c	4	1	2026-08-13 18:13:35.675106+00	2026-08-13 18:13:36.139136+00	2026-08-13 18:13:36.139136+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	61cfcd09-b00b-4122-891e-267f691b2b29	4	1	2026-08-13 18:13:37.457162+00	2026-08-13 18:13:37.875871+00	2026-08-13 18:13:37.875871+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b	4	1	2026-08-13 18:13:37.458383+00	2026-08-13 18:13:37.88826+00	2026-08-13 18:13:37.88826+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c3e5f0f1-8dcc-4135-b332-01d331ea7950	4	1	2026-08-13 18:13:37.457876+00	2026-08-13 18:13:37.888308+00	2026-08-13 18:13:37.888308+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a34549b7-4054-49cb-b1df-d8360a177721	4	1	2026-08-13 18:13:39.356226+00	2026-08-13 18:13:39.761072+00	2026-08-13 18:13:39.761072+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	290c633d-51b4-456b-a14a-226ccc5ec2b3	4	1	2026-08-13 18:13:39.35682+00	2026-08-13 18:13:39.761126+00	2026-08-13 18:13:39.761126+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2d7c1c46-f7c9-43f4-bbaf-e6d8ef57413e	4	1	2026-08-13 18:13:39.357882+00	2026-08-13 18:13:39.791481+00	2026-08-13 18:13:39.791481+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c7633828-73b9-4409-95c8-92bff803725b	4	1	2026-08-13 18:13:39.357349+00	2026-08-13 18:13:39.794354+00	2026-08-13 18:13:39.794354+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1467dd10-a147-4fd5-b72b-bac1ce6880b5	4	1	2026-08-13 18:13:41.320884+00	2026-08-13 18:13:41.757223+00	2026-08-13 18:13:41.757223+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b881ffcc-257e-48a9-be07-23036ec93523	4	1	2026-08-13 18:13:43.3545+00	2026-08-13 18:13:43.885719+00	2026-08-13 18:13:43.885719+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	52a6fdba-df7c-41b1-97d9-fc3d98c717ae	4	1	2026-08-13 18:13:43.353847+00	2026-08-13 18:13:43.885357+00	2026-08-13 18:13:43.885357+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	48150d1e-7836-40a2-ba5d-93f9e4002f55	4	1	2026-08-13 18:13:43.35299+00	2026-08-13 18:13:43.891115+00	2026-08-13 18:13:43.891115+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1f8cf53b-62fc-477b-89cd-f7b3525409cd	4	1	2026-08-13 18:13:45.282386+00	2026-08-13 18:13:45.711402+00	2026-08-13 18:13:45.711402+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6b6a7b5b-b4af-4c41-9893-922f218d9a2a	4	1	2026-08-13 18:13:45.283125+00	2026-08-13 18:13:45.712225+00	2026-08-13 18:13:45.712225+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8cb977c6-a283-4879-bbb0-a7957ae728ab	4	1	2026-08-13 18:13:45.283676+00	2026-08-13 18:13:45.718336+00	2026-08-13 18:13:45.718336+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	89bca261-d27e-489a-804d-1b3650c60c9e	4	1	2026-08-13 18:13:47.279308+00	2026-08-13 18:13:47.738268+00	2026-08-13 18:13:47.738268+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ecc60b37-84e0-424d-8d12-6d889b396d7d	4	1	2026-08-13 18:13:49.695572+00	2026-08-13 18:13:50.086039+00	2026-08-13 18:13:50.086039+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	98d16472-3085-4fef-b3e3-ef1b27516020	4	1	2026-08-13 18:13:49.696344+00	2026-08-13 18:13:50.086039+00	2026-08-13 18:13:50.086039+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	065d3f35-8633-4c28-a152-5f282ab89af7	4	1	2026-08-13 18:13:49.696635+00	2026-08-13 18:13:50.090632+00	2026-08-13 18:13:50.090632+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8b28f5db-7bd4-498a-8dee-02b1e572aefa	4	1	2026-08-13 18:13:49.695951+00	2026-08-13 18:13:50.090503+00	2026-08-13 18:13:50.090503+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8cdd39c7-4dec-4572-82db-1d019f78b8d0	4	1	2026-08-13 18:13:51.748603+00	2026-08-13 18:13:52.242993+00	2026-08-13 18:13:52.242993+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	dbda2039-34c6-40da-ac2d-931d0a14f230	4	1	2026-08-13 18:13:51.749154+00	2026-08-13 18:13:52.258527+00	2026-08-13 18:13:52.258527+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3fb918b9-3bf2-4ef3-9a42-c8336a4baed0	4	1	2026-08-13 18:13:51.748089+00	2026-08-13 18:13:52.278656+00	2026-08-13 18:13:52.278656+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4fd75909-b453-4de2-b065-55fd6a487aef	4	1	2026-08-13 18:13:54.056227+00	2026-08-13 18:13:54.447802+00	2026-08-13 18:13:54.447802+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f6696507-34b4-4ed0-83ca-925113531271	4	1	2026-08-13 18:13:54.056991+00	2026-08-13 18:13:54.449771+00	2026-08-13 18:13:54.449771+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9af7a2ab-2d70-424a-81ff-e5e9f370ca76	4	1	2026-08-13 18:13:57.793995+00	2026-08-13 18:13:58.160784+00	2026-08-13 18:13:58.160784+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6f034e1b-3c62-41d4-9f68-862d5c769c9a	4	1	2026-08-13 18:13:57.795104+00	2026-08-13 18:13:58.179144+00	2026-08-13 18:13:58.179144+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6a910dab-af90-4f2c-be85-a41776c4fd82	4	1	2026-08-13 18:13:57.79455+00	2026-08-13 18:13:58.178365+00	2026-08-13 18:13:58.178365+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	20a758cf-142a-4345-931b-3dd8c9cc075f	4	1	2026-08-13 18:13:57.795601+00	2026-08-13 18:13:58.186239+00	2026-08-13 18:13:58.186239+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	74cfe458-3890-480d-bc36-d69dbabef539	4	1	2026-08-13 18:14:00.022364+00	2026-08-13 18:14:00.366441+00	2026-08-13 18:14:00.366441+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c2d232de-212b-4304-a683-20fc1e11123f	4	1	2026-08-13 18:14:00.022927+00	2026-08-13 18:14:00.386034+00	2026-08-13 18:14:00.386034+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6b8c8002-71c1-4225-b296-e2d33c91cac3	4	1	2026-08-13 18:14:02.278089+00	2026-08-13 18:14:02.671717+00	2026-08-13 18:14:02.671717+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	95aa2fa2-ef9f-40c7-8590-8efb6bb7eff4	4	1	2026-08-13 18:14:02.27859+00	2026-08-13 18:14:03.018226+00	2026-08-13 18:14:03.018226+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3ad5c645-91d7-49d3-b950-895982b17cd3	3	1	2026-08-13 18:14:05.285217+00	2026-08-13 18:14:02.668578+00	2026-08-13 18:14:05.685644+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f6d9301e-3591-48b7-8fb6-783c4c2849a9	4	1	2026-08-13 18:14:41.839983+00	2026-08-13 18:14:42.248746+00	2026-08-13 18:14:42.248746+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a2900d78-2478-4f29-b44d-6863eeb4e13d	3	1	2026-08-13 18:14:45.894216+00	2026-08-13 18:14:40.709246+00	2026-08-13 18:14:46.266701+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c4beb48c-a30b-41b7-bfcc-1287b9fbb1a3	4	1	2026-08-13 18:15:08.863254+00	2026-08-13 18:15:09.309409+00	2026-08-13 18:15:09.309409+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6e2c1407-639a-47c1-b275-9c20c50cbaf4	4	1	2026-08-13 18:15:08.863856+00	2026-08-13 18:15:09.325129+00	2026-08-13 18:15:09.325129+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c9af9d0e-2c27-4a74-a239-eb9e03b370fc	4	1	2026-08-13 18:15:13.614213+00	2026-08-13 18:15:14.267617+00	2026-08-13 18:15:14.267617+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6854f448-1f2a-4b65-b756-a34bd714cf44	4	1	2026-08-13 18:15:13.614751+00	2026-08-13 18:15:14.292269+00	2026-08-13 18:15:14.292269+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0b9c45b0-a08f-4528-8f8d-ae64b4885434	4	1	2026-08-13 18:15:13.613445+00	2026-08-13 18:15:14.311735+00	2026-08-13 18:15:14.311735+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c8736c6b-c84e-46d8-bd1d-f0e3ada0bb5e	4	1	2026-08-13 18:15:21.940758+00	2026-08-13 18:15:22.401939+00	2026-08-13 18:15:22.401939+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7fdbe1c8-77d0-44e8-bec4-d8504a53faec	4	1	2026-08-13 18:15:21.942025+00	2026-08-13 18:15:22.433134+00	2026-08-13 18:15:22.433134+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a8e4e70a-4c48-4a7e-842c-51269fd310e8	4	1	2026-08-13 18:15:24.129714+00	2026-08-13 18:15:24.498191+00	2026-08-13 18:15:24.498191+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1975ec73-506b-4029-bcc8-17daf0bff9b4	4	1	2026-08-13 18:15:24.12893+00	2026-08-13 18:15:24.498028+00	2026-08-13 18:15:24.498028+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	aa97989e-7b70-4036-8c1f-adb05cbcca5a	3	1	2026-08-13 18:15:34.948881+00	2026-08-13 18:15:35.330723+00	2026-08-13 18:15:35.330723+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	01c172e0-1edc-4b37-aa0a-95a52591808e	4	1	2026-08-13 18:15:40.990861+00	2026-08-13 18:15:41.376272+00	2026-08-13 18:15:41.376272+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2f25cc1c-10f0-4e4b-ae8b-434b50c9dd3b	4	1	2026-08-13 18:15:40.991771+00	2026-08-13 18:15:41.543474+00	2026-08-13 18:15:41.543474+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2f7557d2-9abe-46b6-9806-e94a9b5879f3	4	1	2026-08-13 18:18:37.894849+00	2026-08-13 18:18:38.27524+00	2026-08-13 18:18:38.27524+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0cf57a0d-7579-4b8b-9dd9-0acc1a8b363a	4	1	2026-10-14 13:36:14.494499+00	2026-08-13 17:19:19.611419+00	2026-10-14 13:36:31.597175+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ec88f280-c529-4384-acfc-3b3bbcb45855	4	1	2026-10-14 16:11:23.853815+00	2026-08-13 18:15:22.396992+00	2026-10-14 16:11:37.155091+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a455b186-07cc-44f4-9dd1-53ddd0f01763	0	1	2026-10-17 17:00:37.524113+00	2026-08-13 18:13:36.140503+00	2026-10-17 17:00:39.098925+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9a823d89-75e7-42fc-b659-0cc512db39eb	4	1	2026-10-14 16:14:23.040547+00	2026-08-13 18:13:47.722277+00	2026-10-14 16:14:27.63089+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c1973d35-044f-494d-8a09-e6a0360f863d	4	1	2026-10-14 16:11:27.0714+00	2026-08-13 18:13:52.265883+00	2026-10-14 16:11:39.057498+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5b7e950c-1693-4755-984f-18a0b24bd71c	4	1	2026-10-14 16:11:28.601136+00	2026-08-13 18:13:50.090503+00	2026-10-14 16:11:40.303877+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	36f8633a-fb05-466b-93e8-eaaf1a12d305	4	1	2026-10-14 16:11:28.601136+00	2026-08-13 18:15:22.566551+00	2026-10-14 16:11:40.303877+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	770dd9be-8c86-41fe-bce2-f89c121497d6	4	1	2026-10-14 16:11:32.54684+00	2026-08-13 18:13:58.336894+00	2026-10-14 16:11:41.770427+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	20d33e84-aa7d-42c9-8da5-d5d70bf830f0	4	1	2026-10-18 18:38:22.332596+00	2026-08-13 18:14:40.726215+00	2026-10-18 18:38:25.765557+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2a197f22-8828-4008-b50d-a3cc245da22e	4	1	2026-10-14 16:11:39.049446+00	2026-08-13 18:13:19.118534+00	2026-10-14 16:11:42.832512+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	285cc2d6-aecf-4aaa-8c76-c8a72204e35d	4	1	2026-10-14 16:11:39.049446+00	2026-08-13 18:13:18.954614+00	2026-10-14 16:11:42.832512+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	4	1	2026-10-14 16:14:23.95087+00	2026-08-13 18:13:43.894607+00	2026-10-14 16:14:28.382425+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d97480ca-3bda-4d09-87e1-19b8a14a2f7d	4	1	2026-10-14 16:15:11.34355+00	2026-08-13 18:13:41.764144+00	2026-10-14 16:15:14.339225+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c25d3152-bcd0-4112-903d-901968ec1d14	4	1	2026-10-14 16:15:16.216982+00	2026-08-13 18:13:58.173809+00	2026-10-14 16:15:19.217175+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	05814f0b-5390-4b98-b689-ae1ed953620b	4	1	2026-10-16 18:41:36.884696+00	2026-08-13 18:14:37.151088+00	2026-10-16 18:41:38.638648+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	00ccb0b7-af00-416f-8292-1c089fd77d5f	4	1	2026-10-16 18:41:36.884696+00	2026-08-13 18:13:39.756135+00	2026-10-16 18:41:38.638648+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	02512113-58d3-4d33-aa21-5a4e74536ee1	4	1	2026-08-13 18:15:40.99144+00	2026-08-13 18:15:41.550557+00	2026-08-13 18:15:41.550557+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f9453e7b-7ab2-4f6e-ae3f-ccca2095473d	1	1	2026-08-13 18:17:15.718371+00	2026-08-13 18:17:16.123266+00	2026-08-13 18:17:16.123266+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a7bd3517-7442-4e31-880e-3dcaae2edde0	4	1	2026-08-13 18:17:50.994298+00	2026-08-13 18:17:51.387644+00	2026-08-13 18:17:51.387644+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d2658b3c-1389-4d33-b469-63b9b0ab5c53	4	1	2026-08-13 18:17:56.67238+00	2026-08-13 18:17:57.237763+00	2026-08-13 18:17:57.237763+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2778776c-7ac8-4598-8461-8112dc805f39	4	1	2026-08-13 18:18:22.667547+00	2026-08-13 18:18:23.045041+00	2026-08-13 18:18:23.045041+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	487bc441-12c9-4e54-b241-7e7aa50ac423	4	1	2026-08-13 18:18:37.894102+00	2026-08-13 18:18:38.272861+00	2026-08-13 18:18:38.272861+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a9a73e99-7180-450b-b254-3ccf7d804976	4	1	2026-08-13 20:47:57.681+00	2026-08-13 18:16:54.220134+00	2026-08-13 20:47:58.049281+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bb29351e-2d82-4f6d-824a-56d90e629089	4	1	2026-10-14 16:15:21.679289+00	2026-08-13 18:18:41.882426+00	2026-10-14 16:15:24.697007+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6c6d90c2-c302-427c-8f13-6b5ad646a4e3	4	1	2026-10-16 18:41:36.884696+00	2026-08-13 18:18:34.007426+00	2026-10-16 18:41:38.638648+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e2d56d3d-7c4a-4f7c-b1ef-24e90fbdd565	4	1	2026-08-13 18:15:49.326263+00	2026-08-13 18:15:49.719904+00	2026-08-13 18:15:49.719904+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c972cb45-1fab-43e5-a4e2-20cae18b1ea7	4	1	2026-08-13 18:16:01.834956+00	2026-08-13 18:16:02.252019+00	2026-08-13 18:16:02.252019+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	367ace64-8985-467e-9ffd-9f18b1c22f52	1	1	2026-08-13 18:16:36.73529+00	2026-08-13 18:16:37.131346+00	2026-08-13 18:16:37.131346+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f2d4f534-90e1-4708-9f49-e00cd5c14176	4	1	2026-08-13 18:18:34.950894+00	2026-08-13 18:18:35.265184+00	2026-08-13 18:18:35.265184+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0e5b745d-a94f-4492-ba2b-3a18dfdc1d27	4	1	2026-08-13 18:18:42.918515+00	2026-08-13 18:18:43.262873+00	2026-08-13 18:18:43.262873+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a4c53bef-09c4-4812-aa4e-7622f3671ba0	4	1	2026-10-16 18:41:36.884696+00	2026-08-13 18:17:41.49769+00	2026-10-16 18:41:38.638648+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3edfc07a-b087-4f58-83a6-398040a769d9	4	1	2026-08-13 18:15:54.663046+00	2026-08-13 18:15:55.099169+00	2026-08-13 18:15:55.099169+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	070da027-3de9-48b5-9337-c341f978d31a	4	1	2026-08-13 18:17:54.020741+00	2026-08-13 18:17:54.448886+00	2026-08-13 18:17:54.448886+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	679ce06c-a6f6-45b4-973d-60ff843f8f6c	1	1	2026-08-13 18:18:28.337466+00	2026-08-13 18:18:28.709362+00	2026-08-13 18:18:28.709362+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ea3f0313-7726-4a00-b28b-cbf66943adbd	4	1	2026-10-14 16:11:39.049446+00	2026-08-13 18:18:40.600881+00	2026-10-14 16:11:42.832512+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ce179d72-1ea4-4981-8fd1-b0fd4365a184	4	1	2026-08-13 18:15:54.663899+00	2026-08-13 18:15:55.122966+00	2026-08-13 18:15:55.122966+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b73a59c6-e2bd-483c-8702-2efd92f9f2ce	3	1	2026-08-13 18:16:21.855794+00	2026-08-13 18:16:22.257756+00	2026-08-13 18:16:22.257756+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	22db3a58-9264-4fe4-b086-51e98f525cc8	4	1	2026-08-13 18:15:59.893319+00	2026-08-13 18:16:00.253711+00	2026-08-13 18:16:00.253711+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7c29c59b-7af3-4151-b9e4-240c3216a496	1	1	2026-08-13 18:16:32.83824+00	2026-08-13 18:16:33.219078+00	2026-08-13 18:16:33.219078+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	54a70df8-eb25-4347-8df9-9583ed72fe14	3	1	2026-08-13 18:18:02.389112+00	2026-08-13 18:17:57.034661+00	2026-08-13 18:18:02.775065+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f823dfea-81d8-4d94-82a5-4407e76ca023	4	1	2026-10-14 16:15:23.852406+00	2026-08-13 18:18:41.875884+00	2026-10-14 16:15:24.952798+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3b583729-4f78-4500-8f8e-5233f27a16be	4	1	2026-10-16 18:41:36.884696+00	2026-08-13 18:17:44.595565+00	2026-10-16 18:41:38.638648+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2830825d-9c94-4d54-84a6-2ef180735925	4	1	2026-10-16 18:41:36.884696+00	2026-08-13 18:18:33.861311+00	2026-10-16 18:41:38.638648+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ae264311-f689-4612-b539-7c2bcdfa8336	3	1	2026-08-13 18:16:05.451272+00	2026-08-13 18:16:02.261854+00	2026-08-13 18:16:05.843156+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a7a84ee5-b335-4421-ab6a-a0fa69763f5f	1	1	2026-08-13 18:16:19.102994+00	2026-08-13 18:16:19.48518+00	2026-08-13 18:16:19.48518+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e59ecc38-4645-4e44-9484-97b925497171	4	1	2026-10-16 18:41:36.884696+00	2026-08-13 18:17:50.583193+00	2026-10-16 18:41:38.638648+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d178a54b-2bd9-41ae-9cd6-a3905576f50a	3	1	2026-08-13 18:16:59.293442+00	2026-08-13 18:16:59.691154+00	2026-08-13 18:16:59.691154+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	13195427-02e1-4aac-93d5-d2c41e0d341a	4	1	2026-08-13 18:17:52.569786+00	2026-08-13 18:17:52.945233+00	2026-08-13 18:17:52.945233+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f368191c-5d31-4a7b-a420-46553949a832	1	1	2026-08-13 18:18:26.555724+00	2026-08-13 18:18:26.928135+00	2026-08-13 18:18:26.928135+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1de975c3-5346-4aa7-9736-d038f06343fd	4	1	2026-08-13 18:18:36.504447+00	2026-08-13 18:18:36.845299+00	2026-08-13 18:18:36.845299+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	02a350d1-6be3-4026-a28d-f45559ae3d1e	4	1	2026-08-13 18:18:37.895326+00	2026-08-13 18:18:38.438439+00	2026-08-13 18:18:38.438439+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	68f1883b-5089-4add-b8a2-0a9890241a5b	4	1	2026-08-13 18:18:42.917858+00	2026-08-13 18:18:43.250099+00	2026-08-13 18:18:43.250099+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	cacfd512-5b0e-43dd-83a2-a2154b869280	4	1	2026-08-13 18:19:02.489528+00	2026-08-13 18:19:02.821714+00	2026-08-13 18:19:02.821714+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a1b2a8d2-815f-49b6-b32e-69f495f7e2e5	4	1	2026-08-13 18:19:07.50525+00	2026-08-13 18:19:07.896231+00	2026-08-13 18:19:07.896231+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	559e715f-2361-4379-a466-77d6d1209206	4	1	2026-08-13 18:19:07.506055+00	2026-08-13 18:19:08.007467+00	2026-08-13 18:19:08.007467+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	465cb91e-6996-47b5-8d40-9ba6718ae538	4	1	2026-08-13 18:19:07.506633+00	2026-08-13 18:19:08.021222+00	2026-08-13 18:19:08.021222+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	984f9da5-c164-4d89-8224-03888d4b2db0	4	1	2026-08-13 18:19:09.02951+00	2026-08-13 18:19:09.37123+00	2026-08-13 18:19:09.37123+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2358eb7e-8fd4-4010-bf69-d7e19f852da8	4	1	2026-08-13 18:19:10.405008+00	2026-08-13 18:19:10.721006+00	2026-08-13 18:19:10.721006+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3b70696c-9c25-4a17-800b-177a03cd062d	4	1	2026-08-13 18:19:12.066103+00	2026-08-13 18:19:12.459198+00	2026-08-13 18:19:12.459198+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	49411dbb-16b5-4f07-9c5a-9d02f8c0ba8c	4	1	2026-08-13 18:19:12.06481+00	2026-08-13 18:19:12.46124+00	2026-08-13 18:19:12.46124+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	35cefbce-b3e7-4814-95f2-6b92f949c8ea	2	1	2026-08-13 18:19:18.589156+00	2026-08-13 18:19:12.461323+00	2026-08-13 18:19:18.96761+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d9abe490-29e6-4739-952a-78ef549e1e4e	4	1	2026-08-13 18:19:26.983134+00	2026-08-13 18:19:27.35568+00	2026-08-13 18:19:27.35568+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1fc9c920-346b-4401-a41b-c169ddb6c8f1	2	1	2026-08-13 18:19:31.346995+00	2026-08-13 18:19:27.34787+00	2026-08-13 18:19:31.773316+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	733e0d3d-a29f-4018-9f6a-f422a1cc33db	4	1	2026-08-13 18:19:53.082301+00	2026-08-13 18:19:53.446895+00	2026-08-13 18:19:53.446895+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	50aa77e4-73df-41db-95c0-5edca8e16336	2	1	2026-08-13 18:19:55.289782+00	2026-08-13 18:19:55.659236+00	2026-08-13 18:19:55.659236+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8d397b9a-7937-41ee-a6bb-cdadd0139335	4	1	2026-08-13 20:47:19.697+00	2026-08-13 20:47:20.124794+00	2026-08-13 20:47:20.124794+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3c4a4ddc-2e77-48b9-a373-7ce70a4124af	4	1	2026-08-13 20:47:19.697+00	2026-08-13 20:47:20.136984+00	2026-08-13 20:47:20.136984+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4f1ea486-0155-4643-9757-12e3bc1e8e4f	4	1	2026-08-13 20:47:20.714+00	2026-08-13 20:47:21.080269+00	2026-08-13 20:47:21.080269+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8b2b8ecd-9a67-4ab4-9a06-4a6b4afa6df6	4	1	2026-08-13 20:47:20.715+00	2026-08-13 20:47:21.087973+00	2026-08-13 20:47:21.087973+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e0b1caeb-3263-4347-ace3-198be6b08a4e	4	1	2026-08-13 20:47:20.715+00	2026-08-13 20:47:21.092533+00	2026-08-13 20:47:21.092533+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0e454ae7-1ac5-45ad-88d9-5001d87cd655	4	1	2026-08-13 20:47:22.225+00	2026-08-13 20:47:22.579875+00	2026-08-13 20:47:22.579875+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f8c6c233-0b7f-430f-b874-1cf404366c4d	4	1	2026-08-13 20:47:22.226+00	2026-08-13 20:47:22.584922+00	2026-08-13 20:47:22.584922+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	202d07e2-4d72-4f1e-9bd7-2ae5b8f1b59e	4	1	2026-08-13 20:47:24.329+00	2026-08-13 20:47:24.685563+00	2026-08-13 20:47:24.685563+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	cb4f03ef-f3ea-459d-8191-15b6b65cd707	4	1	2026-08-13 20:47:24.329+00	2026-08-13 20:47:24.694133+00	2026-08-13 20:47:24.694133+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f	4	1	2026-08-13 20:47:26.415+00	2026-08-13 20:47:26.795543+00	2026-08-13 20:47:26.795543+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	40fc326a-acf4-4798-800e-42bf03505ae2	4	1	2026-08-13 20:47:26.415+00	2026-08-13 20:47:26.797293+00	2026-08-13 20:47:26.797293+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	dd953f16-8954-4922-af4a-c4206ecbf36f	4	1	2026-08-13 20:47:28.874+00	2026-08-13 20:47:29.224949+00	2026-08-13 20:47:29.224949+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8f300950-be69-4881-bd9a-187a074890bc	4	1	2026-08-13 20:47:28.874+00	2026-08-13 20:47:29.228463+00	2026-08-13 20:47:29.228463+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	14bcb1a9-6807-4ad0-8b80-952aa0d87930	4	1	2026-08-13 20:47:31.928+00	2026-08-13 20:47:32.285122+00	2026-08-13 20:47:32.285122+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b0f178da-e224-4dc9-86a1-282961027a86	4	1	2026-08-13 20:47:31.929+00	2026-08-13 20:47:32.28908+00	2026-08-13 20:47:32.28908+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	60dd39c6-e6b0-48bc-a1f2-f79f77f78898	4	1	2026-08-13 20:47:34.626+00	2026-08-13 20:47:34.979794+00	2026-08-13 20:47:34.979794+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	016dafeb-3a70-44a1-af12-3fb5444f52d9	4	1	2026-08-13 20:47:35.861+00	2026-08-13 20:47:36.216004+00	2026-08-13 20:47:36.216004+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b5417cdf-147b-461c-ac40-2e95a9940d73	4	1	2026-08-13 20:47:37.177+00	2026-08-13 20:47:37.542105+00	2026-08-13 20:47:37.542105+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	220613a0-ea53-41c6-acda-608ca05a31bc	4	1	2026-08-13 20:47:38.36+00	2026-08-13 20:47:38.724545+00	2026-08-13 20:47:38.724545+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3c2a0eda-da67-4052-89a6-53efe6171a23	4	1	2026-08-13 20:47:38.359+00	2026-08-13 20:47:38.722999+00	2026-08-13 20:47:38.722999+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f96e41a9-4ad3-4827-b5e6-6e85939da4b8	4	1	2026-08-13 20:47:38.359+00	2026-08-13 20:47:38.723559+00	2026-08-13 20:47:38.723559+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	43d4541f-534f-4a41-be45-4d1ec3a1e44c	4	1	2026-08-13 20:47:42.628+00	2026-08-13 20:47:42.993476+00	2026-08-13 20:47:42.993476+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	734ceaab-2f9f-4e55-90df-024ea1d609c9	4	1	2026-08-13 20:47:44.927+00	2026-08-13 20:47:45.289757+00	2026-08-13 20:47:45.289757+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3a455389-447b-465e-93bb-fcb351dfa755	4	1	2026-08-13 20:47:46.396+00	2026-08-13 20:47:46.761875+00	2026-08-13 20:47:46.761875+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6e43fdc2-de4e-43be-b4cc-23a7cf9a2f6c	4	1	2026-08-13 20:47:47.79+00	2026-08-13 20:47:48.151871+00	2026-08-13 20:47:48.151871+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	79db768a-060e-4442-8d84-69e9750cfc7a	4	1	2026-08-13 20:47:47.792+00	2026-08-13 20:47:48.180984+00	2026-08-13 20:47:48.180984+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	00f050b5-2f41-463b-8aa9-16b7ee56f5eb	4	1	2026-08-13 20:47:48.981+00	2026-08-13 20:47:49.336034+00	2026-08-13 20:47:49.336034+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	999dd2f9-6073-4ccc-86e6-8efe8c9dfbc4	4	1	2026-08-13 20:47:48.982+00	2026-08-13 20:47:49.340656+00	2026-08-13 20:47:49.340656+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	61a12bc8-9f49-458c-aeb5-49327b1ad078	4	1	2026-08-13 20:47:50.193+00	2026-08-13 20:47:50.554221+00	2026-08-13 20:47:50.554221+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4cdd688c-a7db-4abb-a1b7-a960968782d7	4	1	2026-08-13 20:47:50.193+00	2026-08-13 20:47:50.563056+00	2026-08-13 20:47:50.563056+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	adaa2f95-5f2d-4e7f-a630-08940d3fa07c	4	1	2026-08-13 20:47:51.831+00	2026-08-13 20:47:52.192361+00	2026-08-13 20:47:52.192361+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7f2210c1-eb37-477f-8104-70f8621abaa3	4	1	2026-08-13 20:47:53.381+00	2026-08-13 20:47:53.731184+00	2026-08-13 20:47:53.731184+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	554e0cae-41f2-4b5f-8de4-13337aa67615	4	1	2026-08-13 20:47:53.381+00	2026-08-13 20:47:53.73211+00	2026-08-13 20:47:53.73211+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	51aa5f23-05b8-4947-8d46-e3d919e40e76	4	1	2026-08-13 20:47:54.825+00	2026-08-13 20:47:55.17635+00	2026-08-13 20:47:55.17635+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	742b7ca7-c9e9-400b-8f90-84965d65dcf4	4	1	2026-08-13 20:47:56.457+00	2026-08-13 20:47:56.81354+00	2026-08-13 20:47:56.81354+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b0e19db8-8dcc-4831-a1ff-02c7452acd3f	4	1	2026-08-13 20:47:57.681+00	2026-08-13 20:47:58.045854+00	2026-08-13 20:47:58.045854+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b1bb4dba-cd94-4cba-897d-f1a50b087d64	4	1	2026-08-13 20:47:57.681+00	2026-08-13 20:47:58.047269+00	2026-08-13 20:47:58.047269+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	682fd9f5-71ad-48aa-a41e-f07c99eb594b	4	1	2026-08-13 20:47:57.682+00	2026-08-13 20:47:58.061306+00	2026-08-13 20:47:58.061306+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9738f293-021a-4eb3-a47c-ab79aa441a0c	4	1	2026-08-13 20:47:58.915+00	2026-08-13 20:47:59.275563+00	2026-08-13 20:47:59.275563+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c6807f32-9cf3-4611-94cf-8453acfafda6	4	1	2026-08-13 20:47:58.916+00	2026-08-13 20:47:59.281461+00	2026-08-13 20:47:59.281461+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d3eb89d6-abff-44cd-8c2b-30a81efbb311	4	1	2026-08-13 20:47:58.916+00	2026-08-13 20:47:59.285546+00	2026-08-13 20:47:59.285546+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	312ce76d-4d7e-4dd5-9f36-a5252196f921	0	1	2026-08-13 22:04:14.158948+00	2026-08-13 22:04:13.701121+00	2026-08-13 22:04:14.755229+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	63312b81-1b72-43ad-871d-2a900431a0c3	2	1	2026-08-13 22:06:55.467991+00	2026-08-13 22:06:56.043881+00	2026-08-13 22:06:56.043881+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	404e4d7c-fbce-4f72-b726-3c7e6f74fa70	4	1	2026-08-13 22:06:58.087403+00	2026-08-13 22:06:58.734408+00	2026-08-13 22:06:58.734408+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	449d9eb7-42fd-494e-a032-2f9a026922f3	4	1	2026-08-13 22:06:59.920649+00	2026-08-13 22:07:00.516553+00	2026-08-13 22:07:00.516553+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	6b6a7b5b-b4af-4c41-9893-922f218d9a2a	4	1	2026-08-13 22:07:02.864209+00	2026-08-13 22:07:03.415503+00	2026-08-13 22:07:03.415503+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	68cfc6df-7733-444c-bdf4-cf72591e5bda	4	1	2026-08-14 13:58:06.163+00	2026-08-14 13:58:06.71571+00	2026-08-14 13:58:06.71571+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	12e749ce-d90f-479c-ad9c-94a0ab2f5876	4	1	2026-08-14 13:58:09.833+00	2026-08-14 13:58:10.297188+00	2026-08-14 13:58:10.297188+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8f210c7c-1b07-4b76-8c13-34dfe4b0a9bd	4	1	2026-08-14 13:58:09.833+00	2026-08-14 13:58:10.312422+00	2026-08-14 13:58:10.312422+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d7f9442d-8c71-4039-9b69-f06b832cad33	2	1	2026-08-14 13:58:16.376+00	2026-08-14 13:58:16.864312+00	2026-08-14 13:58:16.864312+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5d0949f1-eee8-429b-8504-d92d41fa6bb1	4	1	2026-08-14 13:58:23.298+00	2026-08-14 13:58:23.751985+00	2026-08-14 13:58:23.751985+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4a61d420-f80c-4a89-8055-e39405de7d72	2	1	2026-08-14 13:58:37.293+00	2026-08-14 13:58:37.761883+00	2026-08-14 13:58:37.761883+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	092087b3-4b38-43fe-a926-80a45e679953	4	1	2026-08-14 13:58:41.523+00	2026-08-14 13:58:42.00126+00	2026-08-14 13:58:42.00126+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e0d91459-0d51-4fd6-a7e0-253614ba0186	1	1	2026-08-14 13:59:17.843+00	2026-08-14 13:59:18.319792+00	2026-08-14 13:59:18.319792+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20	4	1	2026-10-14 16:11:23.853815+00	2026-08-13 20:47:48.161886+00	2026-10-14 16:11:37.155091+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	da4faa2d-4f5c-49c9-9e3b-667f215d3755	4	1	2026-10-15 09:38:09.122684+00	2026-08-13 18:16:53.931025+00	2026-10-15 09:38:45.09772+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	871c70d9-d595-4f13-91c1-6ab15a4cf408	4	1	2026-10-14 16:11:23.853815+00	2026-08-13 20:47:48.17534+00	2026-10-14 16:11:37.155091+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0973bd19-d068-4f27-9402-45c8a8ef375b	4	1	2026-10-14 16:11:27.0714+00	2026-08-13 20:47:37.533684+00	2026-10-14 16:11:39.057498+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	4	1	2026-10-18 18:38:22.332596+00	2026-08-14 13:58:32.014425+00	2026-10-18 18:38:25.765557+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0d39ecf0-4c59-4dee-8960-5e2742d6f147	4	1	2026-10-14 16:14:26.021246+00	2026-08-13 18:17:46.819289+00	2026-10-14 16:14:28.875419+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	43b9b073-4932-4dab-b81d-81068aec8eaf	4	1	2026-10-16 18:41:36.884696+00	2026-08-13 18:17:41.465032+00	2026-10-16 18:41:38.638648+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2c46aaa8-7bf2-4d33-9e07-69d770244a21	4	1	2026-08-14 13:59:27.945+00	2026-08-14 13:59:28.432603+00	2026-08-14 13:59:28.432603+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5afbd857-1bca-475e-9610-a8ce21942444	4	1	2026-08-14 13:59:36.779+00	2026-08-14 13:59:37.329694+00	2026-08-14 13:59:37.329694+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4d2bcb83-a208-427e-ac54-8b3fd897aadf	4	1	2026-08-14 13:59:38.694+00	2026-08-14 13:59:39.172273+00	2026-08-14 13:59:39.172273+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	72eab749-a699-4651-bbe1-9c7f83c83698	4	1	2026-08-14 13:59:41.531+00	2026-08-14 13:59:42.047532+00	2026-08-14 13:59:42.047532+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	26802bad-df0a-4028-9ada-806a81c70c08	4	1	2026-08-14 14:00:00.05+00	2026-08-14 14:00:00.567884+00	2026-08-14 14:00:00.567884+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e0783946-5eca-4407-8075-aa7b45ddac25	4	1	2026-08-14 14:00:23.008+00	2026-08-14 14:00:23.498873+00	2026-08-14 14:00:23.498873+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	654e94bb-80f4-4930-9553-7059ca578b47	4	1	2026-08-14 14:00:36.864+00	2026-08-14 14:00:37.356116+00	2026-08-14 14:00:37.356116+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1914c099-3b8a-4a7a-8a3a-5f0b2ab5a559	4	1	2026-08-14 14:00:44.81+00	2026-08-14 14:00:45.322462+00	2026-08-14 14:00:45.322462+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b72d414b-1529-4aa8-81c2-e049fceb930b	4	1	2026-08-14 14:00:48.719+00	2026-08-14 14:00:49.178507+00	2026-08-14 14:00:49.178507+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c0826c73-38b8-46ea-a4d1-31edbc87151c	4	1	2026-08-14 14:01:14.366+00	2026-08-14 14:01:14.827395+00	2026-08-14 14:01:14.827395+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f999f701-d068-4bab-961d-2fa2e2beeb65	4	1	2026-08-14 14:01:18.22+00	2026-08-14 14:01:18.682623+00	2026-08-14 14:01:18.682623+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bddca145-e7a3-4c1e-aafa-afb5c61d8d69	4	1	2026-08-14 14:01:20.293+00	2026-08-14 14:01:20.758554+00	2026-08-14 14:01:20.758554+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3a92b765-a663-4809-93c1-9b43c012488e	0	1	2026-09-26 19:03:30.89891+00	2026-08-14 13:59:31.108747+00	2026-09-26 19:03:31.178326+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b44d3b6f-1986-4832-93bc-5c4d0148d578	4	1	2026-08-14 14:00:25.193+00	2026-08-14 14:00:25.685105+00	2026-08-14 14:00:25.685105+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	eecf011f-c90e-4c9f-9d23-96397096b2de	4	1	2026-08-14 14:00:36.864+00	2026-08-14 14:00:37.35348+00	2026-08-14 14:00:37.35348+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	409950dc-0bc2-40b9-80e2-c20fd2d05549	4	1	2026-08-14 14:00:36.864+00	2026-08-14 14:00:37.378369+00	2026-08-14 14:00:37.378369+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	09eab945-1f2c-46ab-b73d-0a0c0ac87d2f	4	1	2026-08-14 14:00:39.843+00	2026-08-14 14:00:40.310614+00	2026-08-14 14:00:40.310614+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	33a0ab01-1636-4469-a704-f5a6d9e71453	4	1	2026-08-14 14:00:39.843+00	2026-08-14 14:00:40.318048+00	2026-08-14 14:00:40.318048+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9c232518-f096-4df1-8a0b-fcf4a00b679d	4	1	2026-08-14 14:00:48.72+00	2026-08-14 14:00:49.176144+00	2026-08-14 14:00:49.176144+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d0a956c6-a0ca-482f-8239-84175a5b78f8	4	1	2026-08-14 14:00:53.759+00	2026-08-14 14:00:54.234682+00	2026-08-14 14:00:54.234682+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a7fa7b1a-4787-4c7a-b0b8-93c7201a85a1	3	1	2026-08-14 14:01:00.388+00	2026-08-14 14:00:54.231775+00	2026-08-14 14:01:00.890073+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3b6b1696-3333-4074-820f-5257d0e9107f	4	1	2026-08-14 14:01:14.367+00	2026-08-14 14:01:14.826633+00	2026-08-14 14:01:14.826633+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1fb400fe-9ba3-429c-9839-cf6bbe92c11b	4	1	2026-08-14 14:01:14.366+00	2026-08-14 14:01:14.831698+00	2026-08-14 14:01:14.831698+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	772022f5-2d25-49c4-a9f4-06b143a9821d	4	1	2026-08-14 14:01:20.293+00	2026-08-14 14:01:20.750449+00	2026-08-14 14:01:20.750449+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1cd97349-c086-495b-9277-c5f1ddd67808	4	1	2026-08-15 13:53:41.216+00	2026-08-15 13:53:42.178912+00	2026-08-15 13:53:42.178912+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2365ac3e-e95c-4708-ada5-dd2f2cb58145	4	1	2026-08-15 13:55:57.219+00	2026-08-15 13:55:57.934245+00	2026-08-15 13:55:57.934245+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	375011a1-1c6a-47c5-b599-8a21b77f4333	4	1	2026-08-15 13:56:00.764+00	2026-08-15 13:56:01.462575+00	2026-08-15 13:56:01.462575+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e8352bf0-a0a8-450c-8249-2befec715637	4	1	2026-08-15 13:56:02.874+00	2026-08-15 13:56:03.560243+00	2026-08-15 13:56:03.560243+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ef4f1af6-7dac-4753-9632-668dfa8ba888	4	1	2026-08-15 14:16:53.971+00	2026-08-15 14:16:54.681247+00	2026-08-15 14:16:54.681247+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f1296ab1-67b8-47cc-84d8-28168c1fc314	4	1	2026-08-15 14:28:47.734+00	2026-08-15 14:28:48.468525+00	2026-08-15 14:28:48.468525+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d90bf329-6bce-4a60-8f7f-502e12b650ac	4	1	2026-08-15 14:28:53.602+00	2026-08-15 14:28:54.317992+00	2026-08-15 14:28:54.317992+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4c843750-7e6a-4edd-bf72-161d9e1b31e7	4	1	2026-08-15 14:29:20.353+00	2026-08-15 14:29:21.076908+00	2026-08-15 14:29:21.076908+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f1b0db01-0f93-49c9-ac0c-263d07560dc8	4	1	2026-08-15 14:29:23.106+00	2026-08-15 14:29:23.818218+00	2026-08-15 14:29:23.818218+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c51e5efc-e07c-46fa-96ff-d92b08d035ae	4	1	2026-08-15 14:29:47.666+00	2026-08-15 14:29:48.400851+00	2026-08-15 14:29:48.400851+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	68cfc6df-7733-444c-bdf4-cf72591e5bda	4	1	2026-08-17 23:05:32.052093+00	2026-08-17 23:05:33.053409+00	2026-08-17 23:05:33.053409+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9ae6d5a9-b765-4a43-be09-dbd163e25f29	0	1	2026-08-18 16:55:16.558+00	2026-08-18 16:34:29.841747+00	2026-08-18 16:55:17.395781+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	3b583729-4f78-4500-8f8e-5233f27a16be	4	1	2026-09-22 11:59:45.06299+00	2026-09-22 11:59:45.974651+00	2026-09-22 11:59:45.974651+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	e59ecc38-4645-4e44-9484-97b925497171	4	1	2026-09-22 11:59:48.904731+00	2026-09-22 11:59:49.983753+00	2026-09-22 11:59:49.983753+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	4	1	2026-09-22 11:59:51.122361+00	2026-09-22 11:59:51.914284+00	2026-09-22 11:59:51.914284+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	c0f55cd4-fc31-46b6-8730-93e076a2dd73	4	1	2026-09-22 11:59:53.188028+00	2026-09-22 11:59:53.888848+00	2026-09-22 11:59:53.888848+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	9a823d89-75e7-42fc-b659-0cc512db39eb	4	1	2026-09-22 11:59:56.147084+00	2026-09-22 11:59:56.890521+00	2026-09-22 11:59:56.890521+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	a4c53bef-09c4-4812-aa4e-7622f3671ba0	4	1	2026-09-22 11:59:58.226443+00	2026-09-22 11:59:59.018881+00	2026-09-22 11:59:59.018881+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	e12b7122-c41c-4903-9a87-c70b5a23af0f	1	1	2026-09-22 12:12:27.961905+00	2026-09-22 12:12:29.113416+00	2026-09-22 12:12:29.113416+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	4e730728-94f2-4fcb-a5b7-0cef1c810846	1	1	2026-09-22 12:12:58.773887+00	2026-09-22 12:12:59.619927+00	2026-09-22 12:12:59.619927+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	b3e7054e-73a9-47e3-804c-6b45f10e7a7b	1	1	2026-09-22 12:13:15.739349+00	2026-09-22 12:13:16.48776+00	2026-09-22 12:13:16.48776+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	489b874b-c307-46d3-af79-52a47ce9a365	1	1	2026-09-22 12:13:24.996788+00	2026-09-22 12:13:25.718143+00	2026-09-22 12:13:25.718143+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	e68fcdf6-b08e-4415-bb68-a816f7e15ac3	4	1	2026-09-22 12:15:18.855301+00	2026-09-22 12:15:19.710064+00	2026-09-22 12:15:19.710064+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	5e2d2077-cfe8-4e80-8bfa-a00759d5f854	4	1	2026-09-22 12:15:21.879667+00	2026-09-22 12:15:22.571423+00	2026-09-22 12:15:22.571423+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	be140005-36f1-4ea3-b5b4-7842eef49d48	4	1	2026-09-22 12:15:32.735558+00	2026-09-22 12:15:33.465021+00	2026-09-22 12:15:33.465021+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	d8cb2712-f31a-4c77-ac70-ad41deba6b81	4	1	2026-09-22 12:15:38.193966+00	2026-09-22 12:15:38.891055+00	2026-09-22 12:15:38.891055+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	f5926cde-6885-4deb-94ce-c112a11e8dad	4	1	2026-09-22 12:15:55.972842+00	2026-09-22 12:15:56.838056+00	2026-09-22 12:15:56.838056+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	2205da7a-c8f2-48cc-a9ad-9020c0c8b067	4	1	2026-09-22 12:15:59.063353+00	2026-09-22 12:15:59.727025+00	2026-09-22 12:15:59.727025+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	0a79cb69-fd23-47e4-af09-518bf778ba9c	1	1	2026-09-22 12:26:19.582614+00	2026-09-22 12:26:20.203367+00	2026-09-22 12:26:20.203367+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	1047da71-944f-440e-8d21-c1c609bbb55e	1	1	2026-09-22 12:26:28.90679+00	2026-09-22 12:26:29.550493+00	2026-09-22 12:26:29.550493+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6379ff9c-ee57-48d8-95c2-08299c906ba7	4	1	2026-08-15 14:28:44.97+00	2026-08-15 14:28:45.684798+00	2026-10-15 10:16:27.650463+00	t	2026-10-15 10:16:27.650463+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d0c9b77a-3efe-43cb-9c72-4c68c5fab3dd	4	1	2026-09-26 19:09:32.96842+00	2026-09-26 19:09:33.281812+00	2026-09-26 19:09:33.281812+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f11c92f6-aee3-4295-8ef2-624c5285db73	4	1	2026-09-26 19:09:36.143233+00	2026-09-26 19:09:36.487834+00	2026-09-26 19:09:36.487834+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d724e649-5625-4040-92fb-caff7f799263	4	1	2026-09-26 19:09:38.423438+00	2026-09-26 19:09:38.706194+00	2026-09-26 19:09:38.706194+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a90155d3-aa81-4f55-a5c9-ac5d18015874	4	1	2026-09-26 19:09:40.80127+00	2026-09-26 19:09:41.167957+00	2026-09-26 19:09:41.167957+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	853376fb-d714-4626-94d0-cbabed6b1f67	4	1	2026-09-26 19:09:42.86817+00	2026-09-26 19:09:43.174566+00	2026-09-26 19:09:43.174566+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8c04f298-85d0-4b08-b4cd-afa9e50952b8	4	1	2026-09-26 19:09:45.586139+00	2026-09-26 19:09:45.909086+00	2026-09-26 19:09:45.909086+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	43b9b073-4932-4dab-b81d-81068aec8eaf	4	1	2026-10-04 11:23:23.4+00	2026-10-04 11:23:24.144418+00	2026-10-04 11:23:24.144418+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	9a823d89-75e7-42fc-b659-0cc512db39eb	4	1	2026-10-04 11:23:26.858+00	2026-10-04 11:23:27.569566+00	2026-10-04 11:23:27.569566+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e88838bf-f77e-4a8b-ba90-b1f780327690	4	1	2026-08-15 14:28:38.522+00	2026-08-15 14:28:39.223074+00	2026-10-15 10:16:28.069782+00	t	2026-10-15 10:16:28.069782+00
74c3ff16-f356-4a1d-8476-79a04cdc3940	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	4	1	2026-10-04 11:24:06.667+00	2026-10-04 11:24:07.294151+00	2026-10-04 11:24:07.294151+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	e59ecc38-4645-4e44-9484-97b925497171	4	1	2026-10-04 11:24:35.483+00	2026-10-04 11:24:36.095093+00	2026-10-04 11:24:36.095093+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	3b583729-4f78-4500-8f8e-5233f27a16be	1	1	2026-10-04 11:33:24.117+00	2026-10-04 11:24:07.293051+00	2026-10-04 11:33:25.166689+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	0d39ecf0-4c59-4dee-8960-5e2742d6f147	2	1	2026-10-04 11:33:26.25+00	2026-10-04 11:24:14.970676+00	2026-10-04 11:33:26.868672+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	a4c53bef-09c4-4812-aa4e-7622f3671ba0	0	1	2026-10-04 11:42:04.241+00	2026-10-04 11:23:23.066334+00	2026-10-04 11:42:05.386258+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2054a4b3-63e4-472b-aa5d-c6b5bf10eb60	4	1	2026-10-04 12:02:15.80276+00	2026-10-04 12:02:15.733989+00	2026-10-04 12:02:15.733989+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	c0f55cd4-fc31-46b6-8730-93e076a2dd73	3	1	2026-10-04 11:42:11.457+00	2026-10-04 11:24:30.486688+00	2026-10-04 11:42:12.091103+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	fed3f5b8-2480-4d28-a7d7-2a7255c35c62	4	1	2026-10-04 12:11:10.442477+00	2026-10-04 12:11:10.907457+00	2026-10-04 12:11:10.907457+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	91346b4d-d856-4abc-8fc5-6cde4cf0ca70	4	1	2026-10-04 12:11:27.033896+00	2026-10-04 12:11:27.220952+00	2026-10-04 12:11:27.220952+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	770dd9be-8c86-41fe-bce2-f89c121497d6	4	1	2026-10-14 13:36:19.336875+00	2026-08-17 23:05:33.180849+00	2026-10-14 13:36:36.261543+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6b0bd3bf-a87a-4c2c-a368-731fba2d33e0	4	1	2026-10-14 16:11:24.644615+00	2026-09-27 16:30:36.209656+00	2026-10-14 16:11:37.834811+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0cf57a0d-7579-4b8b-9dd9-0acc1a8b363a	4	1	2026-10-14 16:11:27.0714+00	2026-08-15 14:28:42.495672+00	2026-10-14 16:11:39.057498+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c0f55cd4-fc31-46b6-8730-93e076a2dd73	4	1	2026-10-14 16:14:32.191945+00	2026-08-25 19:55:03.331498+00	2026-10-14 16:14:36.365061+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	0d39ecf0-4c59-4dee-8960-5e2742d6f147	0	1	2026-10-15 13:26:07.009561+00	2026-09-22 12:00:01.6535+00	2026-10-15 13:26:11.173886+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	43b9b073-4932-4dab-b81d-81068aec8eaf	4	1	2026-10-15 21:12:49.482717+00	2026-09-22 11:59:59.552737+00	2026-10-15 21:12:52.186735+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fd4c8398-1e4f-48e3-91bd-23ce55caeece	4	1	2026-10-16 18:41:36.884696+00	2026-08-15 14:16:54.418058+00	2026-10-16 18:41:38.638648+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	edf913ba-22f6-4904-b40d-c4983fe8d612	4	1	2026-10-04 12:11:30.126394+00	2026-10-04 12:11:29.892421+00	2026-10-04 12:11:29.892421+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	5a05ed04-6464-4066-9992-ccabee686f31	2	1	2026-10-04 12:11:37.049742+00	2026-10-04 12:11:36.942668+00	2026-10-04 12:11:36.942668+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	9455b556-fad2-48ae-9037-fd465ce02600	4	1	2026-10-04 12:11:46.085291+00	2026-10-04 12:11:45.862705+00	2026-10-04 12:11:45.862705+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	40c45244-0d21-4323-8772-e864d93e718c	1	1	2026-10-04 12:11:51.198368+00	2026-10-04 12:11:51.009807+00	2026-10-04 12:11:51.009807+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	7631b303-96d0-4acc-b5d8-b2e41c385a10	2	1	2026-10-04 12:11:54.491081+00	2026-10-04 12:11:54.261714+00	2026-10-04 12:11:54.261714+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	a4c53bef-09c4-4812-aa4e-7622f3671ba0	3	1	2026-10-05 12:04:44.38852+00	2026-10-05 12:04:44.604341+00	2026-10-05 12:04:44.604341+00	f	\N
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	43b9b073-4932-4dab-b81d-81068aec8eaf	4	1	2026-10-05 12:06:10.017455+00	2026-10-05 12:06:10.599935+00	2026-10-05 12:06:10.599935+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	43b9b073-4932-4dab-b81d-81068aec8eaf	4	1	2026-10-14 13:35:46.215107+00	2026-10-14 13:35:48.555313+00	2026-10-14 13:35:48.555313+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0d39ecf0-4c59-4dee-8960-5e2742d6f147	4	1	2026-10-14 13:35:49.011298+00	2026-10-14 13:35:51.902387+00	2026-10-14 13:35:51.902387+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	3b583729-4f78-4500-8f8e-5233f27a16be	4	1	2026-10-14 13:35:52.721769+00	2026-10-14 13:35:55.038883+00	2026-10-14 13:35:55.038883+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	e59ecc38-4645-4e44-9484-97b925497171	4	1	2026-10-14 13:35:58.757916+00	2026-10-14 13:36:01.088322+00	2026-10-14 13:36:01.088322+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0668ab57-ce6c-4491-abc5-2fc5fd2b475a	4	1	2026-10-14 13:36:06.036966+00	2026-10-14 13:36:08.457686+00	2026-10-14 13:36:08.457686+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	f1296ab1-67b8-47cc-84d8-28168c1fc314	4	1	2026-10-14 13:36:08.948543+00	2026-10-14 13:36:11.305808+00	2026-10-14 13:36:11.305808+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	05814f0b-5390-4b98-b689-ae1ed953620b	4	1	2026-10-14 13:36:11.83832+00	2026-10-14 13:36:29.06229+00	2026-10-14 13:36:29.06229+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	6b0bd3bf-a87a-4c2c-a368-731fba2d33e0	4	1	2026-10-14 13:36:11.83832+00	2026-10-14 13:36:29.06229+00	2026-10-14 13:36:29.06229+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0195b084-4e4e-4fa5-8a98-4dd556bca0c7	4	1	2026-10-14 13:36:11.83832+00	2026-10-14 13:36:29.06229+00	2026-10-14 13:36:29.06229+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	9a823d89-75e7-42fc-b659-0cc512db39eb	4	1	2026-10-14 13:36:11.83832+00	2026-08-17 23:05:33.160467+00	2026-10-14 13:36:29.06229+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	09f563f1-9c89-40e1-9585-3d2442cdad63	4	1	2026-10-14 13:36:12.366363+00	2026-10-14 13:36:30.228405+00	2026-10-14 13:36:30.228405+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2a89cf3d-ab4a-46a8-b2d3-b67f38748e20	4	1	2026-10-14 13:36:12.366363+00	2026-10-14 13:36:30.228405+00	2026-10-14 13:36:30.228405+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	871c70d9-d595-4f13-91c1-6ab15a4cf408	4	1	2026-10-14 13:36:12.366363+00	2026-10-14 13:36:30.228405+00	2026-10-14 13:36:30.228405+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b3e7054e-73a9-47e3-804c-6b45f10e7a7b	4	1	2026-10-14 13:36:12.366363+00	2026-10-14 13:36:30.228405+00	2026-10-14 13:36:30.228405+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	ec88f280-c529-4384-acfc-3b3bbcb45855	4	1	2026-10-14 13:36:12.366363+00	2026-10-14 13:36:30.228405+00	2026-10-14 13:36:30.228405+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	12a27f52-da0a-4c35-9e58-ad75b29ff3ed	4	1	2026-10-14 13:36:12.366363+00	2026-10-14 13:36:30.228405+00	2026-10-14 13:36:30.228405+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	041f52e3-ba5c-411a-ab76-1512a76e3628	4	1	2026-10-14 13:36:14.025497+00	2026-10-14 13:36:30.841914+00	2026-10-14 13:36:30.841914+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	04d7d004-0513-4f16-b3ca-de208056e947	4	1	2026-10-14 13:36:14.025497+00	2026-10-14 13:36:30.841914+00	2026-10-14 13:36:30.841914+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0973bd19-d068-4f27-9402-45c8a8ef375b	4	1	2026-10-14 13:36:14.494499+00	2026-10-14 13:36:31.597175+00	2026-10-14 13:36:31.597175+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c1973d35-044f-494d-8a09-e6a0360f863d	4	1	2026-10-14 13:36:14.494499+00	2026-10-14 13:36:31.597175+00	2026-10-14 13:36:31.597175+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	491fc137-38f0-43c0-b442-da5ad8bff2ba	4	1	2026-10-14 13:36:14.494499+00	2026-10-14 13:36:31.597175+00	2026-10-14 13:36:31.597175+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0a79cb69-fd23-47e4-af09-518bf778ba9c	4	1	2026-10-14 13:36:14.494499+00	2026-10-14 13:36:31.597175+00	2026-10-14 13:36:31.597175+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	3af3c502-8b70-49be-9aa8-6a41515cd1f4	4	1	2026-10-14 13:36:15.963952+00	2026-10-14 13:36:32.934869+00	2026-10-14 13:36:32.934869+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	4e1dfa17-9ecd-469d-a18e-c6c95478e0e4	4	1	2026-10-14 13:36:15.963952+00	2026-10-14 13:36:32.934869+00	2026-10-14 13:36:32.934869+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	34243bf6-f018-4b2d-a935-ba7ec127b0b3	4	1	2026-10-14 13:36:15.963952+00	2026-10-14 13:36:32.934869+00	2026-10-14 13:36:32.934869+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	5b7e950c-1693-4755-984f-18a0b24bd71c	4	1	2026-10-14 13:36:17.177521+00	2026-10-14 13:36:33.76372+00	2026-10-14 13:36:33.76372+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	1047da71-944f-440e-8d21-c1c609bbb55e	4	1	2026-10-14 13:36:17.177521+00	2026-10-14 13:36:33.76372+00	2026-10-14 13:36:33.76372+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c58978c4-f111-4ae2-af9f-4167f5f8aba8	4	1	2026-10-14 13:36:17.177521+00	2026-10-14 13:36:33.76372+00	2026-10-14 13:36:33.76372+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	36f8633a-fb05-466b-93e8-eaaf1a12d305	4	1	2026-10-14 13:36:17.177521+00	2026-10-14 13:36:33.76372+00	2026-10-14 13:36:33.76372+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	3e66c159-b476-41c8-bd2b-73c780198705	4	1	2026-10-14 13:36:18.862476+00	2026-10-14 13:36:35.145696+00	2026-10-14 13:36:35.145696+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0d403033-b28f-4222-9970-b5275ea0a0c8	4	1	2026-10-14 13:36:20.633439+00	2026-10-14 13:36:37.023585+00	2026-10-14 13:36:37.023585+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	a455b186-07cc-44f4-9dd1-53ddd0f01763	4	1	2026-10-14 13:36:21.049972+00	2026-10-14 13:36:38.037212+00	2026-10-14 13:36:38.037212+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2a197f22-8828-4008-b50d-a3cc245da22e	4	1	2026-10-14 13:36:21.049972+00	2026-10-14 13:36:38.037212+00	2026-10-14 13:36:38.037212+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	ea3f0313-7726-4a00-b28b-cbf66943adbd	4	1	2026-10-14 13:36:21.049972+00	2026-10-14 13:36:38.037212+00	2026-10-14 13:36:38.037212+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	285cc2d6-aecf-4aaa-8c76-c8a72204e35d	4	1	2026-10-14 13:36:21.049972+00	2026-10-14 13:36:38.037212+00	2026-10-14 13:36:38.037212+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	9d59a19e-4474-499c-9b4d-f93e71cf2ae3	4	1	2026-10-14 13:36:21.049972+00	2026-10-14 13:36:38.037212+00	2026-10-14 13:36:38.037212+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2fc73293-51d3-4793-bc5a-48b481918dcf	4	1	2026-10-14 13:36:22.299125+00	2026-10-14 13:36:38.85346+00	2026-10-14 13:36:38.85346+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	935ba807-d5e3-4053-87fd-50ead0be1161	4	1	2026-10-14 13:36:22.299125+00	2026-10-14 13:36:38.85346+00	2026-10-14 13:36:38.85346+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	984f9da5-c164-4d89-8224-03888d4b2db0	4	1	2026-10-14 13:36:23.628924+00	2026-10-14 13:36:40.632747+00	2026-10-14 13:36:40.632747+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	4442fa59-38e6-4224-98c8-a3d13980c228	4	1	2026-10-14 13:36:24.027147+00	2026-10-14 13:36:42.0717+00	2026-10-14 13:36:42.0717+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	af4df313-16c4-4306-8aaf-5a176dffcc45	4	1	2026-10-14 13:36:25.272915+00	2026-10-14 13:36:43.621896+00	2026-10-14 13:36:43.621896+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	ab2e73e6-fe47-4a23-860b-96e7de4b8356	4	1	2026-10-14 13:36:25.272915+00	2026-10-14 13:36:43.621896+00	2026-10-14 13:36:43.621896+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b11dd1d1-c4da-42af-b375-60a028e6df97	4	1	2026-10-14 13:36:25.272915+00	2026-10-14 13:36:43.621896+00	2026-10-14 13:36:43.621896+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b	4	1	2026-10-14 13:36:25.272915+00	2026-10-14 13:36:43.621896+00	2026-10-14 13:36:43.621896+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	00bf24a8-fda1-4a8c-8147-87bac8167a7f	4	1	2026-10-14 13:36:25.70743+00	2026-10-14 13:36:44.989584+00	2026-10-14 13:36:44.989584+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	f19cec0c-bce5-4d38-b030-d0484e9f312e	4	1	2026-10-14 13:36:25.70743+00	2026-10-14 13:36:44.989584+00	2026-10-14 13:36:44.989584+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	09f563f1-9c89-40e1-9585-3d2442cdad63	4	1	2026-10-14 16:11:23.853815+00	2026-10-14 16:11:37.155091+00	2026-10-14 16:11:37.155091+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b3e7054e-73a9-47e3-804c-6b45f10e7a7b	4	1	2026-10-14 16:11:23.853815+00	2026-10-14 16:11:37.155091+00	2026-10-14 16:11:37.155091+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	12a27f52-da0a-4c35-9e58-ad75b29ff3ed	4	1	2026-10-14 16:11:23.853815+00	2026-10-14 16:11:37.155091+00	2026-10-14 16:11:37.155091+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0195b084-4e4e-4fa5-8a98-4dd556bca0c7	4	1	2026-10-14 16:11:24.644615+00	2026-09-27 16:30:38.941084+00	2026-10-14 16:11:37.834811+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	041f52e3-ba5c-411a-ab76-1512a76e3628	4	1	2026-10-14 16:11:25.983016+00	2026-10-14 16:11:38.486786+00	2026-10-14 16:11:38.486786+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	04d7d004-0513-4f16-b3ca-de208056e947	4	1	2026-10-14 16:11:25.983016+00	2026-10-14 16:11:38.486786+00	2026-10-14 16:11:38.486786+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	491fc137-38f0-43c0-b442-da5ad8bff2ba	4	1	2026-10-14 16:11:27.0714+00	2026-10-14 16:11:39.057498+00	2026-10-14 16:11:39.057498+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0a79cb69-fd23-47e4-af09-518bf778ba9c	4	1	2026-10-14 16:11:27.0714+00	2026-10-14 16:11:39.057498+00	2026-10-14 16:11:39.057498+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3af3c502-8b70-49be-9aa8-6a41515cd1f4	4	1	2026-10-14 16:11:28.131101+00	2026-10-14 16:11:39.56435+00	2026-10-14 16:11:39.56435+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4e1dfa17-9ecd-469d-a18e-c6c95478e0e4	4	1	2026-10-14 16:11:28.131101+00	2026-10-14 16:11:39.56435+00	2026-10-14 16:11:39.56435+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	34243bf6-f018-4b2d-a935-ba7ec127b0b3	4	1	2026-10-14 16:11:28.131101+00	2026-10-14 16:11:39.56435+00	2026-10-14 16:11:39.56435+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1047da71-944f-440e-8d21-c1c609bbb55e	4	1	2026-10-14 16:11:28.601136+00	2026-10-14 16:11:40.303877+00	2026-10-14 16:11:40.303877+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c58978c4-f111-4ae2-af9f-4167f5f8aba8	4	1	2026-10-14 16:11:28.601136+00	2026-10-14 16:11:40.303877+00	2026-10-14 16:11:40.303877+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3e66c159-b476-41c8-bd2b-73c780198705	4	1	2026-10-14 16:11:30.717318+00	2026-10-14 16:11:41.222513+00	2026-10-14 16:11:41.222513+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0d403033-b28f-4222-9970-b5275ea0a0c8	4	1	2026-10-14 16:11:33.184035+00	2026-10-14 16:11:42.300449+00	2026-10-14 16:11:42.300449+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9d59a19e-4474-499c-9b4d-f93e71cf2ae3	4	1	2026-10-14 16:11:39.049446+00	2026-08-13 18:13:19.07786+00	2026-10-14 16:11:42.832512+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2fc73293-51d3-4793-bc5a-48b481918dcf	4	1	2026-10-14 16:11:40.349846+00	2026-10-14 16:11:43.324084+00	2026-10-14 16:11:43.324084+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	935ba807-d5e3-4053-87fd-50ead0be1161	4	1	2026-10-14 16:11:40.349846+00	2026-10-14 16:11:43.324084+00	2026-10-14 16:11:43.324084+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6b6675e0-ff0c-46c9-b1ab-d451bc097a88	4	1	2026-10-14 16:14:44.758723+00	2026-10-14 16:14:48.095808+00	2026-10-14 16:14:48.095808+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e3731965-d272-4d3a-ad7e-3c7b9b5f59a7	4	1	2026-10-14 16:15:26.397772+00	2026-10-06 18:14:14.171992+00	2026-10-14 16:15:29.377981+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	a4c53bef-09c4-4812-aa4e-7622f3671ba0	4	1	2026-10-21 19:37:53.423871+00	2026-10-14 13:35:43.089803+00	2026-10-21 19:38:01.966086+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	92fe8165-5244-4c69-8919-96f9c0674ac1	4	1	2026-10-14 16:15:18.322077+00	2026-10-14 16:15:19.624304+00	2026-10-14 16:15:19.624304+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5650c4da-5c80-4c79-8676-6d81bbcc0928	4	1	2026-10-15 09:37:56.885974+00	2026-10-15 09:38:08.538337+00	2026-10-15 09:38:08.538337+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ca7084f9-31ef-4c57-a637-defd1863417d	4	1	2026-10-15 09:37:57.788462+00	2026-10-15 09:38:09.29203+00	2026-10-15 09:38:09.29203+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ba93f0f2-ee9c-4af0-8e20-a02a849717a4	4	1	2026-10-15 09:37:57.788462+00	2026-10-15 09:38:09.29203+00	2026-10-15 09:38:09.29203+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4413b365-83e2-4613-bfca-bda6c28d576e	4	1	2026-10-15 09:37:58.691191+00	2026-10-15 09:38:09.89548+00	2026-10-15 09:38:09.89548+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	054d5661-73ca-4bc8-bab1-a89c460d439c	4	1	2026-10-15 09:37:59.467723+00	2026-10-15 09:38:10.667911+00	2026-10-15 09:38:10.667911+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	daf1915b-d6e7-49da-9a35-76d8dc12efe9	4	1	2026-10-15 09:37:59.467723+00	2026-10-15 09:38:10.667911+00	2026-10-15 09:38:10.667911+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	417f2c72-c72d-4ace-a55e-9f7ed0a9ed72	4	1	2026-10-15 09:37:59.94706+00	2026-10-15 09:38:11.252205+00	2026-10-15 09:38:11.252205+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6f6ef364-f329-4afd-b339-d545624a5edf	4	1	2026-10-15 09:37:59.94706+00	2026-10-15 09:38:11.252205+00	2026-10-15 09:38:11.252205+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f7ccfa85-d1bc-4f3c-9a49-67e6d5163334	4	1	2026-10-15 09:38:00.107107+00	2026-10-15 09:38:11.88411+00	2026-10-15 09:38:11.88411+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ddfb39c4-5854-4f29-8fbb-100e01f1475f	4	1	2026-10-15 09:38:00.283821+00	2026-10-15 09:38:12.591381+00	2026-10-15 09:38:12.591381+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fc3711e6-80b3-43a8-83d8-1afa04202965	4	1	2026-10-15 09:38:00.283821+00	2026-10-15 09:38:12.591381+00	2026-10-15 09:38:12.591381+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	81f9dbb8-1144-45e2-a012-c8b85f2de1ea	4	1	2026-10-15 09:38:00.947137+00	2026-10-15 09:38:14.646929+00	2026-10-15 09:38:14.646929+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4b611fad-c610-4256-bbcb-79f11772889d	4	1	2026-10-15 09:38:01.106642+00	2026-10-15 09:38:15.358835+00	2026-10-15 09:38:15.358835+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c754e203-0313-4023-83a4-bd1806208e3d	4	1	2026-10-15 09:38:01.270353+00	2026-10-15 09:38:16.135484+00	2026-10-15 09:38:16.135484+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1bd92e67-4ad4-4d25-99bf-ae418ed29225	4	1	2026-10-15 09:38:01.270353+00	2026-10-15 09:38:16.135484+00	2026-10-15 09:38:16.135484+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ed2e2e28-2703-4183-81b8-0fcdde2327d9	4	1	2026-10-15 09:38:01.60384+00	2026-10-15 09:38:17.185778+00	2026-10-15 09:38:17.185778+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	12bcfb4c-379d-4add-9444-6534a5bd31b0	4	1	2026-10-15 09:38:01.756528+00	2026-10-15 09:38:17.813674+00	2026-10-15 09:38:17.813674+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6401c8a4-d1f9-41f6-b68b-b6e61c696fc7	4	1	2026-10-15 09:38:01.756528+00	2026-10-15 09:38:17.813674+00	2026-10-15 09:38:17.813674+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	784fe782-42f4-4172-b79c-4cecea10d010	4	1	2026-10-15 09:38:01.931301+00	2026-10-15 09:38:18.543912+00	2026-10-15 09:38:18.543912+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	66a4e32c-9477-4a59-9cd8-065c6c04376d	4	1	2026-10-15 09:38:02.099603+00	2026-10-15 09:38:19.29029+00	2026-10-15 09:38:19.29029+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d40bc2ed-4323-4c60-b290-66f0e1b16cdb	4	1	2026-10-15 09:38:02.427176+00	2026-10-15 09:38:20.139853+00	2026-10-15 09:38:20.139853+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c0cb144c-8745-481d-81f6-907a6d55acc5	4	1	2026-10-15 09:38:02.594776+00	2026-10-15 09:38:20.949313+00	2026-10-15 09:38:20.949313+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bb16404f-718e-4aa4-ba8d-79f14a3e1dd8	4	1	2026-10-15 09:38:02.594776+00	2026-10-15 09:38:20.949313+00	2026-10-15 09:38:20.949313+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a993b4f3-e795-41c7-ac90-996416a46b36	4	1	2026-10-15 09:38:02.771511+00	2026-10-15 09:38:21.798947+00	2026-10-15 09:38:21.798947+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0656b9ed-e0b7-43eb-892e-e1a3588f81b6	4	1	2026-10-15 09:38:03.12434+00	2026-10-15 09:38:22.883895+00	2026-10-15 09:38:22.883895+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	34ab0b16-7b22-4c14-bb8d-56916acd1730	4	1	2026-10-15 09:38:03.12434+00	2026-10-15 09:38:22.883895+00	2026-10-15 09:38:22.883895+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b0f62ee6-b49a-4448-9971-bde162966f9a	4	1	2026-10-15 09:38:03.507328+00	2026-10-15 09:38:24.179163+00	2026-10-15 09:38:24.179163+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ed7a6c2f-13a7-4e8f-ba4f-46e12be6216c	4	1	2026-10-15 09:38:03.691088+00	2026-10-15 09:38:25.018696+00	2026-10-15 09:38:25.018696+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7b8bd6e9-4ea2-4b52-908b-fae1fb4bdd76	4	1	2026-10-15 09:38:04.050707+00	2026-10-15 09:38:26.174173+00	2026-10-15 09:38:26.174173+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	cb907179-eb05-4320-9b99-d78baf522a03	4	1	2026-10-15 09:38:04.235206+00	2026-10-15 09:38:26.864487+00	2026-10-15 09:38:26.864487+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	580d4ec2-363a-4e0e-81e0-da73cf2e7437	4	1	2026-10-15 09:38:04.763278+00	2026-10-15 09:38:28.073768+00	2026-10-15 09:38:28.073768+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1b024330-9b68-4dc5-b1d6-1d7f58296190	4	1	2026-10-15 09:38:04.763278+00	2026-10-15 09:38:28.073768+00	2026-10-15 09:38:28.073768+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2a7df2e3-3831-42cc-8237-487eaec7c02b	4	1	2026-10-15 09:38:04.950094+00	2026-10-15 09:38:28.950989+00	2026-10-15 09:38:28.950989+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	dbea365e-1871-4ed8-8ae3-e64dfaa472c6	4	1	2026-10-15 09:38:05.284242+00	2026-10-15 09:38:30.094199+00	2026-10-15 09:38:30.094199+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d72802d4-fe82-4b2e-a9cc-c0717681ccb8	4	1	2026-10-15 09:38:05.466629+00	2026-10-15 09:38:30.959068+00	2026-10-15 09:38:30.959068+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	cdd2a1f3-71f3-4f49-bb6a-a9282752ef42	4	1	2026-10-15 09:38:05.642727+00	2026-10-15 09:38:31.820876+00	2026-10-15 09:38:31.820876+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9f019583-eeea-478a-9f0b-a887ea73d904	4	1	2026-10-15 09:38:05.819005+00	2026-10-15 09:38:32.546099+00	2026-10-15 09:38:32.546099+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e0770667-6df5-4a3a-bf16-9aefff47ff06	4	1	2026-10-15 09:38:05.819005+00	2026-10-15 09:38:32.546099+00	2026-10-15 09:38:32.546099+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d44e2ca6-53dc-4893-94df-ea6c29b165c8	4	1	2026-10-15 09:38:06.002976+00	2026-10-15 09:38:33.462434+00	2026-10-15 09:38:33.462434+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2aa4f090-74ba-4247-a6be-d9ac2f257edc	4	1	2026-10-15 09:38:06.002976+00	2026-10-15 09:38:33.462434+00	2026-10-15 09:38:33.462434+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d3b7afe5-796d-45c5-9afc-21c3a0247d0f	4	1	2026-10-15 09:38:06.355496+00	2026-10-15 09:38:34.804056+00	2026-10-15 09:38:34.804056+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	00dd6eba-0255-45b7-9f29-202970b2cc8b	4	1	2026-10-15 09:38:06.715256+00	2026-10-15 09:38:36.038536+00	2026-10-15 09:38:36.038536+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	28635068-b0b7-4702-98ee-c2aa9bb47dd9	4	1	2026-10-15 09:38:06.715256+00	2026-10-15 09:38:36.038536+00	2026-10-15 09:38:36.038536+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bae9d021-6508-4f8f-8f44-383373846da9	4	1	2026-10-15 09:38:06.907078+00	2026-10-15 09:38:36.870604+00	2026-10-15 09:38:36.870604+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	43d0c18d-65b7-4928-9fab-ea53a60e4b54	4	1	2026-10-15 09:38:07.083054+00	2026-10-15 09:38:37.657087+00	2026-10-15 09:38:37.657087+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ed126099-3421-49a2-8c6d-915b64248ca6	4	1	2026-10-15 09:38:07.083054+00	2026-10-15 09:38:37.657087+00	2026-10-15 09:38:37.657087+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c0a76c22-36cf-4045-8ddd-59b19347717c	4	1	2026-10-15 09:38:07.281789+00	2026-10-15 09:38:38.37326+00	2026-10-15 09:38:38.37326+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	72c2d681-1858-49d8-8fd1-5274b1d5f264	4	1	2026-10-15 09:38:07.281789+00	2026-10-15 09:38:38.37326+00	2026-10-15 09:38:38.37326+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bc277b11-6fcb-4e23-9e71-5759caa196c1	4	1	2026-10-15 09:38:07.459866+00	2026-10-15 09:38:38.98327+00	2026-10-15 09:38:38.98327+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	12981808-bed6-4992-b253-683a9ce4e123	4	1	2026-10-15 09:38:07.643367+00	2026-10-15 09:38:39.895874+00	2026-10-15 09:38:39.895874+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	87e4edd9-7f2b-4759-8390-d0ed78320da3	4	1	2026-10-15 09:38:07.819663+00	2026-10-15 09:38:40.544+00	2026-10-15 09:38:40.544+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ac844730-3e6b-4e47-8348-645efbda82b3	4	1	2026-10-15 09:38:07.819663+00	2026-10-15 09:38:40.544+00	2026-10-15 09:38:40.544+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c1372afb-7ab7-4fc4-b58f-1477339b6c87	4	1	2026-10-15 09:38:07.995737+00	2026-10-15 09:38:41.45583+00	2026-10-15 09:38:41.45583+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e003ae19-2137-4806-8a8e-14c4f22b66c1	4	1	2026-10-15 09:38:08.547625+00	2026-10-15 09:38:43.137445+00	2026-10-15 09:38:43.137445+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c0e2bd42-c370-4a00-8d35-c90924fead77	4	1	2026-10-15 09:38:08.740032+00	2026-10-15 09:38:43.725785+00	2026-10-15 09:38:43.725785+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	90b1709e-6808-479b-8749-49e65b559070	4	1	2026-10-15 09:38:08.939029+00	2026-10-15 09:38:44.362653+00	2026-10-15 09:38:44.362653+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c52bb022-8f2e-4a81-a2c5-bd2619b2f4bd	4	1	2026-10-15 09:38:09.122684+00	2026-10-15 09:38:45.09772+00	2026-10-15 09:38:45.09772+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fc7ea20b-5eda-479b-8cf8-b52d2771cde1	4	1	2026-10-15 09:38:09.483174+00	2026-10-15 09:38:46.219698+00	2026-10-15 09:38:46.219698+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2510b6d5-e9d8-48fa-b02d-8cfd85765f9d	4	1	2026-10-15 09:38:09.659078+00	2026-10-15 09:38:46.984092+00	2026-10-15 09:38:46.984092+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ddd30e0e-9863-4360-9317-afb6c533443e	4	1	2026-10-15 09:38:09.659078+00	2026-10-15 09:38:46.984092+00	2026-10-15 09:38:46.984092+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ef9ec75b-c715-41ac-a0d8-4e4ba5a96288	4	1	2026-10-15 09:38:09.835573+00	2026-10-15 09:38:47.8057+00	2026-10-15 09:38:47.8057+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9090c521-842b-4674-9030-8e6dd62bfc9d	4	1	2026-10-15 09:38:09.835573+00	2026-10-15 09:38:47.8057+00	2026-10-15 09:38:47.8057+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f0997b88-2d0a-441a-854f-5fad2691c634	4	1	2026-10-15 09:38:10.006819+00	2026-10-15 09:38:48.574858+00	2026-10-15 09:38:48.574858+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	049f3d08-6c93-4a93-acaa-e3449da59b30	4	1	2026-10-15 09:38:10.187292+00	2026-10-15 09:38:49.22969+00	2026-10-15 09:38:49.22969+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bd2d623e-ff0e-45d1-9ae4-b3345423ee12	4	1	2026-10-15 09:38:10.371044+00	2026-10-15 09:38:49.971329+00	2026-10-15 09:38:49.971329+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d4cb459a-01af-4aa1-aba4-11aa51476102	4	1	2026-10-15 09:38:10.371044+00	2026-10-15 09:38:49.971329+00	2026-10-15 09:38:49.971329+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e1a50e9d-ed4d-4390-92ea-952a5c9a693a	4	1	2026-10-15 09:38:10.371044+00	2026-10-15 09:38:49.971329+00	2026-10-15 09:38:49.971329+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4442fa59-38e6-4224-98c8-a3d13980c228	4	1	2026-10-15 09:38:10.555251+00	2026-10-15 09:38:50.525415+00	2026-10-15 09:38:50.525415+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d3773e44-1486-4969-a862-d79dc0676c6d	4	1	2026-10-15 09:38:11.899535+00	2026-10-15 09:38:51.135014+00	2026-10-15 09:38:51.135014+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6431a1e7-9017-443b-b46a-dc62683fd44b	4	1	2026-10-15 09:37:57.788462+00	2026-10-15 09:38:09.29203+00	2026-10-15 10:16:28.384467+00	t	2026-10-15 10:16:28.384467+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d2d9aaf6-1644-4d56-b93c-c705fa922939	0	1	2026-10-17 17:00:37.524113+00	2026-10-15 09:38:13.761047+00	2026-10-17 17:00:39.098925+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	00ccb0b7-af00-416f-8292-1c089fd77d5f	4	1	2026-10-15 13:24:46.989318+00	2026-10-15 13:24:49.298295+00	2026-10-15 13:24:49.298295+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	a455b186-07cc-44f4-9dd1-53ddd0f01763	4	1	2026-10-15 13:24:49.167055+00	2026-10-15 13:24:49.758792+00	2026-10-15 13:24:49.758792+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	0973bd19-d068-4f27-9402-45c8a8ef375b	3	1	2026-10-15 13:24:52.433768+00	2026-10-15 13:24:57.946333+00	2026-10-15 13:24:57.946333+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	285cc2d6-aecf-4aaa-8c76-c8a72204e35d	3	1	2026-10-15 13:24:57.948728+00	2026-10-15 13:24:59.193957+00	2026-10-15 13:24:59.193957+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	c25d3152-bcd0-4112-903d-901968ec1d14	4	1	2026-10-15 13:24:59.427178+00	2026-10-15 13:25:03.656105+00	2026-10-15 13:25:03.656105+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	92fe8165-5244-4c69-8919-96f9c0674ac1	2	1	2026-10-15 13:25:01.361875+00	2026-10-15 13:25:03.950347+00	2026-10-15 13:25:03.950347+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	bb29351e-2d82-4f6d-824a-56d90e629089	1	1	2026-10-15 13:25:03.423381+00	2026-10-15 13:25:04.947994+00	2026-10-15 13:25:04.947994+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	f823dfea-81d8-4d94-82a5-4407e76ca023	4	1	2026-10-15 13:25:05.331922+00	2026-10-15 13:25:09.398459+00	2026-10-15 13:25:09.398459+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	e3731965-d272-4d3a-ad7e-3c7b9b5f59a7	3	1	2026-10-15 13:25:07.050399+00	2026-10-15 13:25:09.829945+00	2026-10-15 13:25:09.829945+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	90b1709e-6808-479b-8749-49e65b559070	4	1	2026-10-15 13:25:14.311248+00	2026-10-15 13:25:20.424999+00	2026-10-15 13:25:20.424999+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	d97480ca-3bda-4d09-87e1-19b8a14a2f7d	4	1	2026-10-15 13:25:15.955263+00	2026-10-15 13:24:58.839351+00	2026-10-15 13:25:21.180959+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	784fe782-42f4-4172-b79c-4cecea10d010	4	1	2026-10-15 13:25:15.955263+00	2026-10-15 13:25:21.180959+00	2026-10-15 13:25:21.180959+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	6c4e3283-2c6c-4729-bd04-c24decee1951	4	1	2026-10-15 13:25:15.955263+00	2026-10-15 13:25:21.180959+00	2026-10-15 13:25:21.180959+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	6854f448-1f2a-4b65-b756-a34bd714cf44	4	1	2026-10-15 13:25:15.955263+00	2026-10-15 13:25:21.180959+00	2026-10-15 13:25:21.180959+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	f1296ab1-67b8-47cc-84d8-28168c1fc314	4	1	2026-10-15 13:25:16.424612+00	2026-10-15 13:25:21.936862+00	2026-10-15 13:25:21.936862+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	66a4e32c-9477-4a59-9cd8-065c6c04376d	4	1	2026-10-15 13:25:17.601998+00	2026-10-15 13:25:22.753386+00	2026-10-15 13:25:22.753386+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	00dd6eba-0255-45b7-9f29-202970b2cc8b	4	1	2026-10-15 13:25:22.550331+00	2026-10-15 13:25:25.257663+00	2026-10-15 13:25:25.257663+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	28635068-b0b7-4702-98ee-c2aa9bb47dd9	4	1	2026-10-15 13:25:22.550331+00	2026-10-15 13:25:25.257663+00	2026-10-15 13:25:25.257663+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	05814f0b-5390-4b98-b689-ae1ed953620b	4	1	2026-10-15 13:25:22.550331+00	2026-10-15 13:25:25.257663+00	2026-10-15 13:25:25.257663+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	d3eb89d6-abff-44cd-8c2b-30a81efbb311	4	1	2026-10-15 13:25:22.550331+00	2026-10-15 13:25:25.257663+00	2026-10-15 13:25:25.257663+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	0656b9ed-e0b7-43eb-892e-e1a3588f81b6	4	1	2026-10-15 13:25:23.042118+00	2026-10-15 13:25:26.079923+00	2026-10-15 13:25:26.079923+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	34ab0b16-7b22-4c14-bb8d-56916acd1730	4	1	2026-10-15 13:25:23.042118+00	2026-10-15 13:25:26.079923+00	2026-10-15 13:25:26.079923+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	b44d3b6f-1986-4832-93bc-5c4d0148d578	4	1	2026-10-15 13:25:23.042118+00	2026-10-15 13:25:26.079923+00	2026-10-15 13:25:26.079923+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	4f1ea486-0155-4643-9757-12e3bc1e8e4f	4	1	2026-10-15 13:25:24.123904+00	2026-10-15 13:25:26.902361+00	2026-10-15 13:25:26.902361+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	c0a76c22-36cf-4045-8ddd-59b19347717c	4	1	2026-10-15 13:25:24.123904+00	2026-10-15 13:25:26.902361+00	2026-10-15 13:25:26.902361+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	bc277b11-6fcb-4e23-9e71-5759caa196c1	4	1	2026-10-15 13:25:24.123904+00	2026-10-15 13:25:26.902361+00	2026-10-15 13:25:26.902361+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	a8e4e70a-4c48-4a7e-842c-51269fd310e8	4	1	2026-10-15 13:25:24.123904+00	2026-10-15 13:25:26.902361+00	2026-10-15 13:25:26.902361+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	da4faa2d-4f5c-49c9-9e3b-667f215d3755	4	1	2026-10-15 13:25:25.08405+00	2026-10-15 13:25:27.626024+00	2026-10-15 13:25:27.626024+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	c52bb022-8f2e-4a81-a2c5-bd2619b2f4bd	4	1	2026-10-15 13:25:25.08405+00	2026-10-15 13:25:27.626024+00	2026-10-15 13:25:27.626024+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	72c2d681-1858-49d8-8fd1-5274b1d5f264	4	1	2026-10-15 13:25:25.977832+00	2026-10-15 13:25:28.846675+00	2026-10-15 13:25:28.846675+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	ec88f280-c529-4384-acfc-3b3bbcb45855	4	1	2026-10-15 13:25:25.977832+00	2026-10-15 13:25:28.846675+00	2026-10-15 13:25:28.846675+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	c1973d35-044f-494d-8a09-e6a0360f863d	4	1	2026-10-15 13:30:14.956198+00	2026-10-15 13:24:58.390658+00	2026-10-15 13:30:34.560006+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	20d33e84-aa7d-42c9-8da5-d5d70bf830f0	4	1	2026-10-15 13:30:14.956198+00	2026-10-15 13:30:34.560006+00	2026-10-15 13:30:34.560006+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	f6d9301e-3591-48b7-8fb6-783c4c2849a9	4	1	2026-10-15 13:30:14.956198+00	2026-10-15 13:30:34.560006+00	2026-10-15 13:30:34.560006+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	2510b6d5-e9d8-48fa-b02d-8cfd85765f9d	4	1	2026-10-15 13:30:14.956198+00	2026-10-15 13:30:34.560006+00	2026-10-15 13:30:34.560006+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	ddd30e0e-9863-4360-9317-afb6c533443e	4	1	2026-10-15 13:30:14.956198+00	2026-10-15 13:30:34.560006+00	2026-10-15 13:30:34.560006+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	092087b3-4b38-43fe-a926-80a45e679953	4	1	2026-10-15 13:30:14.956198+00	2026-10-15 13:30:34.560006+00	2026-10-15 13:30:34.560006+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	1975ec73-506b-4029-bcc8-17daf0bff9b4	2	1	2026-10-15 13:30:41.376703+00	2026-10-15 13:30:42.609689+00	2026-10-15 13:30:42.609689+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	c8736c6b-c84e-46d8-bd1d-f0e3ada0bb5e	3	1	2026-10-15 13:30:43.632574+00	2026-10-15 13:30:45.986668+00	2026-10-15 13:30:45.986668+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	7fdbe1c8-77d0-44e8-bec4-d8504a53faec	2	1	2026-10-15 13:30:47.906622+00	2026-10-15 13:30:50.544084+00	2026-10-15 13:30:50.544084+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	6a910dab-af90-4f2c-be85-a41776c4fd82	1	1	2026-10-15 13:30:51.263823+00	2026-10-15 13:30:53.604971+00	2026-10-15 13:30:53.604971+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	9090c521-842b-4674-9030-8e6dd62bfc9d	2	1	2026-10-15 13:30:53.990094+00	2026-10-15 13:30:56.326782+00	2026-10-15 13:30:56.326782+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	5b7e950c-1693-4755-984f-18a0b24bd71c	3	1	2026-10-15 13:30:58.678178+00	2026-10-15 13:31:01.18612+00	2026-10-15 13:31:01.18612+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	36f8633a-fb05-466b-93e8-eaaf1a12d305	3	1	2026-10-15 13:31:01.604191+00	2026-10-15 13:31:03.94581+00	2026-10-15 13:31:03.94581+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	5093166e-5ae2-424c-a9cf-c93e4dd98488	3	1	2026-10-15 13:31:03.700397+00	2026-10-15 13:31:04.396611+00	2026-10-15 13:31:04.396611+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	701dc331-2b55-4825-84d8-e916cd741585	4	1	2026-10-15 20:37:52.360092+00	2026-10-15 20:37:55.398164+00	2026-10-15 20:37:55.398164+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	701dc331-2b55-4825-84d8-e916cd741585	4	1	2026-10-15 21:12:29.275896+00	2026-10-15 21:12:32.157294+00	2026-10-15 21:12:32.157294+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	6b6675e0-ff0c-46c9-b1ab-d451bc097a88	4	1	2026-10-15 21:12:36.697542+00	2026-10-15 21:12:39.384297+00	2026-10-15 21:12:39.384297+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	12981808-bed6-4992-b253-683a9ce4e123	4	1	2026-10-15 21:12:42.59552+00	2026-10-15 21:12:44.828691+00	2026-10-15 21:12:44.828691+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	7e2ae2d9-f3dd-40f1-a312-c4c540333f2b	4	1	2026-10-15 21:12:54.623307+00	2026-10-15 21:13:00.389468+00	2026-10-15 21:13:00.389468+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	4413b365-83e2-4613-bfca-bda6c28d576e	4	1	2026-10-15 21:13:10.488277+00	2026-10-15 21:13:13.811021+00	2026-10-15 21:13:13.811021+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	922b505f-3e36-40d3-aedf-a1a5411eaea3	4	1	2026-10-15 21:13:10.488277+00	2026-10-15 21:13:13.811021+00	2026-10-15 21:13:13.811021+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	1f8cf53b-62fc-477b-89cd-f7b3525409cd	4	1	2026-10-15 21:13:15.963618+00	2026-10-15 21:13:18.933287+00	2026-10-15 21:13:18.933287+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	8cb977c6-a283-4879-bbb0-a7957ae728ab	4	1	2026-10-15 21:13:15.963618+00	2026-10-15 21:13:18.933287+00	2026-10-15 21:13:18.933287+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	5428d2e2-1ff8-4744-87f6-0173ed850199	4	1	2026-10-15 21:13:15.963618+00	2026-10-15 21:13:18.933287+00	2026-10-15 21:13:18.933287+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	c1372afb-7ab7-4fc4-b58f-1477339b6c87	4	1	2026-10-15 21:13:21.724979+00	2026-10-15 21:13:24.687722+00	2026-10-15 21:13:24.687722+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	ac844730-3e6b-4e47-8348-645efbda82b3	4	1	2026-10-15 21:13:21.724979+00	2026-10-15 21:13:24.687722+00	2026-10-15 21:13:24.687722+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	87e4edd9-7f2b-4759-8390-d0ed78320da3	4	1	2026-10-15 21:13:25.289585+00	2026-10-15 21:13:29.850091+00	2026-10-15 21:13:29.850091+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bd9105e6-7ca2-40a4-9492-eb017ab53c49	4	1	2026-10-15 22:04:18.431791+00	2026-10-15 22:04:21.594062+00	2026-10-15 22:04:21.594062+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fed3f5b8-2480-4d28-a7d7-2a7255c35c62	4	1	2026-10-15 22:25:56.657914+00	2026-10-15 22:25:59.803469+00	2026-10-15 22:25:59.803469+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6f5ae9ee-8ae2-4534-bf11-6fb90f75a09a	1	1	2026-10-15 22:28:14.235983+00	2026-10-15 22:28:17.229474+00	2026-10-15 22:28:17.229474+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5a05ed04-6464-4066-9992-ccabee686f31	2	1	2026-10-15 22:28:16.979068+00	2026-10-15 22:28:19.779255+00	2026-10-15 22:28:19.779255+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7631b303-96d0-4acc-b5d8-b2e41c385a10	2	1	2026-10-15 22:28:19.840581+00	2026-10-15 22:28:22.622886+00	2026-10-15 22:28:22.622886+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	dfdc0f54-6c73-4829-9f30-ac88090a40fd	4	1	2026-10-15 22:28:22.292944+00	2026-10-15 22:28:25.078518+00	2026-10-15 22:28:25.078518+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b123d09c-483f-4526-8b4d-768545638a16	1	1	2026-10-15 22:28:25.604367+00	2026-10-15 22:28:28.401476+00	2026-10-15 22:28:28.401476+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	edf913ba-22f6-4904-b40d-c4983fe8d612	3	1	2026-10-15 22:28:28.062521+00	2026-10-15 22:28:30.86092+00	2026-10-15 22:28:30.86092+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	40c45244-0d21-4323-8772-e864d93e718c	1	1	2026-10-15 22:28:33.166815+00	2026-10-15 22:28:35.967846+00	2026-10-15 22:28:35.967846+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9455b556-fad2-48ae-9037-fd465ce02600	4	1	2026-10-15 22:28:35.619372+00	2026-10-15 22:28:37.531257+00	2026-10-15 22:28:37.531257+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	91346b4d-d856-4abc-8fc5-6cde4cf0ca70	4	1	2026-10-15 22:28:44.5411+00	2026-10-15 22:28:47.332464+00	2026-10-15 22:28:47.332464+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	12470fe5-2259-4287-af22-75b95583d8c1	4	1	2026-10-16 14:06:43.270452+00	2026-10-16 14:06:49.549849+00	2026-10-16 14:06:49.549849+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8bede74d-a838-42fc-b8b8-df98c5450388	4	1	2026-10-16 14:06:43.270452+00	2026-10-16 14:06:49.549849+00	2026-10-16 14:06:49.549849+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	578e7289-cded-4440-bb01-f0f023404bcd	4	1	2026-10-16 14:06:44.475933+00	2026-10-16 14:06:50.184138+00	2026-10-16 14:06:50.184138+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c6e0613c-702b-43fd-a771-e29dbb609752	4	1	2026-10-16 14:16:05.475958+00	2026-10-16 14:16:08.124543+00	2026-10-16 14:16:08.124543+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e650a236-b9bb-440f-bb62-ade8d1a185b5	4	1	2026-10-16 14:16:07.972464+00	2026-10-16 14:16:10.741003+00	2026-10-16 14:16:10.741003+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	38ecd1a2-8859-4a50-b4a3-591b2dfc2200	4	1	2026-10-16 14:18:29.486197+00	2026-10-16 14:18:33.010418+00	2026-10-16 14:18:33.010418+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	922b505f-3e36-40d3-aedf-a1a5411eaea3	4	1	2026-10-16 14:18:55.931867+00	2026-10-16 14:18:59.467266+00	2026-10-16 14:18:59.467266+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	464f8633-9f89-4f60-a6f4-ff1e511a68e1	4	1	2026-10-17 12:19:37.867419+00	2026-10-17 12:19:40.159514+00	2026-10-17 12:19:40.159514+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4c70c637-dd58-4d54-9928-127b049a7556	4	1	2026-10-17 12:36:34.557042+00	2026-10-17 12:36:37.850292+00	2026-10-17 12:36:37.850292+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7e0a55f0-3037-461d-a0b2-d14d0105f5c5	4	1	2026-10-17 12:36:34.557042+00	2026-10-17 12:36:37.850292+00	2026-10-17 12:36:37.850292+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	409950dc-0bc2-40b9-80e2-c20fd2d05549	3	1	2026-10-21 11:49:21.292064+00	2026-10-21 11:49:23.605549+00	2026-10-21 11:49:23.605549+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	00ccb0b7-af00-416f-8292-1c089fd77d5f	4	1	2026-10-21 19:10:12.559284+00	2026-10-21 19:10:14.013673+00	2026-10-21 19:10:14.013673+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2f999736-b678-4f04-a782-39669b253920	3	1	2026-10-21 19:10:19.957033+00	2026-10-21 19:10:14.013673+00	2026-10-21 19:10:21.155428+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	cacfd512-5b0e-43dd-83a2-a2154b869280	4	1	2026-10-21 19:40:59.927794+00	2026-10-21 19:41:03.017159+00	2026-10-21 19:41:03.017159+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2c4200b9-afd8-4e3c-956d-e3351d5b3c9a	2	1	2026-10-21 19:10:25.052569+00	2026-10-21 19:10:14.013673+00	2026-10-21 19:10:26.930516+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	8bc76026-d1c8-49f6-937d-450b0a19eaba	3	1	2026-10-21 19:10:33.034465+00	2026-10-21 19:10:34.238086+00	2026-10-21 19:10:34.238086+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	4eeb1c7c-0532-481f-ad71-7cf2a39ebdb3	4	1	2026-10-21 19:10:35.86824+00	2026-10-21 19:10:34.699801+00	2026-10-21 19:10:35.29781+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	cad0124d-882d-4d7c-a81a-076ae9031452	4	1	2026-10-21 19:14:54.760124+00	2026-10-21 19:14:56.849115+00	2026-10-21 19:14:56.849115+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	f5c21b2f-e9a3-4f5c-8d91-088ff25d2c29	4	1	2026-10-21 19:14:54.760124+00	2026-10-21 19:14:56.849115+00	2026-10-21 19:14:56.849115+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	199f4767-bf32-4fbe-b348-fe651008291d	1	1	2026-10-21 19:14:59.72797+00	2026-10-21 19:15:00.872374+00	2026-10-21 19:15:00.872374+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c25d3152-bcd0-4112-903d-901968ec1d14	4	1	2026-10-21 19:15:04.885986+00	2026-10-21 19:15:06.022251+00	2026-10-21 19:15:06.022251+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	34d97983-01b2-4ac6-b9f4-f9cdd54f26db	4	1	2026-10-21 19:35:10.198044+00	2026-10-21 19:35:11.976341+00	2026-10-21 19:35:11.976341+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c0f55cd4-fc31-46b6-8730-93e076a2dd73	4	1	2026-10-21 19:37:59.119356+00	2026-10-21 19:38:06.810385+00	2026-10-21 19:38:06.810385+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2830825d-9c94-4d54-84a6-2ef180735925	4	1	2026-10-21 19:38:01.297384+00	2026-10-21 19:38:07.71135+00	2026-10-21 19:38:07.71135+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	6c6d90c2-c302-427c-8f13-6b5ad646a4e3	4	1	2026-10-21 19:38:01.297384+00	2026-10-21 19:38:07.71135+00	2026-10-21 19:38:07.71135+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	f2d4f534-90e1-4708-9f49-e00cd5c14176	4	1	2026-10-21 19:38:02.943019+00	2026-10-21 19:38:08.875838+00	2026-10-21 19:38:08.875838+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	701dc331-2b55-4825-84d8-e916cd741585	4	1	2026-10-21 19:38:08.156609+00	2026-10-21 19:38:09.945398+00	2026-10-21 19:38:09.945398+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	6b6675e0-ff0c-46c9-b1ab-d451bc097a88	4	1	2026-10-21 19:38:10.335503+00	2026-10-21 19:38:10.69409+00	2026-10-21 19:38:10.69409+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	20d33e84-aa7d-42c9-8da5-d5d70bf830f0	4	1	2026-10-21 19:38:12.088742+00	2026-10-21 19:38:18.426502+00	2026-10-21 19:38:18.426502+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	4413b365-83e2-4613-bfca-bda6c28d576e	4	1	2026-10-21 19:38:12.088742+00	2026-10-21 19:38:18.426502+00	2026-10-21 19:38:18.426502+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	922b505f-3e36-40d3-aedf-a1a5411eaea3	4	1	2026-10-21 19:38:12.088742+00	2026-10-21 19:38:18.426502+00	2026-10-21 19:38:18.426502+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	1f8cf53b-62fc-477b-89cd-f7b3525409cd	4	1	2026-10-21 19:38:13.205826+00	2026-10-21 19:38:19.268505+00	2026-10-21 19:38:19.268505+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	8cb977c6-a283-4879-bbb0-a7957ae728ab	4	1	2026-10-21 19:38:13.205826+00	2026-10-21 19:38:19.268505+00	2026-10-21 19:38:19.268505+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	5428d2e2-1ff8-4744-87f6-0173ed850199	4	1	2026-10-21 19:38:13.205826+00	2026-10-21 19:38:19.268505+00	2026-10-21 19:38:19.268505+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c1372afb-7ab7-4fc4-b58f-1477339b6c87	4	1	2026-10-21 19:38:14.325678+00	2026-10-21 19:38:20.134721+00	2026-10-21 19:38:20.134721+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	ac844730-3e6b-4e47-8348-645efbda82b3	4	1	2026-10-21 19:38:14.325678+00	2026-10-21 19:38:20.134721+00	2026-10-21 19:38:20.134721+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	092087b3-4b38-43fe-a926-80a45e679953	4	1	2026-10-21 19:38:14.325678+00	2026-10-21 19:38:20.134721+00	2026-10-21 19:38:20.134721+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	87e4edd9-7f2b-4759-8390-d0ed78320da3	4	1	2026-10-21 19:38:15.443995+00	2026-10-21 19:38:20.838949+00	2026-10-21 19:38:20.838949+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	12981808-bed6-4992-b253-683a9ce4e123	4	1	2026-10-21 19:38:16.654129+00	2026-10-21 19:38:21.459495+00	2026-10-21 19:38:21.459495+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	784fe782-42f4-4172-b79c-4cecea10d010	4	1	2026-10-21 19:38:22.015549+00	2026-10-21 19:38:22.790671+00	2026-10-21 19:38:22.790671+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	66a4e32c-9477-4a59-9cd8-065c6c04376d	4	1	2026-10-21 19:38:22.687928+00	2026-10-21 19:38:23.82219+00	2026-10-21 19:38:23.82219+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	d40bc2ed-4323-4c60-b290-66f0e1b16cdb	4	1	2026-10-21 19:38:23.894627+00	2026-10-21 19:38:24.633532+00	2026-10-21 19:38:24.633532+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	654e94bb-80f4-4930-9553-7059ca578b47	4	1	2026-10-21 19:38:23.894627+00	2026-10-21 19:38:24.633532+00	2026-10-21 19:38:24.633532+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	fd4c8398-1e4f-48e3-91bd-23ce55caeece	4	1	2026-10-21 19:38:24.934236+00	2026-10-21 19:38:25.449418+00	2026-10-21 19:38:25.449418+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	12470fe5-2259-4287-af22-75b95583d8c1	4	1	2026-10-21 19:38:24.934236+00	2026-10-21 19:38:25.449418+00	2026-10-21 19:38:25.449418+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	8bede74d-a838-42fc-b8b8-df98c5450388	4	1	2026-10-21 19:38:24.934236+00	2026-10-21 19:38:25.449418+00	2026-10-21 19:38:25.449418+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	578e7289-cded-4440-bb01-f0f023404bcd	4	1	2026-10-21 19:38:25.455507+00	2026-10-21 19:38:26.086971+00	2026-10-21 19:38:26.086971+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	4	1	2026-10-21 19:38:26.563666+00	2026-10-21 19:38:26.911254+00	2026-10-21 19:38:26.911254+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	d2d9aaf6-1644-4d56-b93c-c705fa922939	4	1	2026-10-21 19:38:26.563666+00	2026-10-21 19:38:26.911254+00	2026-10-21 19:38:26.911254+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	fc3711e6-80b3-43a8-83d8-1afa04202965	4	1	2026-10-21 19:38:27.627821+00	2026-10-21 19:38:27.919033+00	2026-10-21 19:38:27.919033+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c6e0613c-702b-43fd-a771-e29dbb609752	4	1	2026-10-21 19:38:28.649038+00	2026-10-21 19:38:29.144445+00	2026-10-21 19:38:29.144445+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	e650a236-b9bb-440f-bb62-ade8d1a185b5	4	1	2026-10-21 19:38:28.649038+00	2026-10-21 19:38:29.144445+00	2026-10-21 19:38:29.144445+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	bd9105e6-7ca2-40a4-9492-eb017ab53c49	4	1	2026-10-21 19:38:28.649038+00	2026-10-21 19:38:29.144445+00	2026-10-21 19:38:29.144445+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	38ecd1a2-8859-4a50-b4a3-591b2dfc2200	4	1	2026-10-21 19:38:29.995751+00	2026-10-21 19:38:29.857839+00	2026-10-21 19:38:29.857839+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0656b9ed-e0b7-43eb-892e-e1a3588f81b6	4	1	2026-10-21 19:38:37.804572+00	2026-10-21 19:38:39.828196+00	2026-10-21 19:38:39.828196+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	34ab0b16-7b22-4c14-bb8d-56916acd1730	4	1	2026-10-21 19:38:37.804572+00	2026-10-21 19:38:39.828196+00	2026-10-21 19:38:39.828196+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	d3eb89d6-abff-44cd-8c2b-30a81efbb311	4	1	2026-10-21 19:38:37.804572+00	2026-10-21 19:38:39.828196+00	2026-10-21 19:38:39.828196+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b44d3b6f-1986-4832-93bc-5c4d0148d578	4	1	2026-10-21 19:38:37.804572+00	2026-10-21 19:38:39.828196+00	2026-10-21 19:38:39.828196+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	d97480ca-3bda-4d09-87e1-19b8a14a2f7d	4	1	2026-10-21 19:38:40.538377+00	2026-10-21 19:38:41.435618+00	2026-10-21 19:38:41.435618+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	6c4e3283-2c6c-4729-bd04-c24decee1951	4	1	2026-10-21 19:38:40.538377+00	2026-10-21 19:38:41.435618+00	2026-10-21 19:38:41.435618+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	6854f448-1f2a-4b65-b756-a34bd714cf44	4	1	2026-10-21 19:38:40.538377+00	2026-10-21 19:38:41.435618+00	2026-10-21 19:38:41.435618+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	eecf011f-c90e-4c9f-9d23-96397096b2de	4	1	2026-10-21 19:38:45.428715+00	2026-10-21 19:38:47.244012+00	2026-10-21 19:38:47.244012+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c0cb144c-8745-481d-81f6-907a6d55acc5	4	1	2026-10-21 19:38:45.428715+00	2026-10-21 19:38:47.244012+00	2026-10-21 19:38:47.244012+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	bb16404f-718e-4aa4-ba8d-79f14a3e1dd8	4	1	2026-10-21 19:38:45.428715+00	2026-10-21 19:38:47.244012+00	2026-10-21 19:38:47.244012+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	4f1ea486-0155-4643-9757-12e3bc1e8e4f	4	1	2026-10-21 19:38:57.259082+00	2026-10-21 19:38:59.282007+00	2026-10-21 19:38:59.282007+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c0a76c22-36cf-4045-8ddd-59b19347717c	4	1	2026-10-21 19:38:57.259082+00	2026-10-21 19:38:59.282007+00	2026-10-21 19:38:59.282007+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	1e9d4f3a-566c-41ae-b280-5fd5dcd106d7	4	1	2026-10-21 19:38:57.259082+00	2026-10-21 19:38:59.282007+00	2026-10-21 19:38:59.282007+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	72c2d681-1858-49d8-8fd1-5274b1d5f264	4	1	2026-10-21 19:39:09.223104+00	2026-10-21 19:39:11.395806+00	2026-10-21 19:39:11.395806+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	98b25819-0a67-4177-a051-2b36ac7ad75f	4	1	2026-10-21 19:39:13.662072+00	2026-10-21 19:39:15.636802+00	2026-10-21 19:39:15.636802+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	4c70c637-dd58-4d54-9928-127b049a7556	4	1	2026-10-21 19:41:09.288778+00	2026-10-21 19:41:11.090494+00	2026-10-21 19:41:11.090494+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	7e0a55f0-3037-461d-a0b2-d14d0105f5c5	4	1	2026-10-21 19:41:09.288778+00	2026-10-21 19:41:11.090494+00	2026-10-21 19:41:11.090494+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	772022f5-2d25-49c4-a9f4-06b143a9821d	4	1	2026-10-21 19:41:12.251028+00	2026-10-21 19:41:15.899439+00	2026-10-21 19:41:15.899439+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	bddca145-e7a3-4c1e-aafa-afb5c61d8d69	4	1	2026-10-21 19:41:12.251028+00	2026-10-21 19:41:15.899439+00	2026-10-21 19:41:15.899439+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2778776c-7ac8-4598-8461-8112dc805f39	4	1	2026-10-21 19:41:17.221248+00	2026-10-21 19:41:18.097369+00	2026-10-21 19:41:18.097369+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	1bd92e67-4ad4-4d25-99bf-ae418ed29225	4	1	2026-10-21 19:41:17.221248+00	2026-10-21 19:41:18.097369+00	2026-10-21 19:41:18.097369+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c69149cd-f270-457a-bc70-031f45e618ac	4	1	2026-10-21 19:41:17.221248+00	2026-10-21 19:41:18.097369+00	2026-10-21 19:41:18.097369+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	ca63da6e-4036-426c-9c8c-142620c93a6b	4	1	2026-10-21 19:41:19.964844+00	2026-10-21 19:41:20.590114+00	2026-10-21 19:41:20.590114+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	559e715f-2361-4379-a466-77d6d1209206	4	1	2026-10-21 19:41:19.964844+00	2026-10-21 19:41:20.590114+00	2026-10-21 19:41:20.590114+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	380b1879-2aed-4aba-ad15-f2d428498779	4	1	2026-10-21 19:41:23.074426+00	2026-10-21 19:41:24.875553+00	2026-10-21 19:41:24.875553+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	8d397b9a-7937-41ee-a6bb-cdadd0139335	4	1	2026-10-21 19:41:34.671946+00	2026-10-21 19:41:36.955716+00	2026-10-21 19:41:36.955716+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	554e0cae-41f2-4b5f-8de4-13337aa67615	4	1	2026-10-21 19:41:38.695093+00	2026-10-21 19:41:40.661017+00	2026-10-21 19:41:40.661017+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b0f62ee6-b49a-4448-9971-bde162966f9a	4	1	2026-10-21 19:41:45.961571+00	2026-10-21 19:41:48.015832+00	2026-10-21 19:41:48.015832+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	4078fbce-8b37-4922-9f03-111b70c84bfb	4	1	2026-10-21 19:41:49.985233+00	2026-10-21 19:41:52.539915+00	2026-10-21 19:41:52.539915+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	daf1915b-d6e7-49da-9a35-76d8dc12efe9	4	1	2026-10-21 19:41:49.985233+00	2026-10-21 19:41:52.539915+00	2026-10-21 19:41:52.539915+00	f	\N
\.


--
-- Data for Name: user_level_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_level_colors" ("user_id", "level_id", "light_color", "dark_color") FROM stdin;
\.


--
-- Data for Name: user_sentence_knowledge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_sentence_knowledge" ("user_id", "sentence_id", "rating", "review_count", "last_reviewed_at", "created_at", "updated_at", "bookmarked", "bookmarked_at") FROM stdin;
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c1edfb92-d22f-47d2-b16c-33e988c992dd	0	1	2026-10-15 09:45:27.40967+00	2026-08-12 12:04:41.500857+00	2026-10-15 09:45:37.002378+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0d990701-9ce0-4db8-982b-55700e6054e0	0	1	2026-10-15 09:45:27.986333+00	2026-08-12 12:04:43.128115+00	2026-10-15 09:45:38.395581+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	29b1707d-0483-481d-bde2-47ee88ce79f1	0	1	2026-10-15 09:45:28.378248+00	2026-08-12 12:04:44.609242+00	2026-10-15 09:45:38.970761+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c7a96266-53db-45c4-af43-cb2fb06026ec	0	1	2026-10-15 09:45:28.929081+00	2026-08-12 12:04:48.578204+00	2026-10-15 09:45:39.985859+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c43616a3-1ff4-4ae5-bbfc-9f485a09cb5f	0	1	2026-10-15 09:45:29.618109+00	2026-08-12 12:04:50.825477+00	2026-10-15 09:45:40.374534+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	78d060a9-5e4b-48a3-a64b-dff2fdb515f0	0	1	2026-10-15 09:45:30.12222+00	2026-08-12 12:04:52.327102+00	2026-10-15 09:45:40.660607+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d2c868f1-64b8-43bd-bead-e3322fa37082	0	1	2026-10-15 09:45:30.80172+00	2026-08-12 12:04:53.604731+00	2026-10-15 09:45:40.992061+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b6cca451-9bd0-46a6-8db6-48c632ce8d88	4	1	2026-08-13 18:17:50.70453+00	2026-08-13 18:17:51.066842+00	2026-08-13 18:17:51.066842+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ee0fe609-522a-4978-9d9f-e435aac37350	0	1	2026-10-15 09:45:31.386092+00	2026-08-12 12:04:54.855648+00	2026-10-15 09:45:41.866671+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bc029dd2-3831-4968-a25c-240820487687	4	1	2026-08-13 18:17:52.248721+00	2026-08-13 18:17:52.64145+00	2026-08-13 18:17:52.64145+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0cfac981-7ff3-477f-8e96-3688051f7eff	0	1	2026-10-15 09:45:34.626334+00	2026-08-12 12:04:58.753175+00	2026-10-15 09:45:42.984074+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	94249b9b-94c4-4022-bd5b-7751dbbfc85c	4	1	2026-08-13 18:17:53.723376+00	2026-08-13 18:17:54.089654+00	2026-08-13 18:17:54.089654+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2ddc2572-ee64-4769-98d4-a93d84299bef	0	1	2026-10-15 09:45:35.217449+00	2026-08-12 12:04:59.870994+00	2026-10-15 09:45:43.499384+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5d46fe39-084b-41b3-9f5b-45e37bed517d	0	1	2026-10-15 09:45:35.38579+00	2026-08-12 12:05:03.120353+00	2026-10-15 09:45:43.962643+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	eabc8814-f8d0-483f-81df-0be16fd414a0	3	1	2026-08-13 18:18:00.014915+00	2026-08-13 18:17:56.741473+00	2026-08-13 18:18:00.409392+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c1579f77-3977-4956-9082-594d7edaaaf7	0	1	2026-10-15 09:45:35.569715+00	2026-08-12 12:05:09.074753+00	2026-10-15 09:45:44.356181+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0d741e4e-2cd1-4fab-b6a6-6877498991fe	2	1	2026-08-13 18:18:20.677352+00	2026-08-13 18:18:21.073672+00	2026-08-13 18:18:21.073672+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2ac2599f-1933-4cac-835f-4e6a43121b37	0	1	2026-10-15 09:45:35.739894+00	2026-08-12 12:05:10.972064+00	2026-10-15 09:45:44.790098+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2de9ad49-d28e-42d0-b257-38543e03988f	4	1	2026-08-13 18:18:33.155265+00	2026-08-13 18:18:33.554899+00	2026-08-13 18:18:33.554899+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	94f7ca91-9d15-4d06-ad6b-28690ee0a025	4	1	2026-08-13 18:18:34.216747+00	2026-08-13 18:18:34.578756+00	2026-08-13 18:18:34.578756+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	246e5bac-1a3c-4ef1-ac3b-dd059212be33	3	1	2026-08-13 18:14:06.481761+00	2026-08-12 12:05:02.537013+00	2026-08-13 18:14:06.80052+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	14f7bbb3-ecf5-4a08-ada4-1e160f544976	4	1	2026-08-13 18:18:34.670821+00	2026-08-13 18:18:35.022257+00	2026-08-13 18:18:35.022257+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5105d2c7-c5ad-44da-9d5a-937738f6105b	4	1	2026-08-13 18:18:36.197337+00	2026-08-13 18:18:36.575876+00	2026-08-13 18:18:36.575876+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	03a7a0a7-f199-460a-b8f7-711fc0c24f81	4	1	2026-08-13 18:18:37.597916+00	2026-08-13 18:18:37.964907+00	2026-08-13 18:18:37.964907+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4dd47272-1cf4-40e5-b703-74223bca86aa	4	1	2026-08-13 18:18:39.911199+00	2026-08-13 18:18:40.282221+00	2026-08-13 18:18:40.282221+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	68174184-70bc-4b58-a256-56cfd3578791	4	1	2026-08-13 18:18:41.21227+00	2026-08-13 18:18:41.590999+00	2026-08-13 18:18:41.590999+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	39794236-b2c4-460d-b1e8-22cd01671d4c	0	1	2026-10-15 09:45:37.584568+00	2026-08-13 18:15:44.933942+00	2026-10-15 09:45:47.529943+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e285ac10-ec9c-42a9-b45e-3bff62379c5c	3	1	2026-08-13 18:14:44.146359+00	2026-08-12 12:05:17.732415+00	2026-08-13 18:14:44.526652+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	80b343ab-5423-4a0a-88f2-f1e1d2586734	4	1	2026-08-13 18:18:42.605394+00	2026-08-13 18:18:42.99065+00	2026-08-13 18:18:42.99065+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	18ed8e8f-5979-4aca-85e2-3d535a9c4548	4	1	2026-08-13 18:19:02.200336+00	2026-08-13 18:19:02.560997+00	2026-08-13 18:19:02.560997+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5352a0ac-0ff3-4112-ac76-f25cffaa4c25	0	1	2026-10-15 09:45:35.882246+00	2026-08-12 12:05:12.946552+00	2026-10-15 09:45:45.409189+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	aeffd153-92fa-453b-bd15-4b3a7e61ce4d	4	1	2026-08-13 18:19:04.786674+00	2026-08-13 18:19:05.150099+00	2026-08-13 18:19:05.150099+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	63ca3e07-ea8f-4935-bb96-361625702286	0	1	2026-10-15 09:45:37.041248+00	2026-08-12 12:05:18.964139+00	2026-10-15 09:45:46.246845+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b478a907-14d1-4b4c-b79e-3ed31e7aa7ae	4	1	2026-08-13 18:19:05.665403+00	2026-08-13 18:19:06.037802+00	2026-08-13 18:19:06.037802+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	0	1	2026-10-15 09:45:37.546262+00	2026-08-12 12:05:20.405881+00	2026-10-15 09:45:47.18311+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f3ffc857-22c3-407f-9f1f-85cfcb1de9f1	4	1	2026-08-13 18:19:07.206679+00	2026-08-13 18:19:07.570382+00	2026-08-13 18:19:07.570382+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	315c75b3-623c-4d25-ac2b-55de187e5e0a	0	1	2026-10-15 09:45:37.619175+00	2026-08-13 18:15:49.388894+00	2026-10-15 09:45:47.933228+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	34a82dce-e3c5-47b9-90c3-2939d035f28c	3	1	2026-08-13 18:15:32.975615+00	2026-08-12 12:05:16.29251+00	2026-08-13 18:15:33.36522+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	66be0c9f-1dba-40df-aa48-2e09bcbafb4f	4	1	2026-08-13 18:19:08.733181+00	2026-08-13 18:19:09.100987+00	2026-08-13 18:19:09.100987+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bc6042e5-d7a6-4e69-b224-957b34a1f4ac	0	1	2026-10-15 09:45:37.705902+00	2026-08-13 18:15:54.715947+00	2026-10-15 09:45:48.495991+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	25a3f68f-0fde-4bf9-993a-15ac5c89c559	3	1	2026-08-13 18:16:06.635712+00	2026-08-13 18:16:01.896152+00	2026-08-13 18:16:07.010882+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	adea4783-10b8-4314-ae68-cb8c31f02dc4	2	1	2026-08-13 18:16:14.144995+00	2026-08-13 18:16:14.542404+00	2026-08-13 18:16:14.542404+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f21e6d0b-71a3-454c-be66-f219008df5de	2	1	2026-08-13 18:16:38.235505+00	2026-08-13 18:16:38.625218+00	2026-08-13 18:16:38.625218+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3a9c898c-be9e-4d57-a5e6-9020acaac454	2	1	2026-08-13 18:17:00.967987+00	2026-08-13 18:17:01.337641+00	2026-08-13 18:17:01.337641+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	95642c20-f5db-4f5b-bae5-571d0be59c0e	1	1	2026-08-13 18:17:19.384692+00	2026-08-13 18:17:19.766051+00	2026-08-13 18:17:19.766051+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3f42ba8b-9f0d-496f-aad9-df09e37524c4	4	1	2026-08-13 18:19:10.125671+00	2026-08-13 18:19:10.474417+00	2026-08-13 18:19:10.474417+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	714016dc-e0da-44d4-9986-79b94df84fee	2	1	2026-08-13 18:19:14.710575+00	2026-08-13 18:19:12.137188+00	2026-08-13 18:19:15.091609+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	62776da7-16fb-4472-ad06-7bd169e8cb33	4	1	2026-08-13 18:19:26.679672+00	2026-08-13 18:19:27.042369+00	2026-08-13 18:19:27.042369+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	010ec073-74fe-413c-af51-7897e95e21f7	2	1	2026-08-13 18:19:51.126487+00	2026-08-13 18:19:51.618748+00	2026-08-13 18:19:51.618748+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	318de17c-e8b8-4db6-8d53-c225c4303823	4	1	2026-08-13 20:47:25.929+00	2026-08-13 20:47:26.491077+00	2026-08-13 20:47:26.491077+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	22e9d665-6a37-4697-bbb3-956a69b0b573	4	1	2026-08-13 20:47:28.634+00	2026-08-13 20:47:28.998003+00	2026-08-13 20:47:28.998003+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4c67223d-d4a7-4617-bf8e-019f3ebb6729	4	1	2026-08-13 20:47:30.081+00	2026-08-13 20:47:30.444589+00	2026-08-13 20:47:30.444589+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	168f1999-ab6f-4532-92e6-c0c8b54b0e47	4	1	2026-08-13 20:47:31.681+00	2026-08-13 20:47:32.047096+00	2026-08-13 20:47:32.047096+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	85efe4fd-955b-4168-8754-99493ab889af	4	1	2026-08-13 20:47:34.377+00	2026-08-13 20:47:34.752398+00	2026-08-13 20:47:34.752398+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	82176c5c-89e3-4b69-8cab-7fefef5b1879	4	1	2026-08-13 20:47:35.609+00	2026-08-13 20:47:35.972984+00	2026-08-13 20:47:35.972984+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	01246217-ab3e-41df-b9c8-da7d20590036	4	1	2026-08-13 20:47:36.927+00	2026-08-13 20:47:37.300924+00	2026-08-13 20:47:37.300924+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e8156625-bceb-4770-9a34-10a3c106b767	4	1	2026-08-13 20:47:38.096+00	2026-08-13 20:47:38.476549+00	2026-08-13 20:47:38.476549+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	80935951-a4ef-4529-a5ad-828616417213	4	1	2026-08-13 20:47:39.508+00	2026-08-13 20:47:39.873032+00	2026-08-13 20:47:39.873032+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2daa28d1-9edd-4993-8547-539d8f9b2a1e	4	1	2026-08-13 20:47:42.375+00	2026-08-13 20:47:42.741264+00	2026-08-13 20:47:42.741264+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	365afb4d-ff8d-4b6c-852e-6c5e842d293d	4	1	2026-08-13 20:47:44.681+00	2026-08-13 20:47:45.04574+00	2026-08-13 20:47:45.04574+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a78015d3-584a-4d73-8e32-548a71b8b2d3	4	1	2026-08-13 20:47:46.127+00	2026-08-13 20:47:46.511246+00	2026-08-13 20:47:46.511246+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9046c00f-4b8a-4e29-adad-b98dfe116fb9	4	1	2026-08-13 20:47:47.459+00	2026-08-13 20:47:47.83806+00	2026-08-13 20:47:47.83806+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	71bc51a4-0ed7-4ee2-a3cf-e89c1488cea0	4	1	2026-08-13 20:47:48.727+00	2026-08-13 20:47:49.096966+00	2026-08-13 20:47:49.096966+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7c70bdc0-ed6f-4df3-9c7d-c725d2d0de9e	4	1	2026-08-13 20:47:49.959+00	2026-08-13 20:47:50.313526+00	2026-08-13 20:47:50.313526+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	abad63f1-2a8e-406c-a8f2-0454d945fc8b	4	1	2026-08-13 20:47:51.577+00	2026-08-13 20:47:51.943471+00	2026-08-13 20:47:51.943471+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1653c88f-d90b-423e-8b38-3aa54860cb99	4	1	2026-08-13 20:47:53.108+00	2026-08-13 20:47:53.508282+00	2026-08-13 20:47:53.508282+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9573044c-ce35-4f79-a6d9-1694eb32dd57	4	1	2026-08-13 20:47:54.575+00	2026-08-13 20:47:54.93554+00	2026-08-13 20:47:54.93554+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b91d9c29-9627-486a-9d7f-65ab6e3c1924	4	1	2026-10-14 16:14:23.04006+00	2026-08-13 18:17:41.063465+00	2026-10-14 16:14:27.24202+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	4	1	2026-10-14 16:14:23.950401+00	2026-08-13 18:17:42.791949+00	2026-10-14 16:14:28.023797+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1da74290-c064-4069-bb09-0b73a2b08b49	4	1	2026-10-14 16:14:26.020743+00	2026-08-13 18:17:46.543703+00	2026-10-14 16:14:28.631047+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	73a6e6dd-136d-4d5e-8024-b3e53681375b	4	1	2026-10-14 16:14:26.865653+00	2026-08-13 18:17:47.99722+00	2026-10-14 16:14:29.17434+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	60964f68-31b0-4766-8633-d5c8c0b01baa	4	1	2026-10-14 16:14:28.233518+00	2026-08-13 18:17:44.198221+00	2026-10-14 16:14:29.464756+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	af766c32-a7de-4de1-ac45-216ddfc07e97	4	1	2026-10-14 16:14:30.127725+00	2026-08-13 18:17:50.261772+00	2026-10-14 16:14:35.194113+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	94292da6-5eec-4057-bd10-4ae5d06a3430	4	1	2026-10-14 16:14:30.738516+00	2026-08-13 18:17:45.285035+00	2026-10-14 16:14:35.833309+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e2662c74-ce5e-4fd4-b048-4ba45cf45fbb	0	1	2026-10-15 09:45:26.028408+00	2026-08-13 18:13:22.14598+00	2026-10-15 09:45:35.905297+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	767653da-5be0-405c-bbca-b2c82aa92919	0	1	2026-10-15 09:45:26.826424+00	2026-08-12 12:04:40.345013+00	2026-10-15 09:45:36.395331+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a8551464-09c4-4530-ad6b-cd3450020d59	0	1	2026-10-15 09:45:38.201142+00	2026-08-13 20:47:20.839057+00	2026-10-15 09:45:51.958065+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4909ed42-2acf-4a6f-a5c6-0c15bbdabb56	0	1	2026-10-15 09:45:38.033394+00	2026-08-13 20:47:19.798838+00	2026-10-15 09:45:51.560211+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c926039a-e4a8-4007-a78b-b40c39cd62f9	0	1	2026-10-15 09:45:38.961274+00	2026-08-13 20:47:22.345842+00	2026-10-15 09:45:52.532697+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0b415d8e-734a-4ff0-b7fb-d0ed6737bf7b	0	1	2026-10-15 09:45:39.699783+00	2026-08-13 20:47:24.283359+00	2026-10-15 09:45:53.078384+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	82bd1c5b-fb85-4a51-b4ce-e7bb7111b2f2	4	1	2026-08-13 20:47:56.125+00	2026-08-13 20:47:56.483473+00	2026-08-13 20:47:56.483473+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1ea8e12a-1316-47fa-89b1-beaa6cdbbfc4	4	1	2026-08-13 20:47:57.434+00	2026-08-13 20:47:57.803085+00	2026-08-13 20:47:57.803085+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	cecfefb8-8c88-46cf-91ab-a306665162ce	4	1	2026-08-13 20:47:58.649+00	2026-08-13 20:47:59.03653+00	2026-08-13 20:47:59.03653+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	78d060a9-5e4b-48a3-a64b-dff2fdb515f0	1	1	2026-08-13 22:07:06.100584+00	2026-08-13 22:07:06.679103+00	2026-08-13 22:07:06.679103+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	13b14810-0b22-4d99-a35d-26671ebd22de	2	1	2026-08-14 13:58:17.962+00	2026-08-14 13:58:18.450126+00	2026-08-14 13:58:18.450126+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6d520f20-b110-410e-8c52-5f2e3aa1e629	2	1	2026-08-14 13:58:45.649+00	2026-08-14 13:58:46.118192+00	2026-08-14 13:58:46.118192+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	77637b65-3285-46b7-991d-2d4be54c7f98	1	1	2026-08-14 13:59:20.093+00	2026-08-14 13:59:20.595642+00	2026-08-14 13:59:20.595642+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	47111217-82c9-4d1d-97cb-acf67854743f	3	1	2026-08-14 13:59:32.082+00	2026-08-14 13:59:32.582345+00	2026-08-14 13:59:32.582345+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bdf05763-f85a-4091-be47-730dfa2d9876	4	1	2026-08-14 13:59:45.627+00	2026-08-14 13:59:46.111686+00	2026-08-14 13:59:46.111686+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2e90c591-98a3-4102-af43-38925a4da785	3	1	2026-08-14 14:00:07.946+00	2026-08-14 14:00:06.361484+00	2026-08-14 14:00:08.431753+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4aadb1b6-308a-4532-9df7-601e80d0de60	4	1	2026-08-14 14:00:22.682+00	2026-08-14 14:00:23.213613+00	2026-08-14 14:00:23.213613+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	16e6375d-ce10-4c15-9703-28cb3b6e1736	4	1	2026-08-14 14:00:24.927+00	2026-08-14 14:00:25.403462+00	2026-08-14 14:00:25.403462+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8d216e72-95f0-4e08-a5d4-9b9f1a79c759	4	1	2026-08-14 14:00:36.602+00	2026-08-14 14:00:37.078878+00	2026-08-14 14:00:37.078878+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e4fb5e47-a1b5-482d-a13f-4eba8168a590	4	1	2026-08-14 14:00:39.578+00	2026-08-14 14:00:40.034216+00	2026-08-14 14:00:40.034216+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	cbaf3689-4999-4188-8997-29bdebd4a75d	4	1	2026-08-14 14:00:44.482+00	2026-08-14 14:00:44.945241+00	2026-08-14 14:00:44.945241+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e6a8c5a7-27b2-4382-ae96-840c5842434f	4	1	2026-08-14 14:00:48.46+00	2026-08-14 14:00:48.93294+00	2026-08-14 14:00:48.93294+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6c80df19-cf8a-491d-bff8-aa190671e5e6	3	1	2026-08-14 14:00:57.146+00	2026-08-14 14:00:53.968117+00	2026-08-14 14:00:57.672465+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4154a41c-3533-405f-a84d-cb27c4e324eb	4	1	2026-08-14 14:01:09.109+00	2026-08-14 14:01:09.59803+00	2026-08-14 14:01:09.59803+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b6ce3328-3887-47ec-b5d6-aa45464e96d3	4	1	2026-08-14 14:01:13.893+00	2026-08-14 14:01:14.578758+00	2026-08-14 14:01:14.578758+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4ed966f8-0f59-4c12-a135-54be64d925bf	4	1	2026-08-14 14:01:17.927+00	2026-08-14 14:01:18.403112+00	2026-08-14 14:01:18.403112+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	acf90969-c881-441d-91ca-7c94834b1385	4	1	2026-08-14 14:01:19.93+00	2026-08-14 14:01:20.497759+00	2026-08-14 14:01:20.497759+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2c320f47-0559-420e-bc4f-68b434019014	2	1	2026-08-16 16:14:44.573+00	2026-08-16 16:14:45.640811+00	2026-08-16 16:14:45.640811+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	feccd93e-c6cc-4500-bc9a-6d2bfbb22063	2	1	2026-08-16 16:14:46.288+00	2026-08-16 16:14:47.302936+00	2026-08-16 16:14:47.302936+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	819f188f-a2ca-4946-82a1-9fb35db50fa8	2	1	2026-08-16 16:14:47.693+00	2026-08-16 16:14:48.687053+00	2026-08-16 16:14:48.687053+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	672f910e-25b4-4361-9dff-079f53023c40	2	1	2026-08-16 16:14:49.205+00	2026-08-16 16:14:50.211261+00	2026-08-16 16:14:50.211261+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f18bca2c-d54e-470a-8277-d12c566d5f91	2	1	2026-08-16 16:14:51.212+00	2026-08-16 16:14:52.21702+00	2026-08-16 16:14:52.21702+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	609dc2fa-cfe8-4726-81ae-4763378d7ba8	2	1	2026-08-16 16:14:54.829+00	2026-08-16 16:14:55.838404+00	2026-08-16 16:14:55.838404+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	2	1	2026-08-16 16:14:56.507+00	2026-08-16 16:14:57.527391+00	2026-08-16 16:14:57.527391+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d74f56c7-3f54-4be3-bc61-d1ce2756472e	2	1	2026-08-16 16:14:57.228+00	2026-08-16 16:14:58.244139+00	2026-08-16 16:14:58.244139+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	448e8871-f835-4aad-8428-279b90ae21ba	2	1	2026-08-16 16:14:58.02+00	2026-08-16 16:14:59.031613+00	2026-08-16 16:14:59.031613+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	60246017-3a33-4ad4-8ec3-66e47cf0a8d5	2	1	2026-08-16 16:14:59.581+00	2026-08-16 16:15:00.579649+00	2026-08-16 16:15:00.579649+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	b91d9c29-9627-486a-9d7f-65ab6e3c1924	4	1	2026-10-04 11:24:01.3+00	2026-10-04 11:24:02.004832+00	2026-10-04 11:24:02.004832+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	94292da6-5eec-4057-bd10-4ae5d06a3430	4	1	2026-10-04 11:24:06.334+00	2026-10-04 11:24:06.979459+00	2026-10-04 11:24:06.979459+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	4	1	2026-10-04 11:24:10.232+00	2026-10-04 11:24:10.942418+00	2026-10-04 11:24:10.942418+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	73a6e6dd-136d-4d5e-8024-b3e53681375b	4	1	2026-10-04 11:24:16.483+00	2026-10-04 11:24:17.262404+00	2026-10-04 11:24:17.262404+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	1da74290-c064-4069-bb09-0b73a2b08b49	4	1	2026-10-04 11:24:19.691+00	2026-10-04 11:24:20.430233+00	2026-10-04 11:24:20.430233+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	60964f68-31b0-4766-8633-d5c8c0b01baa	4	1	2026-10-04 11:24:24.284+00	2026-10-04 11:24:24.916573+00	2026-10-04 11:24:24.916573+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	b7f42b93-b49f-45ae-b4cf-8e30b8119dc5	4	1	2026-10-04 11:24:29.275+00	2026-10-04 11:24:29.976758+00	2026-10-04 11:24:29.976758+00	f	\N
74c3ff16-f356-4a1d-8476-79a04cdc3940	af766c32-a7de-4de1-ac45-216ddfc07e97	4	1	2026-10-04 11:24:35.136+00	2026-10-04 11:23:42.658602+00	2026-10-04 11:24:35.781552+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	625d7065-500b-4ffe-9d61-ebaa7e0039f6	1	1	2026-10-04 12:01:40.282167+00	2026-10-04 12:01:38.187924+00	2026-10-04 12:01:40.234785+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	da6b314c-d114-49c7-9d3d-55e61e667189	4	1	2026-10-14 13:36:11.834107+00	2026-10-14 13:36:28.414861+00	2026-10-14 13:36:28.414861+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	9e66c960-96a5-475d-ac6a-32928ef2b144	4	1	2026-10-14 13:36:12.365763+00	2026-10-14 13:36:29.446381+00	2026-10-14 13:36:29.446381+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2ae58d9a-4392-402b-9ede-ec5a6562ae6a	4	1	2026-10-14 13:36:14.024606+00	2026-10-14 13:36:30.536555+00	2026-10-14 13:36:30.536555+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	368c7896-f721-411e-bf26-247801866071	4	1	2026-10-14 13:36:14.493975+00	2026-10-14 13:36:31.157+00	2026-10-14 13:36:31.157+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	3afb5394-3426-4dab-b36f-1f2801078d70	4	1	2026-10-14 13:36:15.963128+00	2026-10-14 13:36:31.896425+00	2026-10-14 13:36:31.896425+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	506a32bb-a3a6-41f2-8556-cd49bdee1af8	4	1	2026-10-14 13:36:17.176401+00	2026-10-14 13:36:33.439405+00	2026-10-14 13:36:33.439405+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	88bf949b-e5bb-46a4-b527-e6bea5cd8215	4	1	2026-10-14 13:36:17.588104+00	2026-10-14 13:36:34.060277+00	2026-10-14 13:36:34.060277+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b742040d-8686-47b5-922c-664e7b7dbb53	4	1	2026-10-14 13:36:18.861562+00	2026-10-14 13:36:34.559414+00	2026-10-14 13:36:34.559414+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c0f52386-a764-43d2-b3c7-efd99a96ae33	4	1	2026-10-14 13:36:19.335759+00	2026-10-14 13:36:35.721063+00	2026-10-14 13:36:35.721063+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	16cbf7a1-56cc-401e-807a-dbd5b892ae35	4	1	2026-10-14 13:36:20.631355+00	2026-10-14 13:36:36.574662+00	2026-10-14 13:36:36.574662+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	157de1bf-0b28-4b0b-b157-6f4393dece6a	4	1	2026-10-14 13:36:21.045106+00	2026-10-14 13:36:37.463053+00	2026-10-14 13:36:37.463053+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	8acb2782-5d25-42b7-936d-0190d892bed0	4	1	2026-10-14 13:36:22.29729+00	2026-10-14 13:36:38.307892+00	2026-10-14 13:36:38.307892+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0ea1a418-6d41-45b0-9304-b5af470af768	4	1	2026-10-14 13:36:23.627424+00	2026-10-14 13:36:39.694589+00	2026-10-14 13:36:39.694589+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	fb68f487-7332-4fbb-95e5-4e115211e6f4	4	1	2026-10-14 13:36:24.025841+00	2026-10-14 13:36:41.164254+00	2026-10-14 13:36:41.164254+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	f8e5d91e-1973-469d-a0f1-01aba151e440	4	1	2026-10-14 13:36:25.271681+00	2026-10-14 13:36:42.748415+00	2026-10-14 13:36:42.748415+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	d29e1418-1d14-4f4e-9c2d-0b0edf9b1b36	4	1	2026-10-14 13:36:25.706726+00	2026-10-14 13:36:44.241327+00	2026-10-14 13:36:44.241327+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	d74f56c7-3f54-4be3-bc61-d1ce2756472e	2	1	2026-10-14 13:36:39.15521+00	2026-10-14 13:36:45.434992+00	2026-10-14 13:36:45.434992+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	3	1	2026-10-14 13:36:40.891899+00	2026-10-14 13:36:46.004476+00	2026-10-14 13:36:46.004476+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	609dc2fa-cfe8-4726-81ae-4763378d7ba8	3	1	2026-10-14 13:36:41.583123+00	2026-10-14 13:36:46.667872+00	2026-10-14 13:36:46.667872+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	f18bca2c-d54e-470a-8277-d12c566d5f91	2	1	2026-10-14 13:36:42.908517+00	2026-10-14 13:36:47.473064+00	2026-10-14 13:36:47.473064+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	672f910e-25b4-4361-9dff-079f53023c40	3	1	2026-10-14 13:36:43.535331+00	2026-10-14 13:36:47.856447+00	2026-10-14 13:36:47.856447+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	819f188f-a2ca-4946-82a1-9fb35db50fa8	1	1	2026-10-14 13:36:44.938729+00	2026-10-14 13:36:48.486328+00	2026-10-14 13:36:48.486328+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	feccd93e-c6cc-4500-bc9a-6d2bfbb22063	1	1	2026-10-14 13:36:46.20556+00	2026-10-14 13:36:49.209675+00	2026-10-14 13:36:49.209675+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2c320f47-0559-420e-bc4f-68b434019014	3	1	2026-10-14 13:36:46.956085+00	2026-10-14 13:36:49.742822+00	2026-10-14 13:36:49.742822+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	de1acd25-0f59-4844-99c8-6c7deb411b8a	2	1	2026-10-14 13:36:48.303757+00	2026-08-17 23:05:32.683344+00	2026-10-14 13:36:50.023899+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	e21938f5-c84c-4104-89fd-a030234cb5de	3	1	2026-10-14 13:36:51.815729+00	2026-10-14 13:36:54.155487+00	2026-10-14 13:36:54.155487+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	da6b314c-d114-49c7-9d3d-55e61e667189	3	1	2026-10-15 09:41:44.882459+00	2026-10-14 16:11:37.554666+00	2026-10-15 09:41:50.397464+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9e66c960-96a5-475d-ac6a-32928ef2b144	3	1	2026-10-15 09:41:45.836344+00	2026-10-14 16:11:36.796933+00	2026-10-15 10:40:24.702377+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2ae58d9a-4392-402b-9ede-ec5a6562ae6a	3	1	2026-10-15 09:41:46.690863+00	2026-10-14 16:11:38.188298+00	2026-10-15 09:41:51.264109+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	368c7896-f721-411e-bf26-247801866071	3	1	2026-10-15 09:41:49.010478+00	2026-10-14 16:11:38.766015+00	2026-10-15 09:41:51.554812+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3afb5394-3426-4dab-b36f-1f2801078d70	3	1	2026-10-15 09:41:49.674504+00	2026-10-14 16:11:39.325662+00	2026-10-15 09:41:51.836138+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	506a32bb-a3a6-41f2-8556-cd49bdee1af8	3	1	2026-10-15 09:41:51.091105+00	2026-10-14 16:11:39.851116+00	2026-10-15 09:41:52.765725+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	88bf949b-e5bb-46a4-b527-e6bea5cd8215	3	1	2026-10-15 09:41:52.459748+00	2026-10-14 16:11:40.553186+00	2026-10-15 09:42:05.628814+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b742040d-8686-47b5-922c-664e7b7dbb53	3	1	2026-10-15 09:41:53.266069+00	2026-10-14 16:11:40.86152+00	2026-10-15 09:42:05.991847+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0ea1a418-6d41-45b0-9304-b5af470af768	3	1	2026-10-15 09:41:58.86055+00	2026-08-25 21:51:39.616161+00	2026-10-15 09:42:08.040089+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d29e1418-1d14-4f4e-9c2d-0b0edf9b1b36	3	1	2026-10-15 09:42:02.810223+00	2026-08-16 16:15:02.277051+00	2026-10-15 09:42:09.048228+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	de1acd25-0f59-4844-99c8-6c7deb411b8a	0	1	2026-10-15 09:45:23.265472+00	2026-08-14 13:58:08.641745+00	2026-10-15 09:45:34.636448+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e21938f5-c84c-4104-89fd-a030234cb5de	0	1	2026-10-15 09:45:24.634401+00	2026-08-14 13:58:10.044012+00	2026-10-15 09:45:35.092234+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c0f52386-a764-43d2-b3c7-efd99a96ae33	3	1	2026-10-15 09:41:54.842294+00	2026-10-14 16:11:41.518001+00	2026-10-15 09:42:06.371265+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	157de1bf-0b28-4b0b-b157-6f4393dece6a	3	1	2026-10-15 09:41:56.954377+00	2026-10-14 16:11:42.557276+00	2026-10-15 09:42:07.242425+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b7f42b93-b49f-45ae-b4cf-8e30b8119dc5	4	1	2026-10-14 16:14:32.191532+00	2026-08-25 19:55:02.93493+00	2026-10-14 16:14:36.098033+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6d04eea0-8f76-4928-8d8b-bf1432dfb182	4	1	2026-10-14 16:14:44.758187+00	2026-10-14 16:14:47.764379+00	2026-10-14 16:14:47.764379+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	580e921b-cdcb-4dba-90be-932917021465	4	1	2026-10-15 09:37:56.883419+00	2026-10-15 09:38:07.885421+00	2026-10-15 09:38:07.885421+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0f9a5c5e-c5d7-493c-822b-e7cad9106506	4	1	2026-10-15 09:37:57.787458+00	2026-10-15 09:38:09.018877+00	2026-10-15 09:38:09.018877+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b74662a4-c5e9-4a92-9468-2fc47a3b4c2d	4	1	2026-10-15 09:37:58.689908+00	2026-10-15 09:38:09.583913+00	2026-10-15 09:38:09.583913+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5553ab9d-ab62-41f5-8e6a-142be931ecfe	4	1	2026-10-15 09:37:59.466411+00	2026-10-15 09:38:10.34051+00	2026-10-15 09:38:10.34051+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ef5da869-b652-4a25-b7f6-089974b64d4b	4	1	2026-10-15 09:37:59.94706+00	2026-10-15 09:38:10.93656+00	2026-10-15 09:38:10.93656+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6751972f-ec94-4535-b68a-686ea9223d56	4	1	2026-10-15 09:38:00.105961+00	2026-10-15 09:38:11.591964+00	2026-10-15 09:38:11.591964+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	cad46881-7d40-49b0-bde7-da05de36ad31	4	1	2026-10-15 09:38:00.283821+00	2026-10-15 09:38:12.275428+00	2026-10-15 09:38:12.275428+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d4e68862-d5f4-4e94-a5d7-f7b1f344b209	4	1	2026-10-15 09:38:00.461308+00	2026-10-15 09:38:12.916297+00	2026-10-15 09:38:12.916297+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e679f83d-2945-4b9f-a987-663a9dda0630	4	1	2026-10-15 09:38:00.634298+00	2026-10-15 09:38:13.377484+00	2026-10-15 09:38:13.377484+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a467fea2-ef7e-497b-ade5-6e76469154dd	4	1	2026-10-15 09:38:00.788401+00	2026-10-15 09:38:14.104286+00	2026-10-15 09:38:14.104286+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	07a4f22c-f509-470d-b953-8460a0c75c58	4	1	2026-10-15 09:38:00.947137+00	2026-10-15 09:38:14.372581+00	2026-10-15 09:38:14.372581+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	de4efe17-fa92-40a5-b5bb-5764d9edb34a	4	1	2026-10-15 09:38:01.106642+00	2026-10-15 09:38:15.024798+00	2026-10-15 09:38:15.024798+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	32340036-a2f2-45d9-b99b-c8b096bbf32b	4	1	2026-10-15 09:38:01.269342+00	2026-10-15 09:38:15.689802+00	2026-10-15 09:38:15.689802+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e9503d02-a0b4-435c-8e8b-dfc6dc0b1ca7	4	1	2026-10-15 09:38:01.435478+00	2026-10-15 09:38:16.493671+00	2026-10-15 09:38:16.493671+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	20071b94-7c71-4aba-a90d-b17f64967c97	4	1	2026-10-15 09:38:01.603301+00	2026-10-15 09:38:16.868773+00	2026-10-15 09:38:16.868773+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	302b8f91-4003-4e9c-8596-b06adfcab70b	4	1	2026-10-15 09:38:01.755462+00	2026-10-15 09:38:17.502509+00	2026-10-15 09:38:17.502509+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ca905226-6ae6-4de0-b59b-b4f57feecd7e	4	1	2026-10-15 09:38:01.930081+00	2026-10-15 09:38:18.236255+00	2026-10-15 09:38:18.236255+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9cbff467-d7e1-4f70-8b64-d71637374255	4	1	2026-10-15 09:38:02.098512+00	2026-10-15 09:38:18.908812+00	2026-10-15 09:38:18.908812+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	75552068-b8f5-47e3-959e-b17744719375	4	1	2026-10-15 09:38:02.270186+00	2026-10-15 09:38:19.557828+00	2026-10-15 09:38:19.557828+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0ecafd78-6258-45d9-a37a-12d892414459	4	1	2026-10-15 09:38:02.426065+00	2026-10-15 09:38:19.856966+00	2026-10-15 09:38:19.856966+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3ba2e787-da94-4c20-9546-640efb2de8c9	4	1	2026-10-15 09:38:02.594776+00	2026-10-15 09:38:20.564696+00	2026-10-15 09:38:20.564696+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e710d6aa-85d7-4292-a9d6-fb62d8cfa70f	4	1	2026-10-15 09:38:02.770415+00	2026-10-15 09:38:21.405866+00	2026-10-15 09:38:21.405866+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ac4404fe-f7ed-43e4-abbe-6885da7abf7d	4	1	2026-10-15 09:38:02.938379+00	2026-10-15 09:38:22.124286+00	2026-10-15 09:38:22.124286+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	619d07ee-c770-4a3d-8072-f2b6a8f83547	4	1	2026-10-15 09:38:03.123114+00	2026-10-15 09:38:22.494241+00	2026-10-15 09:38:22.494241+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ad2cfecc-8e1d-458c-99f7-fc4e9c2eee22	4	1	2026-10-15 09:38:03.314551+00	2026-10-15 09:38:23.323439+00	2026-10-15 09:38:23.323439+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	72f3a119-648e-4baf-99cb-2410689f864c	4	1	2026-10-15 09:38:03.505741+00	2026-10-15 09:38:23.761281+00	2026-10-15 09:38:23.761281+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7c734fa1-b478-45b0-bc48-546195998d71	4	1	2026-10-15 09:38:03.691088+00	2026-10-15 09:38:24.560781+00	2026-10-15 09:38:24.560781+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d706a862-f0ed-4a84-8a0b-146bb58e2261	4	1	2026-10-15 09:38:03.875002+00	2026-10-15 09:38:25.378483+00	2026-10-15 09:38:25.378483+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	130c07d6-e903-4e8f-8224-3389c26bc515	4	1	2026-10-15 09:38:04.050707+00	2026-10-15 09:38:25.7166+00	2026-10-15 09:38:25.7166+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bb58d920-56b6-4afe-a5d3-3626ddf1efb2	4	1	2026-10-15 09:38:04.235206+00	2026-10-15 09:38:26.520138+00	2026-10-15 09:38:26.520138+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	da5dee00-8325-4fdc-a0a9-334324b68cc5	4	1	2026-10-15 09:38:04.406519+00	2026-10-15 09:38:27.147606+00	2026-10-15 09:38:27.147606+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	be8f34f5-ca5d-4e92-804a-7fcb2a60fd7b	4	1	2026-10-15 09:38:04.586359+00	2026-10-15 09:38:27.478499+00	2026-10-15 09:38:27.478499+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f536e2f1-f0a2-49bc-8c70-f36bafc4d381	4	1	2026-10-15 09:38:04.762197+00	2026-10-15 09:38:27.778734+00	2026-10-15 09:38:27.778734+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4bb1d6d5-9d7e-477f-92b0-13c44770cfb8	4	1	2026-10-15 09:38:04.948949+00	2026-10-15 09:38:28.594013+00	2026-10-15 09:38:28.594013+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	506d05ca-dd18-42e3-96c1-4564546f2533	4	1	2026-10-15 09:38:05.114258+00	2026-10-15 09:38:29.30111+00	2026-10-15 09:38:29.30111+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b1403c3a-0bb4-487c-9150-721da21c93dc	4	1	2026-10-15 09:38:05.283086+00	2026-10-15 09:38:29.694683+00	2026-10-15 09:38:29.694683+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6f92dbcb-19fb-41a6-b520-92e86bd8425e	4	1	2026-10-15 09:38:05.466629+00	2026-10-15 09:38:30.529472+00	2026-10-15 09:38:30.529472+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6f095bab-9373-4482-a9e6-9a89f0816f2e	4	1	2026-10-15 09:38:05.642727+00	2026-10-15 09:38:31.352968+00	2026-10-15 09:38:31.352968+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c787a0b5-ddac-4f82-8d76-2e36c93ff138	4	1	2026-10-15 09:38:05.817906+00	2026-10-15 09:38:32.226375+00	2026-10-15 09:38:32.226375+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d69e852c-f635-4caa-8211-b82b6dbeb51d	4	1	2026-10-15 09:38:06.002976+00	2026-10-15 09:38:33.041966+00	2026-10-15 09:38:33.041966+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b3da75bc-70bd-45f6-8a84-edad866138e3	4	1	2026-10-15 09:38:06.180566+00	2026-10-15 09:38:34.095893+00	2026-10-15 09:38:34.095893+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5d4a2702-331f-4574-8400-5c7da1d17a5b	4	1	2026-10-15 09:38:06.354428+00	2026-10-15 09:38:34.416408+00	2026-10-15 09:38:34.416408+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	685d22c9-ebdd-4c9a-8b17-911107129bc9	4	1	2026-10-15 09:38:06.537939+00	2026-10-15 09:38:35.17006+00	2026-10-15 09:38:35.17006+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	596f5935-3694-4ef6-9b44-998425459e8a	4	1	2026-10-15 09:38:06.714168+00	2026-10-15 09:38:35.49168+00	2026-10-15 09:38:35.49168+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9ef37779-6967-4ce5-8d70-c6e94ae9ed14	4	1	2026-10-15 09:38:06.905997+00	2026-10-15 09:38:36.524961+00	2026-10-15 09:38:36.524961+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	941b8f4f-2543-4f32-9197-389d424a2144	4	1	2026-10-15 09:38:07.081614+00	2026-10-15 09:38:37.255701+00	2026-10-15 09:38:37.255701+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	c305b49d-499a-4d69-96ff-8be56196d7e1	4	1	2026-10-15 09:38:07.280503+00	2026-10-15 09:38:38.039827+00	2026-10-15 09:38:38.039827+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	7ce11e63-75d4-4178-a8b4-764729a9e1b6	4	1	2026-10-15 09:38:07.45873+00	2026-10-15 09:38:38.695769+00	2026-10-15 09:38:38.695769+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	90f284a5-200c-4ad7-88c8-fd7f79450ced	4	1	2026-10-15 09:38:07.642371+00	2026-10-15 09:38:39.320288+00	2026-10-15 09:38:39.320288+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d36facf4-5070-433a-b9fe-58599af1c76a	4	1	2026-10-15 09:38:07.818573+00	2026-10-15 09:38:40.226075+00	2026-10-15 09:38:40.226075+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	b2a79960-224d-4308-9688-c9660fe52833	4	1	2026-10-15 09:38:07.994738+00	2026-10-15 09:38:40.918023+00	2026-10-15 09:38:40.918023+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fc370890-c3b4-44e8-a05d-55c6a698ed8b	4	1	2026-10-15 09:38:08.371168+00	2026-10-15 09:38:42.401532+00	2026-10-15 09:38:42.401532+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	1ec56b2d-df16-48bc-98b3-a7a9b1e05644	4	1	2026-10-15 09:38:08.546571+00	2026-10-15 09:38:42.787902+00	2026-10-15 09:38:42.787902+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a33cc97d-3e8f-4a90-8279-5083d42c88da	4	1	2026-10-15 09:38:08.738988+00	2026-10-15 09:38:43.413705+00	2026-10-15 09:38:43.413705+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4fa44a23-49de-49b8-8d7e-6277126e0345	4	1	2026-10-15 09:38:08.939029+00	2026-10-15 09:38:44.013374+00	2026-10-15 09:38:44.013374+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8a425c60-1e64-4af5-b341-7f91eb54cefb	4	1	2026-10-15 09:38:09.122684+00	2026-10-15 09:38:44.780551+00	2026-10-15 09:38:44.780551+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	4e2b9955-5a3a-480f-b9da-ea0191aea144	4	1	2026-10-15 09:38:09.290925+00	2026-10-15 09:38:45.394476+00	2026-10-15 09:38:45.394476+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0cdd139b-b114-45bb-8373-c046683bd09a	4	1	2026-10-15 09:38:09.48172+00	2026-10-15 09:38:45.72756+00	2026-10-15 09:38:45.72756+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0942ce39-a5d1-470c-8a13-4c6561bcd1d8	4	1	2026-10-15 09:38:09.657983+00	2026-10-15 09:38:46.645025+00	2026-10-15 09:38:46.645025+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	6b2d5c12-bd5f-4014-bb2b-4993ddc7b3a7	4	1	2026-10-15 09:38:09.835573+00	2026-10-15 09:38:47.358806+00	2026-10-15 09:38:47.358806+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	65c17f3b-d36a-4b22-8b80-378fe5214934	4	1	2026-10-15 09:38:10.005668+00	2026-10-15 09:38:48.244847+00	2026-10-15 09:38:48.244847+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f2324e26-9cd2-47d0-8ded-23181042d756	4	1	2026-10-15 09:38:10.186055+00	2026-10-15 09:38:48.905206+00	2026-10-15 09:38:48.905206+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ff1a6ded-6a8f-4468-b6d9-32e803a4252f	4	1	2026-10-15 09:38:10.371044+00	2026-10-15 09:38:49.5667+00	2026-10-15 09:38:49.5667+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	96dc762a-2c3e-4772-a1d0-6848dc052e63	4	1	2026-10-15 09:38:11.898447+00	2026-10-15 09:38:50.821603+00	2026-10-15 09:38:50.821603+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	16cbf7a1-56cc-401e-807a-dbd5b892ae35	3	1	2026-10-15 09:41:55.642128+00	2026-10-14 16:11:42.058838+00	2026-10-15 09:42:06.777944+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	8acb2782-5d25-42b7-936d-0190d892bed0	3	1	2026-10-15 09:41:57.595676+00	2026-10-14 16:11:43.078593+00	2026-10-15 09:42:07.677509+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fb68f487-7332-4fbb-95e5-4e115211e6f4	3	1	2026-10-15 09:42:00.186166+00	2026-10-15 09:38:50.237848+00	2026-10-15 09:42:08.394161+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f8e5d91e-1973-469d-a0f1-01aba151e440	3	1	2026-10-15 09:42:02.060087+00	2026-08-16 16:15:03.900383+00	2026-10-15 09:42:08.715814+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	137f83eb-7935-43a4-a610-9d2bcada4640	0	1	2026-10-15 09:45:25.305511+00	2026-08-13 18:13:24.874689+00	2026-10-15 09:45:35.520009+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fb3970bc-ac4b-45da-8512-674beef934ce	0	1	2026-10-15 09:45:28.74663+00	2026-08-12 12:04:46.678399+00	2026-10-15 09:45:39.467567+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	40d39b8d-8402-4a45-b2b6-f6ac1f3fe592	0	1	2026-10-15 09:45:31.833985+00	2026-08-12 12:04:56.307637+00	2026-10-15 09:45:42.453415+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	33560d31-49b3-49ac-bb67-9b379ab273cf	0	1	2026-10-15 09:45:36.213615+00	2026-08-12 12:05:14.475442+00	2026-10-15 09:45:45.898432+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	09a0265a-39a6-4370-abc2-914463f5a500	0	1	2026-10-15 09:45:37.883585+00	2026-08-13 18:15:59.953126+00	2026-10-15 09:45:48.980522+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	75552068-b8f5-47e3-959e-b17744719375	4	1	2026-10-15 13:25:15.954598+00	2026-10-15 13:25:20.758968+00	2026-10-15 13:25:20.758968+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	ca905226-6ae6-4de0-b59b-b4f57feecd7e	4	1	2026-10-15 13:25:16.424328+00	2026-10-15 13:25:21.526961+00	2026-10-15 13:25:21.526961+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	9cbff467-d7e1-4f70-8b64-d71637374255	4	1	2026-10-15 13:25:17.601532+00	2026-10-15 13:25:22.365038+00	2026-10-15 13:25:22.365038+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	0ecafd78-6258-45d9-a37a-12d892414459	3	1	2026-10-15 13:25:18.032092+00	2026-10-15 13:25:23.164685+00	2026-10-15 13:25:23.164685+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	3ba2e787-da94-4c20-9546-640efb2de8c9	3	1	2026-10-15 13:25:20.318582+00	2026-10-15 13:25:23.570435+00	2026-10-15 13:25:23.570435+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	4fa44a23-49de-49b8-8d7e-6277126e0345	4	1	2026-10-15 13:25:21.439118+00	2026-10-15 13:25:24.515315+00	2026-10-15 13:25:24.515315+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	596f5935-3694-4ef6-9b44-998425459e8a	4	1	2026-10-15 13:25:22.549976+00	2026-10-15 13:25:24.827368+00	2026-10-15 13:25:24.827368+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	619d07ee-c770-4a3d-8072-f2b6a8f83547	4	1	2026-10-15 13:25:23.041608+00	2026-10-15 13:25:25.665882+00	2026-10-15 13:25:25.665882+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	7ce11e63-75d4-4178-a8b4-764729a9e1b6	4	1	2026-10-15 13:25:24.12331+00	2026-10-15 13:25:26.487945+00	2026-10-15 13:25:26.487945+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	8a425c60-1e64-4af5-b341-7f91eb54cefb	4	1	2026-10-15 13:25:25.083614+00	2026-10-15 13:25:27.191675+00	2026-10-15 13:25:27.191675+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	c305b49d-499a-4d69-96ff-8be56196d7e1	4	1	2026-10-15 13:25:25.97745+00	2026-10-15 13:25:27.897869+00	2026-10-15 13:25:27.897869+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	b91d9c29-9627-486a-9d7f-65ab6e3c1924	4	1	2026-10-15 13:25:45.283838+00	2026-10-15 13:25:48.159999+00	2026-10-15 13:25:48.159999+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	4	1	2026-10-15 13:25:45.870407+00	2026-10-15 13:25:49.031122+00	2026-10-15 13:25:49.031122+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	0942ce39-a5d1-470c-8a13-4c6561bcd1d8	4	1	2026-10-15 13:30:14.955625+00	2026-10-15 13:30:34.002951+00	2026-10-15 13:30:34.002951+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	625d7065-500b-4ffe-9d61-ebaa7e0039f6	3	1	2026-10-15 13:30:15.534128+00	2026-10-15 13:30:34.902702+00	2026-10-15 13:30:34.902702+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	0cdd139b-b114-45bb-8373-c046683bd09a	3	1	2026-10-15 13:30:17.016648+00	2026-10-15 13:30:35.383015+00	2026-10-15 13:30:35.383015+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	0fb4a2b2-326a-4f4c-a0df-9bf974bb6364	3	1	2026-10-15 13:30:17.472477+00	2026-10-15 13:30:35.809757+00	2026-10-15 13:30:35.809757+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	2c320f47-0559-420e-bc4f-68b434019014	2	1	2026-10-15 13:30:18.559043+00	2026-10-15 13:30:36.169267+00	2026-10-15 13:30:36.169267+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	2e90c591-98a3-4102-af43-38925a4da785	2	1	2026-10-15 13:30:20.920445+00	2026-10-15 13:30:36.629966+00	2026-10-15 13:30:37.504411+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	315c75b3-623c-4d25-ac2b-55de187e5e0a	1	1	2026-10-15 13:30:21.923236+00	2026-10-15 13:30:38.005692+00	2026-10-15 13:30:38.005692+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	33560d31-49b3-49ac-bb67-9b379ab273cf	1	1	2026-10-15 13:30:22.44025+00	2026-10-15 13:30:38.441661+00	2026-10-15 13:30:38.441661+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	34a82dce-e3c5-47b9-90c3-2939d035f28c	1	1	2026-10-15 13:30:23.793561+00	2026-10-15 13:30:38.865219+00	2026-10-15 13:30:38.865219+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	39794236-b2c4-460d-b1e8-22cd01671d4c	2	1	2026-10-15 13:30:24.324463+00	2026-10-15 13:30:39.311169+00	2026-10-15 13:30:39.311169+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	4e2b9955-5a3a-480f-b9da-ea0191aea144	2	1	2026-10-15 13:30:25.657548+00	2026-10-15 13:30:39.825671+00	2026-10-15 13:30:40.197683+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	5352a0ac-0ff3-4112-ac76-f25cffaa4c25	1	1	2026-10-15 13:30:26.985309+00	2026-10-15 13:30:40.738443+00	2026-10-15 13:30:40.738443+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	65c17f3b-d36a-4b22-8b80-378fe5214934	2	1	2026-10-15 13:30:28.153121+00	2026-10-15 13:30:41.273925+00	2026-10-15 13:30:41.273925+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	e285ac10-ec9c-42a9-b45e-3bff62379c5c	2	1	2026-10-15 13:30:29.27446+00	2026-10-15 13:30:41.549807+00	2026-10-15 13:30:41.549807+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	29b1707d-0483-481d-bde2-47ee88ce79f1	3	1	2026-10-15 13:30:30.365043+00	2026-10-15 13:30:41.96065+00	2026-10-15 13:30:41.96065+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	2c23293c-4a0c-45fb-a4bb-26e3bf8b442f	3	1	2026-10-15 13:30:31.276814+00	2026-10-15 13:30:42.303148+00	2026-10-15 13:30:42.303148+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	426a0a7e-e4b3-4880-96b2-95888769984d	4	1	2026-10-15 21:12:51.53815+00	2026-10-15 21:12:52.507446+00	2026-10-15 21:12:52.507446+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	a467fea2-ef7e-497b-ade5-6e76469154dd	4	1	2026-10-15 21:12:55.904148+00	2026-10-15 21:13:00.692023+00	2026-10-15 21:13:00.692023+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	6d04eea0-8f76-4928-8d8b-bf1432dfb182	4	1	2026-10-15 21:12:57.66134+00	2026-10-15 21:13:00.965799+00	2026-10-15 21:13:00.965799+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	484b551d-cefc-4c20-9e82-e073b1828978	4	1	2026-10-15 21:13:10.48721+00	2026-10-15 21:13:13.518429+00	2026-10-15 21:13:13.518429+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	fc370890-c3b4-44e8-a05d-55c6a698ed8b	4	1	2026-10-15 21:13:15.962936+00	2026-10-15 21:13:18.668395+00	2026-10-15 21:13:18.668395+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	b2a79960-224d-4308-9688-c9660fe52833	4	1	2026-10-15 21:13:21.724412+00	2026-10-15 21:13:24.412664+00	2026-10-15 21:13:24.412664+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	d36facf4-5070-433a-b9fe-58599af1c76a	4	1	2026-10-15 21:13:25.288939+00	2026-10-15 21:13:29.566099+00	2026-10-15 21:13:29.566099+00	f	\N
b249485c-b7a9-40fd-bc98-776588cc987d	90f284a5-200c-4ad7-88c8-fd7f79450ced	4	1	2026-10-15 21:13:26.871477+00	2026-10-15 21:13:30.100579+00	2026-10-15 21:13:30.100579+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a84061a5-c912-4b88-a5a1-fd02a369a26d	4	1	2026-10-15 22:04:28.205792+00	2026-10-15 22:04:30.986949+00	2026-10-15 22:04:30.986949+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	08e2f88a-4285-4842-b045-791b8fdc2ba9	4	1	2026-10-16 14:06:43.268425+00	2026-10-16 14:06:49.1337+00	2026-10-16 14:06:49.1337+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5945ce1a-b5c6-493a-8627-bebaafe0592e	4	1	2026-10-16 14:06:44.474915+00	2026-10-16 14:06:49.861197+00	2026-10-16 14:06:49.861197+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	9b116210-dc93-42d6-9a56-9509d699c445	4	1	2026-10-16 14:06:46.218038+00	2026-10-16 14:06:50.8759+00	2026-10-16 14:06:50.8759+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	3d845823-371a-47a0-9548-b38d4a15313d	4	1	2026-10-16 14:18:28.635268+00	2026-10-16 14:18:32.298809+00	2026-10-16 14:18:32.298809+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	dd398462-a44f-46b4-944f-6e8a88407c0f	4	1	2026-10-16 14:18:29.485088+00	2026-10-16 14:18:32.698498+00	2026-10-16 14:18:32.698498+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	426a0a7e-e4b3-4880-96b2-95888769984d	4	1	2026-10-16 14:18:54.226894+00	2026-10-16 14:18:58.783596+00	2026-10-16 14:18:58.783596+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	484b551d-cefc-4c20-9e82-e073b1828978	4	1	2026-10-16 14:18:55.931867+00	2026-10-16 14:18:59.097196+00	2026-10-16 14:18:59.097196+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	735fce8d-9294-4b8e-8df0-b0110a97620e	4	1	2026-10-17 12:19:30.346684+00	2026-10-17 12:19:33.820283+00	2026-10-17 12:19:33.820283+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5a4f363c-b6fe-4962-b6b3-0c6de403d02a	4	1	2026-10-17 12:19:31.266295+00	2026-10-17 12:19:34.101794+00	2026-10-17 12:19:34.101794+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f5dcc8bf-bc56-467b-b264-207f34a3ac75	4	1	2026-10-17 12:19:34.35573+00	2026-10-17 12:19:36.87958+00	2026-10-17 12:19:36.87958+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	ffe81673-70e8-4ae3-973f-bea730513f9a	4	1	2026-10-17 12:19:37.866241+00	2026-10-17 12:19:39.871596+00	2026-10-17 12:19:39.871596+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	08ba8b0b-0307-4524-9280-04543a012dfe	4	1	2026-10-17 12:36:34.555873+00	2026-10-17 12:36:37.369891+00	2026-10-17 12:36:37.369891+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	314a3900-f987-4107-bad6-da4ef158ef42	0	1	2026-10-17 17:00:37.524113+00	2026-10-16 14:06:50.569424+00	2026-10-17 17:00:39.377142+00	f	\N
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	90d84d1c-30bb-4949-9be3-cdf04f6078a2	4	1	2026-10-18 18:38:22.331594+00	2026-10-15 09:38:41.914334+00	2026-10-18 18:38:25.349234+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	50b55b34-be31-44f6-93c6-8dac48844547	3	1	2026-10-21 19:10:16.115127+00	2026-10-21 19:10:13.143208+00	2026-10-21 19:10:17.302222+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	9d909578-4713-423a-b5df-7a8d40ec0c1d	3	1	2026-10-21 19:10:38.487302+00	2026-10-21 19:10:39.707358+00	2026-10-21 19:10:39.707358+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	71029919-8d46-4f3b-be73-bb03e7e439d2	4	1	2026-10-21 19:14:54.75919+00	2026-10-21 19:14:56.31863+00	2026-10-21 19:14:56.31863+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	80e37977-be49-47f8-83d7-7ef68e47d578	3	1	2026-10-21 19:14:57.793512+00	2026-10-21 19:14:57.45226+00	2026-10-21 19:14:57.45226+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b91d9c29-9627-486a-9d7f-65ab6e3c1924	4	1	2026-10-21 19:37:53.423029+00	2026-10-21 19:38:01.512902+00	2026-10-21 19:38:01.512902+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	1eb95e4f-a247-4a91-8fbe-72fe37fcf490	4	1	2026-10-21 19:37:54.004285+00	2026-10-21 19:38:02.743989+00	2026-10-21 19:38:02.743989+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	1da74290-c064-4069-bb09-0b73a2b08b49	4	1	2026-10-21 19:37:55.04494+00	2026-10-21 19:38:03.395659+00	2026-10-21 19:38:03.395659+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	73a6e6dd-136d-4d5e-8024-b3e53681375b	4	1	2026-10-21 19:37:55.51829+00	2026-10-21 19:38:03.998397+00	2026-10-21 19:38:03.998397+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	60964f68-31b0-4766-8633-d5c8c0b01baa	4	1	2026-10-21 19:37:56.582876+00	2026-10-21 19:38:04.44764+00	2026-10-21 19:38:04.44764+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	94292da6-5eec-4057-bd10-4ae5d06a3430	4	1	2026-10-21 19:37:57.588257+00	2026-10-21 19:38:04.87367+00	2026-10-21 19:38:04.87367+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	af766c32-a7de-4de1-ac45-216ddfc07e97	4	1	2026-10-21 19:37:58.635872+00	2026-10-21 19:38:05.437875+00	2026-10-21 19:38:05.437875+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b7f42b93-b49f-45ae-b4cf-8e30b8119dc5	4	1	2026-10-21 19:37:59.118295+00	2026-10-21 19:38:05.992593+00	2026-10-21 19:38:05.992593+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	90f284a5-200c-4ad7-88c8-fd7f79450ced	4	1	2026-10-21 19:38:16.65277+00	2026-10-21 19:38:21.161575+00	2026-10-21 19:38:21.161575+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	5945ce1a-b5c6-493a-8627-bebaafe0592e	4	1	2026-10-21 19:38:25.454389+00	2026-10-21 19:38:25.729574+00	2026-10-21 19:38:25.729574+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	619d07ee-c770-4a3d-8072-f2b6a8f83547	4	1	2026-10-21 19:38:37.802686+00	2026-10-21 19:38:39.29948+00	2026-10-21 19:38:39.29948+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	2de9ad49-d28e-42d0-b257-38543e03988f	4	1	2026-10-21 19:38:01.296101+00	2026-10-21 19:38:07.225415+00	2026-10-21 19:38:07.225415+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	484b551d-cefc-4c20-9e82-e073b1828978	4	1	2026-10-21 19:38:12.087415+00	2026-10-21 19:38:18.116887+00	2026-10-21 19:38:18.116887+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	ca905226-6ae6-4de0-b59b-b4f57feecd7e	4	1	2026-10-21 19:38:22.014055+00	2026-10-21 19:38:22.225322+00	2026-10-21 19:38:22.225322+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	314a3900-f987-4107-bad6-da4ef158ef42	4	1	2026-10-21 19:38:26.562217+00	2026-10-21 19:38:26.481755+00	2026-10-21 19:38:26.481755+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	75552068-b8f5-47e3-959e-b17744719375	4	1	2026-10-21 19:38:40.537098+00	2026-10-21 19:38:40.809035+00	2026-10-21 19:38:40.809035+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	94f7ca91-9d15-4d06-ad6b-28690ee0a025	4	1	2026-10-21 19:38:01.827038+00	2026-10-21 19:38:07.985896+00	2026-10-21 19:38:07.985896+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	fc370890-c3b4-44e8-a05d-55c6a698ed8b	4	1	2026-10-21 19:38:13.202617+00	2026-10-21 19:38:18.934186+00	2026-10-21 19:38:18.934186+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	9cbff467-d7e1-4f70-8b64-d71637374255	4	1	2026-10-21 19:38:22.686859+00	2026-10-21 19:38:23.206183+00	2026-10-21 19:38:23.206183+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	9b116210-dc93-42d6-9a56-9509d699c445	4	1	2026-10-21 19:38:27.626241+00	2026-10-21 19:38:27.459349+00	2026-10-21 19:38:27.459349+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	3ba2e787-da94-4c20-9546-640efb2de8c9	4	1	2026-10-21 19:38:45.427011+00	2026-10-21 19:38:46.9201+00	2026-10-21 19:38:46.9201+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	14f7bbb3-ecf5-4a08-ada4-1e160f544976	4	1	2026-10-21 19:38:02.941896+00	2026-10-21 19:38:08.405584+00	2026-10-21 19:38:08.405584+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	426a0a7e-e4b3-4880-96b2-95888769984d	4	1	2026-10-21 19:38:08.155304+00	2026-10-21 19:38:09.296413+00	2026-10-21 19:38:09.296413+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	a467fea2-ef7e-497b-ade5-6e76469154dd	4	1	2026-10-21 19:38:10.334257+00	2026-10-21 19:38:10.403735+00	2026-10-21 19:38:10.403735+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	6d04eea0-8f76-4928-8d8b-bf1432dfb182	4	1	2026-10-21 19:38:10.884333+00	2026-10-21 19:38:11.018455+00	2026-10-21 19:38:11.018455+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b2a79960-224d-4308-9688-c9660fe52833	4	1	2026-10-21 19:38:14.324316+00	2026-10-21 19:38:19.646418+00	2026-10-21 19:38:19.646418+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	a84061a5-c912-4b88-a5a1-fd02a369a26d	4	1	2026-10-21 19:38:23.893158+00	2026-10-21 19:38:24.202134+00	2026-10-21 19:38:24.202134+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	3d845823-371a-47a0-9548-b38d4a15313d	4	1	2026-10-21 19:38:28.647742+00	2026-10-21 19:38:28.548092+00	2026-10-21 19:38:28.548092+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	d36facf4-5070-433a-b9fe-58599af1c76a	4	1	2026-10-21 19:38:15.441014+00	2026-10-21 19:38:20.520427+00	2026-10-21 19:38:20.520427+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	08e2f88a-4285-4842-b045-791b8fdc2ba9	4	1	2026-10-21 19:38:24.932841+00	2026-10-21 19:38:24.972656+00	2026-10-21 19:38:24.972656+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	dd398462-a44f-46b4-944f-6e8a88407c0f	4	1	2026-10-21 19:38:29.994592+00	2026-10-21 19:38:29.562945+00	2026-10-21 19:38:29.562945+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	6825ed96-da1a-4a87-bcb6-691410c41671	4	1	2026-10-21 19:38:57.257452+00	2026-10-21 19:38:58.801646+00	2026-10-21 19:38:58.801646+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	c305b49d-499a-4d69-96ff-8be56196d7e1	4	1	2026-10-21 19:39:09.221428+00	2026-10-21 19:39:10.754992+00	2026-10-21 19:39:10.754992+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	36cdb74a-854a-4711-a39d-00d79b8d4d5d	4	1	2026-10-21 19:39:13.660346+00	2026-10-21 19:39:15.164582+00	2026-10-21 19:39:15.164582+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	aeffd153-92fa-453b-bd15-4b3a7e61ce4d	4	1	2026-10-21 19:40:59.926018+00	2026-10-21 19:41:01.682669+00	2026-10-21 19:41:01.682669+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	b478a907-14d1-4b4c-b79e-3ed31e7aa7ae	4	1	2026-10-21 19:41:02.403236+00	2026-10-21 19:41:03.59922+00	2026-10-21 19:41:03.59922+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	18ed8e8f-5979-4aca-85e2-3d535a9c4548	4	1	2026-10-21 19:41:03.625913+00	2026-10-21 19:41:03.961787+00	2026-10-21 19:41:03.961787+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	ac4404fe-f7ed-43e4-abbe-6885da7abf7d	4	1	2026-10-21 19:41:05.362774+00	2026-10-21 19:41:06.831488+00	2026-10-21 19:41:06.831488+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	08ba8b0b-0307-4524-9280-04543a012dfe	4	1	2026-10-21 19:41:09.286993+00	2026-10-21 19:41:10.771904+00	2026-10-21 19:41:10.771904+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	acf90969-c881-441d-91ca-7c94834b1385	4	1	2026-10-21 19:41:12.249332+00	2026-10-21 19:41:15.247823+00	2026-10-21 19:41:15.247823+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	685d22c9-ebdd-4c9a-8b17-911107129bc9	4	1	2026-10-21 19:41:13.778002+00	2026-10-21 19:41:16.892894+00	2026-10-21 19:41:16.892894+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	0ebc1ecb-ebbb-4ad6-b3eb-7b02b8ff76f0	4	1	2026-10-21 19:41:17.219248+00	2026-10-21 19:41:17.504749+00	2026-10-21 19:41:17.504749+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	27090a94-576d-4f04-b11f-501a794b53e7	4	1	2026-10-21 19:41:19.962589+00	2026-10-21 19:41:19.961342+00	2026-10-21 19:41:19.961342+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	bc1840ef-5c02-4880-852f-bcfe138a43e7	4	1	2026-10-21 19:41:23.07231+00	2026-10-21 19:41:24.554406+00	2026-10-21 19:41:24.554406+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	bf36137b-96c0-4f94-8932-1a9939e3f7f4	4	1	2026-10-21 19:41:34.66988+00	2026-10-21 19:41:36.139749+00	2026-10-21 19:41:36.139749+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	90d84d1c-30bb-4949-9be3-cdf04f6078a2	4	1	2026-10-21 19:41:38.693075+00	2026-10-21 19:41:40.153117+00	2026-10-21 19:41:40.153117+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	5084e3f8-7e66-4c3e-bdb3-deacdc4f1720	4	1	2026-10-21 19:41:42.101842+00	2026-10-21 19:41:43.596349+00	2026-10-21 19:41:43.596349+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	47a265d8-5c8e-42e8-a48d-003254a126fe	4	1	2026-10-21 19:41:45.959436+00	2026-10-21 19:41:47.450585+00	2026-10-21 19:41:47.450585+00	f	\N
215928c5-9268-4e42-9560-3426b3b63a41	e4c8c6df-430d-4639-a606-9cd61eb1f472	4	1	2026-10-21 19:41:49.983105+00	2026-10-21 19:41:51.782978+00	2026-10-21 19:41:51.782978+00	f	\N
\.


--
-- Data for Name: user_sentence_spelling; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_sentence_spelling" ("user_id", "sentence_id", "mode", "best_time_ms", "attempts", "best_at", "last_played_at") FROM stdin;
\.


--
-- Data for Name: user_story_progress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_story_progress" ("user_id", "story_id", "status", "last_read_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: user_tag_completion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_tag_completion" ("user_id", "tag_id", "completed", "completed_at", "created_at", "updated_at") FROM stdin;
74c3ff16-f356-4a1d-8476-79a04cdc3940	a918f0dc-2265-4826-a995-71b1c6c3d59d	t	2026-10-04 11:43:01.630238+00	2026-10-04 11:43:01.630238+00	2026-10-04 11:43:01.630238+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	59246c16-40c3-4222-8687-05156f432549	t	2026-10-15 22:29:12.74154+00	2026-10-15 22:29:12.74154+00	2026-10-15 22:29:12.74154+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	e71ae818-ac34-4727-9a71-22ad2f52b02c	t	2026-10-15 22:29:17.892918+00	2026-10-15 22:29:17.892918+00	2026-10-15 22:29:17.892918+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fdd754fd-79c7-405b-9c27-3e132c9d9fc4	t	2026-10-15 22:29:26.495417+00	2026-10-15 22:29:26.495417+00	2026-10-15 22:29:26.495417+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	a918f0dc-2265-4826-a995-71b1c6c3d59d	f	\N	2026-10-14 16:14:57.325168+00	2026-10-15 22:29:32.52553+00
\.


--
-- Data for Name: user_unit_bookmarks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_unit_bookmarks" ("user_id", "tag_id", "created_at") FROM stdin;
\.


--
-- Data for Name: user_word_spelling; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_word_spelling" ("user_id", "word_id", "mode", "best_time_ms", "attempts", "best_at", "last_played_at") FROM stdin;
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	cc9052a4-7935-4284-98bd-a1ad034d3a6c	tiles	10425	1	2026-10-05 12:01:24.298501+00	2026-10-05 12:01:24.298501+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	04afe690-cfda-4ee6-9862-2870768ab5cb	tiles	2612	1	2026-10-05 12:01:35.54959+00	2026-10-05 12:01:35.54959+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	c35b01dd-b2b7-4515-ae50-c471f7818b56	tiles	23600	1	2026-10-05 12:02:15.426152+00	2026-10-05 12:02:15.426152+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	cc5feae1-68e2-4bec-bc4b-66d648355303	tiles	1215	1	2026-10-05 12:10:01.312938+00	2026-10-05 12:10:01.312938+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	c2e9fa3a-fd7f-4538-bc39-cd65a47b1cf1	tiles	6436	1	2026-10-05 12:10:15.301699+00	2026-10-05 12:10:15.301699+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	1ff423b9-21c8-4dd5-b02c-6daf1607cf6d	tiles	1037	1	2026-10-05 12:10:25.692901+00	2026-10-05 12:10:25.692901+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	2016141d-57ca-4d7d-bfd0-b3905486e4b7	tiles	4000	1	2026-10-05 12:10:33.943074+00	2026-10-05 12:10:33.943074+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	aecf76fb-c8d4-4df7-a70e-8da6078752e4	tiles	2886	1	2026-10-05 12:10:41.179197+00	2026-10-05 12:10:41.179197+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	c97ea37c-6756-407f-a575-a2197b55e3d6	tiles	1173	1	2026-10-05 12:10:46.947393+00	2026-10-05 12:10:46.947393+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	27590c89-4faf-458d-a5ea-9fddb2ea0e07	tiles	1645	2	2026-10-05 12:11:43.569084+00	2026-10-05 12:11:43.569084+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	775a27be-b2c3-4073-9117-e5562bdfca0f	keyboard	3738	1	2026-10-05 12:20:37.024598+00	2026-10-05 12:20:37.024598+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	fdfb1930-06b3-4603-bb03-71f4158f53f7	keyboard	5757	1	2026-10-05 12:20:51.707243+00	2026-10-05 12:20:51.707243+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f547e810-8f59-432b-b0a1-1032ba0a029a	keyboard	12873	1	2026-10-05 12:23:16.321126+00	2026-10-05 12:23:16.321126+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	04667276-4637-4cce-819a-e48ac5137338	tiles	3177	3	2026-10-06 17:12:24.806468+00	2026-10-06 17:12:24.806468+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	f547e810-8f59-432b-b0a1-1032ba0a029a	tiles	2399	3	2026-10-06 17:12:31.512222+00	2026-10-06 17:12:31.512222+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	fcd5c518-3368-4e51-9050-926a11975a02	tiles	3616	4	2026-10-06 17:13:24.654652+00	2026-10-06 17:13:24.654652+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	f7f3e0c2-f79e-4b96-a794-681e60f620cc	tiles	3566	3	2026-10-06 17:13:32.093219+00	2026-10-06 17:13:32.093219+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	af93382a-4bd6-452b-9e2c-668dc76d14cf	tiles	11851	3	2026-10-06 16:38:52.565785+00	2026-10-06 17:14:16.484853+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	236be915-86bd-4bce-b821-081e43399286	tiles	933	2	2026-10-05 12:10:20.807379+00	2026-10-06 17:28:15.066826+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	affc924d-8d0a-41b6-b2b5-8b4c3e3462a0	tiles	555	3	2026-10-06 17:28:08.485294+00	2026-10-06 17:48:48.047646+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	c04640ee-58c8-4b5f-a5c6-78d8795aae04	tiles	1106	2	2026-10-06 17:49:09.981876+00	2026-10-06 17:49:09.981876+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	775a27be-b2c3-4073-9117-e5562bdfca0f	tiles	1158	5	2026-10-06 16:37:36.591858+00	2026-10-06 17:56:07.687313+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	fdfb1930-06b3-4603-bb03-71f4158f53f7	tiles	1833	4	2026-10-06 16:37:42.315942+00	2026-10-06 17:56:20.878778+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	22d98275-ce41-4fc6-9319-5cf8a0708560	tiles	1132	1	2026-10-06 17:57:27.920254+00	2026-10-06 17:57:27.920254+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	3ef20484-b5b7-4f38-88a2-23d65c202cf2	tiles	1072	1	2026-10-06 17:57:32.754228+00	2026-10-06 17:57:32.754228+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	17e2a0d0-7437-42e8-9173-ac76c87762fc	tiles	1070	1	2026-10-06 17:57:40.767739+00	2026-10-06 17:57:40.767739+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	5f06f83b-745b-4e5f-9e3d-46d41d2d3890	tiles	525	1	2026-10-06 17:58:09.721168+00	2026-10-06 17:58:09.721168+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	f8dd1da0-0c0b-4e54-9a00-b226e4c7e776	tiles	494	1	2026-10-06 17:58:43.301803+00	2026-10-06 17:58:43.301803+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	8e04fc19-a89f-4a3f-a078-8a23c94b06fe	tiles	1153	1	2026-10-06 17:58:48.385945+00	2026-10-06 17:58:48.385945+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	7fa45d97-7e7b-4dd8-82ba-d44065fe9fee	tiles	2660	1	2026-10-06 17:59:37.528454+00	2026-10-06 17:59:37.528454+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	bd55fd96-9056-47b6-aa12-26db8df4abd7	tiles	1222	1	2026-10-06 17:59:51.669164+00	2026-10-06 17:59:51.669164+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	23471d9e-8d9e-4e15-9dce-a8c100da742e	tiles	3084	1	2026-10-06 18:00:53.028052+00	2026-10-06 18:00:53.028052+00
fd7a6f33-1b42-40f9-b0f1-663e60124ee3	57cd28e9-243c-4f9e-b9de-2d371a9df21f	tiles	3241	1	2026-10-06 18:01:29.76965+00	2026-10-06 18:01:29.76965+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	d203d02f-13f0-4ca6-ac10-6d9803de9e29	keyboard	2271	1	2026-10-06 18:07:34.141983+00	2026-10-06 18:07:34.141983+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	750af5d8-28b4-4781-9031-40458a193a22	keyboard	5171	1	2026-10-06 18:08:36.405807+00	2026-10-06 18:08:36.405807+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	53e5ddbc-2452-4d3a-b624-5de8fa8db4b1	keyboard	5598	1	2026-10-06 18:08:47.541638+00	2026-10-06 18:08:47.541638+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	cd99aaf4-28f9-4711-bf5c-dc08a87a7152	keyboard	3108	1	2026-10-06 18:13:44.213695+00	2026-10-06 18:13:44.213695+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f08bcf0e-fda9-4000-975c-19434d890508	keyboard	1027	1	2026-10-06 18:13:51.309926+00	2026-10-06 18:13:51.309926+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	2761a998-a32a-4f9e-be6d-0efa72a2a855	keyboard	372	3	2026-10-06 18:22:30.58219+00	2026-10-06 18:22:30.58219+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	0f8c503a-f4e9-45e4-846e-d761006abc9c	keyboard	6852	1	2026-10-06 18:22:42.826288+00	2026-10-06 18:22:42.826288+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	5f06f83b-745b-4e5f-9e3d-46d41d2d3890	keyboard	1495	1	2026-10-06 18:23:55.980804+00	2026-10-06 18:23:55.980804+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	f8dd1da0-0c0b-4e54-9a00-b226e4c7e776	keyboard	4889	1	2026-10-06 18:24:09.506345+00	2026-10-06 18:24:09.506345+00
25b551c6-dc84-4971-baaf-b7cbe9c67f2c	bd55fd96-9056-47b6-aa12-26db8df4abd7	keyboard	1882	1	2026-10-06 18:24:46.222697+00	2026-10-06 18:24:46.222697+00
215928c5-9268-4e42-9560-3426b3b63a41	775a27be-b2c3-4073-9117-e5562bdfca0f	tiles	1506	1	2026-10-14 12:15:01.160885+00	2026-10-14 12:15:01.160885+00
215928c5-9268-4e42-9560-3426b3b63a41	fdfb1930-06b3-4603-bb03-71f4158f53f7	tiles	2582	1	2026-10-14 12:15:01.834846+00	2026-10-14 12:15:01.834846+00
b249485c-b7a9-40fd-bc98-776588cc987d	775a27be-b2c3-4073-9117-e5562bdfca0f	keyboard	872	2	2026-10-15 13:35:30.648495+00	2026-10-15 13:35:30.648495+00
\.


--
-- Data for Name: word_components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."word_components" ("compound_definition_id", "position", "component_definition_id", "suffix") FROM stdin;
6379ff9c-ee57-48d8-95c2-08299c906ba7	0	e88838bf-f77e-4a8b-ba90-b1f780327690	
6379ff9c-ee57-48d8-95c2-08299c906ba7	1	0cf57a0d-7579-4b8b-9dd9-0acc1a8b363a	
6431a1e7-9017-443b-b46a-dc62683fd44b	0	d90bf329-6bce-4a60-8f7f-502e12b650ac	
6431a1e7-9017-443b-b46a-dc62683fd44b	1	312ce76d-4d7e-4dd5-9f36-a5252196f921	
ecc60b37-84e0-424d-8d12-6d889b396d7d	0	52a6fdba-df7c-41b1-97d9-fc3d98c717ae	
ecc60b37-84e0-424d-8d12-6d889b396d7d	1	09bddbde-16f9-4d2f-9d54-f074f05fc5f8	
13195427-02e1-4aac-93d5-d2c41e0d341a	0	78609ffd-2535-4983-96e4-bb138007d118	
13195427-02e1-4aac-93d5-d2c41e0d341a	1	92a995fe-ed78-4ffd-924a-19e93e27d28d	
1467dd10-a147-4fd5-b72b-bac1ce6880b5	0	50289382-2d8f-4782-a383-70c26d4f3419	
1467dd10-a147-4fd5-b72b-bac1ce6880b5	1	f5cbbb7a-b808-4fd2-8b78-05505b7b1a6b	
aadb5bbb-cc56-4acf-a4f3-49c50ef15b52	0	10bebca0-42e8-4a8a-87de-6a98a493ac3f	
aadb5bbb-cc56-4acf-a4f3-49c50ef15b52	1	ea3f0313-7726-4a00-b28b-cbf66943adbd	
1975ec73-506b-4029-bcc8-17daf0bff9b4	0	887d5a77-947e-4740-a373-0596ad1540c0	
1975ec73-506b-4029-bcc8-17daf0bff9b4	1	ef9ec75b-c715-41ac-a0d8-4e4ba5a96288	
d6a46bcf-b396-467e-8855-0370544e6911	0	4d2bcb83-a208-427e-ac54-8b3fd897aadf	
d6a46bcf-b396-467e-8855-0370544e6911	1	09bddbde-16f9-4d2f-9d54-f074f05fc5f8	
1c7cb6e1-a94d-4e6d-ae29-bf6a861089c5	0	4d2bcb83-a208-427e-ac54-8b3fd897aadf	
1c7cb6e1-a94d-4e6d-ae29-bf6a861089c5	1	f999f701-d068-4bab-961d-2fa2e2beeb65	
1c7cb6e1-a94d-4e6d-ae29-bf6a861089c5	2	92a995fe-ed78-4ffd-924a-19e93e27d28d	
d11362f4-fd2a-41b6-8e5f-249a44675cd4	0	6f6ef364-f329-4afd-b339-d545624a5edf	
d11362f4-fd2a-41b6-8e5f-249a44675cd4	1	fb7bb9ed-6604-4252-8fa8-bc2e5444e525	
6b6a7b5b-b4af-4c41-9893-922f218d9a2a	0	63312b81-1b72-43ad-871d-2a900431a0c3	
6b6a7b5b-b4af-4c41-9893-922f218d9a2a	1	404e4d7c-fbce-4f72-b726-3c7e6f74fa70	
6df80793-de46-4a1e-8f37-0fd87b6a177c	0	64316739-323d-4502-a488-4d521e1d348e	
6df80793-de46-4a1e-8f37-0fd87b6a177c	1	7821dc4a-6770-4d1c-a7ba-b40e3f0b4ca1	
be6a0139-db4f-44f7-af3b-1e28a7c567f9	0	06b45d48-ea2d-4425-844d-d0253be80074	
be6a0139-db4f-44f7-af3b-1e28a7c567f9	1	7821dc4a-6770-4d1c-a7ba-b40e3f0b4ca1	
f4355043-d9c1-4e90-9cf5-2335ad276fd1	0	a7d67bf6-db31-4ff2-986d-364c41dff159	
f4355043-d9c1-4e90-9cf5-2335ad276fd1	1	76bfd309-572d-429d-8bd7-485811399c0d	
2eab4445-0aac-483a-b643-4edb1cf698a0	0	9d2d0351-4f3d-4b39-a031-9e0aaaa22e63	
2eab4445-0aac-483a-b643-4edb1cf698a0	1	1b4d1fd3-74a4-4c3d-8237-8e8b6035d436	
e5addb1d-264f-4f50-83c1-86d6d1497841	0	a7d67bf6-db31-4ff2-986d-364c41dff159	
e5addb1d-264f-4f50-83c1-86d6d1497841	1	05163c86-7cff-49e6-bfef-5031281208da	
c2b6b591-d1b1-4b7a-a05e-c90473d800cc	0	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	
c2b6b591-d1b1-4b7a-a05e-c90473d800cc	1	2c28899b-f21d-4a72-aef4-701f2f73558f	
c2b6b591-d1b1-4b7a-a05e-c90473d800cc	2	87012023-74eb-4ac6-8cf8-629383033fd8	
68eb6144-5fdf-49da-a1e3-6418fb0a14e4	0	93ed680d-e3c5-4428-a8ec-ba83c68f0c13	
68eb6144-5fdf-49da-a1e3-6418fb0a14e4	1	b65e4fcf-82d4-45a2-b5f3-e5a0be1cf0fc	
1b4d3a1f-0853-4b6e-9d7d-521b966e790d	0	a7d67bf6-db31-4ff2-986d-364c41dff159	
1b4d3a1f-0853-4b6e-9d7d-521b966e790d	1	2bf9a14d-dcea-46b8-a8a1-c87481ac4423	
1b4d3a1f-0853-4b6e-9d7d-521b966e790d	2	1f688cf7-6415-4605-a62a-0da66d7a171a	
633feabe-50ec-481f-ba97-10677b7d6b29	0	acfe0256-9fc8-4e4d-91f8-7cf340f62243	
633feabe-50ec-481f-ba97-10677b7d6b29	1	838d6e3d-2a30-4036-87ba-86ec8058a178	
ed01edbb-5968-452b-89db-d8083653ee16	0	acfe0256-9fc8-4e4d-91f8-7cf340f62243	
ed01edbb-5968-452b-89db-d8083653ee16	1	51745f0c-d582-4d29-a7cf-f94fce4a3423	
7f2210c1-eb37-477f-8104-70f8621abaa3	0	6e43fdc2-de4e-43be-b4cc-23a7cf9a2f6c	
7f2210c1-eb37-477f-8104-70f8621abaa3	1	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f	
229391aa-d163-4cb1-90fc-dd012159617d	0	6e43fdc2-de4e-43be-b4cc-23a7cf9a2f6c	
229391aa-d163-4cb1-90fc-dd012159617d	1	34272695-0e10-4a80-a0ec-ec54ef8beb0a	
30d6e2bd-d5e2-453f-b828-a7bd5bdc27be	0	8c6a5464-aab1-4ae8-86ec-63267e3953c7	
30d6e2bd-d5e2-453f-b828-a7bd5bdc27be	1	76bfd309-572d-429d-8bd7-485811399c0d	
c8a2657b-5597-489d-9dec-76855126d27a	0	9a8fe316-ae82-42aa-bab8-f6f6e17e0bdb	
c8a2657b-5597-489d-9dec-76855126d27a	1	cf87797c-8fb0-4e83-8878-a9883479bb54	
4a61d420-f80c-4a89-8055-e39405de7d72	0	9556d6bc-8fa4-414a-82e7-3325763f8e74	
4a61d420-f80c-4a89-8055-e39405de7d72	1	ea3f0313-7726-4a00-b28b-cbf66943adbd	
580d4ec2-363a-4e0e-81e0-da73cf2e7437	0	c1973d35-044f-494d-8a09-e6a0360f863d	
580d4ec2-363a-4e0e-81e0-da73cf2e7437	1	c7633828-73b9-4409-95c8-92bff803725b	
580d4ec2-363a-4e0e-81e0-da73cf2e7437	2	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	
5d0949f1-eee8-429b-8504-d92d41fa6bb1	0	c25d3152-bcd0-4112-903d-901968ec1d14	
5d0949f1-eee8-429b-8504-d92d41fa6bb1	1	c7633828-73b9-4409-95c8-92bff803725b	
5d0949f1-eee8-429b-8504-d92d41fa6bb1	2	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	
d7f9442d-8c71-4039-9b69-f06b832cad33	0	8cdd39c7-4dec-4572-82db-1d019f78b8d0	
d7f9442d-8c71-4039-9b69-f06b832cad33	1	37d71b2f-8162-473d-8c59-dce81f6fa944	
12e749ce-d90f-479c-ad9c-94a0ab2f5876	0	961ff0ac-b004-403a-9880-6101155cd234	
12e749ce-d90f-479c-ad9c-94a0ab2f5876	1	36f8633a-fb05-466b-93e8-eaaf1a12d305	
cdd2a1f3-71f3-4f49-bb6a-a9282752ef42	0	e0770667-6df5-4a3a-bf16-9aefff47ff06	
cdd2a1f3-71f3-4f49-bb6a-a9282752ef42	1	34243bf6-f018-4b2d-a935-ba7ec127b0b3	
4c3bd46b-368b-47ae-b4dd-ed62c29ee188	0	0aa7dc29-99a6-4c0e-a536-f4f8d89b1ca2	
4c3bd46b-368b-47ae-b4dd-ed62c29ee188	1	d44e2ca6-53dc-4893-94df-ea6c29b165c8	
56e2faac-97ec-49e9-a5ca-997204d30018	0	419e0e73-28a5-4e4a-a269-fe371d4020a0	
56e2faac-97ec-49e9-a5ca-997204d30018	1	6335f6bf-1895-46d9-b829-8c5b7b3be063	
647e3ab5-bdd2-4dc8-afee-db4e33cf2142	0	0aa7dc29-99a6-4c0e-a536-f4f8d89b1ca2	
647e3ab5-bdd2-4dc8-afee-db4e33cf2142	1	e0770667-6df5-4a3a-bf16-9aefff47ff06	
de51bd5a-ff34-40f2-8996-3751f7230f8d	0	0aa7dc29-99a6-4c0e-a536-f4f8d89b1ca2	
de51bd5a-ff34-40f2-8996-3751f7230f8d	1	8eca81d7-2e30-4a09-844d-ac1156378326	
3a7dd7ef-9787-491c-a0ae-34ca0dca62cc	0	8b28f5db-7bd4-498a-8dee-02b1e572aefa	
3a7dd7ef-9787-491c-a0ae-34ca0dca62cc	1	37d71b2f-8162-473d-8c59-dce81f6fa944	
5b7e950c-1693-4755-984f-18a0b24bd71c	0	1cd97349-c086-495b-9277-c5f1ddd67808	
5b7e950c-1693-4755-984f-18a0b24bd71c	1	37d71b2f-8162-473d-8c59-dce81f6fa944	
2365ac3e-e95c-4708-ada5-dd2f2cb58145	0	e8352bf0-a0a8-450c-8249-2befec715637	
2365ac3e-e95c-4708-ada5-dd2f2cb58145	1	1cd97349-c086-495b-9277-c5f1ddd67808	
375011a1-1c6a-47c5-b599-8a21b77f4333	0	e8352bf0-a0a8-450c-8249-2befec715637	
375011a1-1c6a-47c5-b599-8a21b77f4333	1	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	
c0f55cd4-fc31-46b6-8730-93e076a2dd73	0	293f366c-7f90-4eeb-ba0f-28f4be87b591	
c0f55cd4-fc31-46b6-8730-93e076a2dd73	1	a069f28c-c631-437b-a5a7-63507414674a	
1820d13e-7bae-4b15-a4cc-4d728c596555	0	06b45d48-ea2d-4425-844d-d0253be80074	
1820d13e-7bae-4b15-a4cc-4d728c596555	1	64316739-323d-4502-a488-4d521e1d348e	
4442fa59-38e6-4224-98c8-a3d13980c228	0	cb91640e-c882-49d1-ab57-1c411ab35bbc	
4442fa59-38e6-4224-98c8-a3d13980c228	1	2433a8a0-de7d-4a16-bc73-d7d0913f86f2	
935ba807-d5e3-4053-87fd-50ead0be1161	0	05814f0b-5390-4b98-b689-ae1ed953620b	
935ba807-d5e3-4053-87fd-50ead0be1161	1	d3eb89d6-abff-44cd-8c2b-30a81efbb311	
0d403033-b28f-4222-9970-b5275ea0a0c8	0	ae402ba1-0066-4887-9d51-185c668fa809	
0d403033-b28f-4222-9970-b5275ea0a0c8	1	092087b3-4b38-43fe-a926-80a45e679953	
1047da71-944f-440e-8d21-c1c609bbb55e	0	3af3c502-8b70-49be-9aa8-6a41515cd1f4	
1047da71-944f-440e-8d21-c1c609bbb55e	1	3e66c159-b476-41c8-bd2b-73c780198705	
0a79cb69-fd23-47e4-af09-518bf778ba9c	0	3af3c502-8b70-49be-9aa8-6a41515cd1f4	
0a79cb69-fd23-47e4-af09-518bf778ba9c	1	34243bf6-f018-4b2d-a935-ba7ec127b0b3	
ebb07ff8-6fb9-4dc9-8e7c-e4ce3e1a5aae	0	3af3c502-8b70-49be-9aa8-6a41515cd1f4	
ebb07ff8-6fb9-4dc9-8e7c-e4ce3e1a5aae	1	34243bf6-f018-4b2d-a935-ba7ec127b0b3	
4e730728-94f2-4fcb-a5b7-0cef1c810846	0	3af3c502-8b70-49be-9aa8-6a41515cd1f4	
4e730728-94f2-4fcb-a5b7-0cef1c810846	1	4eeb1c7c-0532-481f-ad71-7cf2a39ebdb3	
ec86d86d-3151-472a-afde-bf10f69547ab	0	e12b7122-c41c-4903-9a87-c70b5a23af0f	
ec86d86d-3151-472a-afde-bf10f69547ab	1	ebb07ff8-6fb9-4dc9-8e7c-e4ce3e1a5aae	
a77b79b6-3d8a-4c79-86ff-78b45ef0e13d	0	e12b7122-c41c-4903-9a87-c70b5a23af0f	
a77b79b6-3d8a-4c79-86ff-78b45ef0e13d	1	489b874b-c307-46d3-af79-52a47ce9a365	
041f52e3-ba5c-411a-ab76-1512a76e3628	0	e12b7122-c41c-4903-9a87-c70b5a23af0f	
041f52e3-ba5c-411a-ab76-1512a76e3628	1	b3e7054e-73a9-47e3-804c-6b45f10e7a7b	
e2a70eed-700e-42db-b40d-d3bfe542d14c	0	e12b7122-c41c-4903-9a87-c70b5a23af0f	
e2a70eed-700e-42db-b40d-d3bfe542d14c	1	4e730728-94f2-4fcb-a5b7-0cef1c810846	
12a27f52-da0a-4c35-9e58-ad75b29ff3ed	0	b96d4e14-7959-4ec0-a438-dbbc52146aa9	
12a27f52-da0a-4c35-9e58-ad75b29ff3ed	1	0668ab57-ce6c-4491-abc5-2fc5fd2b475a	
3a92b765-a663-4809-93c1-9b43c012488e	0	87012023-74eb-4ac6-8cf8-629383033fd8	
3a92b765-a663-4809-93c1-9b43c012488e	1	1cc8a6e2-d483-4c2f-a23c-eeff06015901	
aa133384-3260-45bf-ae12-0cbad3b07dad	0	4d1e2c7e-069f-44e4-94c3-495c531c7751	
aa133384-3260-45bf-ae12-0cbad3b07dad	1	92a995fe-ed78-4ffd-924a-19e93e27d28d	
2455b617-384a-4f1e-8c1e-87589a8eeb76	0	5272cce6-80c2-4d99-b682-bf19869bfe9d	
2455b617-384a-4f1e-8c1e-87589a8eeb76	1	e80811e8-c0c9-4795-836c-b359b1b801b5	
0b9c45b0-a08f-4528-8f8d-ae64b4885434	0	c5b32d6e-0d52-46d5-9db0-017c2e667c63	
0b9c45b0-a08f-4528-8f8d-ae64b4885434	1	37d71b2f-8162-473d-8c59-dce81f6fa944	
e59ecc38-4645-4e44-9484-97b925497171	0	05814f0b-5390-4b98-b689-ae1ed953620b	
e59ecc38-4645-4e44-9484-97b925497171	1	20d33e84-aa7d-42c9-8da5-d5d70bf830f0	
e59ecc38-4645-4e44-9484-97b925497171	2	5a269d08-ee8b-4772-803a-fcfd41d0ddd9	
f2d4f534-90e1-4708-9f49-e00cd5c14176	0	05814f0b-5390-4b98-b689-ae1ed953620b	
f2d4f534-90e1-4708-9f49-e00cd5c14176	1	2830825d-9c94-4d54-84a6-2ef180735925	
f6d9301e-3591-48b7-8fb6-783c4c2849a9	0	7b8bd6e9-4ea2-4b52-908b-fae1fb4bdd76	
f6d9301e-3591-48b7-8fb6-783c4c2849a9	1	19a58277-caa3-4321-96b7-3e7aa6907b09	
8bede74d-a838-42fc-b8b8-df98c5450388	0	cade8788-e7b3-4030-9ca9-f0852bcdf3c7	
8bede74d-a838-42fc-b8b8-df98c5450388	1	d2d9aaf6-1644-4d56-b93c-c705fa922939	
afe8df22-3d3a-400b-a72f-bcd59da305f5	0	cade8788-e7b3-4030-9ca9-f0852bcdf3c7	
afe8df22-3d3a-400b-a72f-bcd59da305f5	1	c3c73fdd-6368-4321-b707-abb89dd0baf5	
5b25c84c-697d-4714-b656-a08ac962fe05	0	cade8788-e7b3-4030-9ca9-f0852bcdf3c7	
5b25c84c-697d-4714-b656-a08ac962fe05	1	8c6fb55b-57a9-4cb4-9335-68100a86a829	
5b25c84c-697d-4714-b656-a08ac962fe05	2	489b874b-c307-46d3-af79-52a47ce9a365	
ecfabf83-d249-4b0d-afa0-6d35db92ed4c	0	cade8788-e7b3-4030-9ca9-f0852bcdf3c7	
ecfabf83-d249-4b0d-afa0-6d35db92ed4c	1	0673ee83-9777-4ffe-8510-2ba8a764e45d	
f9b39ba3-cd8e-4fce-898d-7f588a0933cb	0	37ba74b9-d5fa-4733-890f-9c82a1a1c488	
f9b39ba3-cd8e-4fce-898d-7f588a0933cb	1	3380c6dc-46aa-42aa-b778-f0efbf2f7356	
aa97989e-7b70-4036-8c1f-adb05cbcca5a	0	9e7d275f-0ab4-41e0-a55f-9dcc645927a4	
aa97989e-7b70-4036-8c1f-adb05cbcca5a	1	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	
aa97989e-7b70-4036-8c1f-adb05cbcca5a	2	75d64280-f38f-48fe-a6aa-c258134c8f54	
8f300950-be69-4881-bd9a-187a074890bc	0	6d60c386-8d73-4b01-90a5-cd2469fdae68	
8f300950-be69-4881-bd9a-187a074890bc	1	33a0ab01-1636-4469-a704-f5a6d9e71453	
3edfc07a-b087-4f58-83a6-398040a769d9	0	1e25b89a-01ac-4273-a856-fb2578345073	
3edfc07a-b087-4f58-83a6-398040a769d9	1	37d71b2f-8162-473d-8c59-dce81f6fa944	
9222e799-c738-48b4-908e-01e9924e191b	0	d0a956c6-a0ca-482f-8239-84175a5b78f8	
9222e799-c738-48b4-908e-01e9924e191b	1	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f	
3c2a0eda-da67-4052-89a6-53efe6171a23	0	01a1dde3-8ce2-4783-9d70-dbbe0fda036c	
3c2a0eda-da67-4052-89a6-53efe6171a23	1	c6b97f6b-a639-46c9-8d06-888e30b02312	
7e98f9c4-2d5b-442a-abe2-9509f8fa5e35	0	bb294a3b-e0ed-4f14-ae9a-4517de5dd620	
7e98f9c4-2d5b-442a-abe2-9509f8fa5e35	1	0584ea39-c4b1-47d9-8963-1dae6bbc95fa	
6d07b2eb-bc1d-4de8-bbfe-46da48292604	0	b43e0eaa-f909-4d98-95d3-60b346be2fb2	
6d07b2eb-bc1d-4de8-bbfe-46da48292604	1	81a869f0-1369-4785-8d73-e3976a2ea77d	
a69ee5ca-f3c6-49e0-96e2-e1c8179470ee	0	b911f5a6-c209-4a2b-bf04-0354c517c484	
a69ee5ca-f3c6-49e0-96e2-e1c8179470ee	1	a069f28c-c631-437b-a5a7-63507414674a	
8797fe82-86f9-4028-a178-95c8c28bff84	0	6b0bd3bf-a87a-4c2c-a368-731fba2d33e0	
8797fe82-86f9-4028-a178-95c8c28bff84	1	35ff23e9-44d9-4322-aa7a-89b60c4a28a2	
9cb40f57-fd04-4d83-923a-88cfd02ec475	0	c79dd19b-dc3c-41cd-962b-36e0d0133a02	
9cb40f57-fd04-4d83-923a-88cfd02ec475	1	404e4d7c-fbce-4f72-b726-3c7e6f74fa70	
0cc5249c-67ce-4e68-b0c5-b875b7c77b7b	0	f514c44d-0ef9-4329-8181-19fdf5db9c1b	
0cc5249c-67ce-4e68-b0c5-b875b7c77b7b	1	147938d9-65de-48a8-a550-8ce1fe88b37b	
4cdd688c-a7db-4abb-a1b7-a960968782d7	0	dac08723-2533-47fc-a305-936dbc9a1502	
4cdd688c-a7db-4abb-a1b7-a960968782d7	1	ff9bb364-acdc-4ecd-9ead-808521a8e3ae	
21099aa2-cda1-4bd3-809d-a3c470aa594c	0	317635b8-eab4-4a13-95e7-a566fe89193a	
21099aa2-cda1-4bd3-809d-a3c470aa594c	1	4efc1513-8ed4-4315-b837-00e316c0efa2	
554e0cae-41f2-4b5f-8de4-13337aa67615	0	e4683884-ccbb-4f5c-a642-b27dd8aa58f6	
554e0cae-41f2-4b5f-8de4-13337aa67615	1	04d7d004-0513-4f16-b3ca-de208056e947	
409950dc-0bc2-40b9-80e2-c20fd2d05549	0	2cc6d352-7784-471e-8948-16c335ddf01b	
409950dc-0bc2-40b9-80e2-c20fd2d05549	1	d3eb89d6-abff-44cd-8c2b-30a81efbb311	
878d1454-7de4-4f9a-9bed-a0c4ba3eacac	0	3b70696c-9c25-4a17-800b-177a03cd062d	
878d1454-7de4-4f9a-9bed-a0c4ba3eacac	1	43beb0db-8014-43f2-8d02-a431a03f9855	
7d8023ef-713d-4538-8d95-abec796d12cf	0	a98d2ec9-3a9c-4f0e-9031-da7840ff5c27	
7d8023ef-713d-4538-8d95-abec796d12cf	1	566373e1-f72b-46b2-b5f9-826fd94d1ace	
f1b0db01-0f93-49c9-ac0c-263d07560dc8	0	349ffded-2d70-4b9c-b8e4-9d36bcaaab2f	
f1b0db01-0f93-49c9-ac0c-263d07560dc8	1	4c843750-7e6a-4edd-bf72-161d9e1b31e7	
2f999736-b678-4f04-a782-39669b253920	0	d919815e-e221-4312-a723-9fa75c0ef4c9	
2f999736-b678-4f04-a782-39669b253920	1	7233b318-1ad1-4a83-8eb4-35ecf2a0b6e6	
2c4200b9-afd8-4e3c-956d-e3351d5b3c9a	0	8c9193ce-d1ba-47a9-80c7-ba05475f29f8	
2c4200b9-afd8-4e3c-956d-e3351d5b3c9a	1	cad0124d-882d-4d7c-a81a-076ae9031452	
117bf4ca-5c7a-487a-a3fe-245c99a62b7f	0	b4d00de0-ab71-4ded-9630-b8ebddaf0d71	
117bf4ca-5c7a-487a-a3fe-245c99a62b7f	1	468fbc53-32bd-4520-b2f1-8008a28cee75	
24ca06a7-9c7b-4271-843f-780cea5db50e	0	619b0678-2950-48a3-a119-a38626461e53	
24ca06a7-9c7b-4271-843f-780cea5db50e	1	e199ceba-e36a-4143-a868-b7ad19b9889a	
199f4767-bf32-4fbe-b348-fe651008291d	0	fcfe55ae-8824-4ef7-aa21-43849d400462	
199f4767-bf32-4fbe-b348-fe651008291d	1	d8cb2712-f31a-4c77-ac70-ad41deba6b81	
ac409f73-f0ce-4a72-9fc2-7ee3746f0daf	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
ac409f73-f0ce-4a72-9fc2-7ee3746f0daf	1	c7633828-73b9-4409-95c8-92bff803725b	
c5751e7a-0445-4c10-b0c4-fb1d8a0cb878	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
c5751e7a-0445-4c10-b0c4-fb1d8a0cb878	1	878d619f-2184-473a-be69-ea941a0bf66d	
a3e20f80-68b7-471b-b2b3-d5433a8afa94	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
a3e20f80-68b7-471b-b2b3-d5433a8afa94	1	6f034e1b-3c62-41d4-9f68-862d5c769c9a	
66700fec-8c31-44a2-9058-f7bde85884c4	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
66700fec-8c31-44a2-9058-f7bde85884c4	1	d0c9b77a-3efe-43cb-9c72-4c68c5fab3dd	
9f61d14f-ac08-4cb5-aeab-df77a3756977	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
9f61d14f-ac08-4cb5-aeab-df77a3756977	1	e2d56d3d-7c4a-4f7c-b1ef-24e90fbdd565	
af2abe8b-4b5c-49c2-a56a-e0daa9b4debe	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
af2abe8b-4b5c-49c2-a56a-e0daa9b4debe	1	f11c92f6-aee3-4295-8ef2-624c5285db73	
69e7add8-5767-47d0-af1c-fa4df86f1ae2	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
69e7add8-5767-47d0-af1c-fa4df86f1ae2	1	d724e649-5625-4040-92fb-caff7f799263	
05ce80de-8d71-4758-903f-2cedf6441b81	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
05ce80de-8d71-4758-903f-2cedf6441b81	1	a90155d3-aa81-4f55-a5c9-ac5d18015874	
398af0bb-3dd1-4168-a7ef-acfde2c14c52	0	8c04f298-85d0-4b08-b4cd-afa9e50952b8	
398af0bb-3dd1-4168-a7ef-acfde2c14c52	1	853376fb-d714-4626-94d0-cbabed6b1f67	
5afbd857-1bca-475e-9610-a8ce21942444	0	4d2bcb83-a208-427e-ac54-8b3fd897aadf	
5afbd857-1bca-475e-9610-a8ce21942444	1	404e4d7c-fbce-4f72-b726-3c7e6f74fa70	
d60bff46-74e7-4844-8430-f075b4b8ea70	0	4d2bcb83-a208-427e-ac54-8b3fd897aadf	
d60bff46-74e7-4844-8430-f075b4b8ea70	1	7821dc4a-6770-4d1c-a7ba-b40e3f0b4ca1	
8f61e57f-2ab3-4cf7-bb87-7a04166bf7a0	0	1e25b89a-01ac-4273-a856-fb2578345073	
8f61e57f-2ab3-4cf7-bb87-7a04166bf7a0	1	ff9bb364-acdc-4ecd-9ead-808521a8e3ae	
b7a10438-8d03-4334-af92-d3044c6cec8d	0	7b8bd6e9-4ea2-4b52-908b-fae1fb4bdd76	
b7a10438-8d03-4334-af92-d3044c6cec8d	1	83ad0dfc-9c55-498d-813d-da56afb21bdc	
0494d204-b24b-4248-a131-32dd9ea774b7	0	19a58277-caa3-4321-96b7-3e7aa6907b09	
0494d204-b24b-4248-a131-32dd9ea774b7	1	83ad0dfc-9c55-498d-813d-da56afb21bdc	
dfc6a3d9-dc32-4331-b893-9eb00d52a3b6	0	9e7d275f-0ab4-41e0-a55f-9dcc645927a4	
dfc6a3d9-dc32-4331-b893-9eb00d52a3b6	1	83ad0dfc-9c55-498d-813d-da56afb21bdc	
01c172e0-1edc-4b37-aa0a-95a52591808e	0	7b8bd6e9-4ea2-4b52-908b-fae1fb4bdd76	
01c172e0-1edc-4b37-aa0a-95a52591808e	1	f2f5674f-d8b9-4c64-86eb-df6275bf9d8a	
4bcfc32a-693c-4d28-9451-6f18e80f4552	0	19a58277-caa3-4321-96b7-3e7aa6907b09	
4bcfc32a-693c-4d28-9451-6f18e80f4552	1	f2f5674f-d8b9-4c64-86eb-df6275bf9d8a	
5bf92b9b-4295-47c3-8006-649b8e4dd1fd	0	9e7d275f-0ab4-41e0-a55f-9dcc645927a4	
5bf92b9b-4295-47c3-8006-649b8e4dd1fd	1	f2f5674f-d8b9-4c64-86eb-df6275bf9d8a	
\.


--
-- Data for Name: word_rule_applications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."word_rule_applications" ("id", "word_id", "rule_id", "notes", "sort_order", "word_version", "created_at", "updated_at") FROM stdin;
e42cea45-9501-48b4-9d46-0098cc830f1e	791e5dc4-d335-4e10-9426-bffd9ae911d7	0e3f3b87-3ba5-4fb9-999e-f132964313cf	\N	0	1	2026-07-19 19:33:40.002527+00	2026-07-19 19:33:40.002527+00
36f2784c-6b55-4901-9bcb-79ed6e038386	791e5dc4-d335-4e10-9426-bffd9ae911d7	ab926495-e0b4-48c6-84b9-217894571824	\N	0	1	2026-07-19 19:38:14.818374+00	2026-07-19 19:38:14.818374+00
7f4a7487-ce6f-4359-a029-65021a0bbbd5	791e5dc4-d335-4e10-9426-bffd9ae911d7	1f6e4f38-4ad9-49af-a724-c69770ef1315	\N	0	1	2026-07-19 19:51:33.40881+00	2026-07-19 19:51:33.40881+00
e52e03b1-c5d2-4459-b2b4-e013f48a68b8	791e5dc4-d335-4e10-9426-bffd9ae911d7	b4f00079-121d-4d82-81d6-b915bd27b755	\N	0	1	2026-07-19 19:56:40.156221+00	2026-07-19 19:56:40.156221+00
21def89c-517f-49f9-aef3-49e11e99b18a	d1fcce06-a6ce-4471-bf25-0c9b720b4727	d5a6d4bb-4ed2-4b43-ac19-444072105bf2	\N	0	2	2026-07-19 20:00:59.465685+00	2026-07-19 20:00:59.465685+00
d8124465-a165-4f63-90ac-8d5ac6f83180	d1fcce06-a6ce-4471-bf25-0c9b720b4727	f291abb8-7667-4a66-bbcf-4c56dd4912b7	\N	0	2	2026-07-19 20:03:47.882437+00	2026-07-19 20:03:47.882437+00
11b20b47-90c7-4f49-8cb5-7ac784276479	d1fcce06-a6ce-4471-bf25-0c9b720b4727	18861a5c-1a2d-451e-a0f2-fc6895548ec6	\N	0	2	2026-07-19 20:06:24.634945+00	2026-07-19 20:06:24.634945+00
c0bca4f3-b824-4aaa-8f31-2fce82f0c6d9	d1fcce06-a6ce-4471-bf25-0c9b720b4727	ab926495-e0b4-48c6-84b9-217894571824	\N	0	2	2026-07-19 20:07:18.15526+00	2026-07-19 20:07:18.15526+00
334fa5ec-1fc5-44ba-9e8a-0701747ac241	d1fcce06-a6ce-4471-bf25-0c9b720b4727	4cad538d-2b3d-4ada-870a-f600afcb5285	\N	0	2	2026-07-19 20:10:45.509019+00	2026-07-19 20:10:45.509019+00
b304b585-4b78-4b89-be7d-c524bdfcf7f0	89b9dbb1-950a-40e8-ae60-4ee06c475686	d5a6d4bb-4ed2-4b43-ac19-444072105bf2	\N	0	2	2026-07-19 20:33:23.117988+00	2026-07-19 20:33:23.117988+00
1b975961-a12c-4eba-8e68-51c5cd224522	89b9dbb1-950a-40e8-ae60-4ee06c475686	4a4b8d84-7569-4eb2-ac34-a975e0ddfca8	\N	0	2	2026-07-19 20:37:57.340782+00	2026-07-19 20:37:57.340782+00
c91f7085-cd39-4fc3-8c4e-88e155fdf308	89b9dbb1-950a-40e8-ae60-4ee06c475686	ab926495-e0b4-48c6-84b9-217894571824	\N	0	2	2026-07-19 20:38:34.613926+00	2026-07-19 20:38:34.613926+00
de814b99-ba18-4c17-89d9-13915444a791	494f3ec2-2e6d-4522-965b-34b2df97d72d	f6c54bb2-84b9-408a-940c-b708314eea54	\N	0	1	2026-09-30 11:56:05.015891+00	2026-09-30 11:56:05.015891+00
b2063dcd-0135-4c96-b3a8-eb1902c4a8cd	494f3ec2-2e6d-4522-965b-34b2df97d72d	c374445e-9177-4c0e-b22c-df68fe985b39	\N	0	1	2026-09-30 12:00:42.520854+00	2026-09-30 12:00:42.520854+00
1ad63fb8-8915-4937-b368-d20c7faeb814	494f3ec2-2e6d-4522-965b-34b2df97d72d	5c43b46a-c6fa-44e9-82db-cd4fbbd7c956	\N	0	1	2026-09-30 12:04:14.030412+00	2026-09-30 12:04:14.030412+00
a6ce4d7a-9e5a-427e-baa2-f33c66af9aae	494f3ec2-2e6d-4522-965b-34b2df97d72d	99f063ab-0c08-423c-9859-0e4a956da9e1	\N	0	1	2026-09-30 12:21:00.02367+00	2026-09-30 12:21:00.02367+00
9a001e55-3130-4527-9876-300bb2ed01ad	d95e0d9c-07bb-49f2-b3a4-4182bef0ae4d	6b9f323e-6138-4dd4-855b-b6bbadef99a1	\N	0	1	2026-09-30 12:27:12.697083+00	2026-09-30 12:27:12.697083+00
90c18890-655d-4b08-b31a-a3272c2d5787	d95e0d9c-07bb-49f2-b3a4-4182bef0ae4d	b4f00079-121d-4d82-81d6-b915bd27b755	\N	0	1	2026-09-30 12:28:39.632111+00	2026-09-30 12:28:39.632111+00
e09c2d8d-36e7-4c78-b67d-b17403d59b56	d95e0d9c-07bb-49f2-b3a4-4182bef0ae4d	7be5cae8-bd74-429b-9266-eb1429504891	\N	0	1	2026-09-30 12:30:49.074935+00	2026-09-30 12:30:49.074935+00
eeb74aa6-dfa8-417f-8a63-5731d6c7c80c	d95e0d9c-07bb-49f2-b3a4-4182bef0ae4d	4d7f1032-4040-4ce6-b160-f2446bd5a659	\N	0	1	2026-09-30 12:34:02.902441+00	2026-09-30 12:34:02.902441+00
7087842a-ee58-414b-9336-b68ce8387a78	5c0d99f5-aed7-42e5-9c69-6d83090e872a	0e3f3b87-3ba5-4fb9-999e-f132964313cf	\N	0	2	2026-09-30 12:36:02.388746+00	2026-09-30 12:36:02.388746+00
ce68b5a8-ab29-4d75-b497-596b179e0dc6	5c0d99f5-aed7-42e5-9c69-6d83090e872a	2c8dd047-5c18-45f6-a172-af960655b683	\N	0	2	2026-09-30 12:37:50.307841+00	2026-09-30 12:37:50.307841+00
09b7afdf-04ee-423d-84d9-80d28f5bd885	5c0d99f5-aed7-42e5-9c69-6d83090e872a	b781f8cb-3421-4fd2-84fd-e4e9d2a8e43b	\N	0	2	2026-09-30 12:39:05.631395+00	2026-09-30 12:39:05.631395+00
28eeb868-6f71-4d4f-aac0-ec264a424633	5c0d99f5-aed7-42e5-9c69-6d83090e872a	4501f966-09e2-46fd-b7fc-0c5eb4979b76	\N	0	2	2026-09-30 12:40:34.586818+00	2026-09-30 12:40:34.586818+00
11b5781b-c5ec-45da-943c-a72d3295d8c5	5c0d99f5-aed7-42e5-9c69-6d83090e872a	10848815-fb18-4ffc-8293-8bea2d46d78e	\N	0	2	2026-09-30 12:44:34.014723+00	2026-09-30 12:44:34.014723+00
\.


--
-- Data for Name: word_rule_application_chars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."word_rule_application_chars" ("application_id", "char_index") FROM stdin;
e42cea45-9501-48b4-9d46-0098cc830f1e	0
36f2784c-6b55-4901-9bcb-79ed6e038386	2
7f4a7487-ce6f-4359-a029-65021a0bbbd5	1
e52e03b1-c5d2-4459-b2b4-e013f48a68b8	3
21def89c-517f-49f9-aef3-49e11e99b18a	0
d8124465-a165-4f63-90ac-8d5ac6f83180	1
11b20b47-90c7-4f49-8cb5-7ac784276479	3
c0bca4f3-b824-4aaa-8f31-2fce82f0c6d9	2
334fa5ec-1fc5-44ba-9e8a-0701747ac241	0
334fa5ec-1fc5-44ba-9e8a-0701747ac241	2
b304b585-4b78-4b89-be7d-c524bdfcf7f0	1
1b975961-a12c-4eba-8e68-51c5cd224522	2
c91f7085-cd39-4fc3-8c4e-88e155fdf308	3
de814b99-ba18-4c17-89d9-13915444a791	1
b2063dcd-0135-4c96-b3a8-eb1902c4a8cd	0
b2063dcd-0135-4c96-b3a8-eb1902c4a8cd	2
b2063dcd-0135-4c96-b3a8-eb1902c4a8cd	3
1ad63fb8-8915-4937-b368-d20c7faeb814	4
9a001e55-3130-4527-9876-300bb2ed01ad	0
90c18890-655d-4b08-b31a-a3272c2d5787	1
e09c2d8d-36e7-4c78-b67d-b17403d59b56	2
7087842a-ee58-414b-9336-b68ce8387a78	0
ce68b5a8-ab29-4d75-b497-596b179e0dc6	1
09b7afdf-04ee-423d-84d9-80d28f5bd885	2
28eeb868-6f71-4d4f-aac0-ec264a424633	3
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type", "versioning_status", "lifecycle_configuration", "lifecycle_configuration_generation") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "archived_at", "is_delete_marker", "is_versioned") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 490, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict jogv9fE6fxdSkfzpsjkXrE8VwW437WHQYpegZMR1ipdQOVsWJQrfVajdKsQAJZv

RESET ALL;
