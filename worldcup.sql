-- PostgreSQL database dump complete

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
    round character varying NOT NULL,
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
ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
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
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (26, 'France');
INSERT INTO public.teams VALUES (27, 'Croatia');
INSERT INTO public.teams VALUES (28, 'Belgium');
INSERT INTO public.teams VALUES (29, 'England');
INSERT INTO public.teams VALUES (30, 'Russia');
INSERT INTO public.teams VALUES (31, 'Sweden');
INSERT INTO public.teams VALUES (32, 'Brazil');
INSERT INTO public.teams VALUES (33, 'Uruguay');
INSERT INTO public.teams VALUES (34, 'Colombia');
INSERT INTO public.teams VALUES (35, 'Switzerland');
INSERT INTO public.teams VALUES (36, 'Japan');
INSERT INTO public.teams VALUES (37, 'Mexico');
INSERT INTO public.teams VALUES (38, 'Denmark');
INSERT INTO public.teams VALUES (39, 'Spain');
INSERT INTO public.teams VALUES (40, 'Portugal');
INSERT INTO public.teams VALUES (41, 'Argentina');
INSERT INTO public.teams VALUES (42, 'Germany');
INSERT INTO public.teams VALUES (43, 'Netherlands');
INSERT INTO public.teams VALUES (44, 'Costa Rica');
INSERT INTO public.teams VALUES (45, 'Chile');
INSERT INTO public.teams VALUES (46, 'Nigeria');
INSERT INTO public.teams VALUES (47, 'Algeria');
INSERT INTO public.teams VALUES (48, 'Greece');
INSERT INTO public.teams VALUES (49, 'United States');

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 4, 2, 26, 27);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 2, 0, 28, 29);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 2, 1, 27, 29);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 1, 0, 26, 28);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 3, 2, 27, 30);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 2, 0, 29, 31);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 2, 1, 28, 32);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 2, 0, 26, 33);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 2, 1, 29, 34);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 1, 0, 31, 35);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 3, 2, 28, 36);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 2, 0, 32, 37);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 2, 1, 27, 38);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 2, 1, 30, 39);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 1, 33, 40);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 4, 3, 26, 41);
INSERT INTO public.games VALUES (49, 2014, 'Final', 1, 0, 42, 41);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 3, 0, 43, 32);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 1, 0, 41, 43);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 7, 1, 42, 32);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 1, 0, 43, 44);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 1, 0, 41, 28);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 2, 1, 32, 34);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 1, 0, 42, 26);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 2, 1, 32, 45);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 2, 0, 34, 33);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 2, 0, 26, 46);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 2, 1, 42, 47);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 2, 1, 43, 37);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 2, 1, 44, 48);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 1, 0, 41, 35);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 1, 28, 49);

--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);

--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--
SELECT pg_catalog.setval('public.teams_team_id_seq', 49, true);

--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.games ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);

--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.teams ADD CONSTRAINT teams_name_key UNIQUE (name);

--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.teams ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);

--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.games ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);

--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--
ALTER TABLE ONLY public.games ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);
