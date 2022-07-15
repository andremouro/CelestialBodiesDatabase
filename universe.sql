--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy2 (
    idade integer NOT NULL,
    tempo integer,
    qtd integer,
    name character varying(30),
    galaxy2_id integer NOT NULL
);


ALTER TABLE public.galaxy2 OWNER TO freecodecamp;

--
-- Name: galaxy2_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy2_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy2_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy2_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy2_galaxy_id_seq OWNED BY public.galaxy2.galaxy2_id;


--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_name character varying(30) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    planet_name character varying(30) NOT NULL,
    star_name character varying(30),
    radius integer,
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(30),
    brightness_level numeric,
    galaxy_name character varying(30) NOT NULL,
    age integer,
    name character varying(30),
    radius integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: galaxy2 galaxy2_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy2 ALTER COLUMN galaxy2_id SET DEFAULT nextval('public.galaxy2_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxia1', 300, 0, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxia2', 400, 1000, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxia3', 350, 20000, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxia4', 100, 2000, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxia5', 150, 3500, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxia6', 360, 4000, false, NULL);


--
-- Data for Name: galaxy2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy2 VALUES (1, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy2 VALUES (2, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy2 VALUES (3, NULL, NULL, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'lua1', 100, NULL, 'planeta1');
INSERT INTO public.moon VALUES (4, 'lua2', 200, NULL, 'planeta1');
INSERT INTO public.moon VALUES (5, 'lua3', 250, NULL, 'planeta1');
INSERT INTO public.moon VALUES (6, 'lua4', 250, NULL, 'planeta1');
INSERT INTO public.moon VALUES (7, 'lua5', 50, NULL, 'planeta2');
INSERT INTO public.moon VALUES (8, 'lua6', 10, NULL, 'planeta2');
INSERT INTO public.moon VALUES (9, 'lua7', 15, NULL, 'planeta2');
INSERT INTO public.moon VALUES (10, 'lua8', 5, NULL, 'planeta3');
INSERT INTO public.moon VALUES (11, 'lua9', 9, NULL, 'planeta3');
INSERT INTO public.moon VALUES (12, 'lua10', 9, NULL, 'planeta3');
INSERT INTO public.moon VALUES (13, 'lua11', 100, NULL, 'planeta4');
INSERT INTO public.moon VALUES (14, 'lua12', 200, NULL, 'planeta4');
INSERT INTO public.moon VALUES (15, 'lua13', 250, NULL, 'planeta4');
INSERT INTO public.moon VALUES (16, 'lua14', 250, NULL, 'planeta5');
INSERT INTO public.moon VALUES (17, 'lua15', 50, NULL, 'planeta5');
INSERT INTO public.moon VALUES (18, 'lua16', 10, NULL, 'planeta5');
INSERT INTO public.moon VALUES (19, 'lua17', 15, NULL, 'planeta5');
INSERT INTO public.moon VALUES (20, 'lua18', 5, NULL, 'planeta6');
INSERT INTO public.moon VALUES (21, 'lua19', 9, NULL, 'planeta6');
INSERT INTO public.moon VALUES (22, 'lua20', 9, NULL, 'planeta7');
INSERT INTO public.moon VALUES (24, NULL, NULL, 1, 'planeta6');
INSERT INTO public.moon VALUES (25, NULL, NULL, 50, 'planeta6');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, true, 'planeta1', 'estrela1', NULL, NULL);
INSERT INTO public.planet VALUES (2, NULL, NULL, false, 'planeta2', 'estrela1', NULL, NULL);
INSERT INTO public.planet VALUES (3, NULL, NULL, false, 'planeta3', 'estrela1', NULL, NULL);
INSERT INTO public.planet VALUES (4, NULL, NULL, false, 'planeta4', 'estrela1', NULL, NULL);
INSERT INTO public.planet VALUES (5, NULL, NULL, false, 'planeta5', 'estrela1', NULL, NULL);
INSERT INTO public.planet VALUES (6, NULL, NULL, false, 'planeta6', 'estrela2', NULL, NULL);
INSERT INTO public.planet VALUES (7, NULL, NULL, true, 'planeta7', 'estrela2', NULL, NULL);
INSERT INTO public.planet VALUES (8, NULL, NULL, false, 'planeta8', 'estrela2', NULL, NULL);
INSERT INTO public.planet VALUES (9, NULL, NULL, false, 'planeta9', 'estrela2', NULL, NULL);
INSERT INTO public.planet VALUES (10, NULL, NULL, true, 'planeta10', 'estrela3', NULL, NULL);
INSERT INTO public.planet VALUES (11, NULL, NULL, false, 'planeta11', 'estrela3', NULL, NULL);
INSERT INTO public.planet VALUES (12, NULL, NULL, false, 'planeta12', 'estrela3', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'estrela1', 5, 'galaxia1', 600, NULL, NULL);
INSERT INTO public.star VALUES (2, 'estrela2', 8, 'galaxia1', 900, NULL, NULL);
INSERT INTO public.star VALUES (3, 'estrela3', 4, 'galaxia2', 100, NULL, NULL);
INSERT INTO public.star VALUES (4, 'estrela4', 7, 'galaxia2', 1000, NULL, NULL);
INSERT INTO public.star VALUES (5, 'estrela5', 4, 'galaxia3', 1500, NULL, NULL);
INSERT INTO public.star VALUES (6, 'estrela6', 2, 'galaxia4', 200, NULL, NULL);


--
-- Name: galaxy2_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy2_galaxy_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 25, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy2 galaxy2_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy2
    ADD CONSTRAINT galaxy2_id PRIMARY KEY (galaxy2_id);


--
-- Name: galaxy2 galaxy2_idade_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy2
    ADD CONSTRAINT galaxy2_idade_key UNIQUE (idade);


--
-- Name: galaxy2 galaxy2_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy2
    ADD CONSTRAINT galaxy2_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

