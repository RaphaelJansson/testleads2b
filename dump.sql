--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1 (Debian 12.1-1.pgdg100+1)
-- Dumped by pg_dump version 12.1 (Debian 12.1-1.pgdg100+1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: adonis_schema; Type: TABLE; Schema: public; Owner: raphael
--

CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP       
);


ALTER TABLE public.adonis_schema OWNER TO raphael;

--
-- Name: adonis_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: raphael
--

CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adonis_schema_id_seq OWNER TO raphael;

--
-- Name: adonis_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: raphael
--

ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;

--
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: raphael
--

CREATE TABLE public.funcionarios (
    id integer NOT NULL,
    username character varying(80) NOT NULL,
    email character varying(254) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.funcionarios OWNER TO raphael;

--
-- Name: funcionarios_id_seq; Type: SEQUENCE; Schema: public; Owner: raphael--

CREATE SEQUENCE public.funcionarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.funcionarios_id_seq OWNER TO raphael;

--
-- Name: funcionarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: raphael
--

ALTER SEQUENCE public.funcionarios_id_seq OWNED BY public.funcionarios.id;  


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: raphael
--

CREATE TABLE public.tokens (
    id integer NOT NULL,
    user_id integer,
    token character varying(255) NOT NULL,
    type character varying(80) NOT NULL,
    is_revoked boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.tokens OWNER TO raphael;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: raphael      
--

CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tokens_id_seq OWNER TO raphael;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: raphael
--

ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: raphael
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(80) NOT NULL,
    email character varying(254) NOT NULL,
    password character varying(60) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.users OWNER TO raphael;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: raphael       
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO raphael;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: raphael
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: adonis_schema id; Type: DEFAULT; Schema: public; Owner: raphael    
--

ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);


--
-- Name: funcionarios id; Type: DEFAULT; Schema: public; Owner: raphael     
--

ALTER TABLE ONLY public.funcionarios ALTER COLUMN id SET DEFAULT nextval('public.funcionarios_id_seq'::regclass);


--
-- Name: tokens id; Type: DEFAULT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: adonis_schema; Type: TABLE DATA; Schema: public; Owner: raphael
--

COPY public.adonis_schema (id, name, batch, migration_time) FROM stdin;     
\.


--
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: raphael
--

COPY public.funcionarios (id, username, email, created_at, updated_at) FROM 
stdin;
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: raphael  
--

COPY public.tokens (id, user_id, token, type, is_revoked, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: raphael   
--

COPY public.users (id, username, email, password, created_at, updated_at) FROM stdin;
\.


--
-- Name: adonis_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raphael
--

SELECT pg_catalog.setval('public.adonis_schema_id_seq', 3, true);


--
-- Name: funcionarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raphael
--

SELECT pg_catalog.setval('public.funcionarios_id_seq', 1, false);


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raphael  
--

SELECT pg_catalog.setval('public.tokens_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raphael   
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: adonis_schema adonis_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);


--
-- Name: funcionarios funcionarios_email_unique; Type: CONSTRAINT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_email_unique UNIQUE (email);


--
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (id);


--
-- Name: funcionarios funcionarios_username_unique; Type: CONSTRAINT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_username_unique UNIQUE (username);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_token_unique UNIQUE (token);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: 
raphael
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: raphael 
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_unique; Type: CONSTRAINT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_unique UNIQUE (username);


--
-- Name: tokens_token_index; Type: INDEX; Schema: public; Owner: raphael    
--

CREATE INDEX tokens_token_index ON public.tokens USING btree (token);       


--
-- Name: tokens tokens_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: raphael
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--
