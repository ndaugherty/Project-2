--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

-- Started on 2025-03-06 19:16:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 17092)
-- Name: campaign; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campaign (
    cf_id integer NOT NULL,
    contact_id integer,
    company_name character varying(255) NOT NULL,
    goal double precision NOT NULL,
    pledged double precision NOT NULL,
    outcome character varying(50) NOT NULL,
    backers_count integer NOT NULL,
    country character varying(5) NOT NULL,
    currency character varying(5) NOT NULL,
    category_id character varying(10),
    subcategory_id character varying(10)
);


ALTER TABLE public.campaign OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17073)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    category_id character varying(10) NOT NULL,
    category character varying(255) NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17083)
-- Name: contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts (
    contact_id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255) NOT NULL
);


ALTER TABLE public.contacts OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17078)
-- Name: subcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subcategory (
    subcategory_id character varying(10) NOT NULL,
    subcategory character varying(255) NOT NULL
);


ALTER TABLE public.subcategory OWNER TO postgres;

--
-- TOC entry 4867 (class 0 OID 17092)
-- Dependencies: 220
-- Data for Name: campaign; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.campaign (cf_id, contact_id, company_name, goal, pledged, outcome, backers_count, country, currency, category_id, subcategory_id) FROM stdin;
147	4661	Baldwin, Riley and Jackson	100	0	failed	0	CA	CAD	cat1	subcat1
1621	3765	Odom Inc	1400	14560	successful	158	US	USD	cat2	subcat2
1812	4187	Melton, Robinson and Fritz	108400	142523	successful	1425	AU	AUD	cat3	subcat3
2156	4941	Mcdonald, Gonzalez and Ross	4200	2477	failed	24	US	USD	cat2	subcat2
1365	2199	Larson-Little	7600	5265	failed	53	US	USD	cat4	subcat4
2057	5650	Harris Group	7600	13195	successful	174	DK	DKK	cat4	subcat4
1894	5889	Ortiz, Coleman and Mitchell	5200	1090	failed	18	GB	GBP	cat5	subcat5
2669	4842	Carter-Guzman	4500	14741	successful	227	DK	DKK	cat4	subcat4
1114	3280	Nunez-Richards	110100	21946	live	708	DK	DKK	cat4	subcat4
970	5468	Rangel, Holt and Jones	6200	3208	failed	44	US	USD	cat2	subcat6
2340	3064	Green Ltd	5200	13838	successful	220	US	USD	cat5	subcat7
601	4904	Perez, Johnson and Gardner	6300	3030	failed	27	US	USD	cat4	subcat4
1950	1299	Kim Ltd	6300	5629	failed	55	US	USD	cat5	subcat7
671	5602	Walker, Taylor and Coleman	4200	10295	successful	98	US	USD	cat2	subcat8
1683	5753	Rodriguez, Rose and Stewart	28200	18829	failed	200	US	USD	cat2	subcat8
505	4495	Wright, Hunt and Rowe	81200	38414	failed	452	US	USD	cat3	subcat9
1245	4269	Hines Inc	1700	11041	successful	100	US	USD	cat6	subcat10
2550	2226	Cochran-Nguyen	84600	134845	successful	1249	US	USD	cat5	subcat11
875	1558	Johnson-Gould	9100	6089	canceled	135	US	USD	cat4	subcat4
2283	2307	Perez-Hess	62500	30331	failed	674	US	USD	cat4	subcat4
118	2900	Reeves, Thompson and Richardson	131800	147936	successful	1396	US	USD	cat5	subcat7
711	5695	Simmons-Reynolds	94000	38533	failed	558	US	USD	cat4	subcat4
1747	5708	Collier Inc	59100	75690	successful	890	US	USD	cat4	subcat4
1825	1663	Gray-Jenkins	4500	14942	successful	142	GB	GBP	cat5	subcat5
1019	3605	Scott, Wilson and Martin	92400	104257	successful	2673	US	USD	cat3	subcat9
821	4678	Caldwell, Velazquez and Wilson	5500	11904	successful	163	US	USD	cat7	subcat12
2653	2251	Spencer-Bates	107500	51814	canceled	1480	US	USD	cat4	subcat4
2502	6202	Best, Carr and Williams	2000	1599	failed	15	US	USD	cat2	subcat2
325	3715	Campbell, Brown and Powell	130800	137635	successful	2220	US	USD	cat4	subcat4
1345	4242	Johnson, Parker and Haynes	45900	150965	successful	1606	CH	CHF	cat5	subcat13
2303	4326	Clark-Cooke	9000	14455	successful	129	US	USD	cat5	subcat11
2224	5560	Schroeder Ltd	3500	10850	successful	226	GB	GBP	cat7	subcat12
1173	4002	Jackson PLC	101000	87676	failed	2307	IT	EUR	cat5	subcat5
210	3813	Blair, Collins and Carter	50200	189666	successful	5419	US	USD	cat4	subcat4
1546	5336	Maldonado and Sons	9300	14025	successful	165	US	USD	cat5	subcat5
2871	4994	Mitchell and Sons	125500	188628	successful	1965	DK	DKK	cat5	subcat7
2034	1471	Jackson-Lewis	700	1101	successful	16	US	USD	cat4	subcat4
2677	4482	Black, Armstrong and Anderson	8100	11339	successful	107	US	USD	cat6	subcat14
1865	3241	Maldonado-Gonzalez	3100	10085	successful	134	US	USD	cat8	subcat15
170	3477	Kim-Rice	9900	5027	failed	88	DK	DKK	cat4	subcat4
462	2265	Garcia, Garcia and Lopez	8800	14878	successful	198	US	USD	cat3	subcat9
3122	5911	Watts Group	5600	11924	successful	111	IT	EUR	cat2	subcat2
1175	2288	Werner-Bryant	1800	7991	successful	222	US	USD	cat1	subcat1
2301	4064	Schmitt-Mendoza	90200	167717	successful	6212	US	USD	cat6	subcat16
91	1294	Reid-Mccullough	1600	10541	successful	98	DK	DKK	cat6	subcat14
87	5008	Woods-Clark	9500	4530	failed	48	US	USD	cat4	subcat4
1482	3604	Vaughn, Hunt and Caldwell	3700	4247	successful	92	US	USD	cat2	subcat2
1711	3263	Bennett and Sons	1500	7129	successful	149	US	USD	cat4	subcat4
2294	5631	Lamb Inc	33300	128862	successful	2431	US	USD	cat4	subcat4
2389	2851	Casey-Kelly	7200	13653	successful	303	US	USD	cat2	subcat2
378	3714	Jones, Taylor and Moore	100	2	failed	1	IT	EUR	cat2	subcat17
1213	1664	Bradshaw, Gill and Donovan	158100	145243	failed	1467	GB	GBP	cat3	subcat9
29	5027	Hernandez, Rodriguez and Clark	7200	2459	failed	75	US	USD	cat4	subcat4
2309	3070	Smith-Jones	8800	12356	successful	209	US	USD	cat5	subcat7
2101	4248	Roy PLC	6000	5392	failed	120	US	USD	cat3	subcat9
1057	2034	Wright, Brooks and Villarreal	6600	11746	successful	131	US	USD	cat2	subcat18
2655	4085	Flores, Miller and Johnson	8000	11493	successful	164	US	USD	cat3	subcat9
202	3569	Bridges, Freeman and Kim	2900	6243	successful	201	US	USD	cat7	subcat12
2025	3889	Anderson-Perez	2700	6132	successful	211	US	USD	cat4	subcat4
2395	3136	Wright, Fox and Marks	1400	3851	successful	128	US	USD	cat4	subcat4
1418	2103	Crawford-Peters	94200	135997	successful	1600	CA	CAD	cat4	subcat4
1905	2329	Romero-Hoffman	199200	184750	failed	2253	CA	CAD	cat4	subcat4
1969	3325	Sparks-West	2000	14452	successful	249	US	USD	cat3	subcat3
2430	3131	Baker, Morgan and Brown	4700	557	failed	5	US	USD	cat4	subcat4
1291	4995	Mosley-Gilbert	2800	2734	failed	38	US	USD	cat3	subcat3
1934	3631	Berry-Boyer	6100	14405	successful	236	US	USD	cat4	subcat4
1225	5373	Sanders-Allen	2900	1307	failed	12	US	USD	cat4	subcat4
1363	3126	Lopez Inc	72600	117892	successful	4065	GB	GBP	cat3	subcat9
963	2194	Moreno-Turner	5700	14508	successful	246	IT	EUR	cat4	subcat4
1486	2906	Jones-Watson	7900	1901	canceled	17	US	USD	cat4	subcat4
676	2611	Barker Inc	128000	158389	successful	2475	IT	EUR	cat4	subcat4
2137	2374	Tate, Bass and House	6000	6484	successful	76	US	USD	cat4	subcat4
2656	3254	Hampton, Lewis and Ray	600	4022	successful	54	US	USD	cat5	subcat11
1556	3571	Collins-Goodman	1400	9253	successful	88	US	USD	cat2	subcat18
747	2812	Davis-Michael	3900	4776	successful	85	GB	GBP	cat2	subcat17
60	3961	White, Torres and Bishop	9700	14606	successful	170	US	USD	cat8	subcat15
2459	3872	Martin, Conway and Larsen	122900	95993	failed	1684	US	USD	cat4	subcat4
1903	4736	Acevedo-Huffman	9500	4460	failed	56	US	USD	cat5	subcat11
2003	5119	Montgomery, Larson and Spencer	4500	13536	successful	330	US	USD	cat6	subcat19
2885	5725	Soto LLC	57800	40228	failed	838	US	USD	cat4	subcat4
2067	4037	Sutton, Barrett and Tucker	1100	7012	successful	127	US	USD	cat7	subcat12
1610	2109	Gomez, Bailey and Flores	16800	37857	successful	411	US	USD	cat2	subcat2
2909	3283	Porter-George	1000	14973	successful	180	GB	GBP	cat7	subcat12
1239	6181	Fitzgerald PLC	106400	39996	failed	1000	US	USD	cat2	subcat6
2480	3251	Cisneros-Burton	31400	41564	successful	374	US	USD	cat3	subcat9
2181	3443	Hill, Lawson and Wilkinson	4900	6430	successful	71	AU	AUD	cat2	subcat8
2030	2988	Davis-Smith	7400	12405	successful	203	US	USD	cat4	subcat4
2311	1673	Farrell and Sons	198500	123040	failed	1482	AU	AUD	cat2	subcat2
2821	2085	Clark Group	4800	12516	successful	113	US	USD	cat6	subcat19
2468	1672	White, Singleton and Zimmerman	3400	8588	successful	96	US	USD	cat4	subcat4
656	4426	Kramer Group	7800	6132	failed	106	US	USD	cat4	subcat4
2791	3211	Frazier, Patrick and Smith	154300	74688	failed	679	IT	EUR	cat6	subcat19
1527	3190	Santos, Bell and Lloyd	20000	51775	successful	498	CH	CHF	cat7	subcat12
1891	2081	Hall and Sons	108800	65877	canceled	610	US	USD	cat4	subcat4
580	3185	Hanson Inc	2900	8807	successful	180	GB	GBP	cat3	subcat3
682	5044	Sanchez LLC	900	1017	successful	27	US	USD	cat5	subcat5
3097	1883	Howard Ltd	69700	151513	successful	2331	US	USD	cat4	subcat4
873	2067	Stewart LLC	1300	12047	successful	113	US	USD	cat1	subcat1
1668	4604	Arias, Allen and Miller	97800	32951	failed	1220	AU	AUD	cat7	subcat12
3076	3203	Baker-Morris	7600	14951	successful	164	US	USD	cat4	subcat4
3146	5758	Tucker, Fox and Green	100	1	failed	1	US	USD	cat4	subcat4
253	5755	Douglas LLC	900	9193	successful	164	US	USD	cat2	subcat6
3088	5150	Garcia Inc	3700	10422	successful	336	US	USD	cat3	subcat9
393	4181	Frye, Hunt and Powell	10000	2461	failed	37	IT	EUR	cat2	subcat6
2912	3006	Smith, Wells and Nguyen	119200	170623	successful	1917	US	USD	cat2	subcat8
478	4865	Charles-Johnson	6800	9829	successful	95	US	USD	cat3	subcat3
1061	2862	Brandt, Carter and Wood	3900	14006	successful	147	US	USD	cat4	subcat4
2957	6070	Tucker, Schmidt and Reid	3500	6527	successful	86	US	USD	cat4	subcat4
2015	5300	Decker Inc	1500	8929	successful	83	US	USD	cat5	subcat5
1179	3486	Romero and Sons	5200	3079	failed	60	US	USD	cat5	subcat20
2568	5989	Castillo-Carey	142400	21307	failed	296	US	USD	cat1	subcat1
2869	2849	Hart-Briggs	61400	73653	successful	676	US	USD	cat6	subcat16
718	1612	Jones-Meyer	4700	12635	successful	361	AU	AUD	cat3	subcat3
1211	3307	Wright, Hartman and Yu	3300	12437	successful	131	US	USD	cat1	subcat1
2431	5288	Harper-Davis	1900	13816	successful	126	US	USD	cat3	subcat9
468	6026	Barrett PLC	166700	145382	failed	3304	IT	EUR	cat6	subcat14
1862	2212	David-Clark	7200	6336	failed	73	US	USD	cat4	subcat4
2300	4591	Chaney-Dennis	4900	8523	successful	275	US	USD	cat5	subcat20
449	2771	Robinson, Lopez and Christensen	5400	6351	successful	67	US	USD	cat8	subcat15
283	5682	Clark and Sons	5000	10748	successful	154	US	USD	cat5	subcat5
2484	5368	Vega Group	75100	112272	successful	1782	US	USD	cat7	subcat21
1490	3706	Brown-Brown	45300	99361	successful	903	US	USD	cat7	subcat12
186	4034	Taylor PLC	136800	88055	failed	3387	US	USD	cat6	subcat14
2999	3209	Edwards-Lewis	177700	33092	failed	662	CA	CAD	cat4	subcat4
2819	2384	Stanton, Neal and Rodriguez	2600	9562	successful	94	IT	EUR	cat8	subcat15
2105	3074	Pratt LLC	5300	8475	successful	180	US	USD	cat4	subcat4
1324	2031	Gross PLC	180200	69617	failed	774	US	USD	cat4	subcat4
1952	5873	Martinez, Gomez and Dalton	103200	53067	failed	672	CA	CAD	cat4	subcat4
2404	5501	Allen-Curtis	70600	42596	canceled	532	US	USD	cat2	subcat2
990	3489	Morgan-Martinez	148500	4756	canceled	55	AU	AUD	cat1	subcat1
1459	4210	Luna, Anderson and Fox	9600	14925	successful	533	DK	DKK	cat5	subcat7
1106	6151	Fleming, Zhang and Henderson	164700	166116	successful	2443	GB	GBP	cat3	subcat3
1488	6047	Flowers and Sons	3300	3834	successful	89	US	USD	cat4	subcat4
2107	5445	Gates PLC	4500	13985	successful	159	US	USD	cat2	subcat22
2660	5493	Caldwell LLC	99500	89288	failed	940	CH	CHF	cat5	subcat5
2647	6036	Le, Burton and Evans	7700	5488	failed	117	US	USD	cat4	subcat4
565	2368	Briggs PLC	82800	2721	canceled	58	US	USD	cat5	subcat7
2713	1501	Hudson-Nguyen	1800	4712	successful	50	US	USD	cat6	subcat10
558	4351	Hogan Ltd	9600	9216	failed	115	US	USD	cat7	subcat21
698	3096	Hamilton, Wright and Chavez	92100	19246	failed	326	US	USD	cat3	subcat9
321	6162	Bautista-Cross	5500	12274	successful	186	US	USD	cat5	subcat5
1302	1433	Jackson LLC	64300	65323	successful	1071	US	USD	cat3	subcat3
1410	2720	Figueroa Ltd	5000	11502	successful	117	US	USD	cat3	subcat3
2465	5251	Avila-Jones	5400	7322	successful	70	US	USD	cat2	subcat8
377	1797	Martin, Lopez and Hunter	9000	11619	successful	135	US	USD	cat4	subcat4
1882	1656	Fields-Moore	25000	59128	successful	768	CH	CHF	cat3	subcat9
822	1346	Harris-Golden	8800	1518	canceled	51	US	USD	cat4	subcat4
2730	2989	Moss, Norman and Dunlap	8300	9337	successful	199	US	USD	cat4	subcat4
2198	5629	White, Larson and Wright	9300	11255	successful	107	US	USD	cat3	subcat9
2757	3456	Payne, Oliver and Burch	6200	13632	successful	195	US	USD	cat2	subcat8
2588	3229	Brown, Palmer and Pace	100	1	failed	1	US	USD	cat2	subcat2
1090	2277	Parker LLC	137200	88037	failed	1467	US	USD	cat2	subcat6
64	1276	Bowen, Mcdonald and Hall	41500	175573	successful	3376	US	USD	cat2	subcat8
2171	3694	Whitehead, Bell and Hughes	189400	176112	failed	5681	US	USD	cat4	subcat4
625	2260	Rodriguez-Brown	171300	100650	failed	1059	US	USD	cat2	subcat8
1065	5374	Hall-Schaefer	139500	90706	failed	1194	US	USD	cat4	subcat4
174	4420	Meza-Rogers	36400	26914	canceled	379	AU	AUD	cat2	subcat2
1344	3849	Curtis-Curtis	4200	2212	failed	30	AU	AUD	cat8	subcat15
2824	1638	Carlson Inc	2100	4640	successful	41	US	USD	cat2	subcat2
940	5230	Clarke, Anderson and Lee	191200	191222	successful	1821	US	USD	cat4	subcat4
3024	1763	Evans Group	8000	12985	successful	164	US	USD	cat3	subcat9
2164	4323	Bruce Group	5500	4300	failed	75	US	USD	cat3	subcat3
2427	5256	Keith, Alvarez and Potter	6100	9134	successful	157	CH	CHF	cat2	subcat2
1548	4836	Burton-Watkins	3500	8864	successful	246	US	USD	cat8	subcat15
2657	5981	Lopez and Sons	150500	150755	successful	1396	US	USD	cat4	subcat4
2916	1463	Cordova Ltd	90400	110279	successful	2506	US	USD	cat3	subcat3
1348	4577	Brown-Vang	9800	13439	successful	244	US	USD	cat8	subcat15
557	4951	Cruz-Ward	2600	10804	successful	146	AU	AUD	cat4	subcat4
2915	3567	Hernandez Group	128100	40107	failed	955	DK	DKK	cat2	subcat8
320	5475	Tran, Steele and Wilson	23300	98811	successful	1267	US	USD	cat5	subcat13
1458	2114	Summers, Gallegos and Stein	188100	5528	failed	67	US	USD	cat2	subcat8
379	5216	Blair Group	4900	521	failed	5	US	USD	cat6	subcat19
1879	1665	Nixon Inc	800	663	failed	26	US	USD	cat5	subcat5
597	6051	White LLC	96700	157635	successful	1561	US	USD	cat4	subcat4
1130	3983	Santos, Black and Donovan	600	5368	successful	48	US	USD	cat3	subcat9
2354	2966	Jones, Contreras and Burnett	181200	47459	failed	1130	US	USD	cat4	subcat4
1358	4478	Stone-Orozco	115000	86060	failed	782	US	USD	cat4	subcat4
188	4238	Lee, Gibson and Morgan	38800	161593	successful	2739	US	USD	cat4	subcat4
2228	4404	Alexander-Williams	7200	6927	failed	210	US	USD	cat1	subcat1
1743	5666	Marks Ltd	44500	159185	successful	3537	CA	CAD	cat4	subcat4
2563	3691	Olsen, Edwards and Reid	56000	172736	successful	2107	AU	AUD	cat3	subcat9
2424	2703	Daniels, Rose and Tyler	8600	5315	failed	136	US	USD	cat3	subcat3
2369	4253	Adams Group	27100	195750	successful	3318	DK	DKK	cat4	subcat4
1134	5652	Rogers, Huerta and Medina	5100	3525	failed	86	CA	CAD	cat2	subcat2
2241	3279	Howard, Carter and Griffith	3600	10550	successful	340	US	USD	cat4	subcat4
2745	3233	Bailey PLC	1000	718	failed	19	US	USD	cat5	subcat20
1055	3017	Parker Group	88800	28358	failed	886	US	USD	cat4	subcat4
1215	3482	Fox Group	60200	138384	successful	1442	CA	CAD	cat5	subcat13
2036	2166	Walker, Jones and Rodriguez	8200	2625	failed	35	IT	EUR	cat4	subcat4
1191	4146	Anthony-Shaw	191300	45004	canceled	441	US	USD	cat4	subcat4
879	2651	Cook LLC	3700	2538	failed	24	US	USD	cat4	subcat4
3062	1409	Sutton PLC	8400	3188	failed	86	IT	EUR	cat4	subcat4
611	3717	Long, Morgan and Mitchell	42600	8517	failed	243	US	USD	cat2	subcat2
3195	3963	Calhoun, Rogers and Long	6600	3012	failed	65	US	USD	cat2	subcat8
1221	2152	Sandoval Group	7100	8716	successful	126	US	USD	cat2	subcat17
2536	2974	Smith and Sons	15800	57157	successful	524	US	USD	cat2	subcat6
1834	1268	King Inc	8200	5178	failed	100	DK	DKK	cat3	subcat9
593	1822	Perry and Sons	54700	163118	successful	1989	US	USD	cat5	subcat7
3039	5066	Palmer Inc	63200	6041	failed	168	US	USD	cat2	subcat6
777	5075	Hull, Baker and Martinez	1800	968	failed	13	US	USD	cat2	subcat2
835	3855	Becker, Rice and White	100	2	failed	1	CA	CAD	cat4	subcat4
797	5923	Osborne, Perkins and Knox	2100	14305	successful	157	US	USD	cat3	subcat3
509	1867	Mcknight-Freeman	8300	6543	canceled	82	US	USD	cat1	subcat1
2286	4376	Hayden, Shannon and Stein	143900	193413	successful	4498	AU	AUD	cat4	subcat4
2110	2785	Daniel-Luna	75000	2529	failed	40	US	USD	cat2	subcat18
1038	5884	Weaver-Marquez	1300	5614	successful	80	US	USD	cat4	subcat4
2893	2441	Austin, Baker and Kelley	9000	3496	canceled	57	US	USD	cat6	subcat14
805	1243	Carney-Anderson	1000	4257	successful	43	US	USD	cat2	subcat2
225	3411	Jackson Inc	196900	199110	successful	2053	US	USD	cat5	subcat5
968	2467	Warren Ltd	194500	41212	live	808	AU	AUD	cat5	subcat5
1369	1850	Schultz Inc	9400	6338	failed	226	DK	DKK	cat5	subcat23
1417	2604	Thompson LLC	104400	99100	failed	1625	US	USD	cat4	subcat4
3011	1693	Johnson Inc	8100	12300	successful	168	US	USD	cat4	subcat4
2691	2969	Morgan-Warren	87900	171549	successful	4289	US	USD	cat2	subcat8
2159	1544	Sullivan Group	1400	14324	successful	165	US	USD	cat2	subcat2
2515	4149	Vargas, Banks and Palmer	156800	6024	failed	143	US	USD	cat4	subcat4
544	3463	Johnson, Dixon and Zimmerman	121700	188721	successful	1815	US	USD	cat4	subcat4
3030	2939	Moore, Dudley and Navarro	129400	57911	failed	934	US	USD	cat5	subcat23
817	2202	Price-Rodriguez	5700	12309	successful	397	GB	GBP	cat5	subcat13
1400	1728	Huang-Henderson	41700	138497	successful	1539	US	USD	cat5	subcat11
657	5362	Owens-Le	7900	667	failed	17	US	USD	cat4	subcat4
966	4840	Huff LLC	121500	119830	failed	2179	US	USD	cat1	subcat1
1558	2955	Johnson LLC	4800	6623	successful	138	US	USD	cat8	subcat15
1379	5354	Chavez, Garcia and Cantu	87300	81897	failed	931	US	USD	cat4	subcat4
286	3847	Lester-Moore	46300	186885	successful	3594	US	USD	cat5	subcat23
894	3025	Fox-Quinn	67800	176398	successful	5880	US	USD	cat2	subcat2
709	1615	Garcia Inc	3000	10999	successful	112	US	USD	cat8	subcat15
1599	5154	Johnson-Lee	60900	102751	successful	943	US	USD	cat7	subcat21
905	5005	Pineda Group	137900	165352	successful	2468	US	USD	cat5	subcat11
146	1349	Hoffman-Howard	85600	165798	successful	2551	US	USD	cat7	subcat21
1632	3670	Miranda, Hall and Mcgrath	2400	10084	successful	101	US	USD	cat7	subcat12
537	2912	Williams, Carter and Gonzalez	7200	5523	canceled	67	US	USD	cat4	subcat4
1289	4336	Davis-Rodriguez	3400	5823	successful	92	US	USD	cat4	subcat4
2712	5576	Reid, Rivera and Perry	3800	6000	successful	62	US	USD	cat5	subcat11
1980	2736	Mendoza-Parker	7500	8181	successful	149	IT	EUR	cat7	subcat12
296	3321	Lee, Ali and Guzman	8600	3589	failed	92	US	USD	cat5	subcat11
1760	3353	Gallegos-Cobb	39500	4323	failed	57	AU	AUD	cat2	subcat2
2435	2336	Ellison PLC	9300	14822	successful	329	US	USD	cat5	subcat11
2343	4369	Bolton, Sanchez and Carrillo	2400	10138	successful	97	DK	DKK	cat4	subcat4
2556	4464	Mason-Sanders	3200	3127	failed	41	US	USD	cat3	subcat9
2495	5626	Pitts-Reed	29400	123124	successful	1784	US	USD	cat4	subcat4
2497	1669	Gonzalez-Martinez	168500	171729	successful	1684	AU	AUD	cat6	subcat10
1955	5544	Hill, Martin and Garcia	8400	10729	successful	250	US	USD	cat2	subcat2
1129	6078	Garcia PLC	2300	10240	successful	238	US	USD	cat4	subcat4
636	2580	Herring-Bailey	700	3988	successful	53	US	USD	cat4	subcat4
434	3592	Russell-Gardner	2900	14771	successful	214	US	USD	cat4	subcat4
1231	4914	Walters-Carter	4500	14649	successful	222	US	USD	cat3	subcat3
3162	3848	Johnson, Patterson and Montoya	19800	184658	successful	1884	US	USD	cat6	subcat14
1717	2619	Roberts and Sons	6200	13103	successful	218	AU	AUD	cat7	subcat21
211	4605	Avila-Nelson	61500	168095	successful	6465	US	USD	cat6	subcat19
2635	6147	Robbins and Sons	100	3	failed	1	US	USD	cat2	subcat2
1854	1383	Singleton Ltd	7100	3840	failed	101	US	USD	cat4	subcat4
436	1757	Perez PLC	1000	6263	successful	59	US	USD	cat4	subcat4
2965	4390	Rogers, Jacobs and Jackson	121500	108161	failed	1335	CA	CAD	cat5	subcat7
1034	4165	Barry Group	4600	8505	successful	88	US	USD	cat6	subcat10
614	4529	Rosales, Branch and Harmon	80500	96735	successful	1697	US	USD	cat2	subcat2
1792	6084	Smith-Reid	4100	959	failed	15	GB	GBP	cat2	subcat2
121	2916	Williams Inc	5700	8322	successful	92	US	USD	cat4	subcat4
2936	2005	Duncan, Mcdonald and Miller	5000	13424	successful	186	US	USD	cat4	subcat4
2081	2261	Watkins Ltd	1800	10755	successful	138	US	USD	cat8	subcat15
1204	5342	Allen-Jones	6300	9935	successful	261	US	USD	cat2	subcat2
669	4087	Mason-Smith	84300	26303	failed	454	US	USD	cat2	subcat2
735	2761	Lloyd, Kennedy and Davis	1700	5328	successful	107	US	USD	cat2	subcat8
933	2908	Walker Ltd	2900	10756	successful	199	US	USD	cat8	subcat15
3055	2155	Gordon PLC	45600	165375	successful	5512	US	USD	cat4	subcat4
270	5642	Lee and Sons	4900	6031	successful	86	US	USD	cat4	subcat4
647	6217	Cole LLC	111900	85902	failed	3182	IT	EUR	cat2	subcat18
1219	4222	Acosta PLC	61600	143910	successful	2768	AU	AUD	cat4	subcat4
1257	4798	Brown-Mckee	1500	2708	successful	48	US	USD	cat5	subcat5
2162	5660	Miles and Sons	3500	8842	successful	87	US	USD	cat5	subcat20
2274	5000	Sawyer, Horton and Williams	173900	47260	canceled	1890	US	USD	cat7	subcat12
2284	2809	Foley-Cox	153700	1953	live	61	US	USD	cat8	subcat15
407	3349	Horton, Morrison and Clark	51100	155349	successful	1894	US	USD	cat4	subcat4
2440	3647	Thomas and Sons	7800	10704	successful	282	CA	CAD	cat4	subcat4
2476	5745	Morgan-Jenkins	2400	773	failed	15	US	USD	cat4	subcat4
41	2583	Ward, Sanchez and Kemp	3900	9419	successful	116	US	USD	cat6	subcat19
890	5441	Fields Ltd	5500	5324	failed	133	US	USD	cat7	subcat12
2743	2090	Ramos-Mitchell	700	7465	successful	83	US	USD	cat4	subcat4
266	3386	Higgins, Davis and Salazar	2700	8799	successful	91	US	USD	cat3	subcat3
3113	1816	Smith-Jenkins	8000	13656	successful	546	US	USD	cat4	subcat4
1909	4718	Braun PLC	2500	14536	successful	393	US	USD	cat5	subcat11
962	1677	Drake PLC	164500	150552	failed	2062	US	USD	cat4	subcat4
213	4218	Ross, Kelly and Brown	8400	9076	successful	133	US	USD	cat5	subcat20
2741	4548	Lucas-Mullins	8100	1517	failed	29	DK	DKK	cat2	subcat2
2589	1431	Tran LLC	9800	8153	failed	132	US	USD	cat3	subcat3
1238	2830	Dawson, Brady and Gilbert	900	6357	successful	254	US	USD	cat4	subcat4
164	4400	Obrien-Aguirre	112100	19557	canceled	184	US	USD	cat4	subcat4
2685	5773	Ferguson PLC	6300	13213	successful	176	US	USD	cat2	subcat6
2836	4161	Garcia Ltd	5600	5476	failed	137	DK	DKK	cat2	subcat17
2062	2062	Smith, Love and Smith	800	13474	successful	337	CA	CAD	cat4	subcat4
3111	3458	Wilson, Hall and Osborne	168600	91722	failed	908	US	USD	cat5	subcat5
1414	3174	Bell, Grimes and Kerr	1800	8219	successful	107	US	USD	cat3	subcat3
2765	5565	Ho-Harris	7300	717	failed	10	US	USD	cat1	subcat1
939	1906	Ross Group	6500	1065	canceled	32	IT	EUR	cat4	subcat4
390	5479	Turner-Davis	600	8038	successful	183	US	USD	cat4	subcat4
2851	4320	Smith, Jackson and Herrera	192900	68769	failed	1910	CH	CHF	cat4	subcat4
1607	4213	Smith-Hess	6100	3352	failed	38	AU	AUD	cat4	subcat4
3201	3373	Brown, Herring and Bass	7200	6785	failed	104	AU	AUD	cat4	subcat4
641	4184	Chase, Garcia and Johnson	3500	5037	successful	72	US	USD	cat2	subcat2
524	5472	Ramsey and Sons	3800	1954	failed	49	US	USD	cat1	subcat1
2423	5559	Cooke PLC	100	5	failed	1	DK	DKK	cat6	subcat10
1532	5419	Wong-Walker	900	12102	successful	295	US	USD	cat5	subcat5
1748	4171	Ferguson, Collins and Mata	76100	24234	failed	245	US	USD	cat4	subcat4
3168	1302	Guerrero, Flores and Jenkins	3400	2809	failed	32	US	USD	cat2	subcat8
1077	3520	Peterson PLC	2100	11469	successful	142	US	USD	cat5	subcat5
3114	6010	Townsend Ltd	2800	8014	successful	85	US	USD	cat4	subcat4
2547	4617	Rush, Reed and Hall	6500	514	failed	7	US	USD	cat4	subcat4
2065	1417	Salazar-Dodson	32900	43473	successful	659	DK	DKK	cat6	subcat14
1143	4770	Davis Ltd	118200	87560	failed	803	US	USD	cat4	subcat4
2545	4328	Harris-Perry	4100	3087	canceled	75	US	USD	cat2	subcat8
1315	5171	Velazquez, Hunt and Ortiz	7800	1586	failed	16	US	USD	cat7	subcat12
2219	4394	Flores PLC	6300	12812	successful	121	US	USD	cat4	subcat4
854	1794	Martinez LLC	59100	183345	successful	3742	US	USD	cat4	subcat4
336	3510	Miller-Irwin	2200	8697	successful	223	US	USD	cat2	subcat2
3014	2487	Sanchez-Morgan	1400	4126	successful	133	US	USD	cat5	subcat5
326	2215	Lopez, Adams and Johnson	9500	3220	failed	31	US	USD	cat4	subcat4
2991	4136	Martin-Marshall	9600	6401	failed	108	IT	EUR	cat1	subcat1
1359	3723	Summers PLC	6600	1269	failed	30	US	USD	cat4	subcat4
341	5842	Young, Hart and Ryan	5700	903	failed	17	US	USD	cat2	subcat2
2365	3289	Mills Group	8400	3251	canceled	64	US	USD	cat3	subcat3
358	1249	Sandoval-Powell	84400	8092	failed	80	US	USD	cat6	subcat14
583	5409	Mills, Frazier and Perez	170400	160422	failed	2468	US	USD	cat5	subcat13
1373	2951	Hebert Group	117900	196377	successful	5168	US	USD	cat4	subcat4
2665	3432	Cole, Smith and Wood	8900	2148	failed	26	GB	GBP	cat5	subcat5
2500	2297	Harris, Hall and Harris	7100	11648	successful	307	US	USD	cat4	subcat4
921	6161	Saunders Group	6500	5897	failed	73	US	USD	cat4	subcat4
135	4603	Pham, Avila and Nash	7200	3326	failed	128	US	USD	cat5	subcat11
2413	5818	Patterson, Salinas and Lucas	2600	1002	failed	33	US	USD	cat4	subcat4
3004	4270	Young PLC	98700	131826	successful	2441	US	USD	cat2	subcat2
1911	6007	Willis and Sons	93800	21477	live	211	US	USD	cat7	subcat12
2726	4084	Thompson-Bates	33700	62330	successful	1385	GB	GBP	cat5	subcat5
2049	1340	Rose-Silva	3300	14643	successful	190	US	USD	cat1	subcat1
1732	5675	Pacheco, Johnson and Torres	20700	41396	successful	470	US	USD	cat3	subcat9
1174	2010	Carlson, Dixon and Jones	9600	11900	successful	253	US	USD	cat4	subcat4
1194	6201	Mcgee Group	66200	123538	successful	1113	US	USD	cat2	subcat2
3176	1791	Jordan-Acosta	173800	198628	successful	2283	US	USD	cat2	subcat2
642	3314	Nunez Inc	70700	68602	failed	1072	US	USD	cat2	subcat2
34	5852	Hayden Ltd	94500	116064	successful	1095	US	USD	cat4	subcat4
217	4618	Gonzalez-Burton	69800	125042	successful	1690	US	USD	cat4	subcat4
1693	2618	Lewis, Taylor and Rivers	136300	108974	canceled	1297	CA	CAD	cat4	subcat4
2333	4967	Butler, Henry and Espinoza	37100	34964	failed	393	US	USD	cat8	subcat15
80	4594	Guzman Group	114300	96777	failed	1257	US	USD	cat2	subcat8
2847	2080	Gibson-Hernandez	47900	31864	failed	328	US	USD	cat4	subcat4
3104	2793	Spencer-Weber	9000	4853	failed	147	US	USD	cat4	subcat4
980	4890	Berger, Johnson and Marshall	197600	82959	failed	830	US	USD	cat7	subcat12
476	3528	Taylor, Cisneros and Romero	157600	23159	failed	331	GB	GBP	cat5	subcat7
116	5810	Little-Marsh	8000	2758	failed	25	US	USD	cat2	subcat8
2900	5720	Petersen and Sons	900	12607	successful	191	US	USD	cat3	subcat3
553	4593	Hensley Ltd	199000	142823	failed	3483	US	USD	cat1	subcat1
2834	3186	Navarro and Sons	180800	95958	failed	923	US	USD	cat4	subcat4
2314	5136	Shannon Ltd	100	5	failed	1	US	USD	cat2	subcat18
2005	2646	Young LLC	74100	94631	successful	2013	US	USD	cat2	subcat2
2514	3460	Adams, Willis and Sanchez	2800	977	failed	33	CA	CAD	cat4	subcat4
702	4345	Mills-Roy	33600	137961	successful	1703	US	USD	cat4	subcat4
42	2690	Brown Group	6100	7548	successful	80	DK	DKK	cat5	subcat5
948	4025	Burns-Burnett	3800	2241	live	86	US	USD	cat3	subcat9
2926	4524	Glass, Nunez and Mcdonald	9300	3431	failed	40	IT	EUR	cat4	subcat4
1971	3978	Perez, Davis and Wilson	2300	4253	successful	41	US	USD	cat7	subcat12
748	3910	Diaz-Garcia	9700	1146	failed	23	CA	CAD	cat8	subcat15
684	5825	Salazar-Moon	4000	11948	successful	187	US	USD	cat5	subcat11
385	3564	Larsen-Chung	59700	135132	successful	2875	GB	GBP	cat4	subcat4
3007	2396	Anderson and Sons	5500	9546	successful	88	US	USD	cat4	subcat4
2612	2140	Lawrence Group	3700	13755	successful	191	US	USD	cat2	subcat2
807	3079	Gray-Davis	5200	8330	successful	139	US	USD	cat2	subcat2
2087	2017	Ramirez-Myers	900	14547	successful	186	US	USD	cat2	subcat8
53	5444	Lucas, Hall and Bonilla	1600	11735	successful	112	AU	AUD	cat4	subcat4
2944	2216	Williams, Perez and Villegas	1800	10658	successful	101	US	USD	cat4	subcat4
2963	1241	Brooks, Jones and Ingram	9900	1870	failed	75	US	USD	cat4	subcat4
2976	1484	Whitaker, Wallace and Daniels	5200	14394	successful	206	GB	GBP	cat5	subcat5
3051	3475	Smith-Gonzalez	5400	14743	successful	154	US	USD	cat5	subcat20
2777	4333	Skinner PLC	112300	178965	successful	5966	US	USD	cat4	subcat4
3064	5657	Nolan, Smith and Sanchez	189200	128410	failed	2176	US	USD	cat4	subcat4
56	2527	Green-Carr	900	14324	successful	169	US	USD	cat5	subcat5
763	5967	Brown-Parker	22500	164291	successful	2106	US	USD	cat4	subcat4
896	5698	Marshall Inc	167400	22073	failed	441	US	USD	cat5	subcat5
1409	3331	Leblanc-Pineda	2700	1479	failed	25	US	USD	cat2	subcat8
2889	3841	Perry PLC	3400	12275	successful	131	US	USD	cat2	subcat2
2338	6105	Klein, Stark and Livingston	49700	5098	failed	127	US	USD	cat4	subcat4
2905	3895	Fleming-Oliver	178200	24882	failed	355	US	USD	cat5	subcat5
1779	1891	Reilly, Aguirre and Johnson	7200	2912	failed	44	GB	GBP	cat4	subcat4
2291	1281	Davidson, Wilcox and Lewis	2500	4008	successful	84	US	USD	cat4	subcat4
3192	4186	Michael, Anderson and Vincent	5300	9749	successful	155	US	USD	cat4	subcat4
1696	2511	King Ltd	9100	5803	failed	67	US	USD	cat8	subcat15
1559	4272	Baker Ltd	6300	14199	successful	189	US	USD	cat1	subcat1
1405	3533	Baker, Collins and Smith	114400	196779	successful	4799	US	USD	cat5	subcat5
521	3618	Warren-Harrison	38900	56859	successful	1137	US	USD	cat6	subcat10
1625	2177	Gardner Group	135500	103554	failed	1068	US	USD	cat4	subcat4
2808	4102	Flores-Lambert	109000	42795	failed	424	US	USD	cat3	subcat9
764	6089	Cruz Ltd	114800	12938	canceled	145	CH	CHF	cat2	subcat8
834	4701	Knox-Garner	83000	101352	successful	1152	US	USD	cat4	subcat4
2793	5645	Davis-Allen	2400	4477	successful	50	US	USD	cat8	subcat15
2901	4499	Miller-Patel	60400	4393	failed	151	US	USD	cat6	subcat10
2141	3365	Hernandez-Grimes	102900	67546	failed	1608	US	USD	cat3	subcat9
308	2290	Owens, Hall and Gonzalez	62800	143788	successful	3059	CA	CAD	cat2	subcat18
705	1890	Noble-Bailey	800	3755	successful	34	US	USD	cat5	subcat5
1670	1304	Taylor PLC	7100	9238	successful	220	US	USD	cat4	subcat4
1159	3799	Holmes PLC	46100	77012	successful	1604	AU	AUD	cat5	subcat7
2592	2749	Jones-Martin	8100	14083	successful	454	US	USD	cat2	subcat2
1195	2028	Myers LLC	1700	12202	successful	123	IT	EUR	cat5	subcat11
1635	2383	Acosta, Mullins and Morris	97300	62127	failed	941	US	USD	cat2	subcat8
2432	5721	Bell PLC	100	2	failed	1	US	USD	cat8	subcat15
109	1394	Smith-Schmidt	900	13772	successful	299	US	USD	cat4	subcat4
1509	3451	Ruiz, Richardson and Cole	7300	2946	failed	40	US	USD	cat5	subcat13
1285	5512	Leonard-Mcclain	195800	168820	failed	3015	CA	CAD	cat4	subcat4
500	2453	Bailey-Boyer	48900	154321	successful	2237	US	USD	cat4	subcat4
2835	6055	Lee LLC	29600	26527	failed	435	US	USD	cat4	subcat4
1533	5704	Lyons Inc	39300	71583	successful	645	US	USD	cat5	subcat5
2445	3707	Herrera-Wilson	3400	12100	successful	484	DK	DKK	cat4	subcat4
2906	2205	Mahoney, Adams and Lucas	9200	12129	successful	154	CA	CAD	cat5	subcat5
1237	5976	Stewart LLC	135600	62804	failed	714	US	USD	cat2	subcat2
1572	3290	Mcmillan Group	153700	55536	live	1111	US	USD	cat7	subcat21
254	4257	Beck, Thompson and Martinez	7800	8161	successful	82	US	USD	cat4	subcat4
576	4588	Rodriguez-Scott	2100	14046	successful	134	US	USD	cat6	subcat14
563	4785	Rush-Bowers	189500	117628	live	1089	US	USD	cat5	subcat11
2201	3033	Davis and Sons	188200	159405	failed	5497	US	USD	cat1	subcat1
1339	2779	Anderson-Pham	113500	12552	failed	418	US	USD	cat4	subcat4
197	2131	Stewart-Coleman	134600	59007	failed	1439	US	USD	cat5	subcat5
2035	6229	Bradshaw, Smith and Ryan	1700	943	failed	15	US	USD	cat4	subcat4
1739	3429	Jackson PLC	163700	93963	failed	1999	CA	CAD	cat5	subcat5
2352	1613	Ware-Arias	113800	140469	successful	5203	US	USD	cat3	subcat3
691	4734	Blair, Reyes and Woods	5000	6423	successful	94	US	USD	cat4	subcat4
298	4439	Thomas-Lopez	9400	6015	failed	118	US	USD	cat3	subcat9
206	1441	Brown, Davies and Pacheco	8700	11075	successful	205	US	USD	cat4	subcat4
1003	5799	Jones-Riddle	147800	15723	failed	162	US	USD	cat1	subcat1
1653	1419	Schmidt-Gomez	5100	2064	failed	83	US	USD	cat2	subcat8
1549	3059	Sullivan, Davis and Booth	2700	7767	successful	92	US	USD	cat8	subcat15
1026	3224	Edwards-Kane	1800	10313	successful	219	US	USD	cat4	subcat4
2523	3181	Hicks, Wall and Webb	174500	197018	successful	2526	US	USD	cat4	subcat4
1620	6061	Mayer-Richmond	101400	47037	failed	747	US	USD	cat5	subcat11
2594	4466	Robles Ltd	191000	173191	canceled	2138	US	USD	cat8	subcat15
539	6081	Cochran Ltd	8100	5487	failed	84	US	USD	cat4	subcat4
687	2159	Rosales LLC	5100	9817	successful	94	US	USD	cat4	subcat4
2302	3324	Harper-Bryan	7700	6369	failed	91	US	USD	cat4	subcat4
694	3176	Potter, Harper and Everett	121400	65755	failed	792	US	USD	cat5	subcat5
3123	5874	Floyd-Sims	5400	903	canceled	10	CA	CAD	cat4	subcat4
2576	5110	Spence, Jackson and Kelly	152400	178120	successful	1713	IT	EUR	cat4	subcat4
2349	5490	King-Nguyen	1300	13678	successful	249	US	USD	cat2	subcat18
516	1922	Hansen Group	8100	9969	successful	192	US	USD	cat5	subcat11
290	4398	Mathis, Hall and Hansen	8300	14827	successful	247	US	USD	cat4	subcat4
1691	4754	Cummings Inc	28400	100900	successful	2293	US	USD	cat5	subcat23
1689	3309	Miller-Poole	102500	165954	successful	3131	US	USD	cat5	subcat20
2403	1244	Rodriguez-West	7000	1744	failed	32	US	USD	cat3	subcat9
3203	2892	Calderon, Bradford and Dean	5400	10731	successful	143	IT	EUR	cat4	subcat4
2113	2777	Clark-Bowman	9300	3232	canceled	90	US	USD	cat4	subcat4
3158	4952	Hensley Ltd	6200	10938	successful	296	US	USD	cat2	subcat8
348	5144	Anderson-Pearson	2100	10739	successful	170	US	USD	cat4	subcat4
1136	5487	Martin, Martin and Solis	6800	5579	failed	186	US	USD	cat3	subcat9
956	1932	Harrington-Harper	155200	37754	canceled	439	GB	GBP	cat5	subcat20
2393	3364	Price and Sons	89900	45384	failed	605	US	USD	cat7	subcat12
3208	5165	Cuevas-Morales	900	8703	successful	86	DK	DKK	cat7	subcat12
2530	3858	Delgado-Hatfield	100	4	failed	1	CA	CAD	cat5	subcat11
305	4666	Padilla-Porter	148400	182302	successful	6286	US	USD	cat2	subcat2
1383	2896	Morris Group	4800	3045	failed	31	US	USD	cat5	subcat7
783	4520	Saunders Ltd	182400	102749	failed	1181	US	USD	cat5	subcat23
47	5726	Woods Inc	4000	1763	failed	39	US	USD	cat5	subcat7
3157	5661	Villanueva, Wright and Richardson	116500	137904	successful	3727	US	USD	cat4	subcat4
1646	4765	Wilson, Brooks and Clark	146400	152438	successful	1605	US	USD	cat2	subcat8
1729	3710	Sheppard, Smith and Spence	5000	1332	failed	46	US	USD	cat4	subcat4
2964	4925	Wise, Thompson and Allen	33800	118706	successful	2120	US	USD	cat4	subcat4
675	1533	Lane, Ryan and Chapman	6300	5674	failed	105	US	USD	cat5	subcat5
790	5264	Rich, Alvarez and King	2400	4119	successful	50	US	USD	cat4	subcat4
1103	4606	Terry-Salinas	98800	139354	successful	2080	US	USD	cat5	subcat7
969	2043	Wang-Rodriguez	188800	57734	failed	535	US	USD	cat7	subcat21
1634	3871	Mckee-Hill	134300	145265	successful	2105	US	USD	cat5	subcat11
2279	6205	Gomez LLC	71200	95020	successful	2436	US	USD	cat4	subcat4
387	3193	Gonzalez-Robbins	4700	8829	successful	80	US	USD	cat6	subcat19
586	1810	Obrien and Sons	1200	3984	successful	42	US	USD	cat3	subcat9
1145	4797	Shaw Ltd	1400	8053	successful	139	CA	CAD	cat3	subcat3
2776	1487	Hughes Inc	4000	1620	failed	16	US	USD	cat4	subcat4
2099	3474	Olsen-Ryan	5600	10328	successful	159	US	USD	cat5	subcat7
470	5771	Grimes, Holland and Sloan	3600	10289	successful	381	US	USD	cat3	subcat9
343	6074	Perry and Sons	3100	9889	successful	194	GB	GBP	cat1	subcat1
2090	1568	Turner, Young and Collins	153800	60342	failed	575	US	USD	cat2	subcat2
1401	4263	Richardson Inc	5000	8907	successful	106	US	USD	cat2	subcat6
596	5850	Santos-Young	4000	14606	successful	142	US	USD	cat5	subcat20
1139	5619	Nichols Ltd	7400	8432	successful	211	US	USD	cat6	subcat19
2080	1904	Murphy PLC	191500	57122	failed	1120	US	USD	cat6	subcat14
88	5388	Hogan, Porter and Rivera	8500	4613	failed	113	US	USD	cat5	subcat23
2806	2150	Lyons LLC	68800	162603	successful	2756	US	USD	cat3	subcat9
3153	2653	Long-Greene	2400	12310	successful	173	GB	GBP	cat1	subcat1
2391	2687	Robles-Hudson	8600	8656	successful	87	US	USD	cat8	subcat15
84	3779	Mcclure LLC	196600	159931	failed	1538	US	USD	cat4	subcat4
1987	1494	Martin, Russell and Baker	4200	689	failed	9	US	USD	cat6	subcat14
2790	4129	Rice-Parker	91400	48236	failed	554	US	USD	cat4	subcat4
37	3035	Landry Inc	29600	77021	successful	1572	GB	GBP	cat1	subcat1
2981	2069	Richards-Davis	90600	27844	failed	648	GB	GBP	cat4	subcat4
1730	5469	Davis, Cox and Fox	5200	702	failed	21	GB	GBP	cat6	subcat19
3172	3903	Smith-Wallace	110300	197024	successful	2346	US	USD	cat4	subcat4
32	4083	Cordova, Shaw and Wang	5300	11663	successful	115	US	USD	cat4	subcat4
2322	4003	Clark Inc	9200	9339	successful	85	IT	EUR	cat3	subcat9
1095	3565	Young and Sons	2400	4596	successful	144	US	USD	cat9	subcat24
1067	1640	Henson PLC	56800	173437	successful	2443	US	USD	cat1	subcat1
2676	4769	Garcia Group	191000	45831	canceled	595	US	USD	cat5	subcat13
549	3398	Adams, Walker and Wong	900	6514	successful	64	US	USD	cat8	subcat15
302	1865	Hopkins-Browning	2500	13684	successful	268	US	USD	cat3	subcat9
2758	5690	Bell, Edwards and Andersen	3200	13264	successful	195	DK	DKK	cat4	subcat4
2450	3814	Morales Group	183800	1667	failed	54	US	USD	cat5	subcat11
2310	2942	Lucero Group	9800	3349	failed	120	US	USD	cat3	subcat9
2185	5095	Smith, Brown and Davis	193400	46317	failed	579	DK	DKK	cat3	subcat3
1929	2878	Hunt Group	163800	78743	failed	2072	US	USD	cat5	subcat5
1823	3697	Valdez Ltd	100	0	failed	0	US	USD	cat4	subcat4
699	4744	Mccann-Le	153600	107743	failed	1796	US	USD	cat5	subcat5
1926	2104	Johnson Inc	1300	6889	successful	186	AU	AUD	cat7	subcat12
2208	4883	Collins LLC	25500	45983	successful	460	US	USD	cat5	subcat7
3136	4807	Smith-Miller	7500	6924	failed	62	IT	EUR	cat2	subcat2
1623	1372	Jensen-Vargas	89900	12497	failed	347	US	USD	cat6	subcat16
277	3666	Robles, Bell and Gonzalez	18000	166874	successful	2528	US	USD	cat4	subcat4
1522	2066	Turner, Miller and Francis	2100	837	failed	19	US	USD	cat3	subcat3
2582	1834	Roberts Group	172700	193820	successful	3657	US	USD	cat4	subcat4
595	5853	White LLC	168500	119510	failed	1258	US	USD	cat4	subcat4
1060	2219	Best, Miller and Thomas	7800	9289	successful	131	AU	AUD	cat5	subcat7
2551	4148	Smith-Mullins	147800	35498	failed	362	US	USD	cat4	subcat4
975	4477	Williams-Walsh	9100	12678	successful	239	US	USD	cat7	subcat12
300	1786	Harrison, Blackwell and Mendez	8300	3260	canceled	35	US	USD	cat5	subcat20
1883	3455	Sanchez, Bradley and Flores	138700	31123	canceled	528	CH	CHF	cat2	subcat2
2973	5707	Cox LLC	8600	4797	failed	133	CA	CAD	cat4	subcat4
1831	5470	Morales-Odonnell	125400	53324	failed	846	US	USD	cat6	subcat10
3019	3274	Ramirez LLC	5900	6608	successful	78	US	USD	cat1	subcat1
1598	4613	Ramirez Group	8800	622	failed	10	US	USD	cat5	subcat11
1898	4465	Marsh-Coleman	177700	180802	successful	1773	US	USD	cat2	subcat2
944	1652	Frederick, Jenkins and Collins	800	3406	successful	32	US	USD	cat4	subcat4
2775	2100	Wilson Ltd	7600	11061	successful	369	US	USD	cat5	subcat7
2021	4321	Cline, Peterson and Lowery	50500	16389	failed	191	US	USD	cat5	subcat13
1473	4168	Underwood, James and Jones	900	6303	successful	89	US	USD	cat5	subcat13
353	3733	Johnson-Contreras	96700	81136	failed	1979	US	USD	cat4	subcat4
400	2594	Greene, Lloyd and Sims	2100	1768	failed	63	US	USD	cat3	subcat9
930	3909	Smith-Sparks	8300	12944	successful	147	US	USD	cat4	subcat4
1281	5179	Rosario-Smith	189200	188480	failed	6080	CA	CAD	cat5	subcat11
726	2228	Avila, Ford and Welch	9000	7227	failed	80	GB	GBP	cat2	subcat8
2177	6222	Gallegos Inc	5100	574	failed	9	US	USD	cat7	subcat12
1652	2354	Morrow, Santiago and Soto	105000	96328	failed	1784	US	USD	cat6	subcat14
65	1725	Berry-Richardson	186700	178338	live	3640	CH	CHF	cat7	subcat12
911	2960	Cordova-Torres	1600	8046	successful	126	CA	CAD	cat4	subcat4
2082	2077	Holt, Bernard and Johnson	115600	184086	successful	2218	GB	GBP	cat2	subcat8
458	5662	Clark, Mccormick and Mendoza	89100	13385	failed	243	US	USD	cat5	subcat7
1085	3481	Garrison LLC	2600	12533	successful	202	IT	EUR	cat4	subcat4
1451	2565	Shannon-Olson	9800	14697	successful	140	IT	EUR	cat6	subcat14
1068	4436	Murillo-Mcfarland	84400	98935	successful	1052	DK	DKK	cat5	subcat5
241	5072	Young, Gilbert and Escobar	151300	57034	failed	1296	US	USD	cat7	subcat21
2654	5200	Thomas, Welch and Santana	9800	7120	failed	77	US	USD	cat1	subcat1
159	4502	Brown-Pena	5300	14097	successful	247	US	USD	cat8	subcat15
1010	4945	Holder, Caldwell and Vance	178000	43086	failed	395	IT	EUR	cat7	subcat21
1807	3012	Harrison-Bridges	77000	1930	failed	49	GB	GBP	cat2	subcat8
1135	6094	Johnson, Murphy and Peterson	84900	13864	failed	180	US	USD	cat7	subcat12
1859	3815	Taylor Inc	2800	7742	successful	84	US	USD	cat2	subcat2
1265	4838	Deleon and Sons	184800	164109	failed	2690	US	USD	cat4	subcat4
2648	3469	Benjamin, Paul and Ferguson	4200	6870	successful	88	US	USD	cat4	subcat4
141	4874	Hardin-Dixon	1300	12597	successful	156	US	USD	cat5	subcat7
1944	1792	York-Pitts	66100	179074	successful	2985	US	USD	cat4	subcat4
3187	4356	Jarvis and Sons	29500	83843	successful	762	US	USD	cat3	subcat9
1436	6196	Morrison-Henderson	100	4	canceled	1	CH	CHF	cat2	subcat8
1384	3578	Martin-James	180100	105598	failed	2779	AU	AUD	cat3	subcat3
2446	4491	Mercer, Solomon and Singleton	9000	8866	failed	92	US	USD	cat4	subcat4
2215	3054	Dougherty, Austin and Mills	170600	75022	failed	1028	US	USD	cat2	subcat2
2704	1968	Ritter PLC	9500	14408	successful	554	CA	CAD	cat2	subcat8
2470	5869	Anderson Group	6300	14089	successful	135	DK	DKK	cat2	subcat2
1056	5858	Smith and Sons	5200	12467	successful	122	US	USD	cat6	subcat19
1278	5203	Lam-Hamilton	6000	11960	successful	221	US	USD	cat5	subcat23
2987	2577	Ho Ltd	5800	7966	successful	126	US	USD	cat4	subcat4
417	3216	Brown, Estrada and Jensen	105300	106321	successful	1022	US	USD	cat4	subcat4
670	2037	Hunt LLC	20000	158832	successful	3177	US	USD	cat5	subcat11
1427	3867	Fowler-Smith	3000	11091	successful	198	CH	CHF	cat4	subcat4
2918	5109	Blair Inc	9900	1269	failed	26	CH	CHF	cat2	subcat2
306	1376	Kelley, Stanton and Sanchez	3700	5107	successful	85	AU	AUD	cat5	subcat5
1714	5260	Hernandez-Macdonald	168700	141393	failed	1790	US	USD	cat4	subcat4
1354	2350	Joseph LLC	94900	194166	successful	3596	US	USD	cat4	subcat4
810	2269	Webb-Smith	9300	4124	failed	37	US	USD	cat2	subcat6
304	3650	Johns PLC	6800	14865	successful	244	US	USD	cat2	subcat2
752	3934	Hardin-Foley	72400	134688	successful	5180	US	USD	cat4	subcat4
2254	4048	Fischer, Fowler and Arnold	20100	47705	successful	589	IT	EUR	cat5	subcat11
1654	4266	Martinez-Juarez	31200	95364	successful	2725	US	USD	cat2	subcat2
2729	3863	Wilson and Sons	3500	3295	failed	35	IT	EUR	cat5	subcat13
913	4922	Clements Group	9000	4896	canceled	94	US	USD	cat2	subcat2
1388	4517	Valenzuela-Cook	6700	7496	successful	300	US	USD	cat9	subcat24
76	3259	Parker, Haley and Foster	2700	9967	successful	144	US	USD	cat1	subcat1
1172	3123	Fuentes LLC	83300	52421	failed	558	US	USD	cat4	subcat4
2579	3870	Moran and Sons	9700	6298	failed	64	US	USD	cat4	subcat4
2371	2996	Stevens Inc	8200	1546	canceled	37	US	USD	cat2	subcat18
359	2993	Martinez-Johnson	96500	16168	failed	245	US	USD	cat5	subcat23
1423	4556	Franklin Inc	6200	6269	successful	87	US	USD	cat2	subcat18
2239	2326	Perez PLC	43800	149578	successful	3116	US	USD	cat4	subcat4
1835	4109	Sanchez, Cross and Savage	6000	3841	failed	71	US	USD	cat3	subcat3
2097	5739	Pineda Ltd	8700	4531	failed	42	US	USD	cat7	subcat12
1165	5887	Powell and Sons	18900	60934	successful	909	US	USD	cat5	subcat5
1368	1651	Nunez-Richards	86400	103255	successful	1613	US	USD	cat3	subcat3
2331	1628	Pugh LLC	8900	13065	successful	136	US	USD	cat6	subcat19
3145	2642	Rowe-Wong	700	6654	successful	130	US	USD	cat2	subcat2
2313	6020	Williams-Santos	9400	6852	failed	156	CA	CAD	cat1	subcat1
251	4747	Weber Inc	157600	124517	failed	1368	GB	GBP	cat4	subcat4
1956	5534	Avery, Brown and Parker	7900	5113	failed	102	US	USD	cat5	subcat5
1575	4790	Cox Group	7100	5824	failed	86	AU	AUD	cat6	subcat16
1917	4632	Jensen LLC	600	6226	successful	102	US	USD	cat7	subcat12
2447	1952	Brown Inc	156800	20243	failed	253	US	USD	cat4	subcat4
1813	4388	Hale-Hayes	121600	188288	successful	4006	US	USD	cat5	subcat11
367	5529	Mcbride PLC	157300	11167	failed	157	US	USD	cat4	subcat4
1803	1316	Harris-Jennings	70300	146595	successful	1629	US	USD	cat4	subcat4
284	1670	Becker-Scott	7900	7875	failed	183	US	USD	cat5	subcat7
2603	4909	Todd, Freeman and Henry	73800	148779	successful	2188	US	USD	cat4	subcat4
653	3401	Martinez, Garza and Young	108500	175868	successful	2409	IT	EUR	cat2	subcat2
1131	4619	Smith-Ramos	140300	5112	failed	82	DK	DKK	cat5	subcat5
349	4722	Brown-George	100	5	failed	1	GB	GBP	cat1	subcat1
2509	2188	Waters and Sons	6300	13018	successful	194	US	USD	cat3	subcat9
3139	5497	Brown Ltd	71100	91176	successful	1140	US	USD	cat4	subcat4
480	5711	Christian, Yates and Greer	5300	6342	successful	102	US	USD	cat4	subcat4
1205	4076	Cole, Hernandez and Rodriguez	88700	151438	successful	2857	US	USD	cat4	subcat4
291	1847	Ortiz, Valenzuela and Collins	3300	6178	successful	107	US	USD	cat6	subcat10
1758	2816	Valencia PLC	3400	6405	successful	160	GB	GBP	cat2	subcat2
766	5019	Gordon, Mendez and Johnson	137600	180667	successful	2230	US	USD	cat1	subcat1
569	4869	Johnson Group	3900	11075	successful	316	US	USD	cat2	subcat18
50	3613	Rose-Fuller	10000	12042	successful	117	US	USD	cat5	subcat23
1875	3069	Hughes, Mendez and Patterson	42800	179356	successful	6406	US	USD	cat4	subcat4
3040	2601	Brady, Cortez and Rodriguez	8200	1136	canceled	15	US	USD	cat4	subcat4
179	2133	Wang, Nguyen and Horton	6200	8645	successful	192	US	USD	cat2	subcat6
114	3164	Santos, Williams and Brown	1100	1914	successful	26	CA	CAD	cat4	subcat4
260	3897	Barnett and Sons	26500	41205	successful	723	US	USD	cat4	subcat4
1810	5663	Petersen-Rodriguez	8500	14488	successful	170	IT	EUR	cat4	subcat4
68	3879	Burnett-Mora	6400	12129	successful	238	GB	GBP	cat2	subcat8
1148	5900	King LLC	1400	3496	successful	55	US	USD	cat4	subcat4
2489	2272	Miller Ltd	198600	97037	failed	1198	US	USD	cat6	subcat10
1586	5436	Case LLC	195900	55757	failed	648	US	USD	cat4	subcat4
2339	3676	Swanson, Wilson and Baker	4300	11525	successful	128	AU	AUD	cat8	subcat15
1687	4676	Dean, Fox and Phillips	25600	158669	successful	2144	US	USD	cat4	subcat4
1260	1563	Smith-Smith	189000	5916	failed	64	US	USD	cat2	subcat8
2240	4349	Smith, Scott and Rodriguez	94300	150806	successful	2693	GB	GBP	cat4	subcat4
1762	1658	White, Robertson and Roberts	5100	14249	successful	432	US	USD	cat8	subcat15
331	2552	Martinez Inc	7500	5803	failed	62	US	USD	cat4	subcat4
1330	4847	Tucker, Mccoy and Marquez	6400	13205	successful	189	US	USD	cat4	subcat4
427	1553	Martin, Lee and Armstrong	1600	11108	successful	154	GB	GBP	cat1	subcat1
2929	2632	Dunn, Moreno and Green	1900	2884	successful	96	US	USD	cat2	subcat8
2940	1908	Jackson, Martinez and Ray	85900	55476	failed	750	US	USD	cat4	subcat4
2047	5801	Patterson-Johnson	9500	5973	canceled	87	US	USD	cat4	subcat4
536	1935	Carlson-Hernandez	59200	183756	successful	3063	US	USD	cat4	subcat4
238	2609	Parker PLC	72100	30902	live	278	US	USD	cat4	subcat4
30	2740	Yu and Sons	6700	5569	failed	105	US	USD	cat5	subcat11
1151	1907	Taylor, Johnson and Hernandez	118200	92824	canceled	1658	US	USD	cat5	subcat20
1484	1831	Mack Ltd	139000	158590	successful	2266	US	USD	cat5	subcat20
1941	5177	Lamb-Sanders	197700	127591	failed	2604	DK	DKK	cat5	subcat11
546	6179	Williams-Ramirez	8500	6750	failed	65	US	USD	cat4	subcat4
221	2917	Weaver Ltd	81600	9318	failed	94	US	USD	cat4	subcat4
2882	1486	Barnes-Williams	8600	4832	live	45	US	USD	cat5	subcat7
2938	3735	Richardson, Woodward and Hansen	119800	19769	failed	257	US	USD	cat4	subcat4
785	3838	Hunt, Barker and Baker	9400	11277	successful	194	CH	CHF	cat4	subcat4
2785	2430	Ramos, Moreno and Lewis	9200	13382	successful	129	CA	CAD	cat3	subcat9
876	2480	Harris Inc	14900	32986	successful	375	US	USD	cat4	subcat4
932	3431	Peters-Nelson	169400	81984	failed	2928	CA	CAD	cat4	subcat4
507	1742	Ferguson, Murphy and Bright	192100	178483	failed	4697	US	USD	cat2	subcat2
1672	4628	Robinson Group	98700	87448	failed	2915	US	USD	cat7	subcat12
917	2385	Jordan-Wolfe	4500	1863	failed	18	US	USD	cat6	subcat19
2931	2213	Vargas-Cox	98600	62174	canceled	723	US	USD	cat1	subcat1
2415	5188	Yang and Sons	121700	59003	failed	602	CH	CHF	cat4	subcat4
1805	3418	Wilson, Wilson and Mathis	100	2	failed	1	US	USD	cat2	subcat18
495	5637	Wang, Koch and Weaver	196700	174039	failed	3868	IT	EUR	cat5	subcat13
2988	3530	Cisneros Ltd	10000	12684	successful	409	US	USD	cat3	subcat3
3169	3731	Williams-Jones	600	14033	successful	234	US	USD	cat3	subcat3
467	3219	Roberts, Hinton and Williams	35000	177936	successful	3016	US	USD	cat2	subcat17
1551	2392	Gonzalez, Williams and Benson	6900	13212	successful	264	US	USD	cat8	subcat15
2467	5103	Hobbs, Brown and Lee	118400	49879	failed	504	AU	AUD	cat1	subcat1
1193	3992	Russo, Kim and Mccoy	10000	824	failed	14	US	USD	cat5	subcat23
1016	2442	Howell, Myers and Olson	52600	31594	canceled	390	US	USD	cat2	subcat2
313	2913	Bailey and Sons	120700	57010	failed	750	GB	GBP	cat5	subcat5
117	1631	Jensen-Brown	9100	7438	failed	77	US	USD	cat4	subcat4
2747	4073	Smith Group	106800	57872	failed	752	DK	DKK	cat2	subcat18
1244	4568	Murphy-Farrell	9100	8906	failed	131	US	USD	cat4	subcat4
564	1830	Everett-Wolfe	10000	7724	failed	87	US	USD	cat4	subcat4
3129	2623	Young PLC	79400	26571	failed	1063	US	USD	cat2	subcat18
800	4327	Park-Goodman	5100	12219	successful	272	US	USD	cat5	subcat5
1255	3713	York, Barr and Grant	3100	1985	canceled	25	US	USD	cat4	subcat4
2448	2389	Little Ltd	6900	12155	successful	419	US	USD	cat9	subcat24
578	5141	Brown and Sons	27500	5593	failed	76	US	USD	cat4	subcat4
418	3522	Payne, Garrett and Thomas	48800	175020	successful	1621	IT	EUR	cat4	subcat4
255	1334	Robinson Group	16200	75955	successful	1101	US	USD	cat2	subcat8
1918	4721	Robinson-Kelly	97600	119127	successful	1073	US	USD	cat4	subcat4
2837	3768	Kelly-Colon	197900	110689	failed	4428	AU	AUD	cat4	subcat4
842	1639	Turner, Scott and Gentry	5600	2445	failed	58	IT	EUR	cat2	subcat8
503	5149	Sanchez Ltd	170700	57250	canceled	1218	US	USD	cat8	subcat15
602	2153	Giles-Smith	9700	11929	successful	331	US	USD	cat9	subcat24
1317	2767	Thompson-Moreno	62300	118214	successful	1170	US	USD	cat8	subcat15
2071	5124	Murphy-Fox	5300	4432	failed	111	US	USD	cat6	subcat14
2773	2097	Rodriguez-Patterson	99500	17879	canceled	215	US	USD	cat5	subcat7
1814	4796	Davis Ltd	1400	14511	successful	363	US	USD	cat1	subcat1
2600	5849	Nelson-Valdez	145600	141822	failed	2955	US	USD	cat7	subcat21
426	1495	Kelly PLC	184100	159037	failed	1657	US	USD	cat4	subcat4
2206	2462	Nguyen and Sons	5400	8109	successful	103	US	USD	cat4	subcat4
2032	2280	Jones PLC	2300	8244	successful	147	US	USD	cat4	subcat4
397	1877	Gilmore LLC	1400	7600	successful	110	CA	CAD	cat6	subcat10
865	6108	Lee-Cobb	140000	94501	failed	926	CA	CAD	cat4	subcat4
3027	4427	Jones, Wiley and Robbins	7500	14381	successful	134	US	USD	cat3	subcat9
31	2881	Martin, Gates and Holt	1500	13980	successful	269	US	USD	cat4	subcat4
1234	2339	Bowen, Davies and Burns	2900	12449	successful	175	US	USD	cat5	subcat20
497	5156	Nguyen Inc	7300	7348	successful	69	US	USD	cat3	subcat3
2084	4750	Walsh-Watts	3600	8158	successful	190	US	USD	cat5	subcat5
337	4852	Ray, Li and Li	5000	7119	successful	237	US	USD	cat5	subcat5
3182	5734	Murray Ltd	6000	5438	failed	77	GB	GBP	cat2	subcat2
1494	3801	Bradford-Silva	180400	115396	failed	1748	US	USD	cat4	subcat4
2570	4474	Mora-Bradley	9100	7656	failed	79	US	USD	cat4	subcat4
2205	1992	Cardenas, Thompson and Carey	9200	12322	successful	196	IT	EUR	cat2	subcat2
314	5796	Lopez, Reid and Johnson	164100	96888	failed	889	US	USD	cat4	subcat4
1659	1373	Fox-Williams	128900	196960	successful	7295	US	USD	cat2	subcat6
1656	1879	Taylor, Wood and Taylor	42100	188057	successful	2893	CA	CAD	cat3	subcat9
514	3072	King Inc	7400	6245	failed	56	US	USD	cat5	subcat7
649	4561	Cole, Petty and Cameron	100	3	failed	1	US	USD	cat3	subcat9
1769	5201	Mcclain LLC	52000	91014	successful	820	US	USD	cat4	subcat4
33	5871	Sims-Gross	8700	4710	failed	83	US	USD	cat3	subcat9
195	3041	Perez Group	63400	197728	successful	2038	US	USD	cat6	subcat19
742	5864	Haynes-Williams	8700	10682	successful	116	US	USD	cat5	subcat11
2093	3999	Ford LLC	169700	168048	failed	2025	GB	GBP	cat6	subcat10
1338	4849	Moreno Ltd	108400	138586	successful	1345	AU	AUD	cat3	subcat3
52	5461	Moore, Cook and Wright	7300	11579	successful	168	US	USD	cat5	subcat7
1651	5946	Ortega LLC	1700	12020	successful	137	CH	CHF	cat4	subcat4
452	4508	Silva, Walker and Martin	9800	13954	successful	186	IT	EUR	cat4	subcat4
1808	5096	Huynh, Gallegos and Mills	4300	6358	successful	125	US	USD	cat4	subcat4
2288	5443	Anderson LLC	6200	1260	failed	14	IT	EUR	cat4	subcat4
1855	2165	Garza-Bryant	800	14725	successful	202	US	USD	cat4	subcat4
3035	2125	Mays LLC	6900	11174	successful	103	US	USD	cat6	subcat16
2285	6141	Evans-Jones	38500	182036	successful	1785	US	USD	cat2	subcat2
1203	5245	Fischer, Torres and Walker	118000	28870	failed	656	US	USD	cat7	subcat21
2852	2190	Tapia, Kramer and Hicks	2000	10353	successful	157	US	USD	cat4	subcat4
2160	2243	Barnes, Wilcox and Riley	5600	13868	successful	555	US	USD	cat5	subcat5
113	3336	Reyes PLC	8300	8317	successful	297	US	USD	cat3	subcat9
2609	3305	Pace, Simpson and Watkins	6900	10557	successful	123	US	USD	cat6	subcat14
2529	6191	Valenzuela, Davidson and Castro	8700	3227	canceled	38	DK	DKK	cat4	subcat4
1780	1326	Dominguez-Owens	123600	5429	canceled	60	US	USD	cat2	subcat2
1840	6159	Thomas-Simmons	48500	75906	successful	3036	US	USD	cat5	subcat5
2280	2003	Beck-Knight	4900	13250	successful	144	AU	AUD	cat4	subcat4
3150	5881	Mccoy Ltd	8400	11261	successful	121	GB	GBP	cat4	subcat4
2490	1918	Dawson-Tyler	193200	97369	failed	1596	US	USD	cat7	subcat21
3081	2157	Johns-Thomas	54300	48227	canceled	524	US	USD	cat4	subcat4
1954	3149	Quinn, Cruz and Schmidt	8900	14685	successful	181	US	USD	cat3	subcat3
2560	2444	Stewart Inc	4200	735	failed	10	US	USD	cat4	subcat4
1071	6207	Moore Group	5600	10397	successful	122	US	USD	cat5	subcat7
1649	5580	Carson PLC	28800	118847	successful	1071	CA	CAD	cat3	subcat9
685	5942	Cruz, Hall and Mason	8000	7220	canceled	219	US	USD	cat3	subcat3
1069	1592	Glass, Baker and Jones	117000	107622	failed	1121	US	USD	cat2	subcat2
1277	2344	Marquez-Kerr	15800	83267	successful	980	US	USD	cat2	subcat17
2764	5995	Stone PLC	4200	13404	successful	536	US	USD	cat4	subcat4
959	5022	Caldwell PLC	37100	131404	successful	1991	US	USD	cat8	subcat15
1746	5991	Silva-Hawkins	7700	2533	canceled	29	US	USD	cat6	subcat10
2392	4020	Gardner Inc	3700	5028	successful	180	US	USD	cat2	subcat8
2762	6028	Garcia Group	74700	1557	failed	15	US	USD	cat4	subcat4
1699	2790	Meyer-Avila	10000	6100	failed	191	US	USD	cat2	subcat8
220	4033	Nelson, Smith and Graham	5300	1592	failed	16	US	USD	cat4	subcat4
285	1261	Garcia Ltd	1200	14150	successful	130	US	USD	cat4	subcat4
2182	1979	West-Stevens	1200	13513	successful	122	US	USD	cat2	subcat6
2244	2122	Clark-Conrad	3900	504	failed	17	US	USD	cat4	subcat4
2357	4506	Fitzgerald Group	2000	14240	successful	140	US	USD	cat4	subcat4
971	3016	Hill, Mccann and Moore	6900	2091	failed	34	US	USD	cat3	subcat9
2077	3272	Edwards LLC	55800	118580	successful	3388	US	USD	cat3	subcat3
2197	1375	Greer and Sons	4900	11214	successful	280	US	USD	cat4	subcat4
1294	4014	Martinez PLC	194900	68137	canceled	614	US	USD	cat5	subcat11
1111	3199	Hunter-Logan	8600	13527	successful	366	IT	EUR	cat3	subcat9
985	2184	Ramos and Sons	100	1	failed	1	GB	GBP	cat2	subcat6
487	2170	Lane-Barber	3600	8363	successful	270	US	USD	cat6	subcat10
1496	1478	Lowery Group	5800	5362	canceled	114	US	USD	cat4	subcat4
3054	6163	Guerrero-Griffin	4700	12065	successful	137	US	USD	cat8	subcat15
501	1889	Perez, Reed and Lee	70400	118603	successful	3205	US	USD	cat4	subcat4
632	5912	Chen, Pollard and Clarke	4500	7496	successful	288	DK	DKK	cat4	subcat4
1253	2537	Serrano, Gallagher and Griffith	1300	10037	successful	148	US	USD	cat4	subcat4
665	2118	Callahan-Gilbert	1400	5696	successful	114	US	USD	cat5	subcat7
2505	3234	Logan-Miranda	29600	167005	successful	1518	CA	CAD	cat2	subcat2
1519	3842	Rodriguez PLC	167500	114615	failed	1274	US	USD	cat2	subcat6
1920	3032	Smith-Kennedy	48300	16592	failed	210	IT	EUR	cat7	subcat12
2782	3238	Mitchell-Lee	2200	14420	successful	166	US	USD	cat2	subcat2
2089	2059	Davis Ltd	3500	6204	successful	100	AU	AUD	cat2	subcat18
2607	5238	Rowland PLC	5600	6338	successful	235	US	USD	cat4	subcat4
2464	2578	Shaffer-Mason	1100	8010	successful	148	US	USD	cat2	subcat2
335	4789	Matthews LLC	3900	8125	successful	198	US	USD	cat2	subcat8
1973	2357	Montgomery-Castro	43800	13653	failed	248	AU	AUD	cat5	subcat23
1006	1235	Hale, Pearson and Jenkins	97200	55372	failed	513	US	USD	cat6	subcat19
2678	3558	Ramirez-Calderon	4800	11088	successful	150	US	USD	cat4	subcat4
2103	1707	Johnson-Morales	125600	109106	failed	3410	US	USD	cat7	subcat12
627	2842	Mathis-Rodriguez	4300	11642	successful	216	IT	EUR	cat4	subcat4
2242	5318	Smith, Mack and Williams	5600	2769	canceled	26	US	USD	cat4	subcat4
2711	1620	Johnson-Pace	149600	169586	successful	5139	US	USD	cat2	subcat8
1210	4998	Meza, Kirby and Patel	53100	101185	successful	2353	US	USD	cat4	subcat4
692	3111	Gonzalez-Snow	5000	6775	successful	78	IT	EUR	cat3	subcat3
864	1424	Murphy LLC	9400	968	failed	10	US	USD	cat2	subcat2
1349	3244	Taylor-Rowe	110800	72623	failed	2201	US	USD	cat4	subcat4
1582	4643	Henderson Ltd	93800	45987	failed	676	US	USD	cat4	subcat4
2862	6132	Moss-Guzman	1300	10243	successful	174	CH	CHF	cat5	subcat11
23	3790	Webb Group	108700	87293	failed	831	US	USD	cat4	subcat4
526	1312	Brooks-Rodriguez	5100	5421	successful	164	US	USD	cat5	subcat7
2134	5686	Thomas Ltd	8700	4414	canceled	56	CH	CHF	cat4	subcat4
422	2111	Williams and Sons	5100	10981	successful	161	US	USD	cat5	subcat11
988	5685	Vega, Chan and Carney	7400	10451	successful	138	US	USD	cat2	subcat2
812	1905	Byrd Group	88900	102535	successful	3308	US	USD	cat3	subcat3
1589	3271	Peterson, Fletcher and Sanchez	6700	12939	successful	127	AU	AUD	cat5	subcat11
2504	4178	Smith-Brown	1500	10946	successful	207	IT	EUR	cat2	subcat18
1707	3275	Vance-Glover	61200	60994	failed	859	CA	CAD	cat2	subcat2
3138	5713	Joyce PLC	3600	3174	live	31	US	USD	cat5	subcat11
120	3339	Kennedy-Miller	9000	3351	failed	45	US	USD	cat4	subcat4
265	5585	White-Obrien	185900	56774	canceled	1113	US	USD	cat4	subcat4
2499	4407	Stafford, Hess and Raymond	2100	540	failed	6	US	USD	cat1	subcat1
127	1941	Jordan, Schneider and Hall	2000	680	failed	7	US	USD	cat4	subcat4
1705	4690	Rodriguez, Cox and Rodriguez	1100	13045	successful	181	CH	CHF	cat6	subcat10
415	3607	Welch Inc	6600	8276	successful	110	US	USD	cat2	subcat2
3042	2670	Vasquez Inc	7100	1022	failed	31	US	USD	cat5	subcat7
2098	5261	Freeman-Ferguson	7800	4275	failed	78	US	USD	cat7	subcat21
1015	4121	Houston, Moore and Rogers	7600	8332	successful	185	US	USD	cat3	subcat3
2454	4620	Small-Fuentes	3400	6408	successful	121	US	USD	cat4	subcat4
662	4630	Reid-Day	84500	73522	failed	1225	GB	GBP	cat4	subcat4
751	3440	Wallace LLC	100	1	failed	1	CH	CHF	cat2	subcat2
2336	3572	Olson-Bishop	2300	4667	successful	106	US	USD	cat8	subcat15
1757	5306	Rodriguez, Anderson and Porter	6200	12216	successful	142	US	USD	cat8	subcat15
2779	5122	Perez, Brown and Meyers	6100	6527	successful	233	US	USD	cat4	subcat4
1698	1368	English-Mccullough	2600	6987	successful	218	US	USD	cat2	subcat2
550	5370	Smith-Nguyen	9700	4932	failed	67	AU	AUD	cat5	subcat5
746	5636	Harmon-Madden	700	8262	successful	76	US	USD	cat5	subcat7
906	6033	Walker-Taylor	700	1848	successful	43	US	USD	cat4	subcat4
3098	3599	Harris, Medina and Mitchell	5200	1583	failed	19	US	USD	cat1	subcat1
1052	5566	Williams and Sons	140800	88536	failed	2108	CH	CHF	cat5	subcat5
1073	1873	Ball-Fisher	6400	12360	successful	221	US	USD	cat4	subcat4
1327	3904	Page, Holt and Mack	92500	71320	failed	679	US	USD	cat7	subcat12
1849	4453	Landry Group	59700	134640	successful	2805	CA	CAD	cat6	subcat10
1550	5481	Buckley Group	3200	7661	successful	68	US	USD	cat7	subcat12
2139	2987	Vincent PLC	3200	2950	failed	36	DK	DKK	cat2	subcat2
2442	2431	Watson-Douglas	9000	11721	successful	183	CA	CAD	cat2	subcat2
108	4158	Jones, Casey and Jones	2300	14150	successful	133	US	USD	cat4	subcat4
322	3753	Alvarez-Bauer	51300	189192	successful	2489	IT	EUR	cat6	subcat10
2060	4391	Martinez LLC	700	7664	successful	69	US	USD	cat4	subcat4
589	2026	Buck-Khan	8900	4509	failed	47	US	USD	cat7	subcat12
198	4547	Valdez, Williams and Meyer	1500	12009	successful	279	GB	GBP	cat2	subcat2
1485	2798	Alvarez-Andrews	4900	14273	successful	210	US	USD	cat5	subcat5
2136	4732	Stewart and Sons	54000	188982	successful	2100	US	USD	cat2	subcat2
3200	5126	Dyer Inc	4100	14640	successful	252	US	USD	cat2	subcat2
2693	5151	Anderson, Williams and Cox	85000	107516	successful	1280	US	USD	cat6	subcat10
1335	2134	Solomon PLC	3600	13950	successful	157	GB	GBP	cat5	subcat13
1171	5786	Miller-Hubbard	2800	12797	successful	194	US	USD	cat4	subcat4
1935	5515	Miranda, Martinez and Lowery	2300	6134	successful	82	AU	AUD	cat5	subcat7
1097	4530	Munoz, Cherry and Bell	7100	4899	failed	70	US	USD	cat4	subcat4
1307	4088	Baker-Higgins	9600	4929	failed	154	US	USD	cat4	subcat4
1300	3667	Johnson, Turner and Carroll	121600	1424	failed	22	US	USD	cat4	subcat4
2587	3286	Ward PLC	97100	105817	successful	4233	US	USD	cat8	subcat15
964	4804	Bradley, Beck and Mayo	43200	136156	successful	1297	DK	DKK	cat6	subcat19
1093	5768	Levine, Martin and Hernandez	6800	10723	successful	165	DK	DKK	cat6	subcat19
1199	6098	Gallegos, Wagner and Gaines	7300	11228	successful	119	US	USD	cat4	subcat4
2259	2508	Hodges, Smith and Kelly	86200	77355	failed	1758	US	USD	cat3	subcat3
1169	5779	Macias Inc	8100	6086	failed	94	US	USD	cat2	subcat8
2575	1717	Cook-Ortiz	17700	150960	successful	1797	US	USD	cat2	subcat18
1889	3368	Jordan-Fischer	6400	8890	successful	261	US	USD	cat4	subcat4
2267	4265	Pierce-Ramirez	7700	14644	successful	157	US	USD	cat5	subcat5
78	4455	Howell and Sons	116300	116583	successful	3533	US	USD	cat4	subcat4
55	2940	Garcia, Dunn and Richardson	9100	12991	successful	155	US	USD	cat3	subcat3
725	6144	Lawson and Sons	1500	8447	successful	132	IT	EUR	cat3	subcat9
1927	3657	Porter-Hicks	8800	2703	failed	33	US	USD	cat8	subcat15
398	1537	Rodriguez-Hansen	8800	8747	canceled	94	US	USD	cat5	subcat5
2554	2116	Williams LLC	69900	138087	successful	1354	GB	GBP	cat3	subcat3
2293	5102	Cooper, Stanley and Bryant	1000	5085	successful	48	US	USD	cat3	subcat3
2978	5815	Miller, Glenn and Adams	4700	11174	successful	110	US	USD	cat1	subcat1
1443	4250	Cole, Salazar and Moreno	3200	10831	successful	172	US	USD	cat5	subcat7
342	4533	Jones-Ryan	6700	8917	successful	307	US	USD	cat2	subcat8
1719	3329	Hood, Perez and Meadows	100	1	failed	1	US	USD	cat2	subcat2
2004	3606	Bright and Sons	6000	12468	successful	160	US	USD	cat2	subcat6
784	4749	Brady Ltd	4900	2505	failed	31	US	USD	cat7	subcat12
3061	2222	Collier LLC	17100	111502	successful	1467	CA	CAD	cat2	subcat8
559	1939	Campbell, Thomas and Obrien	171000	194309	successful	2662	CA	CAD	cat6	subcat14
978	2456	Moses-Terry	23400	23956	successful	452	AU	AUD	cat4	subcat4
1387	2794	Williams and Sons	2400	8558	successful	158	US	USD	cat1	subcat1
499	2648	Miranda, Gray and Hale	5300	7413	successful	225	CH	CHF	cat5	subcat13
1439	2545	Ayala, Crawford and Taylor	4000	2778	failed	35	US	USD	cat1	subcat1
3130	3273	Martinez Ltd	7300	2594	failed	63	US	USD	cat4	subcat4
1526	6155	Lee PLC	2000	5033	successful	65	US	USD	cat3	subcat9
1229	6064	Young, Ramsey and Powell	8800	9317	successful	163	US	USD	cat4	subcat4
780	1729	Lewis and Sons	3500	6560	successful	85	US	USD	cat4	subcat4
936	4969	Davis-Johnson	1400	5415	successful	217	US	USD	cat5	subcat20
2820	3402	Stevenson-Thompson	4200	14577	successful	150	US	USD	cat5	subcat13
3118	2810	Ellis, Smith and Armstrong	81000	150515	successful	3272	US	USD	cat4	subcat4
750	2217	Jackson-Brown	182800	79045	canceled	898	US	USD	cat8	subcat15
2948	5140	Kane, Pruitt and Rivera	4800	7797	successful	300	US	USD	cat1	subcat1
1818	4497	Wood, Buckley and Meza	7000	12939	successful	126	US	USD	cat4	subcat4
1715	5100	Brown-Williams	161900	38376	failed	526	US	USD	cat5	subcat7
2667	3390	Hansen-Austin	7700	6920	failed	121	US	USD	cat4	subcat4
2818	1926	Santana-George	71500	194912	successful	2320	US	USD	cat4	subcat4
175	3264	Davis LLC	4700	7992	successful	81	AU	AUD	cat5	subcat23
2701	2573	Vazquez, Ochoa and Clark	42100	79268	successful	1887	US	USD	cat8	subcat15
338	3628	Chung-Nguyen	40200	139468	successful	4358	US	USD	cat8	subcat15
1372	3826	Mueller-Harmon	7900	5465	failed	67	US	USD	cat2	subcat2
399	5983	Dixon, Perez and Banks	8300	2111	failed	57	CA	CAD	cat8	subcat15
2734	5678	Estrada Group	163600	126628	failed	1229	US	USD	cat1	subcat1
2663	2093	Lutz Group	2700	1012	failed	12	IT	EUR	cat2	subcat17
2951	5333	Ortiz Inc	1000	5438	successful	53	US	USD	cat6	subcat10
733	5139	Craig, Ellis and Miller	84500	193101	successful	2414	US	USD	cat2	subcat6
374	3173	Charles Inc	81300	31665	failed	452	US	USD	cat4	subcat4
1949	3333	White-Rosario	800	2960	successful	80	US	USD	cat4	subcat4
48	2262	Simmons-Villarreal	3400	8089	successful	193	US	USD	cat5	subcat13
3020	1531	Strickland Group	170800	109374	failed	1886	US	USD	cat4	subcat4
749	4881	Lynch Ltd	1800	2129	successful	52	US	USD	cat4	subcat4
1336	3928	Sanders LLC	150600	127745	failed	1825	US	USD	cat2	subcat8
2390	1803	Cooper LLC	7800	2289	failed	31	US	USD	cat4	subcat4
851	2321	Palmer Ltd	5800	12174	successful	290	US	USD	cat4	subcat4
2394	6234	Santos Group	5600	9508	successful	122	US	USD	cat2	subcat6
1062	1422	Christian, Kim and Jimenez	134400	155849	successful	1470	US	USD	cat2	subcat8
1024	2660	Williams, Price and Hurley	3000	7758	successful	165	CA	CAD	cat5	subcat5
1261	5361	Anderson, Parks and Estrada	6000	13835	successful	182	US	USD	cat6	subcat19
2029	3420	Collins-Martinez	8400	10770	successful	199	IT	EUR	cat5	subcat5
267	4337	Barrett Inc	1700	3208	successful	56	GB	GBP	cat5	subcat20
3140	2338	Adams-Rollins	159800	11108	failed	107	US	USD	cat4	subcat4
2599	4140	Wright-Bryant	19800	153338	successful	1460	AU	AUD	cat1	subcat1
1505	2373	Berry-Cannon	8800	2437	failed	27	US	USD	cat4	subcat4
2736	1344	Davis-Gonzalez	179100	93991	failed	1221	US	USD	cat5	subcat5
2444	2141	Best-Young	3100	12620	successful	123	CH	CHF	cat2	subcat18
212	3415	Powers, Smith and Deleon	100	2	failed	1	US	USD	cat3	subcat3
1226	5696	Hogan Group	5600	8746	successful	159	US	USD	cat2	subcat2
2381	1798	Wang, Silva and Byrd	1400	3534	successful	110	US	USD	cat3	subcat3
2510	1657	Parker-Morris	41000	709	live	14	US	USD	cat6	subcat10
182	3651	Rodriguez, Johnson and Jackson	6500	795	failed	16	US	USD	cat6	subcat16
1340	3574	Haynes PLC	7900	12955	successful	236	US	USD	cat4	subcat4
663	6063	Hayes Group	5500	8964	successful	191	US	USD	cat5	subcat5
167	2404	White, Pena and Calhoun	9100	1843	failed	41	US	USD	cat4	subcat4
3143	2705	Bryant-Pope	38200	121950	successful	3934	US	USD	cat7	subcat12
1571	5059	Gates, Li and Thompson	1800	8621	successful	80	CA	CAD	cat4	subcat4
1216	5466	King-Morris	154500	30215	canceled	296	US	USD	cat4	subcat4
237	5821	Carter, Cole and Curtis	5800	11539	successful	462	US	USD	cat3	subcat3
1524	5385	Sanchez-Parsons	1800	14310	successful	179	US	USD	cat5	subcat7
218	3506	Rivera-Pearson	70200	35536	failed	523	AU	AUD	cat5	subcat7
2508	5427	Ramirez, Padilla and Barrera	6400	3676	failed	141	GB	GBP	cat4	subcat4
1873	6142	Riggs Group	125900	195936	successful	1866	GB	GBP	cat5	subcat20
1378	2873	Clements Ltd	3700	1343	failed	52	US	USD	cat8	subcat15
2488	3916	Cooper Inc	3600	2097	live	27	GB	GBP	cat5	subcat13
2924	1687	Jones-Gonzalez	3800	9021	successful	156	CH	CHF	cat6	subcat16
316	1542	Fox Ltd	35600	20915	failed	225	AU	AUD	cat4	subcat4
531	3087	Green, Murphy and Webb	5300	9676	successful	255	US	USD	cat5	subcat11
435	3857	Stevenson PLC	160400	1210	failed	38	US	USD	cat3	subcat3
1381	5921	Soto-Anthony	51400	90440	successful	2261	US	USD	cat2	subcat22
2606	3144	Wise and Sons	1700	4044	successful	40	US	USD	cat4	subcat4
2402	2676	Butler-Barr	39400	192292	successful	2289	IT	EUR	cat4	subcat4
761	3646	Wilson, Jefferson and Anderson	3000	6722	successful	65	US	USD	cat4	subcat4
1447	1321	Brown-Oliver	8700	1577	failed	15	US	USD	cat1	subcat1
1724	1399	Davis-Gardner	7200	3301	failed	37	US	USD	cat4	subcat4
1050	3169	Dawson Group	167400	196386	successful	3777	IT	EUR	cat3	subcat3
443	2058	Turner-Terrell	5500	11952	successful	184	GB	GBP	cat4	subcat4
974	1300	Hall, Buchanan and Benton	3500	3930	successful	85	US	USD	cat4	subcat4
534	2075	Lowery, Hayden and Cruz	7900	5729	failed	112	US	USD	cat4	subcat4
289	2984	Mora, Miller and Harper	2300	4883	successful	144	US	USD	cat2	subcat2
2046	4768	Espinoza Group	73000	175015	successful	1902	US	USD	cat4	subcat4
2614	3682	Davis, Crawford and Lopez	6200	11280	successful	105	US	USD	cat4	subcat4
2652	5901	Richards, Stevens and Fleming	6100	10012	successful	132	US	USD	cat4	subcat4
1303	3540	Brown Ltd	103200	1690	failed	21	US	USD	cat4	subcat4
2638	2225	Tapia, Sandoval and Hurley	171000	84891	canceled	976	US	USD	cat5	subcat5
2865	1485	Allen Inc	9200	10093	successful	96	US	USD	cat6	subcat14
640	5343	Williams, Johnson and Campbell	7800	3839	failed	67	US	USD	cat7	subcat12
910	5594	Wiggins Ltd	9900	6161	live	66	CA	CAD	cat3	subcat3
333	2482	Luna-Horne	43000	5615	failed	78	US	USD	cat4	subcat4
1722	2706	Allen Inc	9600	6205	failed	67	AU	AUD	cat4	subcat4
1437	4861	Peterson, Gonzalez and Spencer	7500	11969	successful	114	US	USD	cat1	subcat1
806	2961	Walter Inc	10000	8142	failed	263	AU	AUD	cat8	subcat15
1563	3043	Sanders, Farley and Huffman	172000	55805	failed	1691	US	USD	cat8	subcat15
878	6103	Hall, Holmes and Walker	153700	15238	failed	181	US	USD	cat4	subcat4
2968	4708	Smith-Powell	3600	961	failed	13	US	USD	cat4	subcat4
1876	4395	Smith-Hill	9400	5918	canceled	160	US	USD	cat5	subcat5
2686	4912	Wright LLC	5900	9520	successful	203	US	USD	cat3	subcat3
513	2030	Williams, Orozco and Gomez	100	5	failed	1	US	USD	cat4	subcat4
3165	5235	Peterson Ltd	14500	159056	successful	1559	US	USD	cat2	subcat2
1847	5001	Cummings-Hayes	145500	101987	canceled	2266	US	USD	cat5	subcat5
1994	4093	Boyle Ltd	3300	1980	failed	21	US	USD	cat5	subcat23
201	2576	Henderson, Parker and Diaz	42600	156384	successful	1548	AU	AUD	cat3	subcat3
960	6122	Moss-Obrien	700	7763	successful	80	US	USD	cat4	subcat4
1475	2813	Wood Inc	187600	35698	failed	830	US	USD	cat5	subcat23
3149	3737	Riley, Cohen and Goodman	9800	12434	successful	131	US	USD	cat4	subcat4
877	2803	Green, Robinson and Ho	1100	8081	successful	112	US	USD	cat5	subcat11
2122	5508	Black-Graham	145000	6631	failed	130	US	USD	cat6	subcat19
923	3850	Robbins Group	5500	4678	failed	55	US	USD	cat3	subcat3
1809	4220	Mason, Case and May	5700	6800	successful	155	US	USD	cat6	subcat19
3209	4532	Harris, Russell and Mitchell	3600	10657	successful	266	US	USD	cat1	subcat1
1951	6013	Rodriguez-Robinson	5900	4997	failed	114	IT	EUR	cat8	subcat15
2566	3396	Peck, Higgins and Smith	3700	13164	successful	155	US	USD	cat4	subcat4
2925	4401	Nunez-King	2200	8501	successful	207	GB	GBP	cat2	subcat2
3087	2981	Davis and Sons	1700	13468	successful	245	US	USD	cat4	subcat4
2040	4467	Howard-Douglas	88400	121138	successful	1573	US	USD	cat2	subcat22
1755	1377	Gonzalez-White	2400	8117	successful	114	US	USD	cat1	subcat1
965	5036	Lopez-King	7900	8550	successful	93	US	USD	cat4	subcat4
2019	5761	Glover-Nelson	94900	57659	failed	594	US	USD	cat4	subcat4
843	3699	Garner and Sons	5100	1414	failed	24	US	USD	cat5	subcat20
1593	4519	Sellers, Roach and Garrison	42700	97524	successful	1681	US	USD	cat3	subcat3
2494	5395	Herrera, Bennett and Silva	121100	26176	failed	252	US	USD	cat4	subcat4
2250	3057	Thomas, Clay and Mendoza	800	2991	successful	32	US	USD	cat2	subcat8
1498	2741	Ayala Group	5400	8366	successful	135	US	USD	cat4	subcat4
356	1675	Huerta, Roberts and Dickerson	4000	12886	successful	140	US	USD	cat4	subcat4
1432	2712	Johnson Group	7000	5177	failed	67	US	USD	cat1	subcat1
25	4527	Bailey, Nguyen and Martinez	1000	8641	successful	92	US	USD	cat7	subcat12
488	1722	Williams, Martin and Meyer	60200	86244	successful	1015	GB	GBP	cat4	subcat4
423	4330	Huff-Johnson	195200	78630	failed	742	US	USD	cat6	subcat10
2028	5219	Diaz-Little	6700	11941	successful	323	US	USD	cat3	subcat3
1521	4997	Freeman-French	7200	6115	failed	75	US	USD	cat5	subcat5
2780	2239	Beck-Weber	129100	188404	successful	2326	US	USD	cat5	subcat5
2316	4587	Lewis-Jacobson	6500	9910	successful	381	US	USD	cat4	subcat4
2247	4113	Logan-Curtis	170600	114523	failed	4405	US	USD	cat2	subcat2
2408	4762	Chan, Washington and Callahan	7800	3144	failed	92	US	USD	cat2	subcat2
3184	5242	Wilson Group	6200	13441	successful	480	US	USD	cat5	subcat5
1680	5765	Gardner, Ryan and Gutierrez	9400	4899	failed	64	US	USD	cat6	subcat16
2585	2185	Hernandez Inc	2400	11990	successful	226	US	USD	cat6	subcat19
1561	5500	Ortiz-Roberts	7800	6839	failed	64	US	USD	cat5	subcat7
2632	3494	Ramirez LLC	9800	11091	successful	241	US	USD	cat2	subcat2
439	3924	Morrow Inc	3100	13223	successful	132	US	USD	cat5	subcat7
461	3521	Erickson-Rogers	9800	7608	canceled	75	IT	EUR	cat8	subcat15
1419	5262	Leach, Rich and Price	141100	74073	failed	842	US	USD	cat6	subcat19
2986	3684	Manning-Hamilton	97300	153216	successful	2043	US	USD	cat1	subcat1
2031	5784	Butler LLC	6600	4814	failed	112	US	USD	cat4	subcat4
1627	1498	Ball LLC	7600	4603	canceled	139	IT	EUR	cat4	subcat4
2175	6073	Taylor, Santiago and Flores	66600	37823	failed	374	US	USD	cat2	subcat8
1788	4939	Hernandez, Norton and Kelley	111100	62819	canceled	1122	US	USD	cat1	subcat1
\.


--
-- TOC entry 4864 (class 0 OID 17073)
-- Dependencies: 217
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (category_id, category) FROM stdin;
cat1	food
cat2	music
cat3	technology
cat4	theater
cat5	film & video
cat6	publishing
cat7	games
cat8	photography
cat9	journalism
\.


--
-- TOC entry 4866 (class 0 OID 17083)
-- Dependencies: 219
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts (contact_id, first_name, last_name, email) FROM stdin;
4661	\N	\N	cecilia.velasco@rodrigues.fr
3765	\N	\N	mariana.ellis@rossi.org
4187	\N	\N	sofie.woods@riviere.com
4941	\N	\N	jeanette.iannotti@yahoo.com
2199	\N	\N	samuel.sorgatz@gmail.com
5650	\N	\N	socorro.luna@hotmail.com
5889	\N	\N	carolina.murray@knight.com
4842	\N	\N	kayla.moon@yahoo.de
3280	\N	\N	ariadna.geisel@rangel.com
5468	\N	\N	danielle.ladeck@scalfaro.net
3064	\N	\N	tatiana.thompson@hunt.net
4904	\N	\N	caleb.benavides@rubio.com
1299	\N	\N	sandra.hardy@web.de
5602	\N	\N	lotti.morris@yahoo.co.uk
5753	\N	\N	reinhilde.white@voila.fr
4495	\N	\N	kerry.patel@hutchinson.com
4269	\N	\N	sophie.antoine@andersen.com
2226	\N	\N	martha.girard@web.de
1558	\N	\N	stephanie.king@cervantes.com
2307	\N	\N	amanda.palmer@didier.fr
2900	\N	\N	lina.alcala@vespa.net
5695	\N	\N	itzel.murphy@muelichen.de
5708	\N	\N	filippo.parry@live.com
1663	\N	\N	katelyn.cole@fiebig.com
3605	\N	\N	brian.novak@ford.net
4678	\N	\N	cilly.gay@callegaro.it
2251	\N	\N	yolanda.snyder@gmx.de
6202	\N	\N	evelin.odonnell@ibarra.net
3715	\N	\N	ingeborg.alba@hotmail.com
4242	\N	\N	marina.madrid@galarza-alba.com
4326	\N	\N	sheila.goodwin@yahoo.com
5560	\N	\N	valeria.rich@turchetta-mondadori.it
4002	\N	\N	dustin.camacho@rhodes.org.au
3813	\N	\N	amalia.marenzio@grupo.com
5336	\N	\N	gian.long@hotmail.com
4994	\N	\N	stewart.hunt@anderson-vargas.biz
1471	\N	\N	greca.ruiz@carr.co.uk
4482	\N	\N	gerald.olivera@outlook.com
3241	\N	\N	jaqueline.wallace@gmail.com
3477	\N	\N	john.lane@gregoire.fr
2265	\N	\N	pero.joly@bernard.net
5911	\N	\N	chad.turner@gmail.com
2288	\N	\N	adam.zavala@guichard.fr
4064	\N	\N	tyler.rivera@guajardo-ozuna.com
1294	\N	\N	jens.graham@jones-buckley.com
5008	\N	\N	virginia.caetani@sosa.biz
3604	\N	\N	martino.wagner@laposte.net
3263	\N	\N	martin.meyer@davis.co.uk
5631	\N	\N	marguerite.walls@martinez.fr
2851	\N	\N	peter.vogt@yahoo.com
3714	\N	\N	nicholas.christian@hotmail.de
1664	\N	\N	susi.steinberg@preiss.com
5027	\N	\N	tammy.ramazzotti@gmail.com
3070	\N	\N	abdul.thomas@vasari.com
4248	\N	\N	justin.luxardo@googlemail.com
2034	\N	\N	antonio.gibson@faust.net
4085	\N	\N	jeremy.gomez@oconnor.org
3569	\N	\N	raymond.solorzano@gmail.com
3889	\N	\N	flora.harris@hotmail.com.au
3136	\N	\N	cheryl.boyd@segni.it
2103	\N	\N	rhys.leiva@gmx.de
2329	\N	\N	mariano.prieto@vodafone.it
3325	\N	\N	laurie.fibonacci@gmail.com
3131	\N	\N	david.rudolph@nelson.com
4995	\N	\N	bryan.ross@yahoo.com
3631	\N	\N	ubaldo.brown@philippe.com
5373	\N	\N	clelia.faulkner@hotmail.com
3126	\N	\N	sara.erickson@yahoo.de
2194	\N	\N	rupert.valle@filogamo.it
2906	\N	\N	puccio.kitzmann@yahoo.com
2611	\N	\N	thomas.hutchinson@gmx.de
2374	\N	\N	abelardo.castro@gmail.com
3254	\N	\N	greco.walker@yahoo.com
3571	\N	\N	miranda.lacombe@longoria-vanegas.net
2812	\N	\N	diana.schuchhardt@libero.it
3961	\N	\N	stacey.knox@corporacin.com
3872	\N	\N	glen.faivre@yahoo.com
4736	\N	\N	andrew.torres@ruiz-torres.org
5119	\N	\N	denny.fritz@despacho.biz
5725	\N	\N	martyn.caldera@hotmail.co.uk
4037	\N	\N	abigail.foster@taylor.net
2109	\N	\N	anthony.hauffer@tlustek.org
3283	\N	\N	roger.gerlach@may-mitchell.co.uk
6181	\N	\N	christopher.poirier@hotmail.com
3251	\N	\N	branka.traore@jacobi.com
3443	\N	\N	briana.etienne@bishop-coates.com
2988	\N	\N	brandon.olson@prince-moreno.net
1673	\N	\N	celia.ungaretti@fox.com
2085	\N	\N	barbara.guibert@casares-sanches.com
1672	\N	\N	daniela.bell@vollbrecht.org
4426	\N	\N	phyllis.gurule@rodriguez-pham.com
3211	\N	\N	alejandra.joseph@escalante-abrego.biz
3190	\N	\N	giulio.bohlander@dbmail.com
2081	\N	\N	amber.weller@toso.eu
3185	\N	\N	mary.etzold@conrad-harrison.com
5044	\N	\N	amy.georges@raedel.de
1883	\N	\N	jennifer.giraud@yahoo.com
2067	\N	\N	rosie.peltier@voila.fr
4604	\N	\N	oreste.ward@proyectos.com
3203	\N	\N	luis.edwards@live.com
5758	\N	\N	fiona.griffiths@curatoli-verdone.it
5755	\N	\N	sally.raya@tarchetti.it
5150	\N	\N	carolyn.charpentier@hotmail.de
4181	\N	\N	nathalie.alvarez@live.com
3006	\N	\N	abril.lowery@novak.net
4865	\N	\N	ottone.sullivan@hussain-kaur.com
2862	\N	\N	esmeralda.sollima@visintini.it
6070	\N	\N	silvia.gierschner@tele2.it
5300	\N	\N	kyle.cunningham@voila.fr
3486	\N	\N	anel.carpentier@klein-joseph.org
5989	\N	\N	sarah.davis@david.com
2849	\N	\N	luke.klein@hotmail.com
1612	\N	\N	gudrun.mueller@dillon-fuller.info
3307	\N	\N	melissa.canali@libero.it
5288	\N	\N	gabrielle.ayala@hotmail.com
6026	\N	\N	laura.buckley@ryan.org
2212	\N	\N	wilfrido.lorch@leclerc.fr
4591	\N	\N	robert.bruder@manzoni.com
2771	\N	\N	phillip.soliz@outlook.com
5682	\N	\N	alex.smith@fournier.fr
5368	\N	\N	jessica.martinez@salieri.com
3706	\N	\N	kelly.carter@hotmail.com.au
4034	\N	\N	ahmad.sosa@gmail.com
3209	\N	\N	toralf.iglesias@borrego.com
2384	\N	\N	irene.anichini@yahoo.com
3074	\N	\N	alicia.cainero@yahoo.com
2031	\N	\N	tracey.laboy@bell.biz
5873	\N	\N	donald.reynaud@green.edu.au
5501	\N	\N	venancio.stadelmann@gmx.de
3489	\N	\N	seth.olivier@yahoo.com
4210	\N	\N	dennis.boaga@gmx.de
6151	\N	\N	pedro.wilson@outlook.com
6047	\N	\N	roland.weihmann@gmail.com
5445	\N	\N	hector.morrison@web.de
5493	\N	\N	evangelos.peters@sanchez.net
6036	\N	\N	gerardo.hamilton@libero.it
2368	\N	\N	meta.cuzzocrea@howard-jensen.org
1501	\N	\N	alma.raymond@tin.it
4351	\N	\N	kathleen.solimena@wallace.biz
3096	\N	\N	zacharie.cordier@gmail.com
6162	\N	\N	riza.techer@yahoo.com
1433	\N	\N	enrique.guillen@hotmail.co.uk
2720	\N	\N	tristan.weeks@pena.com
5251	\N	\N	natalie.lerma@boucher.com
1797	\N	\N	rodney.hamon@hotmail.com
1656	\N	\N	adalberto.lombardo@sfr.fr
1346	\N	\N	florencia.querini@gmail.com
2989	\N	\N	liam.rolland@yahoo.fr
5629	\N	\N	ian.kelly@reeves.com.au
3456	\N	\N	mehdi.todd@web.de
3229	\N	\N	rembrandt.liguori@davis.org
2277	\N	\N	irmi.schweitzer@ozuna.com
1276	\N	\N	gioffre.stein@hotmail.com.au
3694	\N	\N	frida.villarreal@hotmail.de
2260	\N	\N	steffen.mangold@paul.net
5374	\N	\N	elias.marin@herve.net
4420	\N	\N	roman.gonzalez@anderson.net
3849	\N	\N	reina.middleton@hotmail.com
1638	\N	\N	sandro.moran@hotmail.de
5230	\N	\N	gebhard.thanel@gmail.com
1763	\N	\N	antonino.bolander@gmail.com
4323	\N	\N	karl.trevisani@anguissola.it
5256	\N	\N	silvester.brookes@franco.org
4836	\N	\N	octavio.pratt@web.de
5981	\N	\N	rebecca.greer@hotmail.com
1463	\N	\N	pierina.gaggini@free.fr
4577	\N	\N	robin.schleich@rogers-barrera.biz
4951	\N	\N	sergio.abbott@moore.net.au
3567	\N	\N	gilberto.evans@salcedo-archuleta.net
5475	\N	\N	james.elliott@gmail.com
2114	\N	\N	timoteo.bolnbach@laboratorios.com
5216	\N	\N	tonino.stanley@hotmail.com
1665	\N	\N	margaretha.murialdo@meunier.com
6051	\N	\N	bianca.drubin@libero.it
3983	\N	\N	kaylee.hoffmann@poulain.com
2966	\N	\N	teresa.vecellio@yahoo.com
4478	\N	\N	emine.tacchini@dbmail.com
4238	\N	\N	dawn.cortez@gmail.com
4404	\N	\N	emily.cundari@clark.com.au
5666	\N	\N	eleanor.hall@hotmail.com
3691	\N	\N	monique.delgadillo@hotmail.co.uk
2703	\N	\N	arnaude.warner@gmail.com
4253	\N	\N	jason.howell@gmx.de
5652	\N	\N	nicole.mccullough@hall.com
3279	\N	\N	rosmarie.esquibel@bouygtel.fr
3233	\N	\N	leonor.ferreira@gmail.com
3017	\N	\N	brett.jones@alice.it
3482	\N	\N	nino.bien@gmail.com
2166	\N	\N	jemma.tate@hotmail.de
4146	\N	\N	denis.rogers@poste.it
2651	\N	\N	vanesa.khan@voila.fr
1409	\N	\N	victoria.ojeda@doehn.com
3717	\N	\N	eugenio.martin@yahoo.de
3963	\N	\N	nancy.hayes@hotmail.com
2152	\N	\N	lara.jacob@buckley.org
2974	\N	\N	gino.hernandez@covarrubias.com
1268	\N	\N	vicente.tijerina@montanariello.com
1822	\N	\N	michele.brambilla@yahoo.com
5066	\N	\N	dana.ritacca@gmail.com
5075	\N	\N	mitchell.bachmann@suarez-cruz.com
3855	\N	\N	vincenza.key@adams.com
5923	\N	\N	salvador.gaillard@yahoo.de
1867	\N	\N	diane.rogner@kelly.co.uk
4376	\N	\N	josette.laine@saracino-parisi.net
2785	\N	\N	courtney.fiebig@doerschner.com
5884	\N	\N	hugues.oliver@stiffel.com
2441	\N	\N	espartaco.willis@hotmail.com
1243	\N	\N	flavia.yoder@hotmail.de
3411	\N	\N	casey.flores@baggio.org
2467	\N	\N	calogero.cross@mercantini.it
1850	\N	\N	charles.begum@laboratorios.info
2604	\N	\N	adina.pollard@outlook.com
1693	\N	\N	natasha.lara@outlook.com
2969	\N	\N	benita.pottier@sfr.fr
1544	\N	\N	elizabeth.valdivia@gmail.com
4149	\N	\N	mattia.huet@aol.de
3463	\N	\N	geza.howard@voila.fr
2939	\N	\N	lauren.guillaume@sorgatz.org
2202	\N	\N	joanna.baxter@bruce-wright.com
1728	\N	\N	tracy.metz@bryant.info
5362	\N	\N	birgit.pena@armellini.it
4840	\N	\N	elvira.papafava@ifrance.com
2955	\N	\N	ernest.delorme@dowerg.de
5354	\N	\N	christy.grossi@alarcon-tafoya.com
3847	\N	\N	hermelinda.olmos@portillo.com
3025	\N	\N	herbert.fraser@holloway.org.au
1615	\N	\N	giancarlo.heydrich@hotmail.com
5154	\N	\N	constance.maldonado@spiess.net
5005	\N	\N	giampiero.carlier@hotmail.com
1349	\N	\N	carlo.jacquot@hotmail.com
3670	\N	\N	gabriel.robles@yahoo.com
2912	\N	\N	gerd.gunpf@gmail.com
4336	\N	\N	ashley.hellwig@libero.it
5576	\N	\N	patrick.rosas@yahoo.com
2736	\N	\N	lilla.leonard@jungfer.com
3321	\N	\N	tony.nicolas@morrocco-seddio.net
3353	\N	\N	allegra.benedetti@miller.com
2336	\N	\N	camille.tafuri@aol.de
4369	\N	\N	juan.wheeler@gilmore.net
4464	\N	\N	leopoldo.johnson@hotmail.com.au
5626	\N	\N	dietmar.grenier@tele2.it
1669	\N	\N	leonid.scholl@collin.com
5544	\N	\N	olivie.contarini@marshall-wright.biz
6078	\N	\N	jeffery.lacroix@medina.org
2580	\N	\N	edeltraud.chavez@hotmail.com.au
3592	\N	\N	mesut.morvan@gmail.com
4914	\N	\N	gregory.jackson@ortiz.com
3848	\N	\N	nicola.rossi@berry.org
2619	\N	\N	eddie.collazo@gmail.com
4605	\N	\N	philippe.gardner@howells-jones.net
6147	\N	\N	roy.fox@tejeda.com
1383	\N	\N	heiderose.garcia@noos.fr
1757	\N	\N	claudine.rowley@industrias.com
4390	\N	\N	astrid.roht@fastwebnet.it
4165	\N	\N	auguste.burnett@yahoo.fr
4529	\N	\N	pellegrino.allen@gmail.com
6084	\N	\N	angela.bowers@laboratorios.com
2916	\N	\N	michael.descamps@gmail.com
2005	\N	\N	heidelore.kennedy@guinizzelli.org
2261	\N	\N	lucrezia.koch@petit.com
5342	\N	\N	ivan.accardo@web.de
4087	\N	\N	karen.avogadro@yahoo.com
2761	\N	\N	laetitia.gallet@aubry.org
2908	\N	\N	amico.gosselin@shaw.info
2155	\N	\N	ilaria.bowen@hotmail.it
5642	\N	\N	marlen.coardi@colletti.eu
6217	\N	\N	rafael.alexander@jenkins.com
4222	\N	\N	herma.gabbana@hotmail.com
4798	\N	\N	zachary.vespucci@industrias.com
5660	\N	\N	marisol.richard@gmail.com
5000	\N	\N	joseph.glover@laposte.net
2809	\N	\N	lauretta.neal@hotmail.de
3349	\N	\N	simone.sauvage@yahoo.com
3647	\N	\N	ramona.brooks@kensy.de
5745	\N	\N	gioele.schwital@moody.com
2583	\N	\N	elena.jimenez@yahoo.com.au
5441	\N	\N	pam.vargas@guillot.net
2090	\N	\N	alison.morales@lewis.com
3386	\N	\N	marc.aumann@holland.com
1816	\N	\N	carla.butler@yahoo.com
4718	\N	\N	dionigi.bruce@industrias.com
1677	\N	\N	frank.henry@yahoo.com
4218	\N	\N	brent.pons@proyectos.net
4548	\N	\N	patricia.liebelt@baca.org
1431	\N	\N	micheletto.sykes@thompson-thompson.com
2830	\N	\N	rose.blanc@grupo.com
4400	\N	\N	vincent.singh@gmail.com
5773	\N	\N	jamie.peacock@interiano-nordio.com
4161	\N	\N	giorgia.dijoux@paul.com
2062	\N	\N	serena.piacentini@yahoo.de
3458	\N	\N	dimitri.posada@gmail.com
3174	\N	\N	alexa.barillaro@ramos.net
5565	\N	\N	megan.kuhl@despacho.com
1906	\N	\N	kaitlyn.farinelli@outlook.com
5479	\N	\N	jonathan.castellitto@libero.it
4320	\N	\N	lisa.terragni@proyectos.com
4213	\N	\N	olivier.petrucelli@letta-raurica.eu
3373	\N	\N	jos.trobbiani@samson.com
4184	\N	\N	mirjam.dawson@yahoo.com
5472	\N	\N	javier.tessier@mclaughlin.biz
5559	\N	\N	mirjana.collins@hotmail.com
5419	\N	\N	vanessa.tschentscher@mitchell.com
4171	\N	\N	antonina.cobb@gibson.org
1302	\N	\N	bernard.durand@royer.com
3520	\N	\N	corey.greggio@johnson.org.au
6010	\N	\N	rodolfo.couturier@tim.it
4617	\N	\N	pierre.cardenas@luzi-bonomo.eu
1417	\N	\N	romeo.surian@batista.com
4770	\N	\N	ivo.moreno@hotmail.com
4328	\N	\N	federico.marie@jourdan.fr
5171	\N	\N	maggie.boito@yahoo.com
4394	\N	\N	brianna.hanson@stanley.com
1794	\N	\N	heiko.bourgeois@togliatti.com
3510	\N	\N	benito.gritti@gmail.com
2487	\N	\N	mitzy.junk@zaragoza.com
2215	\N	\N	samantha.lowe@praga.it
4136	\N	\N	ernesto.nerger@middleton.co.uk
3723	\N	\N	melinda.canova@orange.fr
5842	\N	\N	mohammad.hartung@hotmail.com
3289	\N	\N	ben.maillot@ramos.net
1249	\N	\N	isabel.pruschke@gmail.com
5409	\N	\N	linda.franceschi@richards.net
2951	\N	\N	olivia.striebitz@gmail.com
3432	\N	\N	penny.watson@matthews.net
2297	\N	\N	manfred.james@davies.org
6161	\N	\N	hazel.pierce@outlook.com
4603	\N	\N	alf.bates@dunn.com
5818	\N	\N	scott.gough@industrias.com
4270	\N	\N	konrad.briones@fierro.com
6007	\N	\N	mathilde.kruschwitz@yahoo.com
4084	\N	\N	irma.gemito@googlemail.com
1340	\N	\N	antoine.guyon@yahoo.com
5675	\N	\N	william.gibilisco@gaillard.com
2010	\N	\N	judith.butte@fischer-vaughn.info
6201	\N	\N	joanne.henderson@gmail.com
1791	\N	\N	ludovica.arellano@morandi-argento.com
3314	\N	\N	catherine.gray@hotmail.com
5852	\N	\N	franco.fioravanti@barry-gill.com.au
4618	\N	\N	heather.zimmer@bluemel.de
2618	\N	\N	hortense.taylor@chambers.biz
4967	\N	\N	livia.ernst@colas.fr
4594	\N	\N	toby.etzler@industrias.com
2080	\N	\N	ennio.leoncavallo@sanchez.org
2793	\N	\N	philippine.vaca@hotmail.com
4890	\N	\N	rhonda.phillips@yahoo.com
3528	\N	\N	alphonse.nitto@voila.fr
5810	\N	\N	karina.arreola@yahoo.com.au
5720	\N	\N	denise.wood@mantegna.com
4593	\N	\N	burghard.rosenow@hotmail.com
3186	\N	\N	friedl.powell@laposte.net
5136	\N	\N	benjamin.schultz@rivero-davila.com
2646	\N	\N	rachel.ulibarri@schueler.com
3460	\N	\N	silvano.blanchet@yahoo.com
4345	\N	\N	kurt.sauer@almanza.biz
2690	\N	\N	nayeli.gehringer@hotmail.com
4025	\N	\N	imelda.guerin@stumpf.net
4524	\N	\N	zbigniew.holmes@stiffel.net
3978	\N	\N	adela.alfonsi@despacho.com
3910	\N	\N	hilary.clark@libero.it
5825	\N	\N	kornelius.molina@heuser.com
3564	\N	\N	christian.anderson@tim.it
2396	\N	\N	francisco.dorsey@tiscali.fr
2140	\N	\N	walli.albert@dussen.com
3079	\N	\N	siegrun.mota@matthews-montoya.org.au
2017	\N	\N	alberico.herve@beer.net
5444	\N	\N	serafina.bonnin@mendes.com
2216	\N	\N	marcelle.bender@edwards-robinson.info
1241	\N	\N	hartmuth.robertson@thomas.edu.au
1484	\N	\N	herlinde.george@free.fr
3475	\N	\N	pamela.payne@yahoo.com
4333	\N	\N	gastone.beyer@stewart-sanchez.edu
5657	\N	\N	lydia.berengario@aol.de
2527	\N	\N	lucy.davidson@tele2.it
5967	\N	\N	franck.wade@gute.org
5698	\N	\N	heidi.barker@gmail.com
3331	\N	\N	arnaldo.ocasio@hotmail.com
3841	\N	\N	francis.bernier@rodriguez.com
6105	\N	\N	johanne.strong@yahoo.de
3895	\N	\N	debra.langlois@schmiedecke.com
1891	\N	\N	reingard.kambs@sagese.eu
1281	\N	\N	mauro.ortiz@oquendo.net
4186	\N	\N	griselda.carranza@krause.de
2511	\N	\N	janet.madrigal@gmail.com
4272	\N	\N	jenna.day@reed.com
3533	\N	\N	modesto.wright@pareto.com
3618	\N	\N	alice.wall@zaccardo.it
2177	\N	\N	brenda.sontag@solari.com
4102	\N	\N	sergius.mace@palazzo.com
6089	\N	\N	antonia.kline@gmail.com
4701	\N	\N	maurice.gumprich@griffin.net.au
5645	\N	\N	daniel.anders@yahoo.com
4499	\N	\N	zaira.cattaneo@yahoo.com
3365	\N	\N	alessio.bruneau@hotmail.co.uk
2290	\N	\N	gerdi.guerrero@tele2.fr
1890	\N	\N	brigitte.stiebitz@gmail.com
1304	\N	\N	june.sinisi@manzoni-giannini.it
3799	\N	\N	carl.macias@yahoo.com
2749	\N	\N	veronica.trapp@tiscali.it
2028	\N	\N	frances.garnier@aporti-guidotti.org
2383	\N	\N	terri.iannelli@hotmail.com
5721	\N	\N	odette.moore@hall.edu
1394	\N	\N	mercedes.trujillo@aol.de
3451	\N	\N	babette.dumas@brady.net
5512	\N	\N	jerry.santiago@soprano-ferragni.it
2453	\N	\N	ronald.simpson@ovadia.net
6055	\N	\N	emmanuel.dominguez@gmail.com
5704	\N	\N	christiane.ricciardi@zavala.com
3707	\N	\N	ingolf.zamora@yahoo.com.au
2205	\N	\N	rita.sharp@beard-scott.edu.au
5976	\N	\N	geraldine.cabrera@green-smith.info
3290	\N	\N	chantal.armas@jenkins.net
4257	\N	\N	louis.gilbert@gmail.com
4588	\N	\N	michelle.collier@peruzzi.it
4785	\N	\N	guillermina.nicholson@grondin.fr
3033	\N	\N	bertrand.hopkins@gmail.com
2779	\N	\N	alonso.palomo@gehringer.de
2131	\N	\N	tina.rodriguez@web.de
6229	\N	\N	eva.francis@parker.org
3429	\N	\N	ottavio.rust@crespi.com
1613	\N	\N	amelia.olvera@hotmail.com
4734	\N	\N	paul.palladio@mclaughlin.net.au
4439	\N	\N	bernardo.wieloch@budig.com
1441	\N	\N	umberto.hicks@hill.com
5799	\N	\N	janko.bishop@tim.it
1419	\N	\N	jessika.meunier@gmx.de
3059	\N	\N	isaac.benard@googlemail.com
3224	\N	\N	alexandrie.lambert@yahoo.com
3181	\N	\N	roberto.guyot@bennett.com
6061	\N	\N	giulietta.lucas@club.com
4466	\N	\N	damaris.pininfarina@gmail.com
6081	\N	\N	fabrizia.renard@higgins-marks.com
2159	\N	\N	camillo.dehmel@brown-campbell.com
3324	\N	\N	ruggero.parpinel@gmail.com
3176	\N	\N	stephen.pratesi@hotmail.com
5874	\N	\N	ludger.naccari@ingram.biz
5110	\N	\N	meryem.tapia@yahoo.com
5490	\N	\N	jasmine.juvara@yahoo.com.au
1922	\N	\N	victoire.travaglia@zacchia.com
4398	\N	\N	adrian.noel@perrin.com
4754	\N	\N	marvin.howe@gmail.com
3309	\N	\N	hanne.kidd@yahoo.com
1244	\N	\N	donatello.millet@fritsch.net
2892	\N	\N	eloisa.pascarella@gmail.com
2777	\N	\N	erica.zambrano@gmail.com
4952	\N	\N	paula.canales@gilmore-guerrero.com
5144	\N	\N	claudia.bernard@mazzanti.it
5487	\N	\N	paulina.miller@lewis-barker.com
1932	\N	\N	kathrin.godfrey@tele2.fr
3364	\N	\N	pina.passalacqua@yahoo.co.uk
5165	\N	\N	julien.miles@stevens-rose.com
3858	\N	\N	suzanne.benigni@mennea-morlacchi.com
4666	\N	\N	annalisa.pugh@hotmail.fr
2896	\N	\N	mathew.maestas@casas-garrido.com
4520	\N	\N	laszlo.vallee@verdier.com
5726	\N	\N	helen.polanco@hotmail.com
5661	\N	\N	mateo.sorrentino@calderon.com
4765	\N	\N	eric.barnes@barrett-winter.com
3710	\N	\N	dragica.west@yahoo.com.au
4925	\N	\N	antje.voisin@gmail.com
1533	\N	\N	stanley.mills@parker-lee.biz
5264	\N	\N	brandy.meraz@yahoo.com
4606	\N	\N	conor.reinhardt@yahoo.com.au
2043	\N	\N	gabino.blot@lewis-russell.org
3871	\N	\N	alvaro.lemus@yahoo.com
6205	\N	\N	patrizia.wilms@dbmail.com
3193	\N	\N	metin.coulon@ashley.com
1810	\N	\N	reece.valencia@laboy-palomo.com
4797	\N	\N	troy.schmiedecke@picard.com
1487	\N	\N	wendy.bustos@libero.it
3474	\N	\N	guglielmo.caldwell@loeffler.com
5771	\N	\N	travis.cowan@turner.info
6074	\N	\N	brandi.abbagnale@tele2.fr
1568	\N	\N	hanno.gollum@smith.com
4263	\N	\N	jutta.burke@elliott.com
5850	\N	\N	dorothe.paz@fiebig.de
5619	\N	\N	desiree.huerta@morris.com
1904	\N	\N	ilse.bray@venturi.it
5388	\N	\N	pierpaolo.scaduto@sanders-gibson.com.au
2150	\N	\N	amedeo.bradford@yahoo.com
2653	\N	\N	julia.ali@yahoo.com
2687	\N	\N	catalina.pizzetti@tim.it
3779	\N	\N	dylan.porzio@yahoo.de
1494	\N	\N	iris.trincavelli@tiscali.fr
4129	\N	\N	johnathan.guidotti@cox-sanchez.net
3035	\N	\N	walburga.vollbrecht@aol.de
2069	\N	\N	kendra.david@allan-morton.com
5469	\N	\N	aleksandr.weiss@blanc.org
3903	\N	\N	cornelio.guardado@gmail.com
4083	\N	\N	ferdi.blackburn@christensen.net
4003	\N	\N	bill.gallagher@green.com
3565	\N	\N	leonard.harvey@hotmail.com
1640	\N	\N	milan.montenegro@langern.com
4769	\N	\N	philip.perez@hotmail.co.uk
3398	\N	\N	kathryn.hentschel@shaw.com
1865	\N	\N	xavier.samson@baggio.it
5690	\N	\N	hartwig.roberts@saraceno.net
3814	\N	\N	kimberly.chan@gmail.com
2942	\N	\N	lorraine.crawford@gmail.com
5095	\N	\N	maximiliano.knowles@gmail.com
2878	\N	\N	gabriella.avila@gmail.com
3697	\N	\N	rico.mortati@faivre.fr
4744	\N	\N	gail.petrocelli@yahoo.com
2104	\N	\N	liberto.niemeier@germano-dibiasi.it
4883	\N	\N	luciana.petitjean@patterson-cole.biz
4807	\N	\N	ron.cavazos@yahoo.com
1372	\N	\N	aldo.cibin@gmx.de
3666	\N	\N	alexandre.serrano@yahoo.co.uk
2066	\N	\N	lori.fagotto@hill-anderson.com
1834	\N	\N	perla.figueroa@live.com
5853	\N	\N	reginald.hughes@gmail.com
2219	\N	\N	uriel.holt@gmail.com
4148	\N	\N	stefano.lemonnier@binner.com
4477	\N	\N	madeleine.cooper@poste.it
1786	\N	\N	alban.barbier@ortiz.org
3455	\N	\N	alfonso.finetti@quiroz.com
5707	\N	\N	ryan.kim@noos.fr
5470	\N	\N	augustin.wohlgemut@watson.info
3274	\N	\N	rolando.bibi@tin.it
4613	\N	\N	berthold.randall@mcdonald.com
4465	\N	\N	genaro.briand@sfr.fr
1652	\N	\N	rudolf.jenkins@hotmail.com
2100	\N	\N	pauline.ackermann@arredondo-roque.com
4321	\N	\N	folker.swanson@rodrigues.fr
4168	\N	\N	ashleigh.montez@perry-schneider.com
3733	\N	\N	liliana.barber@libero.it
2594	\N	\N	caridad.carr@huhn.com
3909	\N	\N	lolita.borrego@gmail.com
5179	\N	\N	gunar.patrick@leroy.com
2228	\N	\N	leokadia.verdier@hotmail.com.au
6222	\N	\N	hanna.reid@salas.org
2354	\N	\N	edelgard.kreusel@hotmail.com
1725	\N	\N	svenja.perrin@berger.com
2960	\N	\N	pierluigi.taccola@gmx.de
2077	\N	\N	cilli.watts@yahoo.com
5662	\N	\N	emiliano.wells@gmx.de
3481	\N	\N	april.davids@fisher.info
2565	\N	\N	dolores.didier@yahoo.com.au
4436	\N	\N	sylvia.bonomo@poulain.com
5072	\N	\N	nelly.marsh@hotmail.it
5200	\N	\N	beth.miniati@hudson.net
4502	\N	\N	renee.merino@gmail.com
4945	\N	\N	hailey.russell@jourdan.org
3012	\N	\N	raphaela.gotthard@outlook.com
6094	\N	\N	pomponio.comencini@hotmail.co.uk
3815	\N	\N	leone.richardson@yahoo.com
4838	\N	\N	valentine.acosta@peters.net
3469	\N	\N	ricciotti.laureano@parsons.com
4874	\N	\N	jacques.heidrich@zamudio-chapa.com
1792	\N	\N	anne.snow@gmail.com
4356	\N	\N	sonia.volta@gmx.de
6196	\N	\N	dale.leblanc@stewart.com
3578	\N	\N	alejandro.cruz@hotmail.com
4491	\N	\N	elsa.cugia@yahoo.com
3054	\N	\N	geronimo.pechel@hotmail.com
1968	\N	\N	melania.klemm@seidel.com
5869	\N	\N	katherine.cooley@yahoo.com
5858	\N	\N	guillermo.larsen@yahoo.com
5203	\N	\N	jill.barrios@gmail.com
2577	\N	\N	austin.musatti@tin.it
3216	\N	\N	jacinto.rose@yahoo.com
2037	\N	\N	lucie.redi@googlemail.com
3867	\N	\N	tania.chapman@remy.com
5109	\N	\N	alexandria.best@yahoo.co.uk
1376	\N	\N	edward.scott@yahoo.com
5260	\N	\N	jake.wiley@outlook.com
2350	\N	\N	claudio.reuter@morgan-collins.org.au
2269	\N	\N	laure.traetta@kay-perkins.co.uk
3650	\N	\N	magarete.valentin@yahoo.com
3934	\N	\N	paige.hill@jones.org.au
4048	\N	\N	fulvio.curiel@reynolds.com
4266	\N	\N	thibaut.camarillo@hotmail.com
3863	\N	\N	romana.blanchard@googlemail.com
4922	\N	\N	thibault.savorgnan@butler.biz
4517	\N	\N	alexander.pausini@gonzalez.info
3259	\N	\N	pierangelo.scholtz@lefevre.com
3123	\N	\N	emmanuelle.keller@morton-clarke.com
3870	\N	\N	isabella.deleon@web.de
2996	\N	\N	timothy.weitzel@gmail.com
2993	\N	\N	alfredo.ingram@hotmail.com
4556	\N	\N	francesca.kade@luna-rael.org
2326	\N	\N	tonia.coleman@hotmail.com
4109	\N	\N	gottfried.barbe@hotmail.com
5739	\N	\N	jeffrey.trommler@yahoo.com
5887	\N	\N	giacobbe.owens@huet.fr
1651	\N	\N	conchita.pagliaro@googlemail.com
1628	\N	\N	kevin.delahaye@ellis-wilson.com
2642	\N	\N	rouven.ovadia@gmail.com
6020	\N	\N	piermaria.laporte@wesack.com
4747	\N	\N	karolin.johann@hotmail.com
5534	\N	\N	steven.folliero@noos.fr
4790	\N	\N	livio.rosselli@green.co.uk
4632	\N	\N	gaetano.leonardi@despacho.com
1952	\N	\N	cynthia.robinson@gilles.net
4388	\N	\N	eleni.aponte@club-internet.fr
5529	\N	\N	noelia.romo@yahoo.com
1316	\N	\N	evelyn.haynes@clark.info
1670	\N	\N	katharine.zaccagnini@hotmail.com
4909	\N	\N	lea.merle@stey.de
3401	\N	\N	marta.huynh@hernandez.info
4619	\N	\N	amador.riley@hotmail.com
4722	\N	\N	julie.coles@hotmail.fr
2188	\N	\N	beverley.telesio@regnier.fr
5497	\N	\N	corinne.mitschke@hauffer.net
5711	\N	\N	valerie.ortega@tele2.it
4076	\N	\N	carlos.delle@hicks.com
1847	\N	\N	christina.besnard@delorme.com
2816	\N	\N	rosario.jacques@yahoo.com
5019	\N	\N	celal.fischer@aol.de
4869	\N	\N	leonardo.guzman@andreozzi-abba.com
3613	\N	\N	clinton.mason@yahoo.com
3069	\N	\N	loretta.mallet@sansoni-toscani.it
2601	\N	\N	lorenzo.roero@hotmail.co.uk
2133	\N	\N	lando.gutierrez@heser.com
3164	\N	\N	elaine.patterson@rose-morris.org
3897	\N	\N	marcella.govoni@barkholz.net
5663	\N	\N	ettore.amaldi@germain.com
3879	\N	\N	rufino.gallegos@webster-newton.co.uk
5900	\N	\N	georges.richards@macdonald.com
2272	\N	\N	janice.infantino@hotmail.com
5436	\N	\N	svetlana.montanariello@putz.de
3676	\N	\N	agnolo.cedillo@laboratorios.biz
4676	\N	\N	hannah.jockel@ceravolo-tonisto.eu
1563	\N	\N	yvonne.stout@sims.edu
4349	\N	\N	anouk.pace@gmail.com
1658	\N	\N	esteban.valdez@hotmail.com
2552	\N	\N	angelina.davies@hotmail.com
4847	\N	\N	anastasie.cadena@live.com
1553	\N	\N	hansjoachim.lettiere@hall-mcdaniel.net
2632	\N	\N	yeni.tejada@olson.edu.au
1908	\N	\N	dulce.adinolfi@hotmail.com
5801	\N	\N	sean.mielcarek@gmail.com
1935	\N	\N	omar.fonseca@grupo.org
2609	\N	\N	henry.gucci@leleu.fr
2740	\N	\N	samira.bottaro@vasseur.fr
1907	\N	\N	korinna.arnold@zapata-saenz.biz
1831	\N	\N	marcela.ferrante@gmx.de
5177	\N	\N	douglas.amaya@favata-brenna.net
6179	\N	\N	katherina.barrientos@trobbiani.eu
2917	\N	\N	brittany.tran@tele2.it
1486	\N	\N	caroline.reeves@yahoo.com
3735	\N	\N	joe.michaud@yahoo.fr
3838	\N	\N	marco.vittadello@gmail.com
2430	\N	\N	kim.webb@yahoo.com.au
2480	\N	\N	eugenia.zichichi@yahoo.com
3431	\N	\N	aurore.rosemann@leoncavallo-rusticucci.com
1742	\N	\N	giustino.luzi@rolland.fr
4628	\N	\N	anita.galindo@gmail.com
2385	\N	\N	gunhild.carrillo@elliott-gilbert.org
2213	\N	\N	rosa.paul@bien.com
5188	\N	\N	marliese.oneal@gmail.com
3418	\N	\N	bethany.hartmann@yahoo.com
5637	\N	\N	irina.martineau@gmail.com
3530	\N	\N	beatriz.moulin@pinto.com
3731	\N	\N	lucas.austin@gmail.com
3219	\N	\N	carole.nohlmans@yahoo.com
2392	\N	\N	bozena.schmitt@vallet.com
5103	\N	\N	aimee.foconi@outlook.com
3992	\N	\N	marzena.carrero@roskoth.de
2442	\N	\N	raisa.poulain@fastwebnet.it
2913	\N	\N	marcantonio.bennett@hopkins.com.au
1631	\N	\N	kenneth.hurst@meunier.net
4073	\N	\N	marisela.mende@godoy-enriquez.com
4568	\N	\N	blanka.villareal@monduzzi.net
1830	\N	\N	tomislav.stoppani@corporacin.org
2623	\N	\N	krystal.ammaniti@barbier.fr
4327	\N	\N	deanna.aporti@bouygtel.fr
3713	\N	\N	donatella.burns@yahoo.de
2389	\N	\N	margrit.hooper@douglas.com
5141	\N	\N	baccio.marcacci@laposte.net
3522	\N	\N	alfio.roman@hotmail.co.uk
1334	\N	\N	soledad.soto@hotmail.de
4721	\N	\N	josh.cimarosa@hotmail.com
3768	\N	\N	nath.rico@yahoo.com
1639	\N	\N	gary.armani@web.de
5149	\N	\N	miriam.oquendo@smith-watson.biz
2153	\N	\N	monica.mohaupt@live.com
2767	\N	\N	alec.ho@parra-esparza.com
5124	\N	\N	harry.fouquet@ibarra-cooper.com
2097	\N	\N	arcelia.babati@orange.fr
4796	\N	\N	trinidad.vespa@gmail.com
5849	\N	\N	colette.ryan@hotmail.com
1495	\N	\N	richard.andre@porras.org
2462	\N	\N	ellinor.leclercq@gmail.com
2280	\N	\N	patricio.guillon@web.de
1877	\N	\N	kirsten.chindamo@carrillo-wall.com
6108	\N	\N	leo.petruzzi@yahoo.com
4427	\N	\N	margot.tomaselli@junck.org
2881	\N	\N	ansaldo.marks@patel-odonnell.com
2339	\N	\N	regina.morin@barcaccia.net
5156	\N	\N	karla.medici@yahoo.com
4750	\N	\N	morgan.irizarry@williams-harris.biz
4852	\N	\N	natividad.wong@hoevel.com
5734	\N	\N	anna.freeman@snyder.net
3801	\N	\N	emilia.vivaldi@garnier.fr
4474	\N	\N	gerda.cook@tin.it
1992	\N	\N	andrey.faure@frederick-mitchell.info
5796	\N	\N	charlotte.duke@ochoa.org
1373	\N	\N	cindy.castillo@virgilio.it
1879	\N	\N	hiltrud.thibault@barbe.com
3072	\N	\N	kasimir.jaime@gmail.com
4561	\N	\N	sabine.lachmann@phillips.org
5201	\N	\N	andrea.arroyo@yahoo.com.au
5871	\N	\N	matthew.velasquez@gmail.com
3041	\N	\N	severino.linares@angeli.com
5864	\N	\N	swantje.lomeli@gmx.de
3999	\N	\N	marcus.espino@comolli.eu
4849	\N	\N	allen.gates@gmail.com
5461	\N	\N	mauricio.saunders@hotmail.co.uk
5946	\N	\N	gilbert.cornejo@hotmail.com
4508	\N	\N	letizia.gulotta@howard.biz
5096	\N	\N	etta.gutknecht@leconte.net
5443	\N	\N	shelley.perry@gierschner.de
2165	\N	\N	geoffrey.williams@poste.it
2125	\N	\N	cory.stewart@voila.fr
6141	\N	\N	kristy.bartlett@outlook.com
5245	\N	\N	gianluca.beck@green.biz
2190	\N	\N	guido.krein@gmail.com
2243	\N	\N	leif.monnier@querini.it
3336	\N	\N	jonas.badoer@kennedy.biz
3305	\N	\N	devin.ebert@yahoo.fr
6191	\N	\N	slobodan.camiscione@hotmail.com
1326	\N	\N	volkmar.gauthier@hotmail.com
6159	\N	\N	jordan.rowe@outlook.com
2003	\N	\N	manon.daugherty@segre.com
5881	\N	\N	estela.segovia@vodafone.it
1918	\N	\N	giada.celentano@evans.net
2157	\N	\N	clayton.salcedo@hotmail.co.uk
3149	\N	\N	raven.pinto@hotmail.com
2444	\N	\N	lewis.lewis@pisano.net
6207	\N	\N	rochus.rousseau@nguyen.com
5580	\N	\N	belinda.gamez@leleu.com
5942	\N	\N	angelo.lozano@macias.com
1592	\N	\N	jorge.monti@clement.fr
2344	\N	\N	ricky.harrell@martin.edu
5995	\N	\N	adriano.wulf@schmidtke.net
5022	\N	\N	pompeo.bourdon@gmail.com
5991	\N	\N	kristie.garrett@wernecke.com
4020	\N	\N	lodovico.conley@yahoo.com
6028	\N	\N	jean.berthelot@oscuro.it
2790	\N	\N	tadeusz.medina@jackson-clark.net
4033	\N	\N	ruby.carriera@hotmail.it
1261	\N	\N	theres.antonioni@hotmail.com
1979	\N	\N	gloria.morton@outlook.com
2122	\N	\N	graziano.jensen@gmail.com
4506	\N	\N	gianpaolo.massey@bouvier.com
3016	\N	\N	alain.farmer@hotmail.it
3272	\N	\N	renato.murillo@club.com
1375	\N	\N	edda.ferraris@libero.it
4014	\N	\N	luce.marty@waehner.org
3199	\N	\N	rotraud.mitchell@laboratorios.com
2184	\N	\N	israel.watkins@hotmail.com
2170	\N	\N	nathan.jennings@kim.com
1478	\N	\N	gavin.proietti@gmx.de
6163	\N	\N	emma.rios@yahoo.com.au
1889	\N	\N	todd.douglas@web.de
5912	\N	\N	oscar.holsten@yahoo.com
2537	\N	\N	ann.peron@grupo.biz
2118	\N	\N	senta.grassi@hotmail.com
3234	\N	\N	kata.mena@gmail.com
3842	\N	\N	gianfranco.hethur@stewart-lee.com.au
3032	\N	\N	florentine.saraceno@gmail.com
3238	\N	\N	giuliano.bolzmann@pacillo.it
2059	\N	\N	alwine.kostolzin@holloway.com
5238	\N	\N	giacinto.briggs@yahoo.co.uk
2578	\N	\N	holly.negrete@hotmail.com
4789	\N	\N	mark.trapanese@gmail.com
2357	\N	\N	alyssa.brun@chittolini-spadafora.it
1235	\N	\N	cristina.chevalier@proyectos.com
3558	\N	\N	shannon.lefevre@gmail.com
1707	\N	\N	logan.hornich@tin.it
2842	\N	\N	rosalia.toro@free.fr
5318	\N	\N	reiner.poerio@yahoo.com
1620	\N	\N	valentina.pages@hotmail.de
4998	\N	\N	enrico.fabre@gmail.com
3111	\N	\N	sevim.begue@yahoo.com.au
1424	\N	\N	sonja.patberg@hotmail.com
3244	\N	\N	christine.hiller@yahoo.com
4643	\N	\N	maik.beasley@harper-brooks.biz
6132	\N	\N	elliot.santana@gmx.de
3790	\N	\N	eloy.renzi@gmail.com
1312	\N	\N	wolf.lutz@nichols-jackson.com.au
5686	\N	\N	giuseppe.lee@mahe.org
2111	\N	\N	angelica.cuellar@zaguri-bellucci.net
5685	\N	\N	bekir.normand@yahoo.de
1905	\N	\N	carmine.gonzales@schleich.net
3271	\N	\N	marianne.hubert@hotmail.com
4178	\N	\N	gonzalo.montes@hotmail.com
3275	\N	\N	shelly.guichard@gmail.com
5713	\N	\N	tobias.carbajal@live.com
3339	\N	\N	santiago.berry@aol.de
5585	\N	\N	emilio.davenport@zamora-russo.net
4407	\N	\N	maurizio.gute@knight.info
1941	\N	\N	nadia.travaglio@colletti-broggini.com
4690	\N	\N	elisa.barkholz@sfr.fr
3607	\N	\N	cristal.mazzini@gmail.com
2670	\N	\N	trevor.granados@gmail.com
5261	\N	\N	matthieu.mcdonald@morrison.org
4121	\N	\N	juliette.preston@gmail.com
4620	\N	\N	stanislaw.montalvo@mcpherson-hughes.info
4630	\N	\N	lilia.lollobrigida@le.com
3440	\N	\N	brigitta.shaw@hotmail.co.uk
3572	\N	\N	rebeca.frey@gerard.fr
5306	\N	\N	nicolas.palacios@meraz.com
5122	\N	\N	susanna.bonneau@klingelhoefer.de
1368	\N	\N	romina.valentine@hotmail.com
5370	\N	\N	erika.toussaint@sfr.fr
5636	\N	\N	lothar.laurent@garcia.com.au
6033	\N	\N	chelsea.verdugo@campbell.com
3599	\N	\N	ria.venier@murillo-estevez.com
5566	\N	\N	carly.summers@yahoo.co.uk
1873	\N	\N	pasquale.tomasini@hotmail.co.uk
3904	\N	\N	stefani.ughi@hotmail.it
4453	\N	\N	jose.huang@gmx.de
5481	\N	\N	petros.gaona@googlemail.com
2987	\N	\N	maximilian.siering@gaito-fornaciari.org
2431	\N	\N	ermenegildo.holzapfel@aol.de
4158	\N	\N	damien.leger@dixon.biz
3753	\N	\N	zeferino.barrera@zedillo-velazquez.com
4391	\N	\N	alfred.pohl@fechner.net
2026	\N	\N	marissa.gaito@reed-campbell.edu
4547	\N	\N	ariana.houston@hotmail.it
2798	\N	\N	victor.jacobs@young.com
4732	\N	\N	henriette.lang@mimun.it
5126	\N	\N	wilfriede.baca@caraballo.com
5151	\N	\N	lucia.riviere@samaniego.biz
2134	\N	\N	gordon.vigorelli@solano.com
5786	\N	\N	diethard.salgado@gmail.com
5515	\N	\N	sue.corrales@cardenas-serna.org
4530	\N	\N	arthur.salazar@yahoo.com.au
4088	\N	\N	fortunata.schneider@tiscali.it
3667	\N	\N	gretchen.serna@pichon.org
3286	\N	\N	egon.caron@hotmail.com
4804	\N	\N	roberta.finzi@knight-davies.co.uk
5768	\N	\N	editha.savage@davies.co.uk
6098	\N	\N	allan.emanuelli@fernandes.org
2508	\N	\N	laurence.lucero@martin.org
5779	\N	\N	istvan.draghi@ifrance.com
1717	\N	\N	luigi.bonnet@carriera-federico.it
3368	\N	\N	yuridia.fantozzi@mcdonald.com
4265	\N	\N	eraldo.schmiedt@hotmail.de
4455	\N	\N	antoinette.cox@bustamante.com
2940	\N	\N	cameron.ocampo@hotmail.com.au
6144	\N	\N	lynn.lawson@leclercq.com
3657	\N	\N	natalia.seifert@ifrance.com
1537	\N	\N	nuray.anguillara@yahoo.co.uk
2116	\N	\N	beate.morgan@gmail.com
5102	\N	\N	mario.rees@gmx.de
5815	\N	\N	galasso.junken@yahoo.co.uk
4250	\N	\N	luca.moses@franke.de
4533	\N	\N	aurelio.gertz@hewitt.net
3329	\N	\N	uberto.steele@outlook.com
3606	\N	\N	annie.hunter@allen.co.uk
4749	\N	\N	jo.mccarty@hotmail.com
2222	\N	\N	eitel.lombard@thomas.net
1939	\N	\N	susan.vigliotti@yahoo.co.uk
2456	\N	\N	jacqueline.germano@valette.fr
2794	\N	\N	fidel.ruppert@yahoo.co.uk
2648	\N	\N	margaret.eigenwillig@yahoo.com
2545	\N	\N	yvette.harding@yahoo.co.uk
3273	\N	\N	federigo.karge@bohlander.com
6155	\N	\N	guenther.armenta@free.fr
6064	\N	\N	coriolano.higgins@murphy.org.au
1729	\N	\N	felix.rubio@ebert.de
4969	\N	\N	melanie.leveque@fleury.net
3402	\N	\N	abbie.galeati@ubaldi.it
2810	\N	\N	vittorio.caccioppoli@yahoo.com
2217	\N	\N	biagio.valenzuela@robinson.info
5140	\N	\N	dario.green@live.com
4497	\N	\N	alwina.textor@poste.it
5100	\N	\N	diether.baeza@grupo.biz
3390	\N	\N	sole.trevino@hotmail.com
1926	\N	\N	darren.bernardi@brooks-martin.com
3264	\N	\N	martina.heser@morellato.it
2573	\N	\N	bethan.giacometti@gmail.com
3628	\N	\N	ethan.duhamel@sfr.fr
3826	\N	\N	corrado.warren@hotmail.com.au
5983	\N	\N	damian.pulido@yahoo.de
5678	\N	\N	dino.osborne@despacho.com
2093	\N	\N	nicolaus.bernetti@aol.de
5333	\N	\N	gianna.carroll@perez.com
5139	\N	\N	grit.knight@web.de
3173	\N	\N	erin.weinhold@hotmail.fr
3333	\N	\N	craig.jordan@gmail.com
2262	\N	\N	homero.respighi@gmail.com
1531	\N	\N	fanny.pertile@gmail.com
4881	\N	\N	fridolin.comboni@graf.com
3928	\N	\N	hugh.cantu@libero.it
1803	\N	\N	alphons.simmons@hotmail.com
2321	\N	\N	ludovico.cafarchia@gmail.com
6234	\N	\N	nico.kaiser@almonte.com
1422	\N	\N	kirsty.lamy@alonzi.it
2660	\N	\N	joshua.scheibe@turci.org
5361	\N	\N	carin.pineau@yahoo.com
3420	\N	\N	ellie.galarza@pareto-cattaneo.net
4337	\N	\N	marion.lira@ifrance.com
2338	\N	\N	aurelia.angiolello@lord.com
4140	\N	\N	maura.ravaglioli@yahoo.com
2373	\N	\N	brunhilde.fletcher@schomber.de
1344	\N	\N	ottfried.marques@tyler-watson.info
2141	\N	\N	christelle.blasi@morris-chan.com
3415	\N	\N	augusto.vercelloni@club-internet.fr
5696	\N	\N	michela.pruvost@holt.co.uk
1798	\N	\N	guarino.escalante@hotmail.com
1657	\N	\N	gabriela.padilla@pearson-russell.com
3651	\N	\N	agathe.dias@jackson.com
3574	\N	\N	werner.kallert@gmail.com
6063	\N	\N	lore.delaunay@yahoo.com
2404	\N	\N	enzio.campos@tim.it
2705	\N	\N	walther.duarte@web.de
5059	\N	\N	adelgunde.trevisan@gmail.com
5466	\N	\N	thierry.schwartz@travaglio.net
5821	\N	\N	katie.andersen@haney.com.au
5385	\N	\N	kathy.zamorani@hotmail.com
3506	\N	\N	giuseppina.tanguy@wanadoo.fr
5427	\N	\N	jack.klapp@hotmail.com.au
6142	\N	\N	tom.leconte@woods-johnson.com
2873	\N	\N	bonnie.cignaroli@yahoo.com
3916	\N	\N	danny.farrell@hotmail.com
1687	\N	\N	fiorenzo.bauer@gmail.com
1542	\N	\N	randy.alfieri@verri.org
3087	\N	\N	tim.bradley@schlosser.de
3857	\N	\N	yves.mendez@gmail.com
5921	\N	\N	raffaella.esquivel@gmail.com
3144	\N	\N	lawrence.vasari@castillo.edu
2676	\N	\N	sam.adams@yahoo.com
3646	\N	\N	mirco.nicolini@blin.net
1321	\N	\N	graham.bajardi@yahoo.com
1399	\N	\N	luc.quinn@walker.com
3169	\N	\N	stella.ullrich@hotmail.com.au
2058	\N	\N	calcedonio.remy@edwards-benton.com
1300	\N	\N	nanni.almaraz@martin.com
2075	\N	\N	pascual.corradi@lopez.net.au
2984	\N	\N	kristi.grant@yahoo.co.uk
4768	\N	\N	manuel.gracia@trussardi.eu
3682	\N	\N	gionata.hussain@yahoo.com
5901	\N	\N	maria.nguyen@hernadez.com
3540	\N	\N	leon.baker@hotmail.com
2225	\N	\N	gianmarco.alcaraz@zacchia.net
1485	\N	\N	derrick.little@small.org
5343	\N	\N	terry.ramirez@hotmail.co.uk
5594	\N	\N	katarina.clarke@hotmail.com.au
2482	\N	\N	leila.washington@gmail.com
2706	\N	\N	mirko.townsend@schmitt.com
4861	\N	\N	randall.connolly@jovinelli-castelli.com
2961	\N	\N	pia.burgess@proyectos.org
3043	\N	\N	justine.mancini@tiscali.it
6103	\N	\N	reynaldo.wagenknecht@faure.com
4708	\N	\N	toni.magrassi@gmail.com
4395	\N	\N	patrizio.cisneros@martinez.edu.au
4912	\N	\N	durante.lindner@picard.fr
2030	\N	\N	rosl.lamborghini@hiller.net
5235	\N	\N	ugo.harrison@morley-chapman.co.uk
5001	\N	\N	isidor.carpenter@chauvin.com
4093	\N	\N	marie.zoppetto@kallert.de
2576	\N	\N	branko.chambers@ifrance.com
6122	\N	\N	alan.pineda@proyectos.info
2813	\N	\N	carmen.oestrovsky@gmail.com
3737	\N	\N	shane.fernandez@hotmail.de
2803	\N	\N	debbie.guilbert@berg.edu
5508	\N	\N	vito.dossi@hotmail.co.uk
3850	\N	\N	evan.schacht@price.com
4220	\N	\N	mandy.weston@free.fr
4532	\N	\N	paulo.zito@nelson.biz
6013	\N	\N	alberto.girschner@laboratorios.com
3396	\N	\N	giacomo.bouvet@gmail.com
4401	\N	\N	ehrentraud.puga@laboratorios.com
2981	\N	\N	cristian.hale@hotmail.co.uk
4467	\N	\N	lilija.charles@gmail.com
1377	\N	\N	albert.legendre@lee.com
5036	\N	\N	marisa.renaud@smith.org
5761	\N	\N	sharon.diallo@gmail.com
3699	\N	\N	eduardo.delattre@lynch.net.au
4519	\N	\N	bernadette.wang@gmail.com
5395	\N	\N	dina.gibbons@brewer.net
3057	\N	\N	clara.armstrong@vodafone.it
2741	\N	\N	elliott.herrmann@hotmail.com.au
1675	\N	\N	graziella.vidal@hotmail.com
2712	\N	\N	francisca.becerra@young.com.au
4527	\N	\N	edeltrud.boyer@outlook.com
1722	\N	\N	julian.noble@hill.org.au
4330	\N	\N	christophe.bohnbach@ifrance.com
5219	\N	\N	ippazio.angulo@yahoo.com
4997	\N	\N	grace.kroker@hotmail.com
2239	\N	\N	jared.ferguson@roberts.com
4587	\N	\N	virginie.mclean@yahoo.com
4113	\N	\N	mason.potter@gmail.com
4762	\N	\N	aaron.anaya@hotmail.com.au
5242	\N	\N	leah.ornelas@gmail.com
5765	\N	\N	harald.roy@web.de
2185	\N	\N	micaela.martel@hotmail.com
5500	\N	\N	vincentio.sanders@voila.fr
3494	\N	\N	bettina.norbiato@allen-lutz.org
3924	\N	\N	julio.renner@industrias.net
3521	\N	\N	jelena.stiffel@trupp.de
5262	\N	\N	guadalupe.munoz@murray-hamilton.com.au
3684	\N	\N	whitney.noack@laboratorios.org
5784	\N	\N	gelsomina.migliaccio@junk.com
1498	\N	\N	evangelista.pereira@thompson-peterson.biz
6073	\N	\N	gareth.comolli@tiscali.fr
4939	\N	\N	michelangelo.hess@bouygtel.fr
\.


--
-- TOC entry 4865 (class 0 OID 17078)
-- Dependencies: 218
-- Data for Name: subcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subcategory (subcategory_id, subcategory) FROM stdin;
subcat1	food trucks
subcat2	rock
subcat3	web
subcat4	plays
subcat5	documentary
subcat6	electric music
subcat7	drama
subcat8	indie rock
subcat9	wearables
subcat10	nonfiction
subcat11	animation
subcat12	video games
subcat13	shorts
subcat14	fiction
subcat15	photography books
subcat16	radio & podcasts
subcat17	metal
subcat18	jazz
subcat19	translations
subcat20	television
subcat21	mobile games
subcat22	world music
subcat23	science fiction
subcat24	audio
\.


--
-- TOC entry 4715 (class 2606 OID 17096)
-- Name: campaign campaign_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_pkey PRIMARY KEY (cf_id);


--
-- TOC entry 4707 (class 2606 OID 17077)
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4711 (class 2606 OID 17091)
-- Name: contacts contacts_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_email_key UNIQUE (email);


--
-- TOC entry 4713 (class 2606 OID 17089)
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (contact_id);


--
-- TOC entry 4709 (class 2606 OID 17082)
-- Name: subcategory subcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subcategory
    ADD CONSTRAINT subcategory_pkey PRIMARY KEY (subcategory_id);


--
-- TOC entry 4716 (class 2606 OID 17102)
-- Name: campaign campaign_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- TOC entry 4717 (class 2606 OID 17097)
-- Name: campaign campaign_contact_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_contact_id_fkey FOREIGN KEY (contact_id) REFERENCES public.contacts(contact_id);


--
-- TOC entry 4718 (class 2606 OID 17107)
-- Name: campaign campaign_subcategory_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campaign
    ADD CONSTRAINT campaign_subcategory_id_fkey FOREIGN KEY (subcategory_id) REFERENCES public.subcategory(subcategory_id);


-- Completed on 2025-03-06 19:16:18

--
-- PostgreSQL database dump complete
--

