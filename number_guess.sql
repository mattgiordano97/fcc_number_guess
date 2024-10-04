--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    num_guesses integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (59, 542, 64);
INSERT INTO public.games VALUES (60, 412, 64);
INSERT INTO public.games VALUES (61, 585, 65);
INSERT INTO public.games VALUES (62, 951, 65);
INSERT INTO public.games VALUES (63, 47, 64);
INSERT INTO public.games VALUES (64, 468, 64);
INSERT INTO public.games VALUES (65, 412, 64);
INSERT INTO public.games VALUES (66, 10, 66);
INSERT INTO public.games VALUES (67, 900, 67);
INSERT INTO public.games VALUES (68, 703, 67);
INSERT INTO public.games VALUES (69, 146, 68);
INSERT INTO public.games VALUES (70, 604, 68);
INSERT INTO public.games VALUES (71, 138, 67);
INSERT INTO public.games VALUES (72, 238, 67);
INSERT INTO public.games VALUES (73, 623, 67);
INSERT INTO public.games VALUES (74, 920, 69);
INSERT INTO public.games VALUES (75, 246, 69);
INSERT INTO public.games VALUES (76, 905, 70);
INSERT INTO public.games VALUES (77, 940, 70);
INSERT INTO public.games VALUES (78, 514, 69);
INSERT INTO public.games VALUES (79, 587, 69);
INSERT INTO public.games VALUES (80, 54, 69);
INSERT INTO public.games VALUES (81, 65, 71);
INSERT INTO public.games VALUES (82, 408, 71);
INSERT INTO public.games VALUES (83, 292, 72);
INSERT INTO public.games VALUES (84, 998, 72);
INSERT INTO public.games VALUES (85, 775, 71);
INSERT INTO public.games VALUES (86, 188, 71);
INSERT INTO public.games VALUES (87, 132, 71);
INSERT INTO public.games VALUES (88, 2, 66);
INSERT INTO public.games VALUES (89, 1, 66);
INSERT INTO public.games VALUES (90, 3, 66);
INSERT INTO public.games VALUES (91, 2, 66);
INSERT INTO public.games VALUES (92, 5, 66);
INSERT INTO public.games VALUES (93, 200, 73);
INSERT INTO public.games VALUES (94, 200, 73);
INSERT INTO public.games VALUES (95, 784, 74);
INSERT INTO public.games VALUES (96, 291, 74);
INSERT INTO public.games VALUES (97, 882, 73);
INSERT INTO public.games VALUES (98, 770, 73);
INSERT INTO public.games VALUES (99, 114, 73);
INSERT INTO public.games VALUES (100, 151, 75);
INSERT INTO public.games VALUES (101, 420, 75);
INSERT INTO public.games VALUES (102, 399, 76);
INSERT INTO public.games VALUES (103, 239, 76);
INSERT INTO public.games VALUES (104, 611, 75);
INSERT INTO public.games VALUES (105, 820, 75);
INSERT INTO public.games VALUES (106, 588, 75);
INSERT INTO public.games VALUES (107, 662, 77);
INSERT INTO public.games VALUES (108, 965, 77);
INSERT INTO public.games VALUES (109, 98, 78);
INSERT INTO public.games VALUES (110, 594, 78);
INSERT INTO public.games VALUES (111, 953, 77);
INSERT INTO public.games VALUES (112, 178, 77);
INSERT INTO public.games VALUES (113, 206, 77);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (64, 'user_1728030511921');
INSERT INTO public.users VALUES (65, 'user_1728030511920');
INSERT INTO public.users VALUES (66, 'caio');
INSERT INTO public.users VALUES (67, 'user_1728030595761');
INSERT INTO public.users VALUES (68, 'user_1728030595760');
INSERT INTO public.users VALUES (69, 'user_1728030609270');
INSERT INTO public.users VALUES (70, 'user_1728030609269');
INSERT INTO public.users VALUES (71, 'user_1728030659033');
INSERT INTO public.users VALUES (72, 'user_1728030659032');
INSERT INTO public.users VALUES (73, 'user_1728030854293');
INSERT INTO public.users VALUES (74, 'user_1728030854292');
INSERT INTO public.users VALUES (75, 'user_1728030861570');
INSERT INTO public.users VALUES (76, 'user_1728030861569');
INSERT INTO public.users VALUES (77, 'user_1728030898990');
INSERT INTO public.users VALUES (78, 'user_1728030898989');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 113, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 78, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

