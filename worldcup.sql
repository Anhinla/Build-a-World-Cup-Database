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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(20) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 4, 2, 99, 100);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 2, 0, 101, 102);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 2, 1, 100, 102);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 1, 0, 99, 101);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 3, 2, 100, 103);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 2, 0, 102, 104);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 2, 1, 101, 105);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 2, 0, 99, 106);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 2, 1, 102, 107);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 1, 0, 104, 108);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 3, 2, 101, 109);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 2, 0, 105, 110);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 2, 1, 100, 111);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 2, 1, 103, 112);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 2, 1, 106, 113);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 4, 3, 99, 114);
INSERT INTO public.games VALUES (17, 2014, 'Final', 1, 0, 115, 114);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 3, 0, 116, 105);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 1, 0, 114, 116);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 7, 1, 115, 105);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 1, 0, 116, 117);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 1, 0, 114, 101);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 2, 1, 105, 107);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 1, 0, 115, 99);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 2, 1, 105, 118);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 2, 0, 107, 106);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 2, 0, 99, 119);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 2, 1, 115, 120);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 2, 1, 116, 110);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 2, 1, 117, 121);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 1, 0, 114, 108);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 2, 1, 101, 122);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 99);
INSERT INTO public.teams VALUES ('Croatia', 100);
INSERT INTO public.teams VALUES ('Belgium', 101);
INSERT INTO public.teams VALUES ('England', 102);
INSERT INTO public.teams VALUES ('Russia', 103);
INSERT INTO public.teams VALUES ('Sweden', 104);
INSERT INTO public.teams VALUES ('Brazil', 105);
INSERT INTO public.teams VALUES ('Uruguay', 106);
INSERT INTO public.teams VALUES ('Colombia', 107);
INSERT INTO public.teams VALUES ('Switzerland', 108);
INSERT INTO public.teams VALUES ('Japan', 109);
INSERT INTO public.teams VALUES ('Mexico', 110);
INSERT INTO public.teams VALUES ('Denmark', 111);
INSERT INTO public.teams VALUES ('Spain', 112);
INSERT INTO public.teams VALUES ('Portugal', 113);
INSERT INTO public.teams VALUES ('Argentina', 114);
INSERT INTO public.teams VALUES ('Germany', 115);
INSERT INTO public.teams VALUES ('Netherlands', 116);
INSERT INTO public.teams VALUES ('Costa Rica', 117);
INSERT INTO public.teams VALUES ('Chile', 118);
INSERT INTO public.teams VALUES ('Nigeria', 119);
INSERT INTO public.teams VALUES ('Algeria', 120);
INSERT INTO public.teams VALUES ('Greece', 121);
INSERT INTO public.teams VALUES ('United States', 122);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 122, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

