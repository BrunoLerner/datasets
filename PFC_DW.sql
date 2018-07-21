--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: dim_person; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.dim_person (
    nome character varying,
    genero character varying,
    q_fonte integer,
    cargo character varying
);


ALTER TABLE public.dim_person OWNER TO postgres;

--
-- Name: dim_tempo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.dim_tempo (
    ano character varying
);


ALTER TABLE public.dim_tempo OWNER TO postgres;

--
-- Name: fact_1; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.fact_1 (
    ano character varying,
    nome character varying,
    cargo character varying,
    pobres_quantidade double precision,
    q_outliers double precision,
    pib double precision,
    campi integer
);


ALTER TABLE public.fact_1 OWNER TO postgres;

--
-- Data for Name: dim_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_person (nome, genero, q_fonte, cargo) FROM stdin;
Fernando_Henrique_Cardoso	Homem	5	Joint President of theBrazilian Social Democracy Party
Hermes_da_Fonseca	Homem	5	President of Brazil
Michel_Temer	Homem	5	President of theBrazilian Democratic Movement Party
Luiz_InÃ¡cio_Lula_da_Silva	Homem	5	Chief of Staff of the Presidency
Fernando_Henrique_Cardoso	Homem	5	President of Brazil
Itamar_Franco	Homem	5	President of Brazil
Itamar_Franco	Homem	5	Federal SenatorforMinas Gerais
Dilma_Rousseff	Mulher	5	Minister of Mines and Energy
Michel_Temer	Homem	5	President of Brazil
Fernando_Henrique_Cardoso	Homem	5	Minister of External Relations
Itamar_Franco	Homem	5	Vice President of Brazil
Dilma_Rousseff	Mulher	5	Chief of Staff of the Presidency
Michel_Temer	Homem	5	President of the Chamber of Deputies
Luiz_InÃ¡cio_Lula_da_Silva	Homem	5	President of the Workers' Party
Dilma_Rousseff	Mulher	5	36thPresident of Brazil
Itamar_Franco	Homem	5	36thGovernor of Minas Gerais
Michel_Temer	Homem	5	24thVice President of Brazil
JÃºlio_Prestes	Homem	5	President of Brazil
JosÃ©_Sarney	Homem	5	President of Brazil
Luiz_InÃ¡cio_Lula_da_Silva	Homem	5	35thPresident of Brazil
Fernando_Henrique_Cardoso	Homem	5	6th Academic of the 36th chair of the Brazilian Academy of Letters
Fernando_Henrique_Cardoso	Homem	5	Minister of Finance
\.


--
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
\.


--
-- Data for Name: fact_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fact_1 (ano, nome, cargo, pobres_quantidade, q_outliers, pib, campi) FROM stdin;
1910	Hermes_da_Fonseca	President of Brazil	\N	\N	\N	\N
1911	Hermes_da_Fonseca	President of Brazil	\N	\N	\N	\N
1912	Hermes_da_Fonseca	President of Brazil	\N	\N	\N	\N
1913	Hermes_da_Fonseca	President of Brazil	\N	\N	\N	\N
1914	Hermes_da_Fonseca	President of Brazil	\N	\N	\N	\N
1927	JÃºlio_Prestes	President of Brazil	\N	\N	\N	\N
1928	JÃºlio_Prestes	President of Brazil	\N	\N	\N	\N
1929	JÃºlio_Prestes	President of Brazil	\N	\N	\N	\N
1930	JÃºlio_Prestes	President of Brazil	\N	\N	\N	\N
1980	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	\N	\N	\N	\N
1981	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	30.199999999999999	-1	\N	\N
1982	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	30.199999999999999	-1	\N	\N
1983	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	39.799999999999997	-1	\N	\N
1984	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	39.700000000000003	-1	\N	\N
1985	JosÃ©_Sarney	President of Brazil	34.100000000000001	1	\N	\N
1985	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	34.100000000000001	1	\N	\N
1986	JosÃ©_Sarney	President of Brazil	13.5	-1	\N	\N
1986	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	13.5	-1	\N	\N
1987	JosÃ©_Sarney	President of Brazil	25.600000000000001	1	\N	\N
1987	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	25.600000000000001	1	\N	\N
1988	JosÃ©_Sarney	President of Brazil	32.299999999999997	1	\N	\N
1988	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	32.299999999999997	1	\N	\N
1989	JosÃ©_Sarney	President of Brazil	30.100000000000001	1	\N	\N
1989	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	30.100000000000001	1	\N	\N
1990	Itamar_Franco	Vice President of Brazil	30.699999999999999	1	\N	\N
1990	JosÃ©_Sarney	President of Brazil	30.699999999999999	1	\N	\N
1990	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	30.699999999999999	1	\N	\N
1991	Itamar_Franco	Vice President of Brazil	\N	\N	\N	\N
1991	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	\N	\N	\N	\N
1992	Itamar_Franco	President of Brazil	32.100000000000001	1	\N	\N
1992	Itamar_Franco	Vice President of Brazil	32.100000000000001	1	\N	\N
1992	Fernando_Henrique_Cardoso	Minister of External Relations	32.100000000000001	1	\N	\N
1992	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	32.100000000000001	1	\N	\N
1993	Itamar_Franco	President of Brazil	31.300000000000001	1	\N	\N
1993	Fernando_Henrique_Cardoso	Minister of Finance	31.300000000000001	1	\N	\N
1993	Fernando_Henrique_Cardoso	Minister of External Relations	31.300000000000001	1	\N	\N
1993	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	31.300000000000001	1	\N	\N
1994	Itamar_Franco	President of Brazil	\N	\N	\N	\N
1994	Fernando_Henrique_Cardoso	Minister of Finance	\N	\N	\N	\N
1994	Luiz_InÃ¡cio_Lula_da_Silva	President of the Workers' Party	\N	\N	\N	\N
1995	Itamar_Franco	President of Brazil	21.100000000000001	-1	705640892091	\N
1995	Fernando_Henrique_Cardoso	President of Brazil	21.100000000000001	-1	705640892091	\N
1996	Fernando_Henrique_Cardoso	President of Brazil	23.399999999999999	1	843963999000	\N
1997	Fernando_Henrique_Cardoso	President of Brazil	23.399999999999999	1	939146001000	\N
1998	Fernando_Henrique_Cardoso	President of Brazil	21.600000000000001	-1	979277002000	\N
1999	Itamar_Franco	36thGovernor of Minas Gerais	23.100000000000001	1	1064999711804	\N
1999	Fernando_Henrique_Cardoso	President of Brazil	23.100000000000001	1	1064999711804	\N
2000	Itamar_Franco	36thGovernor of Minas Gerais	\N	\N	1179482000001	137
2000	Fernando_Henrique_Cardoso	President of Brazil	\N	\N	1179482000001	137
2001	Itamar_Franco	36thGovernor of Minas Gerais	24.199999999999999	-1	1302135029171	140
2001	Fernando_Henrique_Cardoso	President of Brazil	24.199999999999999	-1	1302135029171	140
2001	Michel_Temer	President of theBrazilian Democratic Movement Party	24.199999999999999	-1	1302135029171	140
2002	Itamar_Franco	36thGovernor of Minas Gerais	22.199999999999999	1	1477821769003	148
2002	Fernando_Henrique_Cardoso	President of Brazil	22.199999999999999	1	1477821769003	148
2002	Michel_Temer	President of theBrazilian Democratic Movement Party	22.199999999999999	1	1477821769003	148
2003	Dilma_Rousseff	Minister of Mines and Energy	23.199999999999999	1	1699947693996	155
2003	Fernando_Henrique_Cardoso	President of Brazil	23.199999999999999	1	1699947693996	155
2003	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	23.199999999999999	1	1699947693996	155
2003	Michel_Temer	President of theBrazilian Democratic Movement Party	23.199999999999999	1	1699947693996	155
2004	Dilma_Rousseff	Minister of Mines and Energy	20.399999999999999	1	1941498358001	162
2004	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	20.399999999999999	1	1941498358001	162
2004	Michel_Temer	President of theBrazilian Democratic Movement Party	20.399999999999999	1	1941498358001	162
2005	Dilma_Rousseff	Chief of Staff of the Presidency	17.899999999999999	-1	2147239291997	182
2005	Dilma_Rousseff	Minister of Mines and Energy	17.899999999999999	-1	2147239291997	182
2005	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	17.899999999999999	-1	2147239291997	182
2005	Michel_Temer	President of theBrazilian Democratic Movement Party	17.899999999999999	-1	2147239291997	182
2006	Dilma_Rousseff	Chief of Staff of the Presidency	15	-1	2369483546173	214
2006	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	15	-1	2369483546173	214
2006	Michel_Temer	President of theBrazilian Democratic Movement Party	15	-1	2369483546173	214
2007	Dilma_Rousseff	Chief of Staff of the Presidency	14.5	1	2661344524999	227
2007	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	14.5	1	2661344524999	227
2007	Michel_Temer	President of theBrazilian Democratic Movement Party	14.5	1	2661344524999	227
2008	Dilma_Rousseff	Chief of Staff of the Presidency	12.1	1	3032203490413	247
2008	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	12.1	1	3032203490413	247
2008	Michel_Temer	President of theBrazilian Democratic Movement Party	12.1	1	3032203490413	247
2009	Dilma_Rousseff	Chief of Staff of the Presidency	12	-1	3239404052999	254
2009	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	12	-1	3239404052999	254
2009	Michel_Temer	President of the Chamber of Deputies	12	-1	3239404052999	254
2009	Michel_Temer	President of theBrazilian Democratic Movement Party	12	-1	3239404052999	254
2010	Dilma_Rousseff	Chief of Staff of the Presidency	\N	\N	3770084871577	273
2010	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	\N	\N	3770084871577	273
2010	Michel_Temer	President of the Chamber of Deputies	\N	\N	3770084871577	273
2010	Michel_Temer	President of theBrazilian Democratic Movement Party	\N	\N	3770084871577	273
2011	Itamar_Franco	Federal SenatorforMinas Gerais	10.9	-1	4143013336541	279
2011	Dilma_Rousseff	36thPresident of Brazil	10.9	-1	4143013336541	279
2011	Luiz_InÃ¡cio_Lula_da_Silva	35thPresident of Brazil	10.9	-1	4143013336541	279
2011	Michel_Temer	President of theBrazilian Democratic Movement Party	10.9	-1	4143013336541	279
2012	Dilma_Rousseff	36thPresident of Brazil	9.1999999999999993	1	4402537109407	285
2012	Michel_Temer	President of theBrazilian Democratic Movement Party	9.1999999999999993	1	4402537109407	285
2013	Dilma_Rousseff	36thPresident of Brazil	9.9000000000000004	1	4837950000000	291
2013	Michel_Temer	President of theBrazilian Democratic Movement Party	9.9000000000000004	1	4837950000000	291
2014	Dilma_Rousseff	36thPresident of Brazil	7.5	-1	\N	304
2014	Michel_Temer	President of theBrazilian Democratic Movement Party	7.5	-1	\N	304
2015	Dilma_Rousseff	36thPresident of Brazil	8.9000000000000004	1	\N	\N
2015	Michel_Temer	President of theBrazilian Democratic Movement Party	8.9000000000000004	1	\N	\N
2016	Dilma_Rousseff	36thPresident of Brazil	\N	\N	\N	\N
2016	Luiz_InÃ¡cio_Lula_da_Silva	Chief of Staff of the Presidency	\N	\N	\N	\N
2016	Michel_Temer	President of theBrazilian Democratic Movement Party	\N	\N	\N	\N
\.


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

