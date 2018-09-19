--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.18
-- Dumped by pg_dump version 10.4

-- Started on 2018-09-18 23:21:22

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 11855)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2016 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 174 (class 1259 OID 16446)
-- Name: dim_cargo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_cargo (
    cargo character varying
);


ALTER TABLE public.dim_cargo OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 16452)
-- Name: dim_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_person (
    nome character varying,
    genero character varying,
    cargo character varying
);


ALTER TABLE public.dim_person OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 16458)
-- Name: dim_tempo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_tempo (
    ano character varying
);


ALTER TABLE public.dim_tempo OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 16437)
-- Name: fact_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fact_1 (
    ano character varying,
    q_corretude_qtdpobres double precision,
    q_corretude_pib double precision,
    q_corretude_campi double precision,
    nome character varying,
    cargo character varying,
    q_completude_pobres_quantidade double precision,
    q_completude_pib double precision,
    q_completude_campi double precision
);


ALTER TABLE public.fact_1 OWNER TO postgres;

--
-- TOC entry 2005 (class 0 OID 16446)
-- Dependencies: 174
-- Data for Name: dim_cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_cargo (cargo) FROM stdin;
Minister of Mines and Energy
Chief of Staff of the Presidency
Federal SenatorforMinas Gerais
President of theBrazilian Democratic Movement Party
President of Brazil
Minister of Finance
Vice President of Brazil
Minister of External Relations
24thVice President of Brazil
President of the Workers' Party
36thGovernor of Minas Gerais
President of the Chamber of Deputies
35thPresident of Brazil
36thPresident of Brazil
6th Academic of the 36th chair of the Brazilian Academy of Letters
Joint President of theBrazilian Social Democracy Party
\.


--
-- TOC entry 2006 (class 0 OID 16452)
-- Dependencies: 175
-- Data for Name: dim_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_person (nome, genero, cargo) FROM stdin;
Fernando_Henrique_Cardoso	Homem	Joint President of theBrazilian Social Democracy Party
Hermes_da_Fonseca	Homem	President of Brazil
Michel_Temer	Homem	President of theBrazilian Democratic Movement Party
Luiz_InÃ¡cio_Lula_da_Silva	Homem	Chief of Staff of the Presidency
Fernando_Henrique_Cardoso	Homem	President of Brazil
Itamar_Franco	Homem	President of Brazil
Itamar_Franco	Homem	Federal SenatorforMinas Gerais
Dilma_Rousseff	Mulher	Minister of Mines and Energy
Michel_Temer	Homem	President of Brazil
Fernando_Henrique_Cardoso	Homem	Minister of External Relations
Itamar_Franco	Homem	Vice President of Brazil
Dilma_Rousseff	Mulher	Chief of Staff of the Presidency
Michel_Temer	Homem	President of the Chamber of Deputies
Luiz_InÃ¡cio_Lula_da_Silva	Homem	President of the Workers' Party
Dilma_Rousseff	Mulher	36thPresident of Brazil
Itamar_Franco	Homem	36thGovernor of Minas Gerais
Michel_Temer	Homem	24thVice President of Brazil
JÃºlio_Prestes	Homem	President of Brazil
JosÃ©_Sarney	Homem	President of Brazil
Luiz_InÃ¡cio_Lula_da_Silva	Homem	35thPresident of Brazil
Fernando_Henrique_Cardoso	Homem	6th Academic of the 36th chair of the Brazilian Academy of Letters
Fernando_Henrique_Cardoso	Homem	Minister of Finance
\.


--
-- TOC entry 2007 (class 0 OID 16458)
-- Dependencies: 176
-- Data for Name: dim_tempo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_tempo (ano) FROM stdin;
2013
1983
1982
1994
2011
1980
1981
1913
2008
1988
1986
2002
2012
1914
1996
1911
1987
2004
2009
2003
1992
1912
1993
1985
2005
1997
2014
2016
2015
1990
2000
2007
1991
1927
1928
2001
2010
1930
1989
1998
1929
1984
2006
1995
1910
1999
2013
1983
1982
1994
2011
1980
1981
1913
2008
1988
1986
2002
2012
1914
1996
1911
1987
2004
2009
2003
1992
1912
1993
1985
2005
1997
2014
2016
2015
1990
2000
2007
1991
1927
1928
2001
2010
1930
1989
1998
1929
1984
2006
1995
1910
1999
\.


--
-- TOC entry 2004 (class 0 OID 16437)
-- Dependencies: 173
-- Data for Name: fact_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fact_1 (ano, q_corretude_qtdpobres, q_corretude_pib, q_corretude_campi, nome, cargo, q_completude_pobres_quantidade, q_completude_pib, q_completude_campi) FROM stdin;
1910	\N	\N	\N	Hermes_da_Fonseca	President of Brazil	\N	\N	\N
1911	\N	\N	\N	Hermes_da_Fonseca	President of Brazil	\N	\N	\N
1912	\N	\N	\N	Hermes_da_Fonseca	President of Brazil	\N	\N	\N
1913	\N	\N	\N	Hermes_da_Fonseca	President of Brazil	\N	\N	\N
1914	\N	\N	\N	Hermes_da_Fonseca	President of Brazil	\N	\N	\N
1927	\N	\N	\N	JÃºlio_Prestes	President of Brazil	\N	\N	\N
1928	\N	\N	\N	JÃºlio_Prestes	President of Brazil	\N	\N	\N
1929	\N	\N	\N	JÃºlio_Prestes	President of Brazil	\N	\N	\N
1930	\N	\N	\N	JÃºlio_Prestes	President of Brazil	\N	\N	\N
1980	\N	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	\N	\N	\N
1981	0.68000000000000005	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	1	\N	\N
1982	0.68000000000000005	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	1	\N	\N
1983	0.0030000000000000001	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	1	\N	\N
1984	0.68000000000000005	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	1	\N	\N
1985	0.68000000000000005	\N	\N	JosÃ©_Sarney	President of Brazil	1	\N	\N
1985	0.68000000000000005	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	1	\N	\N
1986	0.0030000000000000001	\N	\N	JosÃ©_Sarney	President of Brazil	1	\N	\N
1986	0.0030000000000000001	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	1	\N	\N
1987	0.0030000000000000001	\N	\N	JosÃ©_Sarney	President of Brazil	0.83299999999999996	\N	\N
1987	0.0030000000000000001	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	0.83299999999999996	\N	\N
1988	0.13600000000000001	\N	\N	JosÃ©_Sarney	President of Brazil	0.83299999999999996	\N	\N
1988	0.13600000000000001	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	0.83299999999999996	\N	\N
1989	0.68000000000000005	\N	\N	JosÃ©_Sarney	President of Brazil	0.83299999999999996	\N	\N
1989	0.68000000000000005	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	0.83299999999999996	\N	\N
1990	0.68000000000000005	\N	\N	Itamar_Franco	Vice President of Brazil	0.83299999999999996	\N	\N
1990	0.68000000000000005	\N	\N	JosÃ©_Sarney	President of Brazil	0.83299999999999996	\N	\N
1990	0.68000000000000005	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	0.83299999999999996	\N	\N
1991	\N	\N	\N	Itamar_Franco	Vice President of Brazil	\N	\N	\N
1991	\N	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	\N	\N	\N
1992	0.68000000000000005	\N	\N	Itamar_Franco	President of Brazil	0.66600000000000004	\N	\N
1992	0.68000000000000005	\N	\N	Itamar_Franco	Vice President of Brazil	0.66600000000000004	\N	\N
1992	0.68000000000000005	\N	\N	Fernando_Henrique_Cardoso	Minister of External Relations	0.66600000000000004	\N	\N
1992	0.68000000000000005	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	0.66600000000000004	\N	\N
1993	0.68000000000000005	\N	\N	Itamar_Franco	President of Brazil	0.66600000000000004	\N	\N
1993	0.68000000000000005	\N	\N	Fernando_Henrique_Cardoso	Minister of Finance	0.66600000000000004	\N	\N
1993	0.68000000000000005	\N	\N	Fernando_Henrique_Cardoso	Minister of External Relations	0.66600000000000004	\N	\N
1993	0.68000000000000005	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	0.66600000000000004	\N	\N
1994	\N	\N	\N	Itamar_Franco	President of Brazil	\N	\N	\N
1994	\N	\N	\N	Fernando_Henrique_Cardoso	Minister of Finance	\N	\N	\N
1994	\N	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	\N	\N	\N
1995	0.0030000000000000001	0.68000000000000005	\N	Itamar_Franco	President of Brazil	0.83299999999999996	1	\N
1995	0.0030000000000000001	0.68000000000000005	\N	Fernando_Henrique_Cardoso	President of Brazil	0.83299999999999996	1	\N
1996	0.68000000000000005	0.68000000000000005	\N	Fernando_Henrique_Cardoso	President of Brazil	0.66600000000000004	1	\N
1997	0.68000000000000005	0.0030000000000000001	\N	Fernando_Henrique_Cardoso	President of Brazil	0.83299999999999996	1	\N
1998	0.68000000000000005	0.0030000000000000001	\N	Fernando_Henrique_Cardoso	President of Brazil	0.83299999999999996	1	\N
1999	0.68000000000000005	0.0030000000000000001	\N	Itamar_Franco	36thGovernor of Minas Gerais	0.83299999999999996	1	\N
1999	0.68000000000000005	0.0030000000000000001	\N	Fernando_Henrique_Cardoso	President of Brazil	0.83299999999999996	1	\N
2000	\N	0.68000000000000005	0.14599999999999999	Itamar_Franco	36thGovernor of Minas Gerais	\N	1	1
2000	\N	0.68000000000000005	0.14599999999999999	Fernando_Henrique_Cardoso	President of Brazil	\N	1	1
2001	0.68000000000000005	0.68000000000000005	0.14599999999999999	Itamar_Franco	36thGovernor of Minas Gerais	0.83299999999999996	1	1
2001	0.68000000000000005	0.68000000000000005	0.14599999999999999	Fernando_Henrique_Cardoso	President of Brazil	0.83299999999999996	1	1
2001	0.68000000000000005	0.68000000000000005	0.14599999999999999	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	1	1
2002	0.68000000000000005	0.68000000000000005	0.82999999999999996	Itamar_Franco	36thGovernor of Minas Gerais	0.83299999999999996	1	1
2002	0.68000000000000005	0.68000000000000005	0.82999999999999996	Fernando_Henrique_Cardoso	President of Brazil	0.83299999999999996	1	1
2002	0.68000000000000005	0.68000000000000005	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	1	1
2003	0.68000000000000005	0.68000000000000005	0.82999999999999996	Dilma_Rousseff	Minister of Mines and Energy	0.83299999999999996	1	1
2003	0.68000000000000005	0.68000000000000005	0.82999999999999996	Fernando_Henrique_Cardoso	President of Brazil	0.83299999999999996	1	1
2003	0.68000000000000005	0.68000000000000005	0.82999999999999996	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	0.83299999999999996	1	1
2003	0.68000000000000005	0.68000000000000005	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	1	1
2004	0.68000000000000005	0.68000000000000005	0.82999999999999996	Dilma_Rousseff	Minister of Mines and Energy	1	1	1
2004	0.68000000000000005	0.68000000000000005	0.82999999999999996	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	1	1	1
2004	0.68000000000000005	0.68000000000000005	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	1	1	1
2005	0.68000000000000005	0.68000000000000005	0.14599999999999999	Dilma_Rousseff	Chief of Staff of the Presidency	1	1	1
2005	0.68000000000000005	0.68000000000000005	0.14599999999999999	Dilma_Rousseff	Minister of Mines and Energy	1	1	1
2005	0.68000000000000005	0.68000000000000005	0.14599999999999999	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	1	1	1
2005	0.68000000000000005	0.68000000000000005	0.14599999999999999	Michel_Temer	President of theBrazilian Democratic Movement Party	1	1	1
2006	0.68000000000000005	0.68000000000000005	0.001	Dilma_Rousseff	Chief of Staff of the Presidency	1	1	1
2006	0.68000000000000005	0.68000000000000005	0.001	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	1	1	1
2006	0.68000000000000005	0.68000000000000005	0.001	Michel_Temer	President of theBrazilian Democratic Movement Party	1	1	1
2007	0.68000000000000005	0.68000000000000005	0.82999999999999996	Dilma_Rousseff	Chief of Staff of the Presidency	0.83299999999999996	1	1
2007	0.68000000000000005	0.68000000000000005	0.82999999999999996	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	0.83299999999999996	1	1
2007	0.68000000000000005	0.68000000000000005	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	1	1
2008	0.68000000000000005	0.0030000000000000001	0.14599999999999999	Dilma_Rousseff	Chief of Staff of the Presidency	0.83299999999999996	1	1
2008	0.68000000000000005	0.0030000000000000001	0.14599999999999999	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	0.83299999999999996	1	1
2008	0.68000000000000005	0.0030000000000000001	0.14599999999999999	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	1	1
2009	0.68000000000000005	0.68000000000000005	0.82999999999999996	Dilma_Rousseff	Chief of Staff of the Presidency	0.83299999999999996	1	1
2009	0.68000000000000005	0.68000000000000005	0.82999999999999996	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	0.83299999999999996	1	1
2009	0.68000000000000005	0.68000000000000005	0.82999999999999996	Michel_Temer	President of the Chamber of Deputies	0.83299999999999996	1	1
2009	0.68000000000000005	0.68000000000000005	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	1	1
2010	\N	0.0030000000000000001	0.82999999999999996	Dilma_Rousseff	Chief of Staff of the Presidency	\N	1	1
2010	\N	0.0030000000000000001	0.82999999999999996	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	\N	1	1
2010	\N	0.0030000000000000001	0.82999999999999996	Michel_Temer	President of the Chamber of Deputies	\N	1	1
2010	\N	0.0030000000000000001	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	\N	1	1
2011	0.68000000000000005	0.0030000000000000001	0.82999999999999996	Itamar_Franco	Federal SenatorforMinas Gerais	0.83299999999999996	0.83299999999999996	1
2011	0.68000000000000005	0.0030000000000000001	0.82999999999999996	Dilma_Rousseff	36thPresident of Brazil	0.83299999999999996	0.83299999999999996	1
2011	0.68000000000000005	0.0030000000000000001	0.82999999999999996	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	0.83299999999999996	0.83299999999999996	1
2011	0.68000000000000005	0.0030000000000000001	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	0.83299999999999996	1
2012	0.68000000000000005	0.68000000000000005	0.82999999999999996	Dilma_Rousseff	36thPresident of Brazil	0.83299999999999996	0.83299999999999996	1
2012	0.68000000000000005	0.68000000000000005	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	0.83299999999999996	1
2013	0.68000000000000005	0.0030000000000000001	0.82999999999999996	Dilma_Rousseff	36thPresident of Brazil	0.83299999999999996	0.83299999999999996	1
2013	0.68000000000000005	0.0030000000000000001	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	0.83299999999999996	1
2014	0.68000000000000005	\N	0.82999999999999996	Dilma_Rousseff	36thPresident of Brazil	0.83299999999999996	\N	1
2014	0.68000000000000005	\N	0.82999999999999996	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	\N	1
2015	0.68000000000000005	\N	\N	Dilma_Rousseff	36thPresident of Brazil	0.83299999999999996	\N	\N
2015	0.68000000000000005	\N	\N	Michel_Temer	President of theBrazilian Democratic Movement Party	0.83299999999999996	\N	\N
2016	\N	\N	\N	Dilma_Rousseff	36thPresident of Brazil	\N	\N	\N
2016	\N	\N	\N	Luiz_InÃ¡cio_Lula_da_Silva	Chief of Staff of the Presidency	\N	\N	\N
2016	\N	\N	\N	Michel_Temer	President of theBrazilian Democratic Movement Party	\N	\N	\N
\.


--
-- TOC entry 2015 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-09-18 23:21:22

--
-- PostgreSQL database dump complete
--

