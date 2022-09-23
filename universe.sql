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
    name character varying(30) NOT NULL,
    galaxy_size character varying(20),
    morphology integer,
    galaxy_real boolean
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
    is_habitable boolean,
    planet_id integer,
    radius_km numeric
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
    is_habitable boolean,
    star_id integer,
    planet_order integer
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
    galaxy_id integer,
    star_type text,
    constellation character varying(20)
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
-- Name: the_fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.the_fifth_table (
    name character varying(30) NOT NULL,
    the_fifth_table_id integer NOT NULL,
    the_third_column timestamp without time zone
);


ALTER TABLE public.the_fifth_table OWNER TO freecodecamp;

--
-- Name: the_fifth_table_the_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.the_fifth_table_the_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.the_fifth_table_the_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: the_fifth_table_the_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.the_fifth_table_the_fifth_table_id_seq OWNED BY public.the_fifth_table.the_fifth_table_id;


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
-- Name: the_fifth_table the_fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_fifth_table ALTER COLUMN the_fifth_table_id SET DEFAULT nextval('public.the_fifth_table_the_fifth_table_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Dwarf', 1, true);
INSERT INTO public.galaxy VALUES (2, 'Super Mario Galaxy', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (3, 'Shiar', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Dimension_X', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (5, 'A_Galaxy_Far_Far_Away', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Koozebane', NULL, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon2', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon3', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon4', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon5', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon6', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon7', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon8', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon9', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon10', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon11', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon12', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon13', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon14', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon15', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon16', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon17', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon18', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon19', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'The_Moon', NULL, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1, 3);
INSERT INTO public.planet VALUES (2, 'Venus', false, 1, 2);
INSERT INTO public.planet VALUES (3, 'Mars', false, 1, 4);
INSERT INTO public.planet VALUES (4, 'Mercury', false, 1, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 1, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 1, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 1, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 1, 8);
INSERT INTO public.planet VALUES (10, 'Vulcan', true, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Endor', true, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet Hollywood', false, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Planet_of_the_Apes', true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Kirby', NULL, 'Superstar', NULL);
INSERT INTO public.star VALUES (4, 'Aldebaran', 1, 'Giant Star', 'Taurus');
INSERT INTO public.star VALUES (5, 'Deneb', 1, 'Red Giant', 'Cygnus');
INSERT INTO public.star VALUES (6, 'Antares', 1, 'Red Supergiant', 'Scorpius');
INSERT INTO public.star VALUES (7, 'Betelgeuse', 1, 'Red Supergiant', 'Orion');


--
-- Data for Name: the_fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.the_fifth_table VALUES ('row1', 1, NULL);
INSERT INTO public.the_fifth_table VALUES ('row2', 2, NULL);
INSERT INTO public.the_fifth_table VALUES ('row3', 3, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: the_fifth_table_the_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.the_fifth_table_the_fifth_table_id_seq', 3, true);


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
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


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
-- Name: the_fifth_table the_fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_fifth_table
    ADD CONSTRAINT the_fifth_table_name_key UNIQUE (name);


--
-- Name: the_fifth_table the_fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.the_fifth_table
    ADD CONSTRAINT the_fifth_table_pkey PRIMARY KEY (the_fifth_table_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- PostgreSQL database dump complete
--

