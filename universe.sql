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
    name character varying(60) NOT NULL,
    distance_yl numeric(4,1) NOT NULL,
    black_hole integer,
    color text
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
    name character varying(60) NOT NULL,
    radius integer NOT NULL,
    color text,
    planet_id integer NOT NULL
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
    name character varying(60) NOT NULL,
    oxygen boolean NOT NULL,
    water boolean NOT NULL,
    radius_km integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: planetary_sistem; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_sistem (
    planetary_sistem_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.planetary_sistem OWNER TO freecodecamp;

--
-- Name: planetary_sistem_planetary_sistem_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_sistem_planetary_sistem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_sistem_planetary_sistem_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_sistem_planetary_sistem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_sistem_planetary_sistem_id_seq OWNED BY public.planetary_sistem.planetary_sistem_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    color text NOT NULL,
    temperature integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: planetary_sistem planetary_sistem_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_sistem ALTER COLUMN planetary_sistem_id SET DEFAULT nextval('public.planetary_sistem_planetary_sistem_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2.5, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Gran nube de Magallanes', 0.2, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Pequeña nube de Magallanes', 0.2, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulo', 2.7, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Escultor', 11.4, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigarro', 12.4, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1737, 'Grisaceo', 3);
INSERT INTO public.moon VALUES (2, 'Europa', 1560, 'Blanco', 5);
INSERT INTO public.moon VALUES (3, 'Ganimides', 2634, 'Blanco', 5);
INSERT INTO public.moon VALUES (4, 'Calisto', 2410, 'Gris oscuro', 5);
INSERT INTO public.moon VALUES (5, 'Io', 1821, 'Amarillo', 5);
INSERT INTO public.moon VALUES (6, 'Titan', 2576, 'Naranja', 6);
INSERT INTO public.moon VALUES (7, 'Rea', 1528, 'Gris', 6);
INSERT INTO public.moon VALUES (8, 'Dione', 560, 'Blanco', 6);
INSERT INTO public.moon VALUES (9, 'Encelado', 252, 'Blanco Azul', 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 198, 'Gris', 6);
INSERT INTO public.moon VALUES (11, 'Triton', 1353, 'Azul', 7);
INSERT INTO public.moon VALUES (12, 'Proteo', 210, 'Gris', 7);
INSERT INTO public.moon VALUES (13, 'Caronte', 603, 'Gris Marron', 12);
INSERT INTO public.moon VALUES (14, 'Nayade', 66, 'Gris', 11);
INSERT INTO public.moon VALUES (15, 'Miranda', 236, 'Blanco Gris', 13);
INSERT INTO public.moon VALUES (16, 'Oberon', 761, 'Gris Marron', 10);
INSERT INTO public.moon VALUES (17, 'Umbriel', 584, 'Rojo', 12);
INSERT INTO public.moon VALUES (18, 'Fobos', 11, 'Naranja', 13);
INSERT INTO public.moon VALUES (19, 'Deimos', 6, 'Verde', 4);
INSERT INTO public.moon VALUES (20, 'Hiperion', 135, 'Morado', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', false, false, 3000, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, false, 6730, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', true, true, 6750, 2);
INSERT INTO public.planet VALUES (4, 'Marte', false, false, 4500, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 20000, 4);
INSERT INTO public.planet VALUES (6, 'Saturno', true, false, 18000, 6);
INSERT INTO public.planet VALUES (7, 'Urano', true, true, 9000, 7);
INSERT INTO public.planet VALUES (8, 'Zeus', false, false, 8700, 8);
INSERT INTO public.planet VALUES (9, 'Era', false, false, 4500, 2);
INSERT INTO public.planet VALUES (10, 'Icaro', false, true, 20000, 4);
INSERT INTO public.planet VALUES (11, 'Poseidon', true, false, 18000, 6);
INSERT INTO public.planet VALUES (12, 'Hades', true, true, 9000, 7);
INSERT INTO public.planet VALUES (13, 'Atenea', false, false, 8700, 8);


--
-- Data for Name: planetary_sistem; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_sistem VALUES (1, 'Solar system', 1, 2, 3);
INSERT INTO public.planetary_sistem VALUES (2, 'Marte system', 3, 4, 5);
INSERT INTO public.planetary_sistem VALUES (3, 'Venus system', 2, 5, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Amarillo', 5500, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Blanco', 9900, 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Rojo', 3600, 3);
INSERT INTO public.star VALUES (4, 'Rigel', 'Azul', 11000, 2);
INSERT INTO public.star VALUES (5, 'Vega', 'Blanco', 9600, 4);
INSERT INTO public.star VALUES (6, 'Antares', 'Rojo', 3500, 5);
INSERT INTO public.star VALUES (7, 'Aldebaran', 'Naranja', 3900, 1);
INSERT INTO public.star VALUES (8, 'Polaris', 'Amarillo', 5500, 2);
INSERT INTO public.star VALUES (9, 'Capella', 'Amarillo', 5500, 3);
INSERT INTO public.star VALUES (10, 'Arcturus', 'Naranja', 4300, 4);
INSERT INTO public.star VALUES (11, 'Canopus', 'Blanco', 7500, 1);
INSERT INTO public.star VALUES (12, 'Spica', 'Blanco', 22400, 2);


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
-- Name: planetary_sistem_planetary_sistem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_sistem_planetary_sistem_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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
-- Name: planetary_sistem planetary_sistem_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_sistem
    ADD CONSTRAINT planetary_sistem_name_key UNIQUE (name);


--
-- Name: planetary_sistem planetary_sistem_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_sistem
    ADD CONSTRAINT planetary_sistem_pkey PRIMARY KEY (planetary_sistem_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

