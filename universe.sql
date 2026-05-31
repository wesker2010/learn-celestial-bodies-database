--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    date_of_discovery date
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_years numeric,
    name_meaning text,
    distance_light_years integer,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    name_meaning text,
    diameter_km integer,
    has_life boolean,
    is_spherical boolean,
    parent_planet character varying(20),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_km integer,
    type text,
    rotation_around_sun_days integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    moon_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_years numeric,
    distance_light_years integer,
    name_meaning text,
    galaxy_id integer,
    planet_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'IDA', '1884-09-29');
INSERT INTO public.asteroid VALUES (2, 'Juno', '1804-09-01');
INSERT INTO public.asteroid VALUES (3, 'Coronis', '1876-01-04');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 3000000000, 'Greek mythology', 2, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 130000000, 'Looks like a band of light', 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Antennae', 120000000, 'Looks like an insect antennae', 70, NULL);
INSERT INTO public.galaxy VALUES (4, 'Backward', NULL, 'Rotates in opposite direction', 111, NULL);
INSERT INTO public.galaxy VALUES (5, 'Butterfly', NULL, 'Looks like a pair of butterfly wings', 60, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', NULL, 'It is located in the Centaurus Constellation', 12, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'month', 3476, false, true, 'Earth', NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Greek god', 22, false, false, 'Mars', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Greek god', 12, false, false, 'Mars', NULL);
INSERT INTO public.moon VALUES (4, 'Io', 'Greek mythology', 3646, false, true, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (6, 'Calisto', 'Greek mythology', 4820, false, true, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (5, 'Europe', 'Greek mythology', 3122, false, true, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (7, 'Amalthea', 'Greek mythology', 167, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (8, 'Himalia', 'Greek mythology', 170, false, true, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (9, 'Elara', 'Greek mythology', 86, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (10, 'Sinope', 'Greek mythology', 38, false, true, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (11, 'Carme', 'Greek mythology', 48, false, true, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (12, 'Ananke', 'Greek mythology', NULL, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (13, 'Leda', 'Greek mythology', 20, false, true, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (14, 'Thebe', 'Greek mythology', 99, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (15, 'Adrastea', 'Greek mythology', 16, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (16, 'Metis', 'Greek mythology', 43, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (17, 'Themisto', 'Greek mythology', 8, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (18, 'Kalyke', 'Greek mythology', 2, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (19, 'Erinome', 'Greek mythology', 3, false, false, 'Jupiter', NULL);
INSERT INTO public.moon VALUES (20, 'Isonoe', 'Greek mythology', 4, false, false, 'Jupiter', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 12746, 'Terrestrial', 1, true, true, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139822, 'Gas gyant', 4329, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 6780, 'Terrestrial', 687, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 116464, 'Gas gyant', 10759, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (1, 'Mercury', 4880, 'Terrestrial', 87969, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 12104, 'Terrestrial', 225, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724, 'Gas gyant', 30660, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244, 'Gas gyant', 14600, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 2377, 'Dwarf', 90520, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Eris', 2326, 'Dwarf', 203670, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Haumea', 1632, 'Dwarf', 103660, false, true, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Ceres', 946, 'Dwarf', 1679, false, true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Nembus', 2000000000, 170, 'Bayers Uranometria', NULL, NULL);
INSERT INTO public.star VALUES (2, 'Alamak', 6500000, 390, 'Caracal in arabic', NULL, NULL);
INSERT INTO public.star VALUES (3, 'Mirach', NULL, 200, 'Arabic', NULL, NULL);
INSERT INTO public.star VALUES (4, 'Alpheratz', 60000000, 97, 'Navel of the horse in arabic', NULL, NULL);
INSERT INTO public.star VALUES (5, 'Delta Andromedae', 320000000, 105, 'Its located in the Andromeda constellation', NULL, NULL);
INSERT INTO public.star VALUES (6, 'Beta Piscium', NULL, 410, 'Its located in the Pisces constellation', NULL, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

