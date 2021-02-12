--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5
-- Dumped by pg_dump version 12.5

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: leonid
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO leonid;

--
-- Name: companies; Type: TABLE; Schema: public; Owner: leonid
--

CREATE TABLE public.companies (
    id bigint NOT NULL,
    name character varying,
    fields jsonb,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    found boolean DEFAULT false,
    error boolean DEFAULT false,
    exported boolean DEFAULT false
);


ALTER TABLE public.companies OWNER TO leonid;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: leonid
--

CREATE SEQUENCE public.companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_id_seq OWNER TO leonid;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leonid
--

ALTER SEQUENCE public.companies_id_seq OWNED BY public.companies.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: leonid
--

CREATE TABLE public.contacts (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    fields jsonb,
    company_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    uploaded boolean DEFAULT false
);


ALTER TABLE public.contacts OWNER TO leonid;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: leonid
--

CREATE SEQUENCE public.contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO leonid;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: leonid
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: leonid
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO leonid;

--
-- Name: companies id; Type: DEFAULT; Schema: public; Owner: leonid
--

ALTER TABLE ONLY public.companies ALTER COLUMN id SET DEFAULT nextval('public.companies_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: leonid
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: leonid
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-02-05 15:35:11.901923	2021-02-05 15:35:11.901923
\.


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: leonid
--

COPY public.companies (id, name, fields, created_at, updated_at, found, error, exported) FROM stdin;
112	BuzzStream	{"ipo": "private", "url": "buzzstream.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.884221	2021-02-11 15:18:22.379731	t	f	t
113	SpiceCSM	{"ipo": "private", "url": "spicecsm.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.893263	2021-02-11 15:18:22.383728	t	f	t
104	3CLogic	{"ipo": "private", "url": "3clogic.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Rockville, Maryland, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.832529	2021-02-11 15:18:22.388334	t	f	t
114	PDFFiller	{"ipo": "private", "url": "pdffiller.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Brighton, Massachusetts, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.900362	2021-02-11 15:18:22.393474	t	f	t
116	ReachForce	{"ipo": "private", "url": "reachforce.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.913484	2021-02-11 15:18:22.398291	t	f	t
118	PatientFocus	{"ipo": "private", "url": "patientfocus.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Nashville, Tennessee, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.930408	2021-02-11 15:18:22.403053	t	f	t
120	PCR	{"ipo": "private", "url": "pcragency.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Jacksonville, Florida, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.945349	2021-02-11 15:18:22.408054	t	f	t
119	PR 20/20	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.93749	2021-02-11 15:18:22.413198	f	t	t
122	Voyage Control	{"ipo": "private", "url": "voyagecontrol.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.957581	2021-02-11 15:18:22.418856	t	f	t
123	SafetyChain Software	{"ipo": "private", "url": "safetychain.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Rafael, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.964259	2021-02-11 15:18:22.4244	t	f	t
124	EmpInfo	{"ipo": "private", "url": "empinfo.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Jose, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.9712	2021-02-11 15:18:22.428649	t	f	t
129	Operatix	{"ipo": "private", "url": "operatix.net", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Jose, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.005764	2021-02-11 15:18:22.433008	t	f	t
125	Calltend	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.980525	2021-02-11 15:18:22.438266	f	t	t
126	PackageX	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.988416	2021-02-11 15:18:22.442772	f	t	t
127	51-100	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.994879	2021-02-11 15:18:22.447049	f	t	t
130	DSS	{"ipo": "private", "url": "fosterwebmarketing.compractice_areasdss-m...", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Fairfax, Virginia, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.01197	2021-02-11 15:18:22.451158	t	f	t
105	Textel	{"ipo": "private", "url": "textel.net", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "St Louis, Missouri, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.837909	2021-02-11 15:18:22.455878	t	f	t
103	Envoy Global	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.827151	2021-02-11 15:18:22.460451	f	t	t
106	Solebit	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.844845	2021-02-11 15:18:22.46505	f	t	t
108	SelectHub	{"ipo": "private", "url": "selecthub.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.854652	2021-02-11 15:18:22.469819	t	f	t
110	Captora	{"ipo": "private", "url": "captora.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.866437	2021-02-11 15:18:22.474341	t	f	t
111	Liquid Grids	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.872421	2021-02-11 15:18:22.374287	f	t	t
137	Business Online	{"ipo": "private", "url": "businessol.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.050387	2021-02-11 15:18:22.483123	t	f	t
140	Freightgate	{"ipo": "private", "url": "freightgate.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Fountain Valley, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.07527	2021-02-11 15:18:22.488694	t	f	t
141	RainFactory	{"ipo": "private", "url": "rainfactory.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.081483	2021-02-11 15:18:22.493369	t	f	t
142	Square 2 Marketing	{"ipo": "private", "url": "square2marketing.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Warrington, Pennsylvania, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.086555	2021-02-11 15:18:22.497569	t	f	t
144	DICE	{"ipo": "private", "url": "dice.fm", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "London, England, United Kingdom", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.09742	2021-02-11 15:18:22.502463	t	f	t
145	Ajax Union	{"ipo": "private", "url": "ajaxunion.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Brooklyn, New York, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.102666	2021-02-11 15:18:22.508308	t	f	t
153	FunnelAmplified	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.149339	2021-02-11 15:18:22.512713	f	t	t
148	North Star Inbound	{"ipo": "private", "url": "northstarinbound.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.120209	2021-02-11 15:18:22.517022	t	f	t
150	Idea Grove	{"ipo": "private", "url": "ideagrove.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.132699	2021-02-11 15:18:22.521432	t	f	t
151	Digital Third Coast	{"ipo": "private", "url": "digitalthirdcoast.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.137797	2021-02-11 15:18:22.525855	t	f	t
152	Reach Marketing	{"ipo": "private", "url": "reachmarketing.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Pearl River, New York, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.14381	2021-02-11 15:18:22.530274	t	f	t
157	SmartAcre	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.171373	2021-02-11 15:18:22.534966	f	t	t
155	OneIMS	{"ipo": "private", "url": "oneims.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Skokie, Illinois, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.161063	2021-02-11 15:18:22.539777	t	f	t
156	Roi Solutions LLC	{"ipo": "private", "url": "roicallcentersolutions.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "American Fork, Utah, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.166375	2021-02-11 15:18:22.544213	t	f	t
132	EngageClick	{"ipo": "private", "url": "engageclick.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Palo Alto, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.023295	2021-02-11 15:18:22.54881	t	f	t
158	EYEMAGINE	{"ipo": "private", "url": "eyemaginetech.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.176854	2021-02-11 15:18:22.553649	t	f	t
159	Oxy Creative	{"ipo": "private", "url": "oxycreative.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.182534	2021-02-11 15:18:22.558856	t	f	t
146	Launch Leads	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.108989	2021-02-11 15:18:22.563692	f	t	t
133	MaxAudience	{"ipo": "private", "url": "maxaudience.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Carlsbad, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.029306	2021-02-11 15:18:22.568233	t	f	t
135	Agistix	{"ipo": "private", "url": "agistix.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Redwood City, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.03919	2021-02-11 15:18:22.572966	t	f	t
136	Pyxl	{"ipo": "private", "url": "thinkpyxl.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Knoxville, Tennessee, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.044859	2021-02-11 15:18:22.478565	t	f	t
1321	Kaleido BioSciences	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.862301	2021-02-11 21:26:06.424282	f	t	f
165	Bash Foo	{"ipo": "private", "url": "bashfoo.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Tipp City, Ohio, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.21745	2021-02-11 15:18:22.581799	t	f	t
168	Infotree	{"ipo": "private", "url": "infotreeinc.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Acton, Massachusetts, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.235358	2021-02-11 15:18:22.586585	t	f	t
169	RenderTribe	{"ipo": "private", "url": "rendertribe.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Saratoga Springs, New York, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.240215	2021-02-11 15:18:22.591451	t	f	t
170	Snyder Group	{"ipo": "private", "url": "snydergroupinc.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Norwalk, Connecticut, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.246249	2021-02-11 15:18:22.595846	t	f	t
171	Inbound Call Experts	{"ipo": "private", "url": "inboundcallexperts.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Boca Raton, Florida, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.251194	2021-02-11 15:18:22.600195	t	f	t
175	Huify	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.273213	2021-02-11 15:18:22.605014	f	t	t
174	Accuship	{"ipo": "private", "url": "accuship.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Memphis, Tennessee, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.268149	2021-02-11 15:18:22.609359	t	f	t
176	MLT Creative	{"ipo": "private", "url": "mltcreative.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Clarkston, Georgia, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.279547	2021-02-11 15:18:22.613829	t	f	t
177	Primitive Social	{"ipo": "private", "url": "leadwithprimitive.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Lubbock, Texas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.28476	2021-02-11 15:18:22.618809	t	f	t
178	InspiriaMedia Group	{"ipo": "private", "url": "inspiriamedia.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "White Plains, New York, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.289927	2021-02-11 15:18:22.624044	t	f	t
180	MarketingCertified.com	{"ipo": "private", "url": "marketingcertified.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Santa Clara, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.301228	2021-02-11 15:18:22.630123	t	f	t
181	Lift Division	{"ipo": "private", "url": "liftdivision.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Columbia, Missouri, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.306682	2021-02-11 15:18:22.635605	t	f	t
182	SimpleTiger	{"ipo": "private", "url": "simpletiger.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Sarasota, Florida, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.316085	2021-02-11 15:18:22.646682	t	f	t
183	simplyCT	{"ipo": "private", "url": "simplyct.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.321063	2021-02-11 15:18:22.651538	t	f	t
185	FulfillmentCompanies	{"ipo": "private", "url": "fulfillmentcompanies.net", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Boise, Idaho, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.331887	2021-02-11 15:18:22.656651	t	f	t
186	Connection Model	{"ipo": "private", "url": "connectionmodel.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Wa Keeney, Kansas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.337127	2021-02-11 15:18:22.661331	t	f	t
187	Ambivo	{"ipo": "private", "url": "ambivo.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.342759	2021-02-11 15:18:22.666049	t	f	t
188	GSQA	{"ipo": "private", "url": "gsqa.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.347958	2021-02-11 15:18:22.670893	t	f	t
172	Ker Communications	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.256248	2021-02-11 15:18:22.675746	f	t	t
163	Hatfield Media	{"ipo": "private", "url": "hatfieldmedia.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Louisville, Kentucky, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.206819	2021-02-11 15:18:22.680489	t	f	t
164	IVR Lab	{"ipo": "private", "url": "IVR-Lab.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.212223	2021-02-11 15:18:22.577408	t	f	t
196	Freight Revenue Recovery of Miami	{"ipo": "private", "url": "freightrevenue.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Miami, Florida, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.390491	2021-02-11 15:18:22.690267	t	f	t
198	Search Fanatics	{"ipo": "private", "url": "searchfanatics.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Olympia, Washington, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.40153	2021-02-11 15:18:22.694711	t	f	t
199	TeleSource Center	{"ipo": "private", "url": "telesourcecenter.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Bend, Oregon, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.406572	2021-02-11 15:18:22.699431	t	f	t
200	Marketing Matters Inbound	{"ipo": "private", "url": "marketingmattersinbound.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "St Louis, Missouri, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.412041	2021-02-11 15:18:22.704574	t	f	t
201	Timberline Total Solutions	{"ipo": "private", "url": "timberlinesolutions.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Omaha, Nebraska, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.417272	2021-02-11 15:18:22.709366	t	f	t
206	DialogTech	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.232076	2021-02-11 15:18:22.714115	f	t	t
204	BoomTown	{"ipo": "private", "url": "BoomTownROI.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Charleston, South Carolina, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.219797	2021-02-11 15:18:22.718666	t	f	t
205	Moz	{"ipo": "private", "url": "moz.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.226236	2021-02-11 15:18:22.723752	t	f	t
207	Infutor Consumer Identity Management Solutions	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.237524	2021-02-11 15:18:22.728434	f	t	t
208	FADEL	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.244103	2021-02-11 15:18:22.732954	f	t	t
214	Anserve Inc.	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.280045	2021-02-11 15:18:22.737962	f	t	t
209	Velocify	{"ipo": "private", "url": "velocify.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "El Segundo, California, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.249752	2021-02-11 15:18:22.742845	t	f	t
210	Fractl	{"ipo": "private", "url": "frac.tl", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Delray Beach, Florida, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.255101	2021-02-11 15:18:22.747338	t	f	t
212	Uassist.ME	{"ipo": "private", "url": "uassistme.co", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Miami Beach, Florida, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.267986	2021-02-11 15:18:22.752147	t	f	t
213	Applied Concepts Incorporated	{"ipo": "private", "url": "appliedconcepts.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Lake Mary, Florida, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.274176	2021-02-11 15:18:22.757384	t	f	t
215	Vizant	{"ipo": "private", "url": "vizant.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Wayne, Pennsylvania, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.28562	2021-02-11 15:18:22.762145	t	f	t
216	FDSI Logistics	{"ipo": "private", "url": "fdsi.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Westlake Village, California, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.291735	2021-02-11 15:18:22.766971	t	f	t
191	CgColors	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.363815	2021-02-11 15:18:22.772019	f	t	t
190	Business Processes Redefined	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.358258	2021-02-11 15:18:22.776561	f	t	t
194	America's Call Center	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.380112	2021-02-11 15:18:22.781068	f	t	t
203	Agari	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.212292	2021-02-11 15:18:22.78603	f	t	t
195	Call2Customers	{"ipo": "private", "url": "call2customers.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Richmond Hill, New York, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.385432	2021-02-11 15:18:22.685148	t	f	t
223	Inktel	{"ipo": "private", "url": "inktel.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Miami Lakes, Florida, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.605388	2021-02-11 15:18:22.795691	t	f	t
226	Machintel	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.62125	2021-02-11 15:18:22.800013	f	t	t
232	Syndio Solutions	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.772329	2021-02-11 15:18:22.804983	f	t	t
227	TMone	{"ipo": "private", "url": "tmone.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Iowa City, Iowa, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.626359	2021-02-11 15:18:22.809594	t	f	t
228	WS Live	{"ipo": "private", "url": "wslive.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Dubuque, Iowa, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.632094	2021-02-11 15:18:22.814061	t	f	t
229	Touchstone Communications	{"ipo": "private", "url": "touchstonebpo.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Fort Worth, Texas, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.637109	2021-02-11 15:18:22.81855	t	f	t
230	E Group Corp	{"ipo": "private", "url": "egroupcorp.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.6419	2021-02-11 15:18:22.823797	t	f	t
236	Kinetic	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.792175	2021-02-11 15:18:22.828437	f	t	t
233	Bardy Diagnostics	{"ipo": "private", "url": "bardydx.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.777081	2021-02-11 15:18:22.833123	t	f	t
234	ConnXus	{"ipo": "private", "url": "connxus.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mason, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.782692	2021-02-11 15:18:22.838085	t	f	t
235	Instrumental	{"ipo": "private", "url": "instrumental.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Palo Alto, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.787506	2021-02-11 15:18:22.842562	t	f	t
243	Caption Health	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.827138	2021-02-11 15:18:22.847259	f	t	t
237	Zendrive	{"ipo": "private", "url": "zendrive.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.798055	2021-02-11 15:18:22.851904	t	f	t
239	MPOWER Financing	{"ipo": "private", "url": "mpowerfinancing.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.807363	2021-02-11 15:18:22.856925	t	f	t
240	VentureBeat	{"ipo": "private", "url": "venturebeat.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.812584	2021-02-11 15:18:22.861401	t	f	t
241	Pineapple Payments	{"ipo": "private", "url": "pineapplepayments.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pittsburgh, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.817897	2021-02-11 15:18:22.865742	t	f	t
242	Benzinga	{"ipo": "private", "url": "benzinga.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Detroit, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.822507	2021-02-11 15:18:22.870238	t	f	t
218	Invoca	{"ipo": "private", "url": "invoca.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Santa Barbara, California, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.578701	2021-02-11 15:18:22.874555	t	f	t
225	Fusion Contact Centers	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.61651	2021-02-11 15:18:22.878744	f	t	t
220	Insightera	{"ipo": "private", "url": "insightera.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Mateo, California, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.589583	2021-02-11 15:18:22.882968	t	f	t
221	Working Solutions	{"ipo": "private", "url": "workingsolutions.comabout-uswho-we-are.aspx", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Plano, Texas, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.595511	2021-02-11 15:18:22.791081	t	f	t
250	HyperProof	{"ipo": "private", "url": "hyperproof.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bellevue, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.863088	2021-02-11 15:18:22.892267	t	f	t
257	Flywheel.io	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.896967	2021-02-11 15:18:22.896738	f	t	t
253	AxleHire	{"ipo": "private", "url": "axlehire.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.877	2021-02-11 15:18:22.901989	t	f	t
254	Convey	{"ipo": "private", "url": "getconvey.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.882762	2021-02-11 15:18:22.906856	t	f	t
255	Voltus	{"ipo": "private", "url": "getvoltus.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.887351	2021-02-11 15:18:22.911826	t	f	t
258	HawkEye 360	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.902106	2021-02-11 15:18:22.91684	f	t	t
270	Captiv8	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.969127	2021-02-11 15:18:22.922489	f	t	t
259	Mercatus	{"ipo": "private", "url": "gomercatus.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Mateo, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.906637	2021-02-11 15:18:22.92695	t	f	t
260	Arena	{"ipo": "private", "url": "thearena.co", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.911198	2021-02-11 15:18:22.93156	t	f	t
261	Acalvio Technologies	{"ipo": "private", "url": "acalvio.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Clara, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.916364	2021-02-11 15:18:22.936829	t	f	t
262	Cazena	{"ipo": "private", "url": "cazena.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Waltham, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.921279	2021-02-11 15:18:22.941805	t	f	t
263	Payzer	{"ipo": "private", "url": "payzer.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Charlotte, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.925974	2021-02-11 15:18:22.946964	t	f	t
265	Vector	{"ipo": "private", "url": "vector.com.pl", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Gdynia, Pomorskie, Poland", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.936377	2021-02-11 15:18:22.952553	t	f	t
266	Randori	{"ipo": "private", "url": "randori.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Waltham, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.940885	2021-02-11 15:18:22.95758	t	f	t
267	Sealights	{"ipo": "private", "url": "sealights.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Virginia, Nebraska, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.953952	2021-02-11 15:18:22.962042	t	f	t
268	Savonix	{"ipo": "private", "url": "savonix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.958974	2021-02-11 15:18:22.966398	t	f	t
271	BrainCo	{"ipo": "private", "url": "brainco.tech", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Somerville, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.973552	2021-02-11 15:18:22.971906	t	f	t
247	Morpheus Data	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.84728	2021-02-11 15:18:22.977238	f	t	t
251	XOi Technologies	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.867856	2021-02-11 15:18:22.98273	f	t	t
248	Ringlead	{"ipo": "private", "url": "ringlead.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Melville, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.852115	2021-02-11 15:18:22.988535	t	f	t
249	ScopeAR	{"ipo": "private", "url": "ScopeAR.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.858109	2021-02-11 15:18:22.887686	t	f	t
277	MessageGears	{"ipo": "private", "url": "messagegears.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.002438	2021-02-11 15:18:22.99795	t	f	t
278	BetterLesson	{"ipo": "private", "url": "betterlesson.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cambridge, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.006942	2021-02-11 15:18:23.006583	t	f	t
280	CultureIQ	{"ipo": "private", "url": "cultureiq.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.016706	2021-02-11 15:18:23.011563	t	f	t
281	Ampion	{"ipo": "private", "url": "ampion.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Berlin, Berlin, Germany", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.02136	2021-02-11 15:18:23.015995	t	f	t
282	Sparkfund	{"ipo": "private", "url": "sparkfund.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.025847	2021-02-11 15:18:23.020724	t	f	t
283	Wurl	{"ipo": "private", "url": "wurl.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Palo Alto, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.031006	2021-02-11 15:18:23.025214	t	f	t
284	Continuity	{"ipo": "private", "url": "continuity.world", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.035799	2021-02-11 15:18:23.029681	t	f	t
286	Hookit	{"ipo": "private", "url": "hookit.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.04478	2021-02-11 15:18:23.034192	t	f	t
287	Axio	{"ipo": "private", "url": "axio.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.050165	2021-02-11 15:18:23.039241	t	f	t
288	Aginity	{"ipo": "private", "url": "aginity.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Gatos, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.055344	2021-02-11 15:18:23.04399	t	f	t
293	flexEngage	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.080392	2021-02-11 15:18:23.048536	f	t	t
290	Worthix	{"ipo": "private", "url": "worthix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.065873	2021-02-11 15:18:23.053499	t	f	t
292	Comply365	{"ipo": "private", "url": "comply365.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Beloit, Wisconsin, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.074901	2021-02-11 15:18:23.058452	t	f	t
294	Sinefa	{"ipo": "private", "url": "sinefa.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Clara, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.087637	2021-02-11 15:18:23.063212	t	f	t
275	Backbone PLM	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.992441	2021-02-11 15:18:23.067674	f	t	t
295	Cariloop	{"ipo": "private", "url": "cariloop.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.092206	2021-02-11 15:18:23.072289	t	f	t
296	Voxer	{"ipo": "private", "url": "voxer.jp", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tokyo, Tokyo, Japan", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.096826	2021-02-11 15:18:23.077332	t	f	t
298	Cyberinc	{"ipo": "private", "url": "cyberinc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Gatos, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.106095	2021-02-11 15:18:23.082087	t	f	t
274	ClassWallet	{"ipo": "private", "url": "classwallet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Hollywood, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.987962	2021-02-11 15:18:23.086845	t	f	t
276	Mirador	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.997674	2021-02-11 15:18:23.091642	f	t	t
289	Airbrake.io	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.060455	2021-02-11 15:18:22.993347	f	t	t
305	Quri	{"ipo": "private", "url": "quri.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.139922	2021-02-11 15:18:23.100492	t	f	t
306	Digital Promise	{"ipo": "private", "url": "digitalpromise.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.14448	2021-02-11 15:18:23.10562	t	f	t
307	BoardBookit	{"ipo": "private", "url": "boardbookit.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pittsburgh, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.149696	2021-02-11 15:18:23.11053	t	f	t
308	FreshLime	{"ipo": "private", "url": "FreshLime.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lehi, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.154435	2021-02-11 15:18:23.115176	t	f	t
310	Analytics IQ	{"ipo": "private", "url": "analytics-iq.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.167936	2021-02-11 15:18:23.12009	t	f	t
311	LightSail Education	{"ipo": "private", "url": "lightsailed.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.172723	2021-02-11 15:18:23.124956	t	f	t
312	GPB Capital Holdings	{"ipo": "private", "url": "gpb-cap.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.177524	2021-02-11 15:18:23.129355	t	f	t
313	Prodly	{"ipo": "private", "url": "prodly.co", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Palo Alto, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.18352	2021-02-11 15:18:23.134032	t	f	t
315	Triblio	{"ipo": "private", "url": "triblio.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Vienna, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.192745	2021-02-11 15:18:23.138587	t	f	t
316	Zudy	{"ipo": "private", "url": "zudy.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "South Harwich, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.198321	2021-02-11 15:18:23.143285	t	f	t
318	LumiGrow	{"ipo": "private", "url": "lumigrow.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Emeryville, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.208429	2021-02-11 15:18:23.147541	t	f	t
319	NurseGrid	{"ipo": "private", "url": "nursegrid.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Portland, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.213951	2021-02-11 15:18:23.151907	t	f	t
321	Triggermesh	{"ipo": "private", "url": "triggermesh.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cary, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.224348	2021-02-11 15:18:23.156928	t	f	t
322	280 CapMarkets	{"ipo": "private", "url": "280capmarkets.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.23024	2021-02-11 15:18:23.161616	t	f	t
323	ATLAS Space Operations	{"ipo": "private", "url": "atlasground.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Traverse City, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.235528	2021-02-11 15:18:23.166328	t	f	t
324	Voodoo Manufacturing	{"ipo": "private", "url": "voodoomfg.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brooklyn, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.240645	2021-02-11 15:18:23.171294	t	f	t
301	Pattern89	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.119793	2021-02-11 15:18:23.177044	f	t	t
302	DadeSystems	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.124586	2021-02-11 15:18:23.183346	f	t	t
303	Alma	{"ipo": "private", "url": "getalma.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Portland, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.12999	2021-02-11 15:18:23.188833	t	f	t
300	Sharestates	{"ipo": "private", "url": "sharestates.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.115327	2021-02-11 15:18:23.096073	t	f	t
331	Carlypso	{"ipo": "private", "url": "carlypso.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Carlos, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.276017	2021-02-11 15:18:23.198903	t	f	t
334	busybusy	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.290508	2021-02-11 15:18:23.204224	f	t	t
333	ChalkTalk	{"ipo": "private", "url": "chalkmedia.co.uk", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Heath, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.285865	2021-02-11 15:18:23.209145	t	f	t
346	Glassbeam	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.3746	2021-02-11 15:18:23.214027	f	t	t
338	CloudShare	{"ipo": "private", "url": "cloudshare.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.334447	2021-02-11 15:18:23.218872	t	f	t
339	Bractlet	{"ipo": "private", "url": "bractlet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.339214	2021-02-11 15:18:23.224155	t	f	t
340	Bright Funds	{"ipo": "private", "url": "brightfunds.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.343956	2021-02-11 15:18:23.229442	t	f	t
341	Bardavon Health Innovations	{"ipo": "private", "url": "bardavon.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mission, Kansas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.349447	2021-02-11 15:18:23.234249	t	f	t
343	TruMed Systems	{"ipo": "private", "url": "trumedsystems.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "La Jolla, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.359167	2021-02-11 15:18:23.238731	t	f	t
344	ZynBit	{"ipo": "private", "url": "zynbit.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.364407	2021-02-11 15:18:23.242984	t	f	t
345	Modular Robotics	{"ipo": "private", "url": "modrobotics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boulder, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.369652	2021-02-11 15:18:23.247516	t	f	t
347	LocusLabs	{"ipo": "private", "url": "locuslabs.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.379872	2021-02-11 15:18:23.252924	t	f	t
349	Wellthie	{"ipo": "private", "url": "wellthie.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.390043	2021-02-11 15:18:23.258355	t	f	t
327	Plum Lending	{"ipo": "private", "url": "plumlending.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.256333	2021-02-11 15:18:23.26281	t	f	t
350	Mindflash	{"ipo": "private", "url": "mindflash.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.394934	2021-02-11 15:18:23.267373	t	f	t
351	Vestwell	{"ipo": "private", "url": "vestwell.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.400841	2021-02-11 15:18:23.272181	t	f	t
352	PROLIFIQ	{"ipo": "private", "url": "prolifiq.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Beaverton, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.406289	2021-02-11 15:18:23.276539	t	f	t
332	Sanguine	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.281377	2021-02-11 15:18:23.280879	f	t	t
329	SmartVault	{"ipo": "private", "url": "smartvault.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.266416	2021-02-11 15:18:23.285946	t	f	t
330	PEX Card	{"ipo": "private", "url": "pexcard.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.27116	2021-02-11 15:18:23.193559	t	f	t
358	ThingTech	{"ipo": "private", "url": "thingtech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.439577	2021-02-11 15:18:23.295351	t	f	t
359	Kaleo Software	{"ipo": "private", "url": "kaleosoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "El Segundo, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.44436	2021-02-11 15:18:23.300539	t	f	t
360	Aperiomics	{"ipo": "private", "url": "aperiomics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sterling, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.450194	2021-02-11 15:18:23.306259	t	f	t
361	ClearFlow	{"ipo": "private", "url": "clearflow.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.455101	2021-02-11 15:18:23.310658	t	f	t
362	Omni-ID	{"ipo": "private", "url": "omni-id.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Rochester, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.459738	2021-02-11 15:18:23.315268	t	f	t
364	Identified Technologies	{"ipo": "private", "url": "identifiedtech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pittsburgh, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.470072	2021-02-11 15:18:23.320658	t	f	t
365	WhoKnows	{"ipo": "private", "url": "whoknows.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Mateo, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.475018	2021-02-11 15:18:23.326352	t	f	t
366	PeraHealth	{"ipo": "private", "url": "perahealth.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Charlotte, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.480474	2021-02-11 15:18:23.331414	t	f	t
370	Jungle Disk	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.499783	2021-02-11 15:18:23.336064	f	t	t
369	AirSage	{"ipo": "private", "url": "airsage.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.494609	2021-02-11 15:18:23.341082	t	f	t
373	ArmorText	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.514473	2021-02-11 15:18:23.345689	f	t	t
372	Extend Fertility	{"ipo": "private", "url": "extendfertility.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.50904	2021-02-11 15:18:23.350474	t	f	t
376	methinks Technologies Inc	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.528724	2021-02-11 15:18:23.359631	f	t	t
374	CHESS Health	{"ipo": "private", "url": "chess.health", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "East Rochester, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.5196	2021-02-11 15:18:23.36463	t	f	t
375	Lumavate	{"ipo": "private", "url": "lumavate.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carmel, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.524132	2021-02-11 15:18:23.369431	t	f	t
379	Payline Data	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.543628	2021-02-11 15:18:23.374265	f	t	t
378	Banyan Water	{"ipo": "private", "url": "banyanwater.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.539135	2021-02-11 15:18:23.378656	t	f	t
354	MarketDial	{"ipo": "private", "url": "marketdial.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Salt Lake City, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.420188	2021-02-11 15:18:23.383123	t	f	t
355	Fraym	{"ipo": "private", "url": "fraym.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mclean, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.424595	2021-02-11 15:18:23.388764	t	f	t
357	Shipping Easy	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.43489	2021-02-11 15:18:23.393918	f	t	t
367	ZVerse	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.485769	2021-02-11 15:18:23.290922	f	t	t
391	SpinGo	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.610655	2021-02-11 15:18:23.403314	f	t	t
387	PegEx	{"ipo": "private", "url": "pegex.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fitchburg, Wisconsin, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.588411	2021-02-11 15:18:23.407994	t	f	t
388	Aircuity	{"ipo": "private", "url": "aircuity.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Newton, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.594934	2021-02-11 15:18:23.412782	t	f	t
389	Torchlite	{"ipo": "private", "url": "torchlite.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.600673	2021-02-11 15:18:23.417454	t	f	t
390	LASSO	{"ipo": "private", "url": "", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.605773	2021-02-11 15:18:23.423218	t	f	t
392	MagnifyMoney	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.61669	2021-02-11 15:18:23.428834	f	t	t
402	FundingGates AR Platform	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.670498	2021-02-11 15:18:23.433891	f	t	t
394	GiveDirectly	{"ipo": "private", "url": "givedirectly.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.627312	2021-02-11 15:18:23.438964	t	f	t
395	6fusion	{"ipo": "private", "url": "6fusion.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.635568	2021-02-11 15:18:23.443613	t	f	t
396	Sideqik	{"ipo": "private", "url": "sideqik.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.640818	2021-02-11 15:18:23.448165	t	f	t
398	WibiData	{"ipo": "private", "url": "wibidata.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.651802	2021-02-11 15:18:23.45303	t	f	t
399	Visage Mobile	{"ipo": "private", "url": "visagemobile.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Larkspur, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.656429	2021-02-11 15:18:23.458333	t	f	t
400	SureDone	{"ipo": "private", "url": "suredone.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.660846	2021-02-11 15:18:23.46337	t	f	t
401	Zoove	{"ipo": "private", "url": "zoove.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.665876	2021-02-11 15:18:23.468096	t	f	t
403	ClinCapture	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.675186	2021-02-11 15:18:23.472757	f	t	t
404	ONEder	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.680493	2021-02-11 15:18:23.477471	f	t	t
384	Dropsource	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.572098	2021-02-11 15:18:23.482059	f	t	t
381	Pacejet Logistics	{"ipo": "private", "url": "pacejet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Columbus, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.555314	2021-02-11 15:18:23.486894	t	f	t
382	Flightdocs	{"ipo": "private", "url": "flightdocs.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bonita Springs, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.56027	2021-02-11 15:18:23.491891	t	f	t
383	Clean Fund	{"ipo": "private", "url": "cleanfund.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sausalito, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.56628	2021-02-11 15:18:23.49636	t	f	t
386	Click Notices	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.582901	2021-02-11 15:18:23.398768	f	t	t
412	Vioguard	{"ipo": "private", "url": "vioguard.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Kirkland, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.724664	2021-02-11 15:18:23.505962	t	f	t
413	Ease	{"ipo": "private", "url": "easeapp.co.uk", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "London, England, United Kingdom", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.729684	2021-02-11 15:18:23.510376	t	f	t
415	Pacify	{"ipo": "private", "url": "pacify.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.739473	2021-02-11 15:18:23.515181	t	f	t
417	LiveHive	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.750126	2021-02-11 15:18:23.520144	f	t	t
418	Zinrelo	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.755269	2021-02-11 15:18:23.525001	f	t	t
422	Uncommon Co.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.77489	2021-02-11 15:18:23.529616	f	t	t
420	Kigo	{"ipo": "private", "url": "kigo.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Philadelphia, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.765508	2021-02-11 15:18:23.534839	t	f	t
423	SocialToaster	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.779975	2021-02-11 15:18:23.54044	f	t	t
433	Veelo	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.831683	2021-02-11 15:18:23.545307	f	t	t
424	Lendbuzz	{"ipo": "private", "url": "lendbuzz.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.785511	2021-02-11 15:18:23.550132	t	f	t
425	Fuzzy Logix	{"ipo": "private", "url": "fuzzyl.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Charlotte, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.790116	2021-02-11 15:18:23.555148	t	f	t
426	Q1Media	{"ipo": "private", "url": "q1media.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.794692	2021-02-11 15:18:23.559799	t	f	t
427	Viking Cold Solutions	{"ipo": "private", "url": "vikingcold.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sugar Land, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.800649	2021-02-11 15:18:23.564409	t	f	t
429	Aware3	{"ipo": "private", "url": "aware3.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Kansas City, Missouri, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.810714	2021-02-11 15:18:23.56909	t	f	t
430	BigTeams	{"ipo": "private", "url": "bigteams.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Herndon, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.816234	2021-02-11 15:18:23.573998	t	f	t
431	American Global Logistics	{"ipo": "private", "url": "americangloballogistics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.821268	2021-02-11 15:18:23.578528	t	f	t
432	Yalber	{"ipo": "private", "url": "yalber.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.82617	2021-02-11 15:18:23.583132	t	f	t
409	Synthio	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.707924	2021-02-11 15:18:23.588136	f	t	t
411	SurfWatch Labs	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.72018	2021-02-11 15:18:23.593198	f	t	t
410	TicketBiscuit	{"ipo": "private", "url": "ticketbiscuit.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Birmingham, Alabama, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.71556	2021-02-11 15:18:23.597916	t	f	t
416	CoSo Cloud	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.744087	2021-02-11 15:18:23.500953	f	t	t
439	Aria Retirement Solutions	{"ipo": "private", "url": "retireone.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.864273	2021-02-11 15:18:23.607311	t	f	t
440	Syntrio	{"ipo": "private", "url": "syntrio.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Deerfield, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.869368	2021-02-11 15:18:23.611769	t	f	t
441	HireIQ Solutions	{"ipo": "private", "url": "hireiqinc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alpharetta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.873986	2021-02-11 15:18:23.616385	t	f	t
443	Capson	{"ipo": "private", "url": "capson.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.88448	2021-02-11 15:18:23.62152	t	f	t
444	Qualtrax	{"ipo": "private", "url": "qualtrax.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Blacksburg, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.889273	2021-02-11 15:18:23.626581	t	f	t
445	The Poynter Institute	{"ipo": "private", "url": "poynter.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "St. Petersburg, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.8938	2021-02-11 15:18:23.631213	t	f	t
446	Easy Ice	{"ipo": "private", "url": "easyice.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Gwinn, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.89936	2021-02-11 15:18:23.636151	t	f	t
449	BlueCheck Inc	{"ipo": "private", "url": "bluecheck.me", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Texas City, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.914011	2021-02-11 15:18:23.641051	t	f	t
450	Everseat	{"ipo": "private", "url": "everseat.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Baltimore, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.919081	2021-02-11 15:18:23.645762	t	f	t
458	Cupron	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.957989	2021-02-11 15:18:23.650169	f	t	t
452	NorthPage	{"ipo": "private", "url": "northpage.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Southbury, Connecticut, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.928742	2021-02-11 15:18:23.655157	t	f	t
453	Vuv Analytics	{"ipo": "private", "url": "vuvanalytics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.933724	2021-02-11 15:18:23.65961	t	f	t
455	Jhana	{"ipo": "private", "url": "jhana.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.943379	2021-02-11 15:18:23.663921	t	f	t
456	KnowledgeTree	{"ipo": "private", "url": "knowledgetree.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.948657	2021-02-11 15:18:23.668933	t	f	t
457	In What Language	{"ipo": "private", "url": "inwhatlanguage.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Salt Lake City, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.953361	2021-02-11 15:18:23.674063	t	f	t
459	iVEDiX	{"ipo": "private", "url": "ivedix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pittsford, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.963107	2021-02-11 15:18:23.678955	t	f	t
435	Stemina Biomarker Discovery	{"ipo": "private", "url": "stemina.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Madison, Wisconsin, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.841616	2021-02-11 15:18:23.684228	t	f	t
436	GTP Services	{"ipo": "private", "url": "gogtp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Larkspur, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.846817	2021-02-11 15:18:23.690179	t	f	t
451	CudaSign	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.923785	2021-02-11 15:18:23.695052	f	t	t
438	Encentiv Energy	{"ipo": "private", "url": "encentivenergy.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pittsburgh, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.859017	2021-02-11 15:18:23.602688	t	f	t
466	jobZology	{"ipo": "private", "url": "jobzology.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fort Collins, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.998829	2021-02-11 15:18:23.708384	t	f	t
467	Applied Silver	{"ipo": "private", "url": "appliedsilver.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Hayward, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.00348	2021-02-11 15:18:23.713242	t	f	t
476	Cien	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.048874	2021-02-11 15:18:23.717919	f	t	t
469	Caringcent	{"ipo": "private", "url": "caringcent.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Albuquerque, New Mexico, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.013793	2021-02-11 15:18:23.722836	t	f	t
471	Imprev	{"ipo": "private", "url": "imprev.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bellevue, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.023117	2021-02-11 15:18:23.727821	t	f	t
473	eDataSource	{"ipo": "private", "url": "edatasource.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.033288	2021-02-11 15:18:23.732498	t	f	t
474	Cirrus Data Solutions	{"ipo": "private", "url": "cdsi.us.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Jericho, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.038268	2021-02-11 15:18:23.737611	t	f	t
475	Squelch	{"ipo": "private", "url": "squelch.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Redwood City, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.043131	2021-02-11 15:18:23.742404	t	f	t
479	Orchestrate	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.064217	2021-02-11 15:18:23.747256	f	t	t
478	Creo Wellness	{"ipo": "private", "url": "creochange.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Henrico, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.058572	2021-02-11 15:18:23.752345	t	f	t
486	PromoteIQ	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.103894	2021-02-11 15:18:23.757414	f	t	t
481	Kitewheel	{"ipo": "private", "url": "kitewheel.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.076372	2021-02-11 15:18:23.761924	t	f	t
482	Hivewyre	{"ipo": "private", "url": "hivewyre.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Scottsdale, Arizona, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.082146	2021-02-11 15:18:23.766371	t	f	t
484	ActiveProspect	{"ipo": "private", "url": "activeprospect.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.092182	2021-02-11 15:18:23.771251	t	f	t
485	Carusele	{"ipo": "private", "url": "carusele.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cary, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.098661	2021-02-11 15:18:23.776032	t	f	t
487	SeniorQuote Insurance Services	{"ipo": "private", "url": "seniorquote.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.108378	2021-02-11 15:18:23.780377	t	f	t
462	Keystone Technologies	{"ipo": "private", "url": "keystonetech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "North Wales, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.978751	2021-02-11 15:18:23.785024	t	f	t
464	Active Life Scientific	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.989048	2021-02-11 15:18:23.790483	f	t	t
468	St. Renatus	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.00829	2021-02-11 15:18:23.795225	f	t	t
465	Black Diamond Funding	{"ipo": "private", "url": "blackdiamondfunding.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sunrise, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.993622	2021-02-11 15:18:23.699629	t	f	t
1337	Laird Superfood	{"ipo": "Public", "url": "lairdsuperfood.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sisters, Oregon, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.96161	2021-02-11 21:29:02.251775	t	f	f
493	Shotfarm	{"ipo": "private", "url": "shotfarm.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.137826	2021-02-11 15:18:23.804842	t	f	t
504	nobul	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.193195	2021-02-11 15:18:23.809689	f	t	t
495	Entigral Systems	{"ipo": "private", "url": "entigral.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.148243	2021-02-11 15:18:23.814168	t	f	t
496	Aptitude Software	{"ipo": "private", "url": "aptitudesoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.153182	2021-02-11 15:18:23.818801	t	f	t
497	SENSEI Holdings	{"ipo": "private", "url": "sensei.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Monica, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.157776	2021-02-11 15:18:23.823787	t	f	t
500	Lightbeam Health	{"ipo": "private", "url": "lightbeamhealth.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irving, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.172995	2021-02-11 15:18:23.828605	t	f	t
501	ProcessMaker	{"ipo": "private", "url": "processmaker.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Durham, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.177699	2021-02-11 15:18:23.833059	t	f	t
502	Paperless Parts	{"ipo": "private", "url": "paperlessparts.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.183295	2021-02-11 15:18:23.838027	t	f	t
512	FDNA	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.234978	2021-02-11 15:18:23.842813	f	t	t
505	Quantivate	{"ipo": "private", "url": "quantivate.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Woodinville, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.198555	2021-02-11 15:18:23.847425	t	f	t
506	TouchCast	{"ipo": "private", "url": "touchcast.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.203725	2021-02-11 15:18:23.852036	t	f	t
507	Bubbleball	{"ipo": "private", "url": "bubbleball.us", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.208502	2021-02-11 15:18:23.856975	t	f	t
508	Polaris MEP	{"ipo": "private", "url": "polarismep.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Providence, Rhode Island, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.213823	2021-02-11 15:18:23.861461	t	f	t
511	Rigor	{"ipo": "private", "url": "rigor.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.230228	2021-02-11 15:18:23.866108	t	f	t
513	Netreo	{"ipo": "private", "url": "netreo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Huntington Beach, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.239797	2021-02-11 15:18:23.871131	t	f	t
514	Lead411	{"ipo": "private", "url": "lead411.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boulder, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.24478	2021-02-11 15:18:23.875923	t	f	t
489	Apollidon	{"ipo": "private", "url": "apollidon.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oldsmar, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.11799	2021-02-11 15:18:23.880649	t	f	t
490	TotalABA	{"ipo": "private", "url": "totalaba.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Temecula, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.122514	2021-02-11 15:18:23.884999	t	f	t
492	Convoso	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.132922	2021-02-11 15:18:23.89012	f	t	t
494	Kinsta	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.142535	2021-02-11 15:18:23.799836	f	t	t
1339	Calliditas Therapeutics	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.972599	2021-02-11 21:29:22.863852	f	t	f
520	VisibleGains	{"ipo": "private", "url": "visiblegains.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Waltham, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.276206	2021-02-11 15:18:23.899635	t	f	t
521	Finch	{"ipo": "private", "url": "finch.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Draper, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.282249	2021-02-11 15:18:23.904502	t	f	t
522	Altvia	{"ipo": "private", "url": "altvia.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Broomfield, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.287842	2021-02-11 15:18:23.909077	t	f	t
523	Inspirata	{"ipo": "private", "url": "inspirata.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.29442	2021-02-11 15:18:23.913757	t	f	t
525	Accounting Seed	{"ipo": "private", "url": "accountingseed.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Columbia, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.305056	2021-02-11 15:18:23.918631	t	f	t
526	Liscio	{"ipo": "private", "url": "liscio.me", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dublin, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.309803	2021-02-11 15:18:23.924703	t	f	t
527	Sertifi	{"ipo": "private", "url": "sertifi.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.315449	2021-02-11 15:18:23.929553	t	f	t
528	Opengear	{"ipo": "private", "url": "opengear.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sandy, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.320578	2021-02-11 15:18:23.934378	t	f	t
530	FreeWave Technologies	{"ipo": "private", "url": "freewave.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boulder, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.330814	2021-02-11 15:18:23.939983	t	f	t
532	MenuDrive	{"ipo": "private", "url": "menudrive.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carlisle, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.340715	2021-02-11 15:18:23.944567	t	f	t
534	TrueLearn	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.350911	2021-02-11 15:18:23.948954	f	t	t
535	Crowdfund Insider	{"ipo": "private", "url": "crowdfundinsider.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Beachwood, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.355598	2021-02-11 15:18:23.953728	t	f	t
536	Trellis Rx	{"ipo": "private", "url": "trellisrx.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.360314	2021-02-11 15:18:23.958598	t	f	t
538	OpenWater	{"ipo": "private", "url": "getopenwater.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.370816	2021-02-11 15:18:23.963779	t	f	t
539	Compass MSP	{"ipo": "private", "url": "compassmsp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Jacksonville, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.375595	2021-02-11 15:18:23.970197	t	f	t
540	EveryMundo	{"ipo": "private", "url": "everymundo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Miami, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.38098	2021-02-11 15:18:23.976746	t	f	t
541	Hart	{"ipo": "private", "url": "hart.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Costa Mesa, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.386058	2021-02-11 15:18:23.982024	t	f	t
517	CheckedUp	{"ipo": "private", "url": "checkedup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.260337	2021-02-11 15:18:23.986951	t	f	t
533	DataLocker	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.345847	2021-02-11 15:18:23.992078	f	t	t
519	AuthenticID	{"ipo": "private", "url": "authenticid.co", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Manchester, New Hampshire, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.271412	2021-02-11 15:18:23.894822	t	f	t
548	KBMax Product Configurator Software	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.421465	2021-02-11 15:18:24.001613	f	t	t
556	Titan Growth	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.46116	2021-02-11 15:18:24.006498	f	t	t
550	TriLinc Global	{"ipo": "private", "url": "trilincglobal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Manhattan Beach, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.432378	2021-02-11 15:18:24.011123	t	f	t
552	Arya Recruiting AI Technology	{"ipo": "private", "url": "goarya.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.441643	2021-02-11 15:18:24.015843	t	f	t
553	Suitable Technologies	{"ipo": "private", "url": "suitabletech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Palo Alto, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.446566	2021-02-11 15:18:24.02076	t	f	t
554	patientNOW	{"ipo": "private", "url": "patientnow.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Greenwood Village, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.451698	2021-02-11 15:18:24.026022	t	f	t
566	Lovingly	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.516015	2021-02-11 15:18:24.03078	f	t	t
557	Computerworld	{"ipo": "private", "url": "computerworld.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Framingham, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.467305	2021-02-11 15:18:24.035798	t	f	t
558	Advent Health Partners	{"ipo": "private", "url": "adventhp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Nashville, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.47229	2021-02-11 15:18:24.044918	t	f	t
559	Coolfront	{"ipo": "private", "url": "coolfront.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Rochester, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.477101	2021-02-11 15:18:24.049618	t	f	t
560	Lightning Bolt Solutions	{"ipo": "private", "url": "lightning-bolt.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "South San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.48301	2021-02-11 15:18:24.054475	t	f	t
562	JoVE (Journal of Visualized Experiments)	{"ipo": "private", "url": "jove.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cambridge, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.492732	2021-02-11 15:18:24.059001	t	f	t
563	Semcasting	{"ipo": "private", "url": "semcasting.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "North Andover, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.498783	2021-02-11 15:18:24.06349	t	f	t
564	Bent Pixels	{"ipo": "private", "url": "bentpixels.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Las Vegas, Nevada, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.503813	2021-02-11 15:18:24.068351	t	f	t
565	3BL Media	{"ipo": "private", "url": "3blmedia.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Northampton, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.510501	2021-02-11 15:18:24.073845	t	f	t
567	EnergyWatch	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.52092	2021-02-11 15:18:24.078876	f	t	t
543	DISCERN	{"ipo": "private", "url": "discern.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Mateo, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.395929	2021-02-11 15:18:24.083364	t	f	t
547	OpenClinica	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.416592	2021-02-11 15:18:24.088401	f	t	t
545	EMPEA	{"ipo": "private", "url": "empea.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.406093	2021-02-11 15:18:24.092994	t	f	t
546	UNION POS	{"ipo": "private", "url": "union-pos.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.410928	2021-02-11 15:18:23.997023	t	f	t
574	MakeOffices	{"ipo": "private", "url": "makeoffices.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Arlington, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.555816	2021-02-11 15:18:24.102135	t	f	t
575	Alora Healthcare Systems	{"ipo": "private", "url": "alorahealth.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.560435	2021-02-11 15:18:24.107693	t	f	t
577	Monet Software	{"ipo": "private", "url": "monetsoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.570985	2021-02-11 15:18:24.112586	t	f	t
578	Zerion	{"ipo": "private", "url": "zerion.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.575611	2021-02-11 15:18:24.117066	t	f	t
594	Eureka Software Solutions	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.658104	2021-02-11 15:18:24.122018	f	t	t
580	SRECTrade	{"ipo": "private", "url": "srectrade.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.586688	2021-02-11 15:18:24.126735	t	f	t
581	Onsite	{"ipo": "private", "url": "onsiteworkshops.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cumberland Furnace, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.59134	2021-02-11 15:18:24.131234	t	f	t
583	KEV Group	{"ipo": "private", "url": "kevgroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fort Worth, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.602278	2021-02-11 15:18:24.135993	t	f	t
584	Sesame Software	{"ipo": "private", "url": "sesamesoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Clara, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.607043	2021-02-11 15:18:24.140742	t	f	t
585	Hayes Software Systems	{"ipo": "private", "url": "hayessoft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.611932	2021-02-11 15:18:24.145199	t	f	t
586	CacheFly CDN	{"ipo": "private", "url": "cachefly.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.617779	2021-02-11 15:18:24.149545	t	f	t
588	Blue Sky Network	{"ipo": "private", "url": "blueskynetwork.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.627314	2021-02-11 15:18:24.154791	t	f	t
589	GovSense	{"ipo": "private", "url": "govsense.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alpharetta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.632923	2021-02-11 15:18:24.16038	t	f	t
590	iSALUS Healthcare	{"ipo": "private", "url": "isalushealthcare.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.637747	2021-02-11 15:18:24.165316	t	f	t
591	Localist	{"ipo": "private", "url": "localist.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Silver Spring, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.642757	2021-02-11 15:18:24.170316	t	f	t
593	SynBioBeta	{"ipo": "private", "url": "synbiobeta.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pleasant Hill, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.653429	2021-02-11 15:18:24.175834	t	f	t
570	Synaptic AP	{"ipo": "private", "url": "synapticap.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Annapolis, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.536	2021-02-11 15:18:24.181044	t	f	t
579	DigitalChalk	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.58151	2021-02-11 15:18:24.185898	f	t	t
572	Repair Shopr	{"ipo": "private", "url": "repairshopr.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Kirkland, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.545642	2021-02-11 15:18:24.19035	t	f	t
573	AdCellerant	{"ipo": "private", "url": "adcellerant.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.551022	2021-02-11 15:18:24.097305	t	f	t
600	InfoMart	{"ipo": "private", "url": "infomart.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Toronto, Ontario, Canada", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.688793	2021-02-11 15:18:24.198899	t	f	t
604	Ampliz | Prospect Decisions. Supercharged.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.709897	2021-02-11 15:18:24.20378	f	t	t
602	CIC Plus	{"ipo": "private", "url": "cicplus.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Skokie, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.699659	2021-02-11 15:18:24.209919	t	f	t
603	Summit Hosting	{"ipo": "private", "url": "summithosting.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alpharetta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.70491	2021-02-11 15:18:24.215825	t	f	t
605	Mutare	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.715325	2021-02-11 15:18:24.221324	f	t	t
609	CitrusBits	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.739404	2021-02-11 15:18:24.226473	f	t	t
607	HealthLink Dimensions	{"ipo": "private", "url": "healthlinkdimensions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.725978	2021-02-11 15:18:24.231057	t	f	t
608	ForeFront	{"ipo": "private", "url": "forefrontcorp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fair Haven, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.733741	2021-02-11 15:18:24.235497	t	f	t
610	Protagonist	{"ipo": "private", "url": "protagonist-inc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brisbane, Queensland, Australia", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.745747	2021-02-11 15:18:24.24014	t	f	t
596	JamLoop	{"ipo": "private", "url": "jamloop.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Walnut Creek, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.668299	2021-02-11 15:18:24.244589	t	f	t
611	Surgimate	{"ipo": "private", "url": "surgimate.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.751502	2021-02-11 15:18:24.249031	t	f	t
613	SkyBitz	{"ipo": "private", "url": "skybitz.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sterling, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.761603	2021-02-11 15:18:24.253742	t	f	t
615	Duet Health	{"ipo": "private", "url": "duethealth.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Columbus, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.772368	2021-02-11 15:18:24.258897	t	f	t
616	Sway Group	{"ipo": "private", "url": "swaygroupllc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.77735	2021-02-11 15:18:24.263173	t	f	t
618	Paramount WorkPlace	{"ipo": "private", "url": "paramountworkplace.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Walled Lake, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.787683	2021-02-11 15:18:24.267621	t	f	t
619	Scrimmage	{"ipo": "private", "url": "wescrimmage.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Minneapolis, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.792449	2021-02-11 15:18:24.272753	t	f	t
620	optionsANIMAL	{"ipo": "private", "url": "optionsanimal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lehi, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.797772	2021-02-11 15:18:24.277111	t	f	t
599	NextPlane Inc.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.683593	2021-02-11 15:18:24.281266	f	t	t
598	Continuity Logic	{"ipo": "private", "url": "continuitylogic.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fairfield, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.677895	2021-02-11 15:18:24.285682	t	f	t
601	ApplicantStack Applicant Tracking Software	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.69372	2021-02-11 15:18:24.194672	f	t	t
627	Deven Software LLC	{"ipo": "private", "url": "devensoft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chantilly, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.833369	2021-02-11 15:18:24.29573	t	f	t
628	Scrum.org	{"ipo": "private", "url": "scrum.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cambridge, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.838481	2021-02-11 15:18:24.300194	t	f	t
629	Trapollo	{"ipo": "private", "url": "trapollo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Herndon, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.84325	2021-02-11 15:18:24.304747	t	f	t
631	HOMER Energy	{"ipo": "private", "url": "homerenergy.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boulder, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.8544	2021-02-11 15:18:24.309345	t	f	t
632	Signature Analytics	{"ipo": "private", "url": "signatureanalytics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.85962	2021-02-11 15:18:24.313663	t	f	t
634	Integro	{"ipo": "private", "url": "integro.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Englewood, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.86994	2021-02-11 15:18:24.318325	t	f	t
637	BSD - Building Systems Design	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.885144	2021-02-11 15:18:24.323316	f	t	t
646	College Recruiter	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.931486	2021-02-11 15:18:24.327835	f	t	t
639	Esha Research	{"ipo": "private", "url": "esha.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Salem, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.894505	2021-02-11 15:18:24.332251	t	f	t
640	Avionos	{"ipo": "private", "url": "avionos.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.900416	2021-02-11 15:18:24.337095	t	f	t
641	Vet2Pet	{"ipo": "private", "url": "vet2pet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Durango, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.9051	2021-02-11 15:18:24.341971	t	f	t
642	FILMLESS	{"ipo": "private", "url": "filmless.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.909792	2021-02-11 15:18:24.346815	t	f	t
644	Numera	{"ipo": "private", "url": "numera.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.921047	2021-02-11 15:18:24.351531	t	f	t
645	FYIsoft	{"ipo": "private", "url": "fyisoft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Naples, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.925832	2021-02-11 15:18:24.356833	t	f	t
647	Cloud FastPath	{"ipo": "private", "url": "cloudfastpath.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.936509	2021-02-11 15:18:24.36177	t	f	t
624	Idealist	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.818052	2021-02-11 15:18:24.37147	f	t	t
622	Americord Registry	{"ipo": "private", "url": "americordblood.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.807363	2021-02-11 15:18:24.37644	t	f	t
623	On Location Experiences	{"ipo": "private", "url": "nflonlocation.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "White Plains, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.812904	2021-02-11 15:18:24.381003	t	f	t
636	Rosy Salon Software	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.880189	2021-02-11 15:18:24.386497	f	t	t
626	Cloudingo	{"ipo": "private", "url": "cloudingo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.827672	2021-02-11 15:18:24.290739	t	f	t
655	Jigsaw Interactive	{"ipo": "private", "url": "jigsawinteractive.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alpharetta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.979233	2021-02-11 15:18:24.396753	t	f	t
656	Exacthire	{"ipo": "private", "url": "exacthire.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.985116	2021-02-11 15:18:24.401338	t	f	t
657	USPack Logistics	{"ipo": "private", "url": "gouspack.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.989954	2021-02-11 15:18:24.406164	t	f	t
658	Hanapin Marketing	{"ipo": "private", "url": "hanapinmarketing.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bloomington, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.994869	2021-02-11 15:18:24.410843	t	f	t
659	DatStat	{"ipo": "private", "url": "datstat.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.000838	2021-02-11 15:18:24.415664	t	f	t
661	Safari Energy	{"ipo": "private", "url": "safarienergy.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.010628	2021-02-11 15:18:24.42072	t	f	t
662	Sanity Solutions	{"ipo": "private", "url": "sanitysolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.016648	2021-02-11 15:18:24.426044	t	f	t
663	ACEDS (Association of Certified E-Discovery Specialists)	{"ipo": "private", "url": "aceds.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Saint Paul, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.02162	2021-02-11 15:18:24.430525	t	f	t
665	JMT Consulting Group	{"ipo": "private", "url": "jmtconsulting.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Patterson, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.032296	2021-02-11 15:18:24.435176	t	f	t
666	Sustainable Life Media	{"ipo": "private", "url": "sustainablebrands.comsustainablelifemedia", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.037625	2021-02-11 15:18:24.43986	t	f	t
667	TOPAZ Technologies	{"ipo": "private", "url": "topazti.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pflugerville, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.042361	2021-02-11 15:18:24.444245	t	f	t
668	Bop Design	{"ipo": "private", "url": "bopdesign.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.048075	2021-02-11 15:18:24.448939	t	f	t
670	Neurocore	{"ipo": "private", "url": "neurocorecenters.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Grand Rapids, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.058092	2021-02-11 15:18:24.453788	t	f	t
671	LCI	{"ipo": "private", "url": "lciinc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Burlingame, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.063673	2021-02-11 15:18:24.458691	t	f	t
672	Corporate Insight Inc	{"ipo": "private", "url": "corporateinsight.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.06891	2021-02-11 15:18:24.46331	t	f	t
673	ARMATURE Corporation	{"ipo": "private", "url": "armaturecorp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dulles, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.073615	2021-02-11 15:18:24.467718	t	f	t
651	Sportsdigita	{"ipo": "private", "url": "sportsdigita.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Minneapolis, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.958798	2021-02-11 15:18:24.472653	t	f	t
649	SyncDog	{"ipo": "private", "url": "syncdog.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Reston, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.947044	2021-02-11 15:18:24.477101	t	f	t
652	Techonomy Media	{"ipo": "private", "url": "techonomy.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.964092	2021-02-11 15:18:24.39196	t	f	t
679	ViOptix	{"ipo": "private", "url": "vioptix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fremont, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.103673	2021-02-11 15:18:24.486474	t	f	t
681	Great Bay Software	{"ipo": "private", "url": "greatbaysoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dover, New Hampshire, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.113852	2021-02-11 15:18:24.49159	t	f	t
683	Rapid Recon	{"ipo": "private", "url": "rapidrecon.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Palo Alto, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.124035	2021-02-11 15:18:24.496108	t	f	t
684	AHRN.com	{"ipo": "private", "url": "ahrn.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.129499	2021-02-11 15:18:24.500679	t	f	t
685	Lone Star Aerospace	{"ipo": "private", "url": "lone-star.comindex.php", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Addison, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.135086	2021-02-11 15:18:24.505548	t	f	t
686	GigeNet	{"ipo": "private", "url": "gigenet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Arlington Heights, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.140131	2021-02-11 15:18:24.510177	t	f	t
688	Mulligan Funding	{"ipo": "private", "url": "mulliganfunding.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.150622	2021-02-11 15:18:24.514627	t	f	t
689	Morningstar Corporation	{"ipo": "private", "url": "morningstarcorp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Newtown, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.155632	2021-02-11 15:18:24.519556	t	f	t
690	IPFone	{"ipo": "private", "url": "ipfone.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Miami, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.160801	2021-02-11 15:18:24.525165	t	f	t
691	Inntopia	{"ipo": "private", "url": "inntopia.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Stowe, Vermont, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.16647	2021-02-11 15:18:24.530363	t	f	t
693	PointCare	{"ipo": "private", "url": "pointcare.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Marlborough, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.179024	2021-02-11 15:18:24.535024	t	f	t
694	DecisionWise	{"ipo": "private", "url": "decision-wise.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Springville, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.184825	2021-02-11 15:18:24.5399	t	f	t
696	Studentreasures Publishing	{"ipo": "private", "url": "studentreasures.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Topeka, Kansas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.1953	2021-02-11 15:18:24.544555	t	f	t
698	Ignite Sales	{"ipo": "private", "url": "ignitesales.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.205948	2021-02-11 15:18:24.549371	t	f	t
699	Acquirent LLC	{"ipo": "private", "url": "acquirent.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Evanston, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.211008	2021-02-11 15:18:24.554465	t	f	t
700	Advantage Media Group	{"ipo": "private", "url": "advantagefamily.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Charleston, South Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.217058	2021-02-11 15:18:24.559247	t	f	t
676	Core-Apps	{"ipo": "private", "url": "core-apps.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Arnold, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.088424	2021-02-11 15:18:24.563607	t	f	t
678	Directorpoint	{"ipo": "private", "url": "directorpoint.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Birmingham, Alabama, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.098705	2021-02-11 15:18:24.568064	t	f	t
675	Verba Technologies	{"ipo": "private", "url": "verba.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cleveland, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.083382	2021-02-11 15:18:24.481648	t	f	t
1352	Apollo Endosurgery	{"ipo": "Public", "url": "apolloendo.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Austin, Texas, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.048381	2021-02-11 21:33:13.422641	t	f	f
707	Extractable	{"ipo": "private", "url": "extractable.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.253135	2021-02-11 15:18:24.577382	t	f	t
708	centrexIT	{"ipo": "private", "url": "centrexIT.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.257781	2021-02-11 15:18:24.581604	t	f	t
710	Brandtrust	{"ipo": "private", "url": "brandtrust.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.268164	2021-02-11 15:18:24.58637	t	f	t
711	Elegran	{"ipo": "private", "url": "elegran.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.273125	2021-02-11 15:18:24.591436	t	f	t
712	ROBO Global	{"ipo": "private", "url": "roboglobal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.278315	2021-02-11 15:18:24.596171	t	f	t
713	gEHRiMed Electronic Health Record	{"ipo": "private", "url": "gehrimed.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Asheville, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.283901	2021-02-11 15:18:24.600613	t	f	t
715	Sigmetrix	{"ipo": "private", "url": "sigmetrix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mckinney, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.292797	2021-02-11 15:18:24.605292	t	f	t
723	e-VERIFILE.COM	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.334662	2021-02-11 15:18:24.609827	f	t	t
717	DataFinch Technologies	{"ipo": "private", "url": "datafinch.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.303543	2021-02-11 15:18:24.614405	t	f	t
718	MobileFrame	{"ipo": "private", "url": "mobileframe.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Gatos, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.308187	2021-02-11 15:18:24.619119	t	f	t
719	Sentrana	{"ipo": "private", "url": "sentrana.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.313838	2021-02-11 15:18:24.624332	t	f	t
721	VidReach	{"ipo": "private", "url": "vidreach.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "West Point, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.323742	2021-02-11 15:18:24.628725	t	f	t
722	Modern Data	{"ipo": "private", "url": "moderndata.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Toledo, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.328584	2021-02-11 15:18:24.633284	t	f	t
724	ReadySpace	{"ipo": "private", "url": "readyspace.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.339604	2021-02-11 15:18:24.638174	t	f	t
703	Flagship Merchant Services	{"ipo": "private", "url": "flagshipmerchantservices.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Walnut Creek, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.232904	2021-02-11 15:18:24.642831	t	f	t
725	Recruitology	{"ipo": "private", "url": "recruitology.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.344368	2021-02-11 15:18:24.647689	t	f	t
780	FairFly	{"ipo": "private", "url": "fairfly.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.638319	2021-02-11 15:18:24.652656	t	f	t
716	Artisan Talent	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.298466	2021-02-11 15:18:24.658103	f	t	t
705	InSight Mobile Data	{"ipo": "private", "url": "insightmobiledata.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "California, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.242593	2021-02-11 15:18:24.662911	t	f	t
706	MarketSight	{"ipo": "private", "url": "marketsight.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Newton, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.248164	2021-02-11 15:18:24.572789	t	f	t
734	Boopsie	{"ipo": "private", "url": "boopsie.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sunnyvale, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.392388	2021-02-11 15:18:24.672932	t	f	t
752	ALS | Resolvion	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.488457	2021-02-11 15:18:24.682392	f	t	t
736	HSG	{"ipo": "private", "url": "hedgehogs.lv", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Riga, Riga, Latvia", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.40476	2021-02-11 15:18:24.68783	t	f	t
739	Fastmetrics	{"ipo": "private", "url": "fastmetrics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.420281	2021-02-11 15:18:24.692747	t	f	t
740	Configero	{"ipo": "private", "url": "configero.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.425203	2021-02-11 15:18:24.697099	t	f	t
741	BookPal	{"ipo": "private", "url": "book-pal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.430806	2021-02-11 15:18:24.702078	t	f	t
742	Advanced Kiosks	{"ipo": "private", "url": "advancedkiosks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Concord, New Hampshire, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.436303	2021-02-11 15:18:24.706811	t	f	t
744	Coit Group	{"ipo": "private", "url": "coitgroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.447089	2021-02-11 15:18:24.711548	t	f	t
745	SurePeople	{"ipo": "private", "url": "surepeople.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Rosamond, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.452674	2021-02-11 15:18:24.716453	t	f	t
746	SuiteHop	{"ipo": "private", "url": "suitehop.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.457511	2021-02-11 15:18:24.721181	t	f	t
747	SMBHD	{"ipo": "private", "url": "smbhd.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.462889	2021-02-11 15:18:24.72612	t	f	t
749	ONE Discovery	{"ipo": "private", "url": "onediscovery.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Falls Church, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.473215	2021-02-11 15:18:24.730706	t	f	t
750	Charles IT	{"ipo": "private", "url": "charlesit.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Middletown, Connecticut, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.478011	2021-02-11 15:18:24.735389	t	f	t
751	Emotive Brand	{"ipo": "private", "url": "emotivebrand.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.483563	2021-02-11 15:18:24.740251	t	f	t
753	PayDC Chiropractic Software	{"ipo": "private", "url": "paydc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Huntingdon Valley, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.493079	2021-02-11 15:18:24.744901	t	f	t
730	Fare Buzz	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.371634	2021-02-11 15:18:24.749214	f	t	t
728	Life Science Nation (LSN)	{"ipo": "private", "url": "lifesciencenation.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.360294	2021-02-11 15:18:24.7541	t	f	t
729	SaaScend	{"ipo": "private", "url": "saascend.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.366577	2021-02-11 15:18:24.759215	t	f	t
735	AB&R	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.399878	2021-02-11 15:18:24.76391	f	t	t
732	Grow	{"ipo": "private", "url": "growbutton.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Berkeley, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.382205	2021-02-11 15:18:24.667749	t	f	t
760	Douglas Products	{"ipo": "private", "url": "douglasproducts.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Liberty, Missouri, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.530038	2021-02-11 15:18:24.774557	t	f	t
761	Educe Group	{"ipo": "private", "url": "educegroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bethesda, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.535037	2021-02-11 15:18:24.779429	t	f	t
763	Kyrio	{"ipo": "private", "url": "kyrio.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Louisville, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.545361	2021-02-11 15:18:24.78489	t	f	t
764	ECO Roof and Solar	{"ipo": "private", "url": "ecoroofandsolar.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sheridan Lake, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.550908	2021-02-11 15:18:24.790308	t	f	t
765	Tech Electronics	{"ipo": "private", "url": "techelectronics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "St Louis, Missouri, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.555768	2021-02-11 15:18:24.795242	t	f	t
767	Asahi Kasei Bioprocess America	{"ipo": "private", "url": "ak-bio.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Glenview, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.565955	2021-02-11 15:18:24.799631	t	f	t
768	NetCraftsmen	{"ipo": "private", "url": "netcraftsmen.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Columbia, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.570959	2021-02-11 15:18:24.804211	t	f	t
769	Encina group	{"ipo": "private", "url": "encinabc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.575857	2021-02-11 15:18:24.808694	t	f	t
770	AdvisorShares	{"ipo": "private", "url": "advisorshares.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bethesda, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.581986	2021-02-11 15:18:24.813025	t	f	t
776	AutomaTech	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.61489	2021-02-11 15:18:24.817514	f	t	t
773	PBHS	{"ipo": "private", "url": "pbhs.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Rosa, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.597755	2021-02-11 15:18:24.822391	t	f	t
774	CourtTrax	{"ipo": "private", "url": "courttrax.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bellevue, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.603368	2021-02-11 15:18:24.826998	t	f	t
775	Comtrol Corporation	{"ipo": "private", "url": "comtrol.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New Brighton, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.608623	2021-02-11 15:18:24.831536	t	f	t
777	Lightcrest	{"ipo": "private", "url": "lightcrest.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.62253	2021-02-11 15:18:24.836114	t	f	t
755	SEMGeeks	{"ipo": "private", "url": "semgeeks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Belmar, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.50429	2021-02-11 15:18:24.840935	t	f	t
779	Complus Data Innovations	{"ipo": "private", "url": "complusdata.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tarrytown, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.633189	2021-02-11 15:18:24.8461	t	f	t
756	TD International	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.509255	2021-02-11 15:18:24.851126	f	t	t
771	Economics Partners	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.587172	2021-02-11 15:18:24.85667	f	t	t
758	Integrity Solutions	{"ipo": "private", "url": "integritysolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Scottsdale, Arizona, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.520116	2021-02-11 15:18:24.8616	t	f	t
759	BigSpeak Speakers Bureau	{"ipo": "private", "url": "bigspeak.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Barbara, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.524951	2021-02-11 15:18:24.769104	t	f	t
795	MeetingOne Audio & Web Conferencing	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.720055	2021-02-11 15:18:24.870959	f	t	t
787	Dakota Systems Inc	{"ipo": "private", "url": "daksys.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.674662	2021-02-11 15:18:24.875737	t	f	t
789	IMI Products	{"ipo": "private", "url": "imiproducts.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chambersburg, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.685735	2021-02-11 15:18:24.880224	t	f	t
790	Somnio Solutions	{"ipo": "private", "url": "somnio.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.690874	2021-02-11 15:18:24.884816	t	f	t
791	Client Command	{"ipo": "private", "url": "clientcommand.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cumming, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.696057	2021-02-11 15:18:24.889912	t	f	t
792	Oasis Solutions	{"ipo": "private", "url": "oasisky.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Louisville, Kentucky, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.702156	2021-02-11 15:18:24.894482	t	f	t
793	Haberfeld Associates	{"ipo": "private", "url": "haberfeld.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lincoln, Nebraska, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.707174	2021-02-11 15:18:24.899025	t	f	t
800	Luminex Trading & Analytics	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.745203	2021-02-11 15:18:24.903776	f	t	t
796	ArrayFire	{"ipo": "private", "url": "arrayfire.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.724955	2021-02-11 15:18:24.908451	t	f	t
797	Doublehorn	{"ipo": "private", "url": "doublehorn.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.730346	2021-02-11 15:18:24.913028	t	f	t
798	BuilderMT	{"ipo": "private", "url": "buildermt.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lakewood, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.735388	2021-02-11 15:18:24.917948	t	f	t
799	SmartMeetings	{"ipo": "private", "url": "smartmeetings.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sausalito, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.740164	2021-02-11 15:18:24.924109	t	f	t
802	Anchor Point IT Solutions	{"ipo": "private", "url": "ap-its.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Barbara, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.755474	2021-02-11 15:18:24.928628	t	f	t
786	NTEN	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.66975	2021-02-11 15:18:24.932981	f	t	t
803	Sportradar US	{"ipo": "private", "url": "sportradar.us", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.760228	2021-02-11 15:18:24.937646	t	f	t
804	BestTransport	{"ipo": "private", "url": "besttransport.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Columbus, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.76588	2021-02-11 15:18:24.943037	t	f	t
805	Exigis	{"ipo": "private", "url": "exigis.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.770956	2021-02-11 15:18:24.948137	t	f	t
783	Continuous Networks	{"ipo": "private", "url": "continuous.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.654565	2021-02-11 15:18:24.953542	t	f	t
784	Nemertes	{"ipo": "private", "url": "nemertes.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mokena, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.659529	2021-02-11 15:18:24.95843	t	f	t
785	Mainstay Technologies	{"ipo": "private", "url": "mstech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Manchester, New Hampshire, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.664986	2021-02-11 15:18:24.866242	t	f	t
813	GCA Technology Services (GCA)	{"ipo": "private", "url": "gca.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Clearwater, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.812998	2021-02-11 15:18:24.967162	t	f	t
828	VIPSoftware	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.893259	2021-02-11 15:18:24.972093	f	t	t
816	CoCounselor	{"ipo": "private", "url": "cocounselor.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.829251	2021-02-11 15:18:24.976789	t	f	t
817	Stonebriar Commerical Finance	{"ipo": "private", "url": "stonebriarcf.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Plano, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.83469	2021-02-11 15:18:24.98146	t	f	t
818	The Center for Public Integrity	{"ipo": "private", "url": "publicintegrity.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.83959	2021-02-11 15:18:24.99074	t	f	t
819	Dakota	{"ipo": "private", "url": "dakota.co", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bryn Mawr, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.84691	2021-02-11 15:18:24.995877	t	f	t
821	Stimulus Technologies	{"ipo": "private", "url": "stimulustech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Henderson, Nevada, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.857675	2021-02-11 15:18:25.000737	t	f	t
822	Wheelhouse Digital Marketing Group	{"ipo": "private", "url": "wheelhousedmg.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.863111	2021-02-11 15:18:25.005638	t	f	t
823	VeriPic	{"ipo": "private", "url": "veripic.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Jose, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.868182	2021-02-11 15:18:25.010256	t	f	t
824	DISCUS Software Company	{"ipo": "private", "url": "discussoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Columbus, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.872946	2021-02-11 15:18:25.014985	t	f	t
826	Data Systems of Texas	{"ipo": "private", "url": "datasystx.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Waco, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.883538	2021-02-11 15:18:25.019774	t	f	t
827	Universal Funding	{"ipo": "private", "url": "universalfunding.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Spokane, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.888462	2021-02-11 15:18:25.024676	t	f	t
829	Response Media	{"ipo": "private", "url": "responsemedia.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.899341	2021-02-11 15:18:25.029463	t	f	t
815	Fierce	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.823789	2021-02-11 15:18:25.03385	f	t	t
830	NetPlus Alliance	{"ipo": "private", "url": "netplusalliance.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lockport, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.904672	2021-02-11 15:18:25.038593	t	f	t
832	Easy Dental	{"ipo": "private", "url": "easydental.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Traverse City, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.915085	2021-02-11 15:18:25.043022	t	f	t
808	Zweig Group	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.786646	2021-02-11 15:18:25.047309	f	t	t
809	Tychon	{"ipo": "private", "url": "tychon.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fairfax, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.791538	2021-02-11 15:18:25.051478	t	f	t
811	Datanami	{"ipo": "private", "url": "datanami.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.802275	2021-02-11 15:18:25.056266	t	f	t
812	ZeeVee	{"ipo": "private", "url": "zeevee.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Littleton, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.807277	2021-02-11 15:18:24.962824	t	f	t
841	Austin Capital Trust Company	{"ipo": "private", "url": "austincapitaltrust.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Henderson, Nevada, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.961388	2021-02-11 15:18:25.065556	t	f	t
842	NextLeft	{"ipo": "private", "url": "nextleft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Woodland Hills, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.967311	2021-02-11 15:18:25.070344	t	f	t
843	Studycast Cloud PACS	{"ipo": "private", "url": "corestudycast.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.972158	2021-02-11 15:18:25.075065	t	f	t
851	FMA (Fiscal Management Associates	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.012869	2021-02-11 15:18:25.079557	f	t	t
845	WORLDZ	{"ipo": "private", "url": "worldz.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Milano, Lombardia, Italy", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.982173	2021-02-11 15:18:25.08408	t	f	t
847	Pear Analytics	{"ipo": "private", "url": "pearanalytics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Antonio, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.992259	2021-02-11 15:18:25.08939	t	f	t
848	Socialtyze	{"ipo": "private", "url": "socialtyze.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.997728	2021-02-11 15:18:25.094453	t	f	t
849	BrightStores	{"ipo": "private", "url": "brightstores.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.002798	2021-02-11 15:18:25.09898	t	f	t
853	Consero Group LLC	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.023275	2021-02-11 15:18:25.103696	f	t	t
852	Aha Media Group	{"ipo": "private", "url": "ahamediagroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Spring Gap, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.018186	2021-02-11 15:18:25.108421	t	f	t
858	Versus Capital Advisors	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.050558	2021-02-11 15:18:25.11302	f	t	t
854	Griffin Funding	{"ipo": "private", "url": "griffinfunding.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.028587	2021-02-11 15:18:25.117553	t	f	t
855	maps.com	{"ipo": "private", "url": "maps.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Barbara, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.034585	2021-02-11 15:18:25.122497	t	f	t
856	Healthcare Success	{"ipo": "private", "url": "healthcaresuccess.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.039651	2021-02-11 15:18:25.127365	t	f	t
857	InteractOne	{"ipo": "private", "url": "interactone.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cincinnati, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.044464	2021-02-11 15:18:25.131914	t	f	t
834	W&M Environmental Group	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.925087	2021-02-11 15:18:25.136776	f	t	t
844	CM&F Group	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.976846	2021-02-11 15:18:25.141539	f	t	t
836	UTAK Laboratories	{"ipo": "private", "url": "utak.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Valencia, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.935731	2021-02-11 15:18:25.146144	t	f	t
837	Silversphere	{"ipo": "private", "url": "silversphere.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Daytona Beach, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.940571	2021-02-11 15:18:25.150697	t	f	t
839	Cell Culture Company	{"ipo": "private", "url": "cellculturecompany.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Minneapolis, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.951659	2021-02-11 15:18:25.061138	t	f	t
864	Grid4 Communications	{"ipo": "private", "url": "grid4.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Troy, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.084618	2021-02-11 15:18:25.161038	t	f	t
878	Atlanta BeltLine	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.158008	2021-02-11 15:18:25.166042	f	t	t
867	DataBrains	{"ipo": "private", "url": "databrains.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Ponte Vedra, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.100492	2021-02-11 15:18:25.171046	t	f	t
868	International Association of Business Communicators	{"ipo": "private", "url": "iabc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.105535	2021-02-11 15:18:25.176768	t	f	t
869	The Barrett Group	{"ipo": "private", "url": "careerchange.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cranston, Rhode Island, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.110484	2021-02-11 15:18:25.181641	t	f	t
870	Centrix Solutions	{"ipo": "private", "url": "centrixsolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lincoln, Nebraska, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.116498	2021-02-11 15:18:25.186591	t	f	t
871	NENA	{"ipo": "private", "url": "nena.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alexandria, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.121832	2021-02-11 15:18:25.19125	t	f	t
873	Ocearch	{"ipo": "private", "url": "ocearch.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Park City, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.132349	2021-02-11 15:18:25.196018	t	f	t
874	WCA Technologies	{"ipo": "private", "url": "wcatech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.137388	2021-02-11 15:18:25.201054	t	f	t
875	The Garage Group	{"ipo": "private", "url": "thegaragegroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cincinnati, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.14246	2021-02-11 15:18:25.20629	t	f	t
876	RokaCom	{"ipo": "private", "url": "rokacom.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Herndon, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.14805	2021-02-11 15:18:25.211292	t	f	t
879	Allied Technology Group	{"ipo": "private", "url": "alliedtechgroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Little Rock, Arkansas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.163378	2021-02-11 15:18:25.215981	t	f	t
865	McGrath & Associates	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.089767	2021-02-11 15:18:25.221035	f	t	t
880	Vision Computer Solutions	{"ipo": "private", "url": "vcsolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Northville, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.168632	2021-02-11 15:18:25.225827	t	f	t
881	PECAA	{"ipo": "private", "url": "pecaa.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Portland, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.173453	2021-02-11 15:18:25.23043	t	f	t
883	GreenPearl Events	{"ipo": "private", "url": "greenpearl.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.184347	2021-02-11 15:18:25.234851	t	f	t
884	Strategic Growth	{"ipo": "private", "url": "strategicgrowthinc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.189161	2021-02-11 15:18:25.239779	t	f	t
861	PolicyMap	{"ipo": "private", "url": "policymap.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Philadelphia, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.066921	2021-02-11 15:18:25.244281	t	f	t
862	FinServ Consulting	{"ipo": "private", "url": "finservconsulting.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.074103	2021-02-11 15:18:25.248727	t	f	t
863	Dealer Wizard	{"ipo": "private", "url": "dealerwizard.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.079376	2021-02-11 15:18:25.155661	t	f	t
890	G I Jobs	{"ipo": "private", "url": "gijobs.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sewickley, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.220906	2021-02-11 15:18:25.258467	t	f	t
891	Storix	{"ipo": "private", "url": "storix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.225694	2021-02-11 15:18:25.263529	t	f	t
893	EstesGroup	{"ipo": "private", "url": "estesgrp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Loveland, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.237094	2021-02-11 15:18:25.268686	t	f	t
894	Kiriworks	{"ipo": "private", "url": "kiriworks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Milwaukee, Wisconsin, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.241817	2021-02-11 15:18:25.27387	t	f	t
895	Encore Financial Group	{"ipo": "private", "url": "encorefinancialgroup.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cheboygan, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.247373	2021-02-11 15:18:25.278492	t	f	t
896	Celito Communications	{"ipo": "private", "url": "celito.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.252749	2021-02-11 15:18:25.283201	t	f	t
898	Bank Director	{"ipo": "private", "url": "bankdirector.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brentwood, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.263456	2021-02-11 15:18:25.292836	t	f	t
899	Sports Shares	{"ipo": "private", "url": "sportsshares.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.269054	2021-02-11 15:18:25.298149	t	f	t
900	CoachArt	{"ipo": "private", "url": "coachart.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.274031	2021-02-11 15:18:25.303173	t	f	t
901	Centrinet	{"ipo": "private", "url": "centrinetcorp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alpharetta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.279292	2021-02-11 15:18:25.307832	t	f	t
903	Miro Consulting	{"ipo": "private", "url": "miroconsulting.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Woodbridge, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.289957	2021-02-11 15:18:25.312287	t	f	t
907	Stupid Cancer	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.312808	2021-02-11 15:18:25.316872	f	t	t
905	Living Future Institute	{"ipo": "private", "url": "living-future.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.302534	2021-02-11 15:18:25.321929	t	f	t
906	PowerGistics	{"ipo": "private", "url": "powergistics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Madison, Wisconsin, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.307423	2021-02-11 15:18:25.32777	t	f	t
910	Ascent Processing Inc.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.327431	2021-02-11 15:18:25.33316	f	t	t
908	Innovative Benefit Planning	{"ipo": "private", "url": "ibpllc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Moorestown, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.317836	2021-02-11 15:18:25.338155	t	f	t
886	Computer Resources	{"ipo": "private", "url": "cri-mms.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Barrington, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.200175	2021-02-11 15:18:25.342804	t	f	t
904	Charge.com Payment Solutions	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.297396	2021-02-11 15:18:25.347249	f	t	t
888	M3 Design	{"ipo": "private", "url": "m3design.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Round Rock, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.210004	2021-02-11 15:18:25.352009	t	f	t
889	ViziRecruiter	{"ipo": "private", "url": "vizirecruiter.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Troy, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.215743	2021-02-11 15:18:25.253634	t	f	t
926	Pinot’s Palette	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.413658	2021-02-11 15:18:25.361888	f	t	t
917	Datron	{"ipo": "private", "url": "datron.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Livermore, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.36515	2021-02-11 15:18:25.366694	t	f	t
919	Prismier	{"ipo": "private", "url": "prismier.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Woodridge, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.375051	2021-02-11 15:18:25.371907	t	f	t
920	Object 9	{"ipo": "private", "url": "object9.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Baton Rouge, Louisiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.38045	2021-02-11 15:18:25.376472	t	f	t
921	CopperHill Consulting	{"ipo": "private", "url": "copperhillconsulting.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Newtown, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.385557	2021-02-11 15:18:25.381224	t	f	t
922	Topgrading	{"ipo": "private", "url": "topgrading.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Wadsworth, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.39036	2021-02-11 15:18:25.387039	t	f	t
923	Get Noticed Get Found (GNGF)	{"ipo": "private", "url": "gngf.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cincinnati, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.395541	2021-02-11 15:18:25.392891	t	f	t
925	Scale Logic	{"ipo": "private", "url": "scalelogicinc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bloomington, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.406599	2021-02-11 15:18:25.397854	t	f	t
927	CSG Pro	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.419043	2021-02-11 15:18:25.402554	f	t	t
930	Viking Mergers & Acquisitions	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.434563	2021-02-11 15:18:25.4074	f	t	t
928	PowerPhone	{"ipo": "private", "url": "powerphone.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Madison, Connecticut, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.423831	2021-02-11 15:18:25.411957	t	f	t
929	PepperDash	{"ipo": "private", "url": "pepperdash.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Salem, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.428829	2021-02-11 15:18:25.416784	t	f	t
933	PMG Inc.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.450106	2021-02-11 15:18:25.422213	f	t	t
934	ZingIt	{"ipo": "private", "url": "zingitmobile.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Henderson, Nevada, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.455018	2021-02-11 15:18:25.427157	t	f	t
935	MoZeus Worldwide	{"ipo": "private", "url": "mozeus.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Conyers, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.459809	2021-02-11 15:18:25.431819	t	f	t
916	Trans Lease	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.359257	2021-02-11 15:18:25.436954	f	t	t
936	CloudRoute	{"ipo": "private", "url": "cloudroute.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cleveland, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.465599	2021-02-11 15:18:25.442609	t	f	t
913	iSecure	{"ipo": "private", "url": "isecurenet.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pittsford, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.34359	2021-02-11 15:18:25.448416	t	f	t
914	Heller Consulting	{"ipo": "private", "url": "teamheller.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.349182	2021-02-11 15:18:25.453905	t	f	t
915	Search Solution Group	{"ipo": "private", "url": "searchsolutiongroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Charlotte, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.354387	2021-02-11 15:18:25.35711	t	f	t
1365	Tantech Holdings	{"ipo": "Public", "url": "tantech.cn", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Lishui, Jiangsu, China", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.114485	2021-02-11 21:35:48.694054	t	f	f
952	Elevated Roofing	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.552672	2021-02-11 15:18:25.463815	f	t	t
944	Smart Electric Power Alliance	{"ipo": "private", "url": "sepapower.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.50758	2021-02-11 15:18:25.468606	t	f	t
945	Bulletin of the Atomic Scientists	{"ipo": "private", "url": "thebulletin.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.513186	2021-02-11 15:18:25.473417	t	f	t
946	Strategic Mobility Group	{"ipo": "private", "url": "strategicmobility.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Schaumburg, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.520888	2021-02-11 15:18:25.477958	t	f	t
947	CleanTechies	{"ipo": "private", "url": "CleanTechies.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.52581	2021-02-11 15:18:25.482378	t	f	t
949	National Ultrasound	{"ipo": "private", "url": "nationalultrasound.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Duluth, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.536811	2021-02-11 15:18:25.487518	t	f	t
950	YesData	{"ipo": "private", "url": "yesdata.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pelham, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.541649	2021-02-11 15:18:25.492377	t	f	t
951	CoreTech Leasing	{"ipo": "private", "url": "coretechleasing.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Newport Beach, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.547089	2021-02-11 15:18:25.497308	t	f	t
957	Actum Processing	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.578378	2021-02-11 15:18:25.50209	f	t	t
953	BBTech Solutions	{"ipo": "private", "url": "bbtechsolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Richardson, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.557566	2021-02-11 15:18:25.507481	t	f	t
955	Make The Road New York	{"ipo": "private", "url": "maketheroadny.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brooklyn, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.568588	2021-02-11 15:18:25.512375	t	f	t
956	PixelFLEX	{"ipo": "private", "url": "pixelflexled.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Nashville, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.573451	2021-02-11 15:18:25.517298	t	f	t
962	Sturtevant Inc.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.604588	2021-02-11 15:18:25.522379	f	t	t
958	DocAuto	{"ipo": "private", "url": "docauto.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Peachtree City, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.584207	2021-02-11 15:18:25.527333	t	f	t
960	Lansing Economic Area Partnership	{"ipo": "private", "url": "purelansing.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lansing, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.593873	2021-02-11 15:18:25.53179	t	f	t
961	Demand Chain Systems	{"ipo": "private", "url": "demandchainsystems.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Plymouth, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.599411	2021-02-11 15:18:25.536554	t	f	t
942	Triple Creek River	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.496702	2021-02-11 15:18:25.541254	f	t	t
939	Raleigh Studios	{"ipo": "private", "url": "raleighstudios.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "West Hollywood, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.481351	2021-02-11 15:18:25.545783	t	f	t
940	Local Wisdom	{"ipo": "private", "url": "localwisdom.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lambertville, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.486512	2021-02-11 15:18:25.550154	t	f	t
941	Alliance for Lupus Research	{"ipo": "private", "url": "lupusresearch.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.491377	2021-02-11 15:18:25.459202	t	f	t
969	EpicVue	{"ipo": "private", "url": "epicvue.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Holladay, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.640033	2021-02-11 15:18:25.559838	t	f	t
986	Car People Marketing	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.731608	2021-02-11 15:18:25.564881	f	t	t
971	Comres	{"ipo": "private", "url": "comresusa.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Deerfield Beach, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.65063	2021-02-11 15:18:25.569969	t	f	t
973	Flagship Solutions Group	{"ipo": "private", "url": "flagshipsg.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boca Raton, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.660511	2021-02-11 15:18:25.574858	t	f	t
974	OpNFV	{"ipo": "private", "url": "opnfv.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.666131	2021-02-11 15:18:25.579237	t	f	t
975	Creative Information Systems	{"ipo": "private", "url": "creativeinfo.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Manchester, New Hampshire, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.671168	2021-02-11 15:18:25.583883	t	f	t
977	HPCwire	{"ipo": "private", "url": "hpcwire.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.68235	2021-02-11 15:18:25.593942	t	f	t
978	Intelligis	{"ipo": "private", "url": "intelligis.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Norcross, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.68745	2021-02-11 15:18:25.598954	t	f	t
979	McIlveen Family Law Firm	{"ipo": "private", "url": "mcilveenfamilylaw.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Charlotte, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.692201	2021-02-11 15:18:25.603713	t	f	t
980	Sparxoo	{"ipo": "private", "url": "sparxoo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.697533	2021-02-11 15:18:25.608543	t	f	t
981	MainDataGroup	{"ipo": "private", "url": "maindatagroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Morgan Hill, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.702589	2021-02-11 15:18:25.613151	t	f	t
983	DBG Construction	{"ipo": "private", "url": "dbgconstruction.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oklahoma City, Oklahoma, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.713605	2021-02-11 15:18:25.617661	t	f	t
984	Fifthroom	{"ipo": "private", "url": "fifthroom.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Gibsonia, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.719456	2021-02-11 15:18:25.622932	t	f	t
985	JarredBunch	{"ipo": "private", "url": "jarredbunch.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.724444	2021-02-11 15:18:25.627757	t	f	t
987	C + TC Design Studio	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.738766	2021-02-11 15:18:25.632268	f	t	t
964	FireOak Strategies	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.614825	2021-02-11 15:18:25.636896	f	t	t
965	Thunder Valley Community Development Corp.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.619678	2021-02-11 15:18:25.641748	f	t	t
970	EMI - Research Solutions	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.644798	2021-02-11 15:18:25.646303	f	t	t
967	Jetcraft	{"ipo": "private", "url": "jetcraft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.629346	2021-02-11 15:18:25.65087	t	f	t
968	Triadex Services	{"ipo": "private", "url": "triadexservices.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.635133	2021-02-11 15:18:25.555046	t	f	t
994	Raydoor	{"ipo": "private", "url": "raydoor.comindex.html", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.776687	2021-02-11 15:18:25.660649	t	f	t
996	Westcoast Connection / 360å¡ Student Travel	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.787313	2021-02-11 15:18:25.665906	f	t	t
1003	ESSCOE	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.825438	2021-02-11 15:18:25.670922	f	t	t
997	Center for Economic Growth	{"ipo": "private", "url": "ceg.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Albany, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.792191	2021-02-11 15:18:25.676312	t	f	t
999	Capitol Media Solutions	{"ipo": "private", "url": "capitolmediasolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.803034	2021-02-11 15:18:25.681357	t	f	t
1000	Crocker Communications	{"ipo": "private", "url": "crocker.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Greenfield, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.80767	2021-02-11 15:18:25.686427	t	f	t
1001	Rosemont Media	{"ipo": "private", "url": "rosemontmedia.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.812702	2021-02-11 15:18:25.691529	t	f	t
1006	Allied Insurance Brokers	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.840811	2021-02-11 15:18:25.696139	f	t	t
1004	Sterling Ledet Adobe Training	{"ipo": "private", "url": "ledet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.830795	2021-02-11 15:18:25.700651	t	f	t
1005	TwinFold Capital	{"ipo": "private", "url": "twinfoldcapital.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.835767	2021-02-11 15:18:25.705544	t	f	t
1007	Entre Technology Services	{"ipo": "private", "url": "entremt.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Billings, Montana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.84621	2021-02-11 15:18:25.710346	t	f	t
992	ST. Gregory Retreat Center	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.766525	2021-02-11 15:18:25.714925	f	t	t
1008	LM Consultants	{"ipo": "private", "url": "lmconsultants.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Grayslake, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.851925	2021-02-11 15:18:25.719569	t	f	t
1010	TTSG	{"ipo": "private", "url": "ttsg.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Saint Charles, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.861972	2021-02-11 15:18:25.724841	t	f	t
1011	Ashar Group	{"ipo": "private", "url": "ashargroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Flushing, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.867951	2021-02-11 15:18:25.729584	t	f	t
1012	Lewer	{"ipo": "private", "url": "lewer.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Overland Park, Kansas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.872934	2021-02-11 15:18:25.73423	t	f	t
1013	Air Ad Promotions	{"ipo": "private", "url": "airadpromotions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.877857	2021-02-11 15:18:25.739021	t	f	t
991	Professional Computer Support	{"ipo": "private", "url": "pcs-sf.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.760783	2021-02-11 15:18:25.743639	t	f	t
995	The Miracle Foundation	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.782373	2021-02-11 15:18:25.747941	f	t	t
993	Technology Solutions Associates	{"ipo": "private", "url": "techsola.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lancaster, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.771586	2021-02-11 15:18:25.656062	t	f	t
1023	Bluegrass Integrated Communications	{"ipo": "private", "url": "wearebluegrass.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lexington, Kentucky, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.930289	2021-02-11 15:18:25.757697	t	f	t
1024	Advanced Telecom Systems LLC	{"ipo": "private", "url": "boostpoorsignal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.93592	2021-02-11 15:18:25.762241	t	f	t
1025	Allgen Financial Services	{"ipo": "private", "url": "allgenfinancial.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Orlando, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.94087	2021-02-11 15:18:25.766643	t	f	t
1026	TrustRadius	{"ipo": "private", "url": "trustradius.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.495175	2021-02-11 15:18:25.771684	t	f	t
1030	Filestack	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.516976	2021-02-11 15:18:25.776608	f	t	t
1029	Indicative	{"ipo": "private", "url": "indicative.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.512146	2021-02-11 15:18:25.781588	t	f	t
1032	UpCity	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.52818	2021-02-11 15:18:25.786588	f	t	t
1031	Payoff	{"ipo": "private", "url": "payoff.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tustin, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.522877	2021-02-11 15:18:25.791475	t	f	t
1035	Hickory	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.544729	2021-02-11 15:18:25.796876	f	t	t
1033	LOFTY	{"ipo": "private", "url": "lofty.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.533412	2021-02-11 15:18:25.80208	t	f	t
1034	GreatSchools.org	{"ipo": "private", "url": "greatschools.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.539357	2021-02-11 15:18:25.807058	t	f	t
1037	Krome Photos	{"ipo": "private", "url": "kromephotos.commain", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Palo Alto, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.5543	2021-02-11 15:18:25.81173	t	f	t
1038	Need Supply	{"ipo": "private", "url": "needsupply.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Richmond, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.559252	2021-02-11 15:18:25.816306	t	f	t
1027	Compare.com	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.501634	2021-02-11 15:18:25.821174	f	t	t
1039	Galavantier	{"ipo": "private", "url": "Galavantier.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Las Vegas, Nevada, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.564295	2021-02-11 15:18:25.826084	t	f	t
1040	Digiday	{"ipo": "private", "url": "digiday.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.569203	2021-02-11 15:18:25.830649	t	f	t
1016	Maiello	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.893937	2021-02-11 15:18:25.835221	f	t	t
1019	Roman and Roman	{"ipo": "private", "url": "romanromanlaw.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Clearwater, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.909318	2021-02-11 15:18:25.840289	t	f	t
1020	Sterling Trustees	{"ipo": "private", "url": "sterlingtrustees.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sioux Falls, South Dakota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.914589	2021-02-11 15:18:25.84516	t	f	t
1021	Allure Farms	{"ipo": "private", "url": "allurefarms.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Doral, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.919845	2021-02-11 15:18:25.752343	t	f	t
1372	Cerus	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.15113	2021-02-11 21:37:40.93282	f	t	f
1047	Fame House	{"ipo": "private", "url": "famehouse.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Philadelphia, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.606392	2021-02-11 15:18:25.855228	t	f	t
1048	Bocada	{"ipo": "private", "url": "bocada.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Kirkland, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.611413	2021-02-11 15:18:25.860054	t	f	t
1049	Galileo Learning	{"ipo": "private", "url": "galileo-camps.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.616331	2021-02-11 15:18:25.864966	t	f	t
1050	ObjectRocket	{"ipo": "private", "url": "objectrocket.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.621735	2021-02-11 15:18:25.8702	t	f	t
1054	4Cite Marketing	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.642534	2021-02-11 15:18:25.879775	f	t	t
1053	Ship Sticks	{"ipo": "private", "url": "shipsticks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "West Palm Beach, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.636841	2021-02-11 15:18:25.884397	t	f	t
1062	Mobile Loaves & Fishes	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.69254	2021-02-11 15:18:25.889281	f	t	t
1055	SCLogic	{"ipo": "private", "url": "sclogic.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Annapolis, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.647393	2021-02-11 15:18:25.893895	t	f	t
1056	Marketopia	{"ipo": "private", "url": "marketopia.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pinellas Park, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.652144	2021-02-11 15:18:25.898306	t	f	t
1057	Pervasent	{"ipo": "private", "url": "pervasent.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.657944	2021-02-11 15:18:25.902831	t	f	t
1059	WorldClinic	{"ipo": "private", "url": "worldclinic.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New London, New Hampshire, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.668274	2021-02-11 15:18:25.90756	t	f	t
1060	Center for a New American Security	{"ipo": "private", "url": "cnas.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.681253	2021-02-11 15:18:25.911997	t	f	t
1061	Magellan Jets	{"ipo": "private", "url": "magellanjets.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Quincy, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.68688	2021-02-11 15:18:25.91656	t	f	t
1066	Celestix	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.714063	2021-02-11 15:18:25.921841	f	t	t
1064	atEvent	{"ipo": "private", "url": "at-event.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Ramon, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.70387	2021-02-11 15:18:25.926434	t	f	t
1065	Wild Birds Unlimited	{"ipo": "private", "url": "wbu.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carmel, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.709075	2021-02-11 15:18:25.930639	t	f	t
1051	Pinnacle Cart eCommerce Solution	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.626941	2021-02-11 15:18:25.935146	f	t	t
1043	CogniFit	{"ipo": "private", "url": "cognifit.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.585201	2021-02-11 15:18:25.939855	t	f	t
1044	Weblium	{"ipo": "private", "url": "weblium.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fort Lauderdale, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.590798	2021-02-11 15:18:25.944366	t	f	t
1045	HumanN	{"ipo": "private", "url": "humann.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.595854	2021-02-11 15:18:25.850046	t	f	t
1072	Blue Star Families	{"ipo": "private", "url": "bluestarfam.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Encinitas, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.74517	2021-02-11 15:18:25.953609	t	f	t
1073	Fan Centric	{"ipo": "private", "url": "fanmailmarketing.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cincinnati, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.750152	2021-02-11 15:18:25.958722	t	f	t
1074	CITIZEN TIMES	{"ipo": "private", "url": "citizen-times.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Asheville, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.755615	2021-02-11 15:18:25.963242	t	f	t
1076	Mission Asset Fund	{"ipo": "private", "url": "missionassetfund.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.765077	2021-02-11 15:18:25.968002	t	f	t
1077	eimagine	{"ipo": "private", "url": "eimagine.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.770474	2021-02-11 15:18:25.972983	t	f	t
1078	ART News	{"ipo": "private", "url": "artnews.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.775557	2021-02-11 15:18:25.978431	t	f	t
1079	nTech Workforce	{"ipo": "private", "url": "ntechsol.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Columbia, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.780538	2021-02-11 15:18:25.983443	t	f	t
1084	CommandIQ	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.807791	2021-02-11 15:18:25.988677	f	t	t
1083	Netted	{"ipo": "private", "url": "netted.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.80194	2021-02-11 15:18:25.993804	t	f	t
1085	The U.S.-India Business Council	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.812847	2021-02-11 15:18:25.998364	f	t	t
1086	News Times	{"ipo": "private", "url": "newstimes.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Norwalk, Connecticut, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.817906	2021-02-11 15:18:26.003066	t	f	t
1068	Laplink	{"ipo": "private", "url": "laplink.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bellevue, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.72476	2021-02-11 15:18:26.007699	t	f	t
1088	RACER Magazine	{"ipo": "private", "url": "racer.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.829058	2021-02-11 15:18:26.012241	t	f	t
1090	DMN3	{"ipo": "private", "url": "dmn3.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.839914	2021-02-11 15:18:26.016847	t	f	t
1091	The Retirement Planning Group	{"ipo": "private", "url": "planningretirements.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Overland Park, Kansas, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.844722	2021-02-11 15:18:26.021819	t	f	t
1092	Email Append Services	{"ipo": "private", "url": "emailappend.services", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fontana, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.849612	2021-02-11 15:18:26.026658	t	f	t
1069	Ziipa	{"ipo": "private", "url": "ziipa.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "West Palm Beach, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.729597	2021-02-11 15:18:26.031313	t	f	t
1082	Homes for Heroes	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.796894	2021-02-11 15:18:26.036265	f	t	t
1071	Viewstream	{"ipo": "private", "url": "viewstream.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.740303	2021-02-11 15:18:25.948801	t	f	t
1375	Molecular Partners	{"ipo": "Public", "url": "molecularpartners.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Zürich, Zurich, Switzerland", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.166892	2021-02-11 21:37:58.193193	t	f	f
1100	Nitro	{"ipo": "private", "url": "nitro.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Istanbul, Istanbul, Turkey", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.553497	2021-02-11 15:18:26.04571	t	f	t
1101	Nav	{"ipo": "private", "url": "nav.no", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oslo, Oslo, Norway", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.559209	2021-02-11 15:18:26.050154	t	f	t
1102	LaunchDarkly	{"ipo": "private", "url": "launchdarkly.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.56445	2021-02-11 15:18:26.054935	t	f	t
1103	Dynamic Yield	{"ipo": "private", "url": "dynamicyield.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.569228	2021-02-11 15:18:26.059739	t	f	t
1105	JazzHR	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.580118	2021-02-11 15:18:26.065096	f	t	t
1106	iFit - fitness technology	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.584993	2021-02-11 15:18:26.070283	f	t	t
1113	WhiteSource	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.621776	2021-02-11 15:18:26.075073	f	t	t
1108	Classy	{"ipo": "private", "url": "classymobile.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.596195	2021-02-11 15:18:26.07944	t	f	t
1109	Mad Street Den	{"ipo": "private", "url": "madstreetden.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Redwood City, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.60123	2021-02-11 15:18:26.083848	t	f	t
1110	DreamBox Learning	{"ipo": "private", "url": "dreambox.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bellevue, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.606238	2021-02-11 15:18:26.088743	t	f	t
1111	Medsphere Systems	{"ipo": "private", "url": "medsphere.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carlsbad, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.611754	2021-02-11 15:18:26.093745	t	f	t
1114	Moogsoft	{"ipo": "private", "url": "moogsoft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.627476	2021-02-11 15:18:26.099385	t	f	t
1115	Redox	{"ipo": "private", "url": "redox.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Minto, New South Wales, Australia", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.632426	2021-02-11 15:18:26.104736	t	f	t
1096	G2	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.532463	2021-02-11 15:18:26.109329	f	t	t
1116	CrowdStreet	{"ipo": "private", "url": "crowdstreet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Portland, Oregon, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.63738	2021-02-11 15:18:26.113937	t	f	t
1117	NewsCred	{"ipo": "private", "url": "newscred.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.643291	2021-02-11 15:18:26.118672	t	f	t
1118	Rocket Lawyer	{"ipo": "private", "url": "rocketlawyer.co.uk", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "London, England, United Kingdom", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.648744	2021-02-11 15:18:26.124015	t	f	t
1095	Workato	{"ipo": "private", "url": "workato.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.525575	2021-02-11 15:18:26.128801	t	f	t
1104	The/Studio	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.574843	2021-02-11 15:18:26.133262	f	t	t
1098	Health IQ	{"ipo": "private", "url": "healthiq.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.543444	2021-02-11 15:18:26.041216	t	f	t
1124	3D Robotics	{"ipo": "private", "url": "3dr.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Berkeley, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.681429	2021-02-11 15:18:26.142471	t	f	t
1127	Phononic	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.698061	2021-02-11 15:18:26.147536	f	t	t
1126	Tubular Labs	{"ipo": "private", "url": "tubularlabs.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.692312	2021-02-11 15:18:26.157631	t	f	t
1129	Swrve	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.710675	2021-02-11 15:18:26.162555	f	t	t
1128	Signpost	{"ipo": "private", "url": "signpost.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.703879	2021-02-11 15:18:26.167475	t	f	t
1131	ThreatQuotient	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.727178	2021-02-11 15:18:26.173021	f	t	t
1132	MapAnything	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.732731	2021-02-11 15:18:26.178502	f	t	t
1133	Validic	{"ipo": "private", "url": "validic.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Durham, North Carolina, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.737868	2021-02-11 15:18:26.182932	t	f	t
1120	Leadspace	{"ipo": "private", "url": "leadspace.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.659646	2021-02-11 15:18:26.187549	t	f	t
1134	eSUB Construction Software	{"ipo": "private", "url": "esub.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.743452	2021-02-11 15:18:26.192345	t	f	t
1135	WHOOP	{"ipo": "private", "url": "whoopmobile.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.748567	2021-02-11 15:18:26.196839	t	f	t
1136	When I Work	{"ipo": "private", "url": "wheniwork.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Minneapolis, Minnesota, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.753531	2021-02-11 15:18:26.201499	t	f	t
1137	Inspirato	{"ipo": "private", "url": "inspirato.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.759311	2021-02-11 15:18:26.206467	t	f	t
1139	TodayTix	{"ipo": "private", "url": "todaytix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.769582	2021-02-11 15:18:26.211038	t	f	t
1140	Gigaom	{"ipo": "private", "url": "gigaom.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.775394	2021-02-11 15:18:26.215614	t	f	t
1141	Cerebri AI	{"ipo": "private", "url": "cerebriai.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.780773	2021-02-11 15:18:26.220704	t	f	t
1142	Skyword	{"ipo": "private", "url": "skyword.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.785652	2021-02-11 15:18:26.226	t	f	t
1121	Morning Consult	{"ipo": "private", "url": "morningconsult.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.664741	2021-02-11 15:18:26.230855	t	f	t
1125	TheSkimm	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.686676	2021-02-11 15:18:26.235521	f	t	t
1123	Aira	{"ipo": "private", "url": "aira.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "La Jolla, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.675884	2021-02-11 15:18:26.137936	t	f	t
1151	dotloop	{"ipo": "private", "url": "dotloop.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cincinnati, Ohio, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.834905	2021-02-11 15:18:26.245611	t	f	t
1161	Apcela	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.88923	2021-02-11 15:18:26.250314	f	t	t
1153	Republic Wireless	{"ipo": "private", "url": "republicwireless.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.846133	2021-02-11 15:18:26.255384	t	f	t
1154	Blue Medora	{"ipo": "private", "url": "bluemedora.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Grand Rapids, Michigan, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.851473	2021-02-11 15:18:26.260484	t	f	t
1155	Datanyze	{"ipo": "private", "url": "datanyze.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Mateo, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.856741	2021-02-11 15:18:26.2651	t	f	t
1157	FanHero	{"ipo": "private", "url": "fanhero.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Orlando, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.867472	2021-02-11 15:18:26.269859	t	f	t
1158	DonorsChoose	{"ipo": "private", "url": "donorschoose.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.872998	2021-02-11 15:18:26.274574	t	f	t
1159	Encoding.com	{"ipo": "private", "url": "encoding.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.879203	2021-02-11 15:18:26.279104	t	f	t
1160	DivvyCloud	{"ipo": "private", "url": "divvycloud.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Arlington, Virginia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.884266	2021-02-11 15:18:26.283556	t	f	t
1163	BambooHR	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.900014	2021-02-11 15:18:26.288483	f	t	t
1164	eXo Platform	{"ipo": "private", "url": "exoplatform.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.905013	2021-02-11 15:18:26.293392	t	f	t
1152	Beckon	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.840098	2021-02-11 15:18:26.298194	f	t	t
1165	Autonet Mobile	{"ipo": "private", "url": "autonetmobile.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Rosa, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.910926	2021-02-11 15:18:26.303197	t	f	t
1166	DermStore	{"ipo": "private", "url": "dermstore.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Manhattan Beach, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.916173	2021-02-11 15:18:26.308625	t	f	t
1167	Aspiriant	{"ipo": "private", "url": "aspiriant.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.921178	2021-02-11 15:18:26.313427	t	f	t
1169	Clickky	{"ipo": "private", "url": "clickky.biz", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.932257	2021-02-11 15:18:26.317819	t	f	t
1170	L2	{"ipo": "private", "url": "l2political.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bothell, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.937381	2021-02-11 15:18:26.322647	t	f	t
1147	Triplemint	{"ipo": "private", "url": "triplemint.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.812812	2021-02-11 15:18:26.327317	t	f	t
1148	TSheets	{"ipo": "private", "url": "tsheets.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Eagle, Idaho, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.818098	2021-02-11 15:18:26.331952	t	f	t
1149	MIVA	{"ipo": "private", "url": "miva.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.823493	2021-02-11 15:18:26.240606	t	f	t
1176	NetSPI	{"ipo": "private", "url": "netspi.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Minneapolis, Minnesota, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.974242	2021-02-11 15:18:26.34177	t	f	t
1177	Aetrex Worldwide	{"ipo": "private", "url": "aetrex.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Teaneck, New Jersey, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.979802	2021-02-11 15:18:26.346194	t	f	t
1179	Abila	{"ipo": "private", "url": "abila.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.990651	2021-02-11 15:18:26.350629	t	f	t
1180	OperationsInc	{"ipo": "private", "url": "operationsinc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Norwalk, Connecticut, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.996179	2021-02-11 15:18:26.355568	t	f	t
1181	Digital Air Strike	{"ipo": "private", "url": "digitalairstrike.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Scottsdale, Arizona, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.001058	2021-02-11 15:18:26.360616	t	f	t
1182	Ascendix Technologies	{"ipo": "private", "url": "ascendix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.006249	2021-02-11 15:18:26.365308	t	f	t
1187	SproutLoud Media Networks	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.032836	2021-02-11 15:18:26.370123	f	t	t
1185	Serenova	{"ipo": "private", "url": "serenova.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.022616	2021-02-11 15:18:26.374709	t	f	t
1186	PeopleHR	{"ipo": "private", "url": "peoplehr.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Epworth, Iowa, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.028119	2021-02-11 15:18:26.379472	t	f	t
1190	U.S. Patriot Tactical	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.047789	2021-02-11 15:18:26.384109	f	t	t
1188	National Debt Relief	{"ipo": "private", "url": "nationaldebtrelief.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.037449	2021-02-11 15:18:26.389023	t	f	t
1189	SCL Health	{"ipo": "private", "url": "sclhealth.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Broomfield, Colorado, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.042666	2021-02-11 15:18:26.394754	t	f	t
1191	The Atlantic Council	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.052717	2021-02-11 15:18:26.400155	f	t	t
1193	Challenger Inc.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.064052	2021-02-11 15:18:26.405297	f	t	t
1192	Skience	{"ipo": "private", "url": "skience.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Herndon, Virginia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.058735	2021-02-11 15:18:26.409968	t	f	t
1195	National Student Clearinghouse	{"ipo": "private", "url": "studentclearinghouse.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Herndon, Virginia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.075024	2021-02-11 15:18:26.414675	t	f	t
1184	1Sale formerly 1SaleADay	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.017299	2021-02-11 15:18:26.420333	f	t	t
1173	Infinite Recovery Holdings	{"ipo": "private", "url": "infiniterecovery.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.954335	2021-02-11 15:18:26.430886	t	f	t
1174	FastSpring	{"ipo": "private", "url": "fastspring.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Barbara, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.963583	2021-02-11 15:18:26.436021	t	f	t
1175	eMaint	{"ipo": "private", "url": "emaint.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bonita Springs, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.968876	2021-02-11 15:18:26.336841	t	f	t
1201	TOPS Software	{"ipo": "private", "url": "topssoft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Clearwater, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.106174	2021-02-11 15:18:26.446087	t	f	t
1202	Essence Communications	{"ipo": "private", "url": "essence.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.113025	2021-02-11 15:18:26.450754	t	f	t
1203	IPC	{"ipo": "private", "url": "ipc.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Illinois City, Illinois, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.118095	2021-02-11 15:18:26.455508	t	f	t
1207	MIT's Technology Review Magazine	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.139088	2021-02-11 15:18:26.460112	f	t	t
1208	Aptera Software	{"ipo": "private", "url": "apterainc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fort Wayne, Indiana, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.144439	2021-02-11 15:18:26.464448	t	f	t
1209	DemandBlue	{"ipo": "private", "url": "demandblue.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.149307	2021-02-11 15:18:26.46921	t	f	t
1197	IDMWorks	{"ipo": "private", "url": "idmworks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Coral Gables, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.085688	2021-02-11 15:18:26.47392	t	f	t
1210	Storage Solutions	{"ipo": "private", "url": "storage-solutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Westfield, Indiana, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.15445	2021-02-11 15:18:26.478376	t	f	t
1212	Forum One	{"ipo": "private", "url": "forumone.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alexandria, Virginia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.165997	2021-02-11 15:18:26.483006	t	f	t
1213	This Old House Ventures	{"ipo": "private", "url": "thisoldhouse.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Stamford, Connecticut, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.170987	2021-02-11 15:18:26.487688	t	f	t
1214	CodeFuel	{"ipo": "private", "url": "codefuel.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bellevue, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.176123	2021-02-11 15:18:26.492793	t	f	t
1215	Dunn Solutions Group	{"ipo": "private", "url": "dunnsolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Skokie, Illinois, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.1814	2021-02-11 15:18:26.497489	t	f	t
1217	DemandGen	{"ipo": "private", "url": "demandgen.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Ramon, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.195241	2021-02-11 15:18:26.50257	t	f	t
1218	IndyCar	{"ipo": "private", "url": "indycar.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.200511	2021-02-11 15:18:26.508193	t	f	t
1219	MindSource	{"ipo": "private", "url": "mindsource.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.205782	2021-02-11 15:18:26.513541	t	f	t
1220	OptifiNow	{"ipo": "private", "url": "optifinow.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cerritos, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.21195	2021-02-11 15:18:26.518158	t	f	t
1206	NVX Holdings	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.134192	2021-02-11 15:18:26.523181	f	t	t
1199	MobileFuse	{"ipo": "private", "url": "mobilefuse.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.096124	2021-02-11 15:18:26.528057	t	f	t
1200	BuyerForesight	{"ipo": "private", "url": "buyerforesight.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Duluth, Minnesota, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.101128	2021-02-11 15:18:26.441102	t	f	t
1383	AC Immune	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.212197	2021-02-11 21:39:43.033315	f	t	f
1227	UniteU	{"ipo": "private", "url": "uniteu.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pittsford, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.249146	2021-02-11 15:18:26.537016	t	f	t
1228	Vetco Clinics	{"ipo": "private", "url": "vetcoclinics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sarasota, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.254193	2021-02-11 15:18:26.541784	t	f	t
1229	Empower MediaMarketing	{"ipo": "private", "url": "empowermm.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cincinnati, Ohio, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.259843	2021-02-11 15:18:26.546995	t	f	t
1230	JES Construction	{"ipo": "private", "url": "jeswork.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Virginia Beach, Virginia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.264931	2021-02-11 15:18:26.551651	t	f	t
1243	The Motion Agency	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.33492	2021-02-11 15:18:26.556861	f	t	t
1233	Waypoint Consulting LLC	{"ipo": "private", "url": "waypointco.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "West Chester, Pennsylvania, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.281445	2021-02-11 15:18:26.561532	t	f	t
1234	StrategyCorps	{"ipo": "private", "url": "strategycorps.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brentwood, Tennessee, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.286678	2021-02-11 15:18:26.565927	t	f	t
1235	Garden State Home Loans	{"ipo": "private", "url": "gardenstateloans.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cherry Hill, New Jersey, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.292673	2021-02-11 15:18:26.570704	t	f	t
1236	SS White Dental	{"ipo": "private", "url": "sswhitedental.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lakewood, New Jersey, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.297788	2021-02-11 15:18:26.575196	t	f	t
1238	Office Solutions	{"ipo": "private", "url": "officesolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Yorba Linda, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.308366	2021-02-11 15:18:26.57945	t	f	t
1239	The Providence Journal	{"ipo": "private", "url": "providencejournal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Providence, Rhode Island, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.313589	2021-02-11 15:18:26.583668	t	f	t
1240	Kreg Tool Company	{"ipo": "private", "url": "kregtool.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Huxley, Iowa, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.318643	2021-02-11 15:18:26.588654	t	f	t
1242	Stone Street Capital	{"ipo": "private", "url": "stonestreet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bethesda, Maryland, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.329869	2021-02-11 15:18:26.59348	t	f	t
1244	Indianapolis Colts	{"ipo": "private", "url": "colts.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.340395	2021-02-11 15:18:26.598032	t	f	t
1222	Dream Dinners	{"ipo": "private", "url": "dreamdinners.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Snohomish, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.222235	2021-02-11 15:18:26.602817	t	f	t
1245	Trina Turk	{"ipo": "private", "url": "trinaturk.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alhambra, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.345745	2021-02-11 15:18:26.607589	t	f	t
1223	Work 'n Gear	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.228371	2021-02-11 15:18:26.61241	f	t	t
1224	UPtv	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.233654	2021-02-11 15:18:26.617021	f	t	t
1226	Dooney & Bourke	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.243961	2021-02-11 15:18:26.622159	f	t	t
1231	Bigge Crane and Rigging Co.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.270055	2021-02-11 15:18:26.532473	f	t	t
1269	Beeby Clark + Meyler	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.48235	2021-02-11 15:18:26.632795	f	t	t
1253	GreenvilleOnline	{"ipo": "private", "url": "greenvilleonline.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Greenville, South Carolina, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.390505	2021-02-11 15:18:26.637638	t	f	t
1254	New England Cable News	{"ipo": "private", "url": "necn.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Newton, Massachusetts, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.396244	2021-02-11 15:18:26.642257	t	f	t
1255	Architectural Ceramics	{"ipo": "private", "url": "architecturalceramics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Rockville, Maryland, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.401615	2021-02-11 15:18:26.646889	t	f	t
1256	Divi Resorts	{"ipo": "private", "url": "diviresorts.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chapel Hill, North Carolina, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.407548	2021-02-11 15:18:26.651589	t	f	t
1257	Florida Today	{"ipo": "private", "url": "floridatoday.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Melbourne, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.413243	2021-02-11 15:18:26.656774	t	f	t
1259	Delaware Online	{"ipo": "private", "url": "delawareonline.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Wilmington, Delaware, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.426527	2021-02-11 15:18:26.662143	t	f	t
1260	Gold Medal	{"ipo": "private", "url": "goldmedal.co.uk", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Preston, Lancashire, United Kingdom", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.43178	2021-02-11 15:18:26.667972	t	f	t
1261	Classic Graphics	{"ipo": "private", "url": "knowclassic.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Charlotte, North Carolina, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.436587	2021-02-11 15:18:26.674618	t	f	t
1263	Mt Baker Vapor	{"ipo": "private", "url": "mtbakervapor.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lynden, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.447234	2021-02-11 15:18:26.679939	t	f	t
1264	San Diego Downtown	{"ipo": "private", "url": "sandiego.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.452291	2021-02-11 15:18:26.684902	t	f	t
1265	Resource Nation	{"ipo": "private", "url": "resourcenation.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carlsbad, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.461445	2021-02-11 15:18:26.694777	t	f	t
1266	The Poughkeepsie Journal	{"ipo": "private", "url": "poughkeepsiejournal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Poughkeepsie, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.466385	2021-02-11 15:18:26.699909	t	f	t
1268	Carolina Biological Supply Company	{"ipo": "private", "url": "carolina.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Burlington, Massachusetts, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.477159	2021-02-11 15:18:26.704898	t	f	t
1270	Spartanburg Herald-Journal	{"ipo": "private", "url": "goupstate.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Spartanburg, South Carolina, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.487386	2021-02-11 15:18:26.709651	t	f	t
1251	Revolution Group	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.379394	2021-02-11 15:18:26.714385	f	t	t
1248	The Des Moines Register	{"ipo": "private", "url": "desmoinesregister.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Des Moines, Iowa, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.362396	2021-02-11 15:18:26.719173	t	f	t
1249	Corpus Christi Caller-Time	{"ipo": "private", "url": "caller.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Corpus Christi, Texas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.367755	2021-02-11 15:18:26.724465	t	f	t
1250	American Musical Supply	{"ipo": "private", "url": "americanmusical.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.373514	2021-02-11 15:18:26.627818	t	f	t
1276	The Gainesville	{"ipo": "private", "url": "gainesville.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Gainesville, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.528231	2021-02-11 15:18:26.733747	t	f	t
1278	Westmor Industries	{"ipo": "private", "url": "westmor-ind.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Morris, Minnesota, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.542895	2021-02-11 15:18:26.738491	t	f	t
1279	Lindal Cedar Homes	{"ipo": "private", "url": "lindal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.547943	2021-02-11 15:18:26.743712	t	f	t
1280	Loon Mountain Resort	{"ipo": "private", "url": "loonmtn.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lincoln, New Hampshire, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.553011	2021-02-11 15:18:26.748489	t	f	t
1281	AutoTec	{"ipo": "private", "url": "autoteccars.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.562513	2021-02-11 15:18:26.753227	t	f	t
1282	Scripps Treasure Coast Newspapers	{"ipo": "private", "url": "tcpalm.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mclean, Virginia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.567612	2021-02-11 15:18:26.758685	t	f	t
1284	The Kitsap Sun	{"ipo": "private", "url": "kitsapsun.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.597485	2021-02-11 15:18:26.76343	t	f	t
1285	The Repository	{"ipo": "private", "url": "cantonrep.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Canton, Ohio, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.602836	2021-02-11 15:18:26.767837	t	f	t
1286	Hattiesburg American	{"ipo": "private", "url": "hattiesburgamerican.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Hattiesburg, Mississippi, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.608714	2021-02-11 15:18:26.772995	t	f	t
1287	Apollo Theater Foundation	{"ipo": "private", "url": "apollotheater.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.617762	2021-02-11 15:18:26.777547	t	f	t
1289	gCommerce Solutions	{"ipo": "private", "url": "gcommercesolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Park City, Utah, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.633551	2021-02-11 15:18:26.78183	t	f	t
1290	Neighbors Federal Credit Union	{"ipo": "private", "url": "neighborsfcu.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Baton Rouge, Louisiana, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.643085	2021-02-11 15:18:26.786567	t	f	t
1291	The Ledger	{"ipo": "private", "url": "theledger.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lakeland, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.648762	2021-02-11 15:18:26.791692	t	f	t
1292	The Gaston Gazette	{"ipo": "private", "url": "gastongazette.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Gastonia, North Carolina, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.655246	2021-02-11 15:18:26.796415	t	f	t
1293	EQD	{"ipo": "private", "url": "eqd.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.660809	2021-02-11 15:18:26.800976	t	f	t
1295	Treetops Resort	{"ipo": "private", "url": "treetops.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Gaylord, Michigan, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.678828	2021-02-11 15:18:26.806395	t	f	t
1273	Ocala Star-Banner	{"ipo": "private", "url": "ocala.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Ocala, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.503555	2021-02-11 15:18:26.811145	t	f	t
1274	Angel MedFlight Worldwide Air Ambulance	{"ipo": "private", "url": "angelmedflight.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Scottsdale, Arizona, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.513471	2021-02-11 15:18:26.815666	t	f	t
1275	The Desert Sun	{"ipo": "private", "url": "desertsun.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Palm Springs, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.522036	2021-02-11 15:18:26.729083	t	f	t
1302	Braavo Capital	{"ipo": "private", "url": "getbraavo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.196421	2021-02-11 15:18:26.825674	t	f	t
1304	FieldPulse	{"ipo": "private", "url": "fieldpulse.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.206545	2021-02-11 15:18:26.830677	t	f	t
1305	Taqtile	{"ipo": "private", "url": "taqtile.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.212696	2021-02-11 15:18:26.836207	t	f	t
1316	Employance	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.271013	2021-02-11 15:18:26.841331	f	t	t
1307	Rapid RMS	{"ipo": "private", "url": "rapidrms.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Calhoun, Georgia, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.222999	2021-02-11 15:18:26.846149	t	f	t
1308	TelePharm	{"ipo": "private", "url": "telepharm.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Iowa City, Iowa, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.22873	2021-02-11 15:18:26.850651	t	f	t
1310	Betches	{"ipo": "private", "url": "betches.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.239705	2021-02-11 15:18:26.855739	t	f	t
1311	LaunchSquad	{"ipo": "private", "url": "launchsquad.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.245181	2021-02-11 15:18:26.860613	t	f	t
1312	AREA 17	{"ipo": "private", "url": "area17.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brooklyn, New York, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.250232	2021-02-11 15:18:26.866152	t	f	t
1314	Propelland	{"ipo": "private", "url": "propelland.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.260558	2021-02-11 15:18:26.871717	t	f	t
1315	Agile Soft Systems	{"ipo": "private", "url": "agsft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fremont, California, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.26613	2021-02-11 15:18:26.876501	t	f	t
1317	SnapMunk	{"ipo": "private", "url": "snapmunk.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.275841	2021-02-11 15:18:26.881172	t	f	t
1298	15Five	{"ipo": "private", "url": "15five.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.17488	2021-02-11 15:18:26.885752	t	f	t
107	Seaters A.I. - Unrivalled Brand Relation Management	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.849831	2021-02-11 15:18:26.890973	f	t	t
102	Bizible	{"ipo": "private", "url": "bizible.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.819581	2021-02-11 15:18:26.895647	t	f	t
131	Connect First A RingCentral Company	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.017328	2021-02-11 15:18:26.90084	f	t	t
139	Mojo Media Labs	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.069222	2021-02-11 15:18:26.906032	f	t	t
1299	Quicko Technosoft Labs Private Limited	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.180588	2021-02-11 15:18:26.910593	f	t	t
1300	Piano Software	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.185901	2021-02-11 15:18:26.915215	f	t	t
1306	ManagedMethods	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.21808	2021-02-11 15:18:26.920297	f	t	t
1301	Pipl	{"ipo": "private", "url": "pipl.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Post Falls, Idaho, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.190826	2021-02-11 15:18:26.820636	t	f	t
317	Aperia Technologies	{"ipo": "private", "url": "aperiatech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Burlingame, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.203567	2021-02-11 15:18:26.930677	t	f	t
326	Certify	{"ipo": "private", "url": "Certify.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Portland, Maine, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.251075	2021-02-11 15:18:26.935359	t	f	t
336	Dealstruck	{"ipo": "private", "url": "dealstruck.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carlsbad, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.311632	2021-02-11 15:18:26.940222	t	f	t
353	Barsala	{"ipo": "private", "url": "barsala.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Portland, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.415109	2021-02-11 15:18:26.945273	t	f	t
531	Odoro - Digital Patient Access Platform	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.335843	2021-02-11 15:18:26.950102	f	t	t
407	VitreosHealth	{"ipo": "private", "url": "vitreoshealth.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Plano, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.696536	2021-02-11 15:18:26.959708	t	f	t
434	Virsys12	{"ipo": "private", "url": "virsys12.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brentwood, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.836803	2021-02-11 15:18:26.964193	t	f	t
448	Indow Windows	{"ipo": "private", "url": "indowwindows.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Portland, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.90885	2021-02-11 15:18:26.96903	t	f	t
472	ScientiaMobile	{"ipo": "private", "url": "scientiamobile.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Reston, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.027698	2021-02-11 15:18:26.974198	t	f	t
488	Logi-Serve	{"ipo": "private", "url": "logi-serve.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Farmington Hills, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.113326	2021-02-11 15:18:26.97886	t	f	t
510	Radiant RFID	{"ipo": "private", "url": "radiantrfid.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.225228	2021-02-11 15:18:26.983378	t	f	t
515	Clearview	{"ipo": "private", "url": "clearviewlive.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Roy, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.250465	2021-02-11 15:18:26.988625	t	f	t
542	iTutor.com	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.390781	2021-02-11 15:18:26.993708	f	t	t
569	ESM Solutions Corporation	{"ipo": "private", "url": "esmsolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Warrington, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.530908	2021-02-11 15:18:26.99812	t	f	t
595	Agency Revolution	{"ipo": "private", "url": "agencyrevolution.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bend, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.663214	2021-02-11 15:18:27.002554	t	f	t
299	Bloq	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.110262	2021-02-11 15:18:27.007127	f	t	t
621	Green Mountain Technology	{"ipo": "private", "url": "greenmountaintechnology.comgmt", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "South Pittsburg, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.802604	2021-02-11 15:18:27.01173	t	f	t
222	Boomsourcing	{"ipo": "private", "url": "boomsourcing.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Lehi, Utah, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.60046	2021-02-11 15:18:27.016125	t	f	t
245	Vestorly	{"ipo": "private", "url": "vestorly.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.837115	2021-02-11 15:18:27.021078	t	f	t
380	Building Intelligence Inc.	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.55013	2021-02-11 15:18:26.925766	f	t	t
737	Cii Technology Solutions	{"ipo": "private", "url": "ciinc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.409464	2021-02-11 15:18:27.030986	t	f	t
754	Moving Minds	{"ipo": "private", "url": "movingminds.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "West Palm Beach, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.498923	2021-02-11 15:18:27.036138	t	f	t
781	Medicines360	{"ipo": "private", "url": "medicines360.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.64327	2021-02-11 15:18:27.040996	t	f	t
833	InfoWerks	{"ipo": "private", "url": "infowerks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Las Vegas, Nevada, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.920171	2021-02-11 15:18:27.045673	t	f	t
859	Galileo Performance Explorer	{"ipo": "private", "url": "galileosuite.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pennsylvania Furnace, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.055856	2021-02-11 15:18:27.050544	t	f	t
885	Dial 800 Communications	{"ipo": "private", "url": "dial800.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.194088	2021-02-11 15:18:27.055918	t	f	t
911	Webworks	{"ipo": "private", "url": "webworks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.333526	2021-02-11 15:18:27.060545	t	f	t
963	Midwest Corporate Credit	{"ipo": "private", "url": "midwestcorporatecredit.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oak Brook, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.609407	2021-02-11 15:18:27.064979	t	f	t
989	InventionHome	{"ipo": "private", "url": "inventionhome.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Monroeville, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.751092	2021-02-11 15:18:27.069613	t	f	t
1015	ProVise Management Group	{"ipo": "private", "url": "provise.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Clearwater, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.889057	2021-02-11 15:18:27.07437	t	f	t
1041	BWG Strategy	{"ipo": "private", "url": "bwgstrategy.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.575022	2021-02-11 15:18:27.07885	t	f	t
1081	Times Record News	{"ipo": "private", "url": "timesrecordnews.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Wichita Falls, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.791864	2021-02-11 15:18:27.0833	t	f	t
1093	American Ira	{"ipo": "private", "url": "americanira.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Asheville, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.855251	2021-02-11 15:18:27.088087	t	f	t
1119	Integrate	{"ipo": "private", "url": "integrate.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Phoenix, Arizona, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.653732	2021-02-11 15:18:27.093285	t	f	t
1145	Infer	{"ipo": "private", "url": "infer.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.801442	2021-02-11 15:18:27.097896	t	f	t
1143	Glance Networks	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.791321	2021-02-11 15:18:27.102777	f	t	t
674	Ragnar Relay	{"ipo": "private", "url": "ragnarrelay.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Salt Lake City, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.078138	2021-02-11 15:18:27.107568	t	f	t
701	Apposite Technologies	{"ipo": "private", "url": "apposite-tech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.222046	2021-02-11 15:18:27.112033	t	f	t
702	Chemical Information Services	{"ipo": "private", "url": "chemicalinfo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Dallas, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.227226	2021-02-11 15:18:27.025792	t	f	t
1392	Avidbank	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.257792	2021-02-11 21:41:05.00872	f	t	f
1246	Doeren Mayhew	{"ipo": "private", "url": "doeren.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Troy, Michigan, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.350995	2021-02-11 15:18:27.121234	t	f	t
1271	Topeka Capital-Journal	{"ipo": "private", "url": "cjonline.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Topeka, Kansas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.493344	2021-02-11 15:18:27.126314	t	f	t
1296	Tuscaloosa News	{"ipo": "private", "url": "tuscaloosanews.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tuscaloosa, Alabama, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.691889	2021-02-11 15:18:27.130954	t	f	t
115	Eightfold Logic	{"ipo": "private", "url": "eightfoldlogic.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.906691	2021-02-11 15:18:27.135606	t	f	t
128	Line2	{"ipo": "private", "url": "line2.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.000031	2021-02-11 15:18:27.140651	t	f	t
134	PathGuide Technologies	{"ipo": "private", "url": "pathguide.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Bothell, Washington, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.034115	2021-02-11 15:18:27.145364	t	f	t
121	Wildflower International	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.951335	2021-02-11 15:18:27.149991	f	t	t
192	Spectate Inbound Marketing	{"ipo": "private", "url": "spectate.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.368972	2021-02-11 15:18:27.155122	t	f	t
138	SiO Digital	{"ipo": "private", "url": "siodigital.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.056575	2021-02-11 15:18:27.160529	t	f	t
143	Kuno Creative	{"ipo": "private", "url": "kunocreative.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Avon, Ohio, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.092024	2021-02-11 15:18:27.165666	t	f	t
149	Gravitate	{"ipo": "private", "url": "gravitate.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "South San Francisco, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.126867	2021-02-11 15:18:27.170632	t	f	t
154	Foster Web Marketing	{"ipo": "private", "url": "fosterwebmarketing.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Fairfax, Virginia, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.154453	2021-02-11 15:18:27.17622	t	f	t
162	Inturact	{"ipo": "private", "url": "inturact.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.2014	2021-02-11 15:18:27.181296	t	f	t
167	Eyeflow Internet Marketing	{"ipo": "private", "url": "eyeflow.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Pittsburgh, Pennsylvania, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.230259	2021-02-11 15:18:27.186405	t	f	t
173	Accurate Always Inc	{"ipo": "private", "url": "accuratealways.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Half Moon Bay, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.262508	2021-02-11 15:18:27.191512	t	f	t
179	LeadG2	{"ipo": "private", "url": "leadg2.thecenterforsalesstrategy.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.296067	2021-02-11 15:18:27.196424	t	f	t
202	Allegory Studios	{"ipo": "private", "url": "allegorystudios.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Saratoga Springs, New York, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.422266	2021-02-11 15:18:27.206507	t	f	t
109	Aloware	{"ipo": "private", "url": "aloware.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.860576	2021-02-11 15:18:27.21167	t	f	t
197	CallNet Call Center Services	{"ipo": "private", "url": "callnetservices.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Bloomington, Indiana, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.396497	2021-02-11 15:18:27.216336	t	f	t
1196	Zotec Partners	{"ipo": "private", "url": "zotecpartners.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carmel, Indiana, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.080663	2021-02-11 15:18:27.116595	t	f	t
224	Five Star Call Centers	{"ipo": "private", "url": "fivestarcallcenters.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Sioux Falls, South Dakota, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.61136	2021-02-11 15:18:27.226192	t	f	t
231	goTenna	{"ipo": "private", "url": "gotenna.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brooklyn, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.764239	2021-02-11 15:18:27.230515	t	f	t
238	Ace Metrix	{"ipo": "private", "url": "acemetrix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "El Segundo, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.802854	2021-02-11 15:18:27.235169	t	f	t
244	FortressIQ	{"ipo": "private", "url": "fortressiq.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.832415	2021-02-11 15:18:27.240297	t	f	t
246	Aquant	{"ipo": "private", "url": "aquant.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.841952	2021-02-11 15:18:27.245291	t	f	t
256	Pulse	{"ipo": "private", "url": "mobile.linkedin.compulse", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.89183	2021-02-11 15:18:27.249984	t	f	t
264	RealScout	{"ipo": "private", "url": "realscout.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.931407	2021-02-11 15:18:27.254939	t	f	t
269	Shiftboard	{"ipo": "private", "url": "shiftboard.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.964353	2021-02-11 15:18:27.260391	t	f	t
273	Rulai	{"ipo": "private", "url": "rul.ai", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Campbell, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.983404	2021-02-11 15:18:27.26538	t	f	t
285	OneWire	{"ipo": "private", "url": "onewire.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.040269	2021-02-11 15:18:27.270166	t	f	t
291	OnScale	{"ipo": "private", "url": "onscale.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Redwood City, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.070483	2021-02-11 15:18:27.275002	t	f	t
297	SPR Therapeutics	{"ipo": "private", "url": "sprtherapeutics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cleveland, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.101768	2021-02-11 15:18:27.279596	t	f	t
304	LevelEleven	{"ipo": "private", "url": "leveleleven.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Detroit, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.135323	2021-02-11 15:18:34.145065	t	f	t
309	Kaptivo	{"ipo": "private", "url": "kaptivo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Mateo, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.159309	2021-02-11 15:18:34.158358	t	f	t
314	Boost Payment Solutions	{"ipo": "private", "url": "boostb2b.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.188227	2021-02-11 15:18:34.170407	t	f	t
320	Trucker Tool	{"ipo": "private", "url": "truckertools.comhome", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Reston, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.218948	2021-02-11 15:18:34.176323	t	f	t
325	eMindful	{"ipo": "private", "url": "emindful.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Orlando, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.245264	2021-02-11 15:18:34.180884	t	f	t
252	Shiftgig	{"ipo": "private", "url": "shiftgig.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.872468	2021-02-11 15:18:34.185415	t	f	t
279	Everstream Solutions	{"ipo": "private", "url": "everstream.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cleveland, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.011456	2021-02-11 15:18:34.190626	t	f	t
219	Actiance	{"ipo": "private", "url": "actiance.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Redwood City, California, United States", "employees": "101 - 1000", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:59.584827	2021-02-11 15:18:27.221397	t	f	t
348	Worksmith	{"ipo": "private", "url": "worksmith.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.385133	2021-02-11 15:18:34.199996	t	f	t
356	HealthPrize Technologies	{"ipo": "private", "url": "healthprize.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Norwalk, Connecticut, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.429345	2021-02-11 15:18:34.205603	t	f	t
363	Eved	{"ipo": "private", "url": "eved.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.465122	2021-02-11 15:18:34.210326	t	f	t
368	InCrowd	{"ipo": "private", "url": "incrowdnow.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.490169	2021-02-11 15:18:34.214698	t	f	t
377	Numecent	{"ipo": "private", "url": "numecent.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.5344	2021-02-11 15:18:34.219034	t	f	t
385	AavGo	{"ipo": "private", "url": "aavgo.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Jose, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.576957	2021-02-11 15:18:34.224001	t	f	t
393	GTxcel	{"ipo": "private", "url": "GTxcel.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Southborough, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.621991	2021-02-11 15:18:34.22862	t	f	t
397	Akoonu	{"ipo": "private", "url": "akoonu.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.646474	2021-02-11 15:18:34.233225	t	f	t
405	Workgroups DaVinci	{"ipo": "private", "url": "workgroups.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Des Moines, Iowa, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.685679	2021-02-11 15:18:34.237746	t	f	t
408	Qbox	{"ipo": "private", "url": "qbox.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fullerton, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.702272	2021-02-11 15:18:34.242549	t	f	t
421	Limos.com	{"ipo": "private", "url": "limos.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.770204	2021-02-11 15:18:34.24707	t	f	t
428	CosmoLex	{"ipo": "private", "url": "cosmolex.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "North Brunswick, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.805756	2021-02-11 15:18:34.251261	t	f	t
437	ZeroNorth	{"ipo": "private", "url": "zeronorth.io", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.852578	2021-02-11 15:18:34.257251	t	f	t
442	Root Level Technology	{"ipo": "private", "url": "rootleveltech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.878982	2021-02-11 15:18:34.261953	t	f	t
447	DecisionDesk	{"ipo": "private", "url": "decisiondesk.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lakewood, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.904279	2021-02-11 15:18:34.266092	t	f	t
454	LeaseQ	{"ipo": "private", "url": "leaseq.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Burlington, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.938604	2021-02-11 15:18:34.2706	t	f	t
460	Salesvue	{"ipo": "private", "url": "salesvue.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.968477	2021-02-11 15:18:34.274815	t	f	t
414	FileFacets	{"ipo": "private", "url": "filefacets.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.734861	2021-02-11 15:18:34.279364	t	f	t
337	500Friends	{"ipo": "private", "url": "500Friends.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.325953	2021-02-11 15:18:34.283857	t	f	t
342	Full Circle Insights	{"ipo": "private", "url": "fullcircleinsights.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Mateo, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.354488	2021-02-11 15:18:34.195447	t	f	t
491	LogicManager	{"ipo": "private", "url": "logicmanager.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.127154	2021-02-11 15:18:34.293032	t	f	t
498	Applied Data Corp	{"ipo": "private", "url": "applieddatacorp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.162817	2021-02-11 15:18:34.297442	t	f	t
503	Central Reach	{"ipo": "private", "url": "centralreach.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pompano Beach, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.188456	2021-02-11 15:18:34.301916	t	f	t
509	Vizinex RFID	{"ipo": "private", "url": "vizinexrfid.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bethlehem, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.219701	2021-02-11 15:18:34.306908	t	f	t
518	Urbandoor	{"ipo": "private", "url": "urbandoor.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.266337	2021-02-11 15:18:34.317718	t	f	t
524	Givelify	{"ipo": "private", "url": "givelify.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Indianapolis, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.300139	2021-02-11 15:18:34.322985	t	f	t
529	Printfection	{"ipo": "private", "url": "printfection.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.325363	2021-02-11 15:18:34.32785	t	f	t
537	NPI	{"ipo": "private", "url": "npisorters.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fort Worth, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.365844	2021-02-11 15:18:34.332646	t	f	t
544	PSC	{"ipo": "private", "url": "proservicescorp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Trenton, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.401208	2021-02-11 15:18:34.337552	t	f	t
551	Flowroute	{"ipo": "private", "url": "flowroute.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.437047	2021-02-11 15:18:34.342576	t	f	t
555	Full Swing Golf	{"ipo": "private", "url": "fullswinggolf.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.456364	2021-02-11 15:18:34.347758	t	f	t
561	Registria	{"ipo": "private", "url": "registria.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.487998	2021-02-11 15:18:34.352829	t	f	t
571	Diesel Laptops	{"ipo": "private", "url": "diesellaptops.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lexington, South Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.540606	2021-02-11 15:18:34.357646	t	f	t
576	DirectDefense	{"ipo": "private", "url": "directdefense.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Englewood, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.566086	2021-02-11 15:18:34.362107	t	f	t
582	Tallie	{"ipo": "private", "url": "tallie.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.596755	2021-02-11 15:18:34.366617	t	f	t
587	Listen360	{"ipo": "private", "url": "listen360.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alpharetta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.622543	2021-02-11 15:18:34.371574	t	f	t
592	Red Giant Software	{"ipo": "private", "url": "redgiant.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Orlando, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.648302	2021-02-11 15:18:34.376715	t	f	t
470	Managecore	{"ipo": "private", "url": "managecore.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Franklin, Wisconsin, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.018729	2021-02-11 15:18:34.381303	t	f	t
477	Business Capital	{"ipo": "private", "url": "bizcap.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.053866	2021-02-11 15:18:34.386427	t	f	t
483	Powderhook	{"ipo": "private", "url": "powderhook.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lincoln, Nebraska, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.087478	2021-02-11 15:18:34.288393	t	f	t
625	Godlan	{"ipo": "private", "url": "godlan.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Clinton Township, Michigan, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.822793	2021-02-11 15:18:34.396781	t	f	t
630	Entrinsik	{"ipo": "private", "url": "entrinsik.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.849224	2021-02-11 15:18:34.401397	t	f	t
638	Screening One	{"ipo": "private", "url": "screeningone.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.889818	2021-02-11 15:18:34.406322	t	f	t
643	FreightPros	{"ipo": "private", "url": "freightpros.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Austin, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.91597	2021-02-11 15:18:34.411943	t	f	t
650	EventBooking	{"ipo": "private", "url": "EventBooking.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Knoxville, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.9541	2021-02-11 15:18:34.417071	t	f	t
654	WolfNet Technologies	{"ipo": "private", "url": "wolfnet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Saint Louis Park, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.974027	2021-02-11 15:18:34.422227	t	f	t
660	Techweek	{"ipo": "private", "url": "techweek.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.005892	2021-02-11 15:18:34.427245	t	f	t
664	Surfrider Foundation	{"ipo": "private", "url": "surfrider.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Clemente, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.026461	2021-02-11 15:18:34.431833	t	f	t
669	Grist	{"ipo": "private", "url": "grist.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.053148	2021-02-11 15:18:34.436889	t	f	t
677	ColoGuard	{"ipo": "private", "url": "colocationguard.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Brooklyn, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.09317	2021-02-11 15:18:34.442916	t	f	t
687	HealthWare Systems	{"ipo": "private", "url": "healthwaresystems.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Elgin, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.145007	2021-02-11 15:18:34.447649	t	f	t
692	MedPro Disposal	{"ipo": "private", "url": "medprodisposal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Aurora, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.173468	2021-02-11 15:18:34.452329	t	f	t
697	RezStream	{"ipo": "private", "url": "RezStream.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.201127	2021-02-11 15:18:34.457236	t	f	t
704	Firmatek	{"ipo": "private", "url": "firmatek.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Antonio, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.237756	2021-02-11 15:18:34.462277	t	f	t
709	Innsoft	{"ipo": "private", "url": "innsoft.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Beaverton, Oregon, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.263179	2021-02-11 15:18:34.467121	t	f	t
714	AccessIT Group	{"ipo": "private", "url": "accessitgroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "King Of Prussia, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.288393	2021-02-11 15:18:34.472924	t	f	t
682	Dealers United	{"ipo": "private", "url": "dealersunited.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sarasota, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.118968	2021-02-11 15:18:34.482851	t	f	t
612	Veristream	{"ipo": "private", "url": "veristream.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Orlando, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.756615	2021-02-11 15:18:34.487932	t	f	t
617	BIOCOM	{"ipo": "private", "url": "biocom.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.782689	2021-02-11 15:18:34.391951	t	f	t
1399	OncoMed Pharmaceuticals	{"ipo": "Public", "url": "oncomed.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Redwood City, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.293857	2021-02-11 21:42:07.177904	t	f	f
726	CommunityForce	{"ipo": "private", "url": "communityforce.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Ashburn, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.350508	2021-02-11 15:18:34.498655	t	f	t
731	Paragon Laboratories	{"ipo": "private", "url": "paragonlabsusa.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Torrance, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.376597	2021-02-11 15:18:34.503778	t	f	t
757	ACOM Health	{"ipo": "private", "url": "acomhealth.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Duluth, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.515097	2021-02-11 15:18:34.509362	t	f	t
762	Chalkbeat	{"ipo": "private", "url": "chalkbeat.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lakewood, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.540104	2021-02-11 15:18:34.514657	t	f	t
766	ReServe Interactive	{"ipo": "private", "url": "reserveinteractive.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Livermore, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.560597	2021-02-11 15:18:34.519765	t	f	t
772	Compudata Services	{"ipo": "private", "url": "compudata.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Philadelphia, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.592151	2021-02-11 15:18:34.525517	t	f	t
778	FeedOtter	{"ipo": "private", "url": "feedotter.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Manhattan, Kansas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.627419	2021-02-11 15:18:34.530377	t	f	t
782	c-Systems Software	{"ipo": "private", "url": "csystemssoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Arlington, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.649009	2021-02-11 15:18:34.534899	t	f	t
788	MediaMax Network	{"ipo": "private", "url": "mediamaxnetwork.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Valhalla, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.680245	2021-02-11 15:18:34.539841	t	f	t
794	Greyson Technologies	{"ipo": "private", "url": "greyson.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fort Lauderdale, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.713894	2021-02-11 15:18:34.545825	t	f	t
801	Charter Software	{"ipo": "private", "url": "chartersoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Littleton, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.750598	2021-02-11 15:18:34.552516	t	f	t
806	Riverbridge Partners	{"ipo": "private", "url": "riverbridge.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Minneapolis, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.775721	2021-02-11 15:18:34.558798	t	f	t
810	SAFER Systems	{"ipo": "private", "url": "safersystem.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Westlake Village, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.796934	2021-02-11 15:18:34.566337	t	f	t
820	Sable Systems International	{"ipo": "private", "url": "sablesys.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "North Las Vegas, Nevada, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.852596	2021-02-11 15:18:34.573447	t	f	t
825	Streamline Solutions	{"ipo": "private", "url": "streamlinephilly.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Philadelphia, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.877585	2021-02-11 15:18:34.582352	t	f	t
831	Online Lenders Alliance	{"ipo": "private", "url": "onlinelendersalliance.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alexandria, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.90963	2021-02-11 15:18:34.592079	t	f	t
743	Ferrazzi Greenlight	{"ipo": "private", "url": "ferrazzigreenlight.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.441493	2021-02-11 15:18:34.601101	t	f	t
748	Multimedia Plus	{"ipo": "private", "url": "multimediaplus.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.468341	2021-02-11 15:18:34.609579	t	f	t
814	Deephaven Mortgage LLC	{"ipo": "private", "url": "deephavenmortgage.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Charlotte, North Carolina, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.818597	2021-02-11 15:18:34.493438	t	f	t
932	American Legislative Exchange Council	{"ipo": "private", "url": "alec.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Arlington, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.444421	2021-02-11 15:18:34.626158	t	f	t
840	Merchant Capital Source	{"ipo": "private", "url": "merchantcapitalsource.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Huntington Beach, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.956644	2021-02-11 15:18:34.63426	t	f	t
860	Shop Eat Surf	{"ipo": "private", "url": "shop-eat-surf.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Costa Mesa, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.060897	2021-02-11 15:18:34.641767	t	f	t
866	Apex Advanced Technology	{"ipo": "private", "url": "apexadvancedtech.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Herndon, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.094575	2021-02-11 15:18:34.649596	t	f	t
872	AtHomeNet	{"ipo": "private", "url": "athomenet.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Suwanee, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.126819	2021-02-11 15:18:34.656488	t	f	t
882	Corrao Group	{"ipo": "private", "url": "corraogroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.178462	2021-02-11 15:18:34.663175	t	f	t
887	Thanx Media	{"ipo": "private", "url": "thanxmedia.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Glen Ellyn, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.20515	2021-02-11 15:18:34.670033	t	f	t
892	VALiNTRY	{"ipo": "private", "url": "VALiNTRY.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Winter Park, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.231727	2021-02-11 15:18:34.67945	t	f	t
897	Virtual-Q	{"ipo": "private", "url": "virtual-q.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.257756	2021-02-11 15:18:34.686224	t	f	t
902	Outdoor Industry Association	{"ipo": "private", "url": "outdoorindustry.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boulder, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.284597	2021-02-11 15:18:34.704337	t	f	t
912	Laughing Samurai	{"ipo": "private", "url": "laughingsamurai.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Winter Park, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.338735	2021-02-11 15:18:34.709172	t	f	t
918	Trust Company of Illinois	{"ipo": "private", "url": "tcwealthpartners.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Downers Grove, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.370302	2021-02-11 15:18:34.713701	t	f	t
924	Innovative Lease Services	{"ipo": "private", "url": "ilslease.comequipment-leaseindex.html", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carlsbad, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.401599	2021-02-11 15:18:34.718537	t	f	t
938	Arketi Group	{"ipo": "private", "url": "arketi.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.475678	2021-02-11 15:18:34.723337	t	f	t
943	Kelar Pacific	{"ipo": "private", "url": "kelarpacific.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.502492	2021-02-11 15:18:34.727909	t	f	t
948	Save The Bay	{"ipo": "private", "url": "savesfbay.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Oakland, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.531689	2021-02-11 15:18:34.732474	t	f	t
846	Menttium Corporation	{"ipo": "private", "url": "menttium.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Minneapolis, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.987325	2021-02-11 15:18:34.737025	t	f	t
877	Selah House	{"ipo": "private", "url": "selahhouse.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Anderson, Indiana, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.153083	2021-02-11 15:18:34.742388	t	f	t
909	OmegaCor Technologies	{"ipo": "private", "url": "omegacorit.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Millersville, Maryland, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.322678	2021-02-11 15:18:34.618178	t	f	t
966	Software Consulting Associates	{"ipo": "private", "url": "municitysoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Red Hook, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.624539	2021-02-11 15:18:34.753954	t	f	t
976	Association of Schools and Programs of Public Health	{"ipo": "private", "url": "aspph.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.676021	2021-02-11 15:18:34.759268	t	f	t
982	Hixardt	{"ipo": "private", "url": "hixardt.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pensacola, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.70756	2021-02-11 15:18:34.764025	t	f	t
988	Cimquest Manufacturing Solutions	{"ipo": "private", "url": "cimquest-inc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Sterling, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.745937	2021-02-11 15:18:34.768645	t	f	t
990	MortgageMapp	{"ipo": "private", "url": "mortgagemapp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bellevue, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.756105	2021-02-11 15:18:34.773972	t	f	t
998	TDG Research	{"ipo": "private", "url": "tdgresearch.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Plano, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.797907	2021-02-11 15:18:34.778679	t	f	t
1002	Vida Jets	{"ipo": "private", "url": "vidajets.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boca Raton, Florida, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.819144	2021-02-11 15:18:34.783246	t	f	t
1009	MadDash E-Media	{"ipo": "private", "url": "maddash.net", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Woburn, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.85691	2021-02-11 15:18:34.788298	t	f	t
1014	Ecreative Internet Marketing	{"ipo": "private", "url": "ecreativeim.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Plymouth, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.883889	2021-02-11 15:18:34.793253	t	f	t
1017	Bridge Languages	{"ipo": "private", "url": "bridgelanguages.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.899435	2021-02-11 15:18:34.797695	t	f	t
1022	Digital Transitions	{"ipo": "private", "url": "digitaltransitions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.924918	2021-02-11 15:18:34.802336	t	f	t
1036	Reactful	{"ipo": "private", "url": "reactful.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Barbara, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.549326	2021-02-11 15:18:34.807301	t	f	t
1042	Snapshot Interactive	{"ipo": "private", "url": "snapshotinteractive.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Nashville, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.580298	2021-02-11 15:18:34.812283	t	f	t
1052	Sendio	{"ipo": "private", "url": "sendio.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Newport Beach, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.631867	2021-02-11 15:18:34.81724	t	f	t
1058	eHealthCare Solutions	{"ipo": "private", "url": "ehealthcaresolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Ewing, Nebraska, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.663323	2021-02-11 15:18:34.822097	t	f	t
1063	Rebel Interactive Group	{"ipo": "private", "url": "rebelinteractivegroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Southington, Connecticut, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.698722	2021-02-11 15:18:34.826744	t	f	t
972	Team4Tech Foundation	{"ipo": "private", "url": "team4tech.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Redwood City, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.655599	2021-02-11 15:18:34.831459	t	f	t
1028	Gelesis	{"ipo": "private", "url": "gelesis.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.506982	2021-02-11 15:18:34.836111	t	f	t
1046	Novarica	{"ipo": "private", "url": "novarica.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boston, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.600827	2021-02-11 15:18:34.747988	t	f	t
1089	Surface Media	{"ipo": "private", "url": "surfacemedia.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.833855	2021-02-11 15:18:34.847674	t	f	t
1094	P1 Technologies	{"ipo": "private", "url": "p1technologies.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Manhattan Beach, California, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.860576	2021-02-11 15:18:34.856274	t	f	t
1107	HackerRank	{"ipo": "private", "url": "hackerrank.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.590412	2021-02-11 15:18:34.861147	t	f	t
1122	The Muse	{"ipo": "private", "url": "themuse.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.66974	2021-02-11 15:18:34.865729	t	f	t
1130	Cumulus Networks	{"ipo": "private", "url": "cumulusnetworks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.71544	2021-02-11 15:18:34.870809	t	f	t
1138	Poppin	{"ipo": "private", "url": "poppin.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.764503	2021-02-11 15:18:34.876096	t	f	t
1144	RedPoint Global	{"ipo": "private", "url": "redpointglobal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Wellesley, Massachusetts, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.796577	2021-02-11 15:18:34.880755	t	f	t
1146	LendKey Technologies	{"ipo": "private", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.80724	2021-02-11 15:18:34.88532	f	t	t
1150	JustFoodForDogs	{"ipo": "private", "url": "justfoodfordogs.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.829702	2021-02-11 15:18:34.890175	t	f	t
1156	RPost	{"ipo": "private", "url": "rpost.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Los Angeles, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.862475	2021-02-11 15:18:34.894822	t	f	t
1162	WaveMaker	{"ipo": "private", "url": "wavemaker.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Mountain View, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.89505	2021-02-11 15:18:34.899369	t	f	t
1168	Enquero	{"ipo": "private", "url": "enquero.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Milpitas, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.926946	2021-02-11 15:18:34.904209	t	f	t
1172	Cape Cod Times	{"ipo": "private", "url": "capecodtimes.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Hyannis, Massachusetts, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.948814	2021-02-11 15:18:34.909013	t	f	t
1178	Revenue Well Systems	{"ipo": "private", "url": "revenuewell.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Deerfield, Illinois, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.985001	2021-02-11 15:18:34.913583	t	f	t
1183	United Way of Central Maryland	{"ipo": "private", "url": "uwcm.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Baltimore, Maryland, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.012101	2021-02-11 15:18:34.918295	t	f	t
1194	DC Comics	{"ipo": "private", "url": "dccomics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.069002	2021-02-11 15:18:34.923759	t	f	t
1099	Shift	{"ipo": "private", "url": "SHIFT.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Monica, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.548623	2021-02-11 15:18:34.92842	t	f	t
1075	Press-Citizen.com	{"ipo": "private", "url": "press-citizen.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Iowa, Louisiana, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.760409	2021-02-11 15:18:34.933103	t	f	t
1080	Courier-Post	{"ipo": "private", "url": "courierpostonline.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cherry Hill, New Jersey, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.785392	2021-02-11 15:18:34.841692	t	f	t
1216	Healthy Paws Pet Insurance	{"ipo": "private", "url": "healthypawspetinsurance.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bellevue, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.186991	2021-02-11 15:18:34.943542	t	f	t
1225	NeoMed Inc	{"ipo": "private", "url": "neomedinc.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Woodstock, Georgia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.238467	2021-02-11 15:18:34.948309	t	f	t
1232	Philadelphia Eagles	{"ipo": "private", "url": "philadelphiaeagles.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Philadelphia, Pennsylvania, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.275831	2021-02-11 15:18:34.953057	t	f	t
1237	SolarTech	{"ipo": "private", "url": "solartechonline.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "San Diego, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.302746	2021-02-11 15:18:34.958147	t	f	t
1241	Govberg Jewelers	{"ipo": "private", "url": "govbergwatches.comblog", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pennsylvania Furnace, Pennsylvania, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.3241	2021-02-11 15:18:34.962908	t	f	t
1247	Catalysis	{"ipo": "private", "url": "catalysis.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.356319	2021-02-11 15:18:34.967773	t	f	t
1252	Berkshire Hathaway Travel Protection	{"ipo": "private", "url": "bhtp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Stevens Point, Wisconsin, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.384783	2021-02-11 15:18:34.972874	t	f	t
1258	HJ Sims	{"ipo": "private", "url": "hjsims.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Fairfield, Connecticut, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.418622	2021-02-11 15:18:34.977931	t	f	t
1262	NinjaTrader Ecosystem	{"ipo": "private", "url": "ninjatraderecosystem.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.442034	2021-02-11 15:18:34.982774	t	f	t
1267	Wholesale Screening Solutions	{"ipo": "private", "url": "wholesalescreening.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Purcellville, Virginia, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.471394	2021-02-11 15:18:34.987747	t	f	t
1272	Gallery Furniture	{"ipo": "private", "url": "galleryfurniture.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.498448	2021-02-11 15:18:34.99348	t	f	t
1277	Berkley Select	{"ipo": "private", "url": "berkleyselect.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Chicago, Illinois, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.533294	2021-02-11 15:18:35.001536	t	f	t
1283	Naples Daily News	{"ipo": "private", "url": "naplesnews.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Naples, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.578083	2021-02-11 15:18:35.006571	t	f	t
1288	Red Rocks Credit Union	{"ipo": "private", "url": "redrocks.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Littleton, Colorado, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.623309	2021-02-11 15:18:35.011361	t	f	t
1294	National Inventors Hall of Fame	{"ipo": "private", "url": "invent.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Canton, Ohio, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.672912	2021-02-11 15:18:35.016735	t	f	t
1303	Diveplane	{"ipo": "private", "url": "diveplane.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Raleigh, North Carolina, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.20161	2021-02-11 15:18:35.021977	t	f	t
1211	Filson	{"ipo": "private", "url": "filson.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.160097	2021-02-11 15:18:35.026809	t	f	t
160	Connect Marketing	{"ipo": "private", "url": "connectmarketing.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.188319	2021-02-11 15:18:35.031414	t	f	t
1204	BioPlus Specialty Pharmacy	{"ipo": "private", "url": "bioplusrx.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Altamonte Springs, Florida, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.123532	2021-02-11 15:18:34.938321	t	f	t
117	LiteScape Technologies	{"ipo": "private", "url": "litescape.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:43.920826	2021-02-11 15:18:35.041464	t	f	t
272	Fusion Risk Management	{"ipo": "private", "url": "fusionrm.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Rolling Meadows, Illinois, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:20.978114	2021-02-11 15:18:35.046286	t	f	t
189	Inbound Marketing Results Inc.	{"ipo": "private", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.353081	2021-02-11 15:18:35.051146	f	t	t
217	CommLink	{"ipo": "private", "url": "commlink.co.uk", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Mansfield, Massachusetts, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.297493	2021-02-11 15:18:35.056181	t	f	t
371	Imagine Health	{"ipo": "private", "url": "imaginehealth.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Midvale, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.504585	2021-02-11 15:18:35.060971	t	f	t
461	BrainCheck	{"ipo": "private", "url": "braincheck.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.973396	2021-02-11 15:18:35.06587	t	f	t
568	Mercator Advisory Group	{"ipo": "private", "url": "mercatoradvisorygroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Maynard, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.525565	2021-02-11 15:18:35.071351	t	f	t
635	3C Software	{"ipo": "private", "url": "3csoftware.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Atlanta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.874571	2021-02-11 15:18:35.076354	t	f	t
727	Any Lab Test	{"ipo": "private", "url": "anylabtestnow.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Alpharetta, Georgia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.355445	2021-02-11 15:18:35.081167	t	f	t
807	Core Business Solutions	{"ipo": "private", "url": "thecoresolution.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Lewisburg, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.781247	2021-02-11 15:18:35.086052	t	f	t
937	Chips Technology Group	{"ipo": "private", "url": "chipstechnologygroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Syosset, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.470721	2021-02-11 15:18:35.090968	t	f	t
1067	The Food Channel	{"ipo": "private", "url": "foodchannel.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Springfield, Missouri, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.718856	2021-02-11 15:18:35.095613	t	f	t
1171	Protochips	{"ipo": "private", "url": "protochips.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Morrisville, North Carolina, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.943415	2021-02-11 15:18:35.100293	t	f	t
147	Tempo Creative	{"ipo": "private", "url": "tempocreative.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Scottsdale, Arizona, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.114933	2021-02-11 15:18:35.105538	t	f	t
161	CommonPlaces	{"ipo": "private", "url": "commonplaces.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Hampstead, New Hampshire, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.19426	2021-02-11 15:18:35.110448	t	f	t
193	Acquisition Technologies	{"ipo": "private", "url": "atllc.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Tampa, Florida, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.37416	2021-02-11 15:18:35.11531	t	f	t
335	enosiX	{"ipo": "private", "url": "enosix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Cincinnati, Ohio, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.300422	2021-02-11 15:18:35.120264	t	f	t
1313	TranscriptionStar	{"ipo": "private", "url": "transcriptionstar.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Diamond Bar, California, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.255019	2021-02-11 15:18:35.125172	t	f	t
648	RiskAnalytics	{"ipo": "private", "url": "riskanalytics.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Washington, District of Columbia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.941293	2021-02-11 15:18:35.129732	t	f	t
1221	Exclusive Resorts	{"ipo": "private", "url": "exclusiveresorts.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.217112	2021-02-11 15:18:35.036029	t	f	t
516	RevolutionParts	{"ipo": "private", "url": "revolutionparts.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Tempe, Arizona, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.255468	2021-02-11 15:18:35.139857	t	f	t
549	Energy Acuity	{"ipo": "private", "url": "energyacuity.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Denver, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.426419	2021-02-11 15:18:35.147911	t	f	t
614	BluLogix LLC	{"ipo": "private", "url": "blulogix.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Great Falls, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.767575	2021-02-11 15:18:35.153404	t	f	t
633	Strata Company	{"ipo": "private", "url": "gostrata.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Plymouth Meeting, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.865085	2021-02-11 15:18:35.158954	t	f	t
653	Dentrix Ascend	{"ipo": "private", "url": "dentrixascend.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "American Fork, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.969184	2021-02-11 15:18:35.164225	t	f	t
695	HRMS Solutions	{"ipo": "private", "url": "hrmssolutions.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Boulder, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.189949	2021-02-11 15:18:35.169393	t	f	t
733	Starline	{"ipo": "private", "url": "provafacilnaweb.com.br", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Belo Horizonte, Minas Gerais, Brazil", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.387358	2021-02-11 15:18:35.175827	t	f	t
838	Right Source Marketing	{"ipo": "private", "url": "rightsourcemarketing.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Reston, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.945985	2021-02-11 15:18:35.18086	t	f	t
931	Infocore	{"ipo": "private", "url": "infocore.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Carlsbad, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.439463	2021-02-11 15:18:35.186283	t	f	t
1018	Beyond Web Intertactive	{"ipo": "private", "url": "thisisbeyond.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Calabasas, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.904364	2021-02-11 15:18:35.191973	t	f	t
1087	The International Association for the Study of Lung Cancer	{"ipo": "private", "url": "iaslc.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Aurora, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.824013	2021-02-11 15:18:35.197253	t	f	t
1097	Wealthfront	{"ipo": "private", "url": "wealthfront.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Palo Alto, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.53742	2021-02-11 15:18:35.202575	t	f	t
1205	Education Management Solutions	{"ipo": "private", "url": "simulationiq.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Exton, Pennsylvania, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.129274	2021-02-11 15:18:35.209264	t	f	t
166	ZeeBlu	{"ipo": "private", "url": "ZeeBlu.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Santa Barbara, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.223974	2021-02-11 15:18:35.214286	t	f	t
406	Adaptive Computing	{"ipo": "private", "url": "adaptivecomputing.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Provo, Utah, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.69071	2021-02-11 15:18:35.219424	t	f	t
680	Leostream	{"ipo": "private", "url": "leostream.comindex.php", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Waltham, Massachusetts, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.108438	2021-02-11 15:18:35.228314	t	f	t
184	Netchannels	{"ipo": "private", "url": "netchannels.comindex.html", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "San Francisco, California, United States", "employees": "11 - 100", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:52:44.326611	2021-02-11 15:18:35.237123	t	f	t
480	Pathway Lending	{"ipo": "private", "url": "pathwaylending.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Nashville, Tennessee, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.071531	2021-02-11 15:18:35.246769	t	f	t
499	Catalyst Connection	{"ipo": "private", "url": "catalystconnection.org", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Pittsburgh, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.168338	2021-02-11 15:18:35.13457	t	f	t
835	Digital Clarity Group	{"ipo": "private", "url": "digitalclaritygroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.930452	2021-02-11 15:18:35.265704	t	f	t
1070	The Clarion-Ledger	{"ipo": "private", "url": "clarionledger.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Jackson, Mississippi, United States", "employees": "1 - 50", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:20.734584	2021-02-11 15:18:35.292279	t	f	t
1112	Terminus	{"ipo": "private", "url": "terminusapp.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Menlo Park, California, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:44.616819	2021-02-11 15:18:35.300762	t	f	t
1198	HealthCore	{"ipo": "private", "url": "healthcore.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Wilmington, Delaware, United States", "employees": "11 - 500", "company_tech": "salesforce marketing cloud", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:56:45.090954	2021-02-11 15:18:35.308614	t	f	t
1309	AlertOps	{"ipo": "private", "url": "alertops.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Bloomingdale, Illinois, United States", "employees": "11 - 500", "company_tech": "pipedrive", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:57:06.234385	2021-02-11 15:18:35.316141	t	f	t
606	PIN Business Network	{"ipo": "private", "url": "pinbusinessnetwork.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Greenwood Village, Colorado, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.72064	2021-02-11 15:18:35.324302	t	f	t
419	Geopointe	{"ipo": "private", "url": "geopointe.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Irvine, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.760188	2021-02-11 15:18:35.332847	t	f	t
211	UltraShipTMS	{"ipo": "private", "url": "ultrashiptms.com", "slug": null, "status": "active", "keyword": "inbound", "revenue": "1m - 50m", "location": "Fair Lawn, New Jersey, United States", "employees": "51 - 250", "company_tech": null, "headquarters": "united states", "website_tech": null}	2021-02-05 19:54:39.262116	2021-02-11 15:18:35.339687	t	f	t
328	Magnolia Medical Technologies	{"ipo": "private", "url": "magnolia-medical.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Seattle, Washington, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.261271	2021-02-11 15:18:35.35753	t	f	t
720	Agile Frameworks	{"ipo": "private", "url": "agileframeworks.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Saint Paul, Minnesota, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.319074	2021-02-11 15:18:35.361894	t	f	t
850	Mission Critical Facilities International	{"ipo": "private", "url": "missioncriticalgroup.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Spicewood, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.007695	2021-02-11 15:18:35.365947	t	f	t
463	Euclid Systems	{"ipo": "private", "url": "euclidsys.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Herndon, Virginia, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:21.984332	2021-02-11 15:18:35.370077	t	f	t
597	Mobile Marketing Association	{"ipo": "private", "url": "mmaglobal.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "New York, New York, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:22.673168	2021-02-11 15:18:35.375243	t	f	t
738	The Traffic Safety Store	{"ipo": "private", "url": "trafficsafetystore.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "West Chester, Pennsylvania, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:23.415043	2021-02-11 15:18:35.256756	t	f	t
954	Houston Press	{"ipo": "private", "url": "houstonpress.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Houston, Texas, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.563043	2021-02-11 15:18:35.27491	t	f	t
959	Elite Meetings International	{"ipo": "private", "url": "elitemeetings.com", "slug": null, "status": "active", "keyword": "none", "revenue": "1m - 50m", "location": "Santa Barbara, California, United States", "employees": "1 - 50", "company_tech": "salesforce pardot", "headquarters": "united states", "website_tech": "wordpress"}	2021-02-05 19:55:24.589075	2021-02-11 15:18:35.283431	t	f	t
1415	Taronis Fuels	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.380593	2021-02-11 21:46:30.339881	f	t	f
1414	iGo	{"ipo": "Public", "url": "igo.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Irvine, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.375559	2021-02-11 21:46:00.833784	t	f	f
1416	Tengion	{"ipo": "Public", "url": "tengion.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Audubon, Pennsylvania, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.385585	2021-02-11 21:46:48.295631	t	f	f
1412	Adaptive Medias	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.365689	2021-02-11 21:45:04.844121	f	t	f
1421	MainStreet Bank	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.41291	2021-02-11 21:50:24.892451	f	t	f
1419	Kwality Ltd	{"ipo": "Public", "url": "kdil.in", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New Delhi, Delhi, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.402285	2021-02-11 21:49:20.370402	t	f	f
1420	Crexendo	{"ipo": "Public", "url": "crexendo.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tempe, Arizona, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.407553	2021-02-11 21:49:51.349727	t	f	f
1425	Accsys Technologies	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.433862	2021-02-11 21:52:49.48934	f	t	f
1422	Southern National Bancorp of Virginia	{"ipo": "Public", "url": "sonabank.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Charlottesville, Virginia, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.418349	2021-02-11 21:50:39.815474	t	f	f
1423	Guestlogix	{"ipo": "Public", "url": "guestlogix.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Toronto, Ontario, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.423481	2021-02-11 21:51:24.835043	t	f	f
1426	Spectrum Geo	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.438939	2021-02-11 21:52:55.065985	f	t	f
1427	Foresight Autonomous Holdings	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.444022	2021-02-11 21:53:00.608797	f	t	f
1444	Mercia Asset Management PLC	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.537216	2021-02-11 22:04:27.719284	f	t	f
1428	Locondo.jp	{"ipo": "Public", "url": "locondo.jp", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.449054	2021-02-11 21:53:18.535011	t	f	f
1429	Fixstars	{"ipo": "Public", "url": "fixstars.comja", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.454455	2021-02-11 21:53:54.193747	t	f	f
1430	Youngevity International	{"ipo": "Public", "url": "ygyi.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Chula Vista, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.459663	2021-02-11 21:54:43.259861	t	f	f
1431	Professional Holding	{"ipo": "Public", "url": "proholdco.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Coral Gables, Florida, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.46686	2021-02-11 21:55:19.636359	t	f	f
1433	GIGA TRONICS	{"ipo": "Public", "url": "gigatronics.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Ramon, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.477375	2021-02-11 21:56:54.125839	t	f	f
1434	CFBank	{"ipo": "Public", "url": "cfbankonline.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Worthington, Ohio, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.482288	2021-02-11 21:57:43.218121	t	f	f
1435	Quest Resource Holding Corporation	{"ipo": "Public", "url": "qrhc.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Frisco, Texas, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.487073	2021-02-11 21:58:26.167415	t	f	f
1436	Nuvo Research	{"ipo": "Public", "url": "nuvoresearch.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Toronto, Ontario, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.492002	2021-02-11 21:59:02.307513	t	f	f
1438	Majesco Entertainment	{"ipo": "Public", "url": "majescoentertainment.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Edison, New Jersey, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.502351	2021-02-11 22:00:28.983663	t	f	f
1439	Huarong International Financial Holdings	{"ipo": "Public", "url": "hrif.com.hkfan", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Beijing, Beijing, China", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.50813	2021-02-11 22:01:08.551611	t	f	f
1440	LGC Capital	{"ipo": "Public", "url": "lgc-capital.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Montréal, Quebec, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.514743	2021-02-11 22:01:49.146992	t	f	f
1441	Nektan USA	{"ipo": "Public", "url": "nektan.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Gibraltar, Gibraltar, Gibraltar", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.520955	2021-02-11 22:02:30.846533	t	f	f
1443	Swiss Water	{"ipo": "Public", "url": "investor.swisswater.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Burnaby, British Columbia, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.532011	2021-02-11 22:03:55.185134	t	f	f
1451	Conifer Insurance Company	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.573188	2021-02-11 22:07:27.934975	f	t	f
1448	TSO3	{"ipo": "Public", "url": "tso3.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Çan, Canakkale, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.557932	2021-02-11 22:05:29.843702	t	f	f
1449	Geopacific Resources	{"ipo": "Public", "url": "geopacific.com.au", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Claremont, Western Australia, Australia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.562728	2021-02-11 22:06:04.615895	t	f	f
1450	Chesswood Group	{"ipo": "Public", "url": "chesswoodgroup.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Toronto, Ontario, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.567826	2021-02-11 22:06:54.36265	t	f	f
1453	Oconee Federal Financial	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.585466	2021-02-11 22:08:10.549867	f	t	f
1452	Heliocentris	{"ipo": "Public", "url": "heliocentris.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Berlin, Berlin, Germany", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.579919	2021-02-11 22:07:44.009183	t	f	f
1458	Troy Resources	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.613121	2021-02-11 22:10:54.209347	f	t	f
1454	CyberStep	{"ipo": "Public", "url": "corp.cyberstep.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.590537	2021-02-11 22:08:25.977663	t	f	f
1456	Xinning Logistics	{"ipo": "Public", "url": "en.xinning.com.cn", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Zhangpu, Jiangsu, China", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.600841	2021-02-11 22:09:51.028599	t	f	f
1457	Rubicon Minerals	{"ipo": "Public", "url": "rubiconminerals.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Vancouver, British Columbia, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.60791	2021-02-11 22:10:25.660083	t	f	f
1459	CloudCoCo Plc	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.618834	2021-02-11 22:10:59.825385	f	t	f
1460	President Energy	{"ipo": "Public", "url": "presidentenergyplc.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Leeds, Leeds, United Kingdom", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.624425	2021-02-11 22:11:21.753148	t	f	f
1462	Inuvo	{"ipo": "Public", "url": "inuvo.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Little Rock, Arkansas, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.634173	2021-02-11 22:12:44.033625	t	f	f
1463	SofTech	{"ipo": "Public", "url": "softech.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Lowell, Massachusetts, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.639395	2021-02-11 22:13:21.376906	t	f	f
1464	CTX Virtual Technologies	{"ipo": "Public", "url": "ctxtechnologies.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Boca Raton, Florida, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.644303	2021-02-11 22:13:58.053028	t	f	f
1465	Great East Energy	{"ipo": "Public", "url": "greateasternenergy.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Brooklyn, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.649585	2021-02-11 22:14:45.373005	t	f	f
1467	Chao Shenghuo	{"ipo": "Public", "url": "kdwaimai.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Shenzhen, Guangdong, China", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.660144	2021-02-11 22:15:59.35992	t	f	f
1468	Deep Down	{"ipo": "Public", "url": "deepdowninc.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Houston, Texas, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.665088	2021-02-11 22:16:49.621486	t	f	f
1469	ViewCast	{"ipo": "Public", "url": "viewcast.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Plano, Texas, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.670792	2021-02-11 22:17:28.204867	t	f	f
1470	Gocompare.com	{"ipo": "Public", "url": "gocompare.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Newport, Newport, United Kingdom", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.676256	2021-02-11 22:18:12.93631	t	f	f
1472	Vivos Therapeutics	{"ipo": "Public", "url": "vivoslife.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Littleton, Colorado, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.686618	2021-02-11 22:19:20.953016	t	f	f
1446	Mobcast group	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.54741	2021-02-11 22:04:33.19359	f	t	f
1480	G & M Holdings	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.727465	2021-02-11 22:25:48.960679	f	t	f
1475	Iconix Brand Group	{"ipo": "Public", "url": "iconixbrand.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New York, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.701947	2021-02-11 22:20:43.979613	t	f	f
1476	Finlay Minerals Ltd	{"ipo": "Public", "url": "finlayminerals.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Vancouver, British Columbia, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.706909	2021-02-11 22:21:25.410382	t	f	f
1477	Lloyd	{"ipo": "Public", "url": "lloydfonds.de", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Hamburg, Hamburg, Germany", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.71188	2021-02-11 22:21:58.641643	t	f	f
1478	OTC Markets Group	{"ipo": "Public", "url": "otcmarkets.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New York, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.716953	2021-02-11 22:22:47.210268	t	f	f
1481	SITO	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.73289	2021-02-11 22:25:54.46311	f	t	f
1495	Shakey's Pizza Asia Ventures Inc	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.806312	2021-02-11 22:35:10.901556	f	t	f
1482	Somoto	{"ipo": "Public", "url": "somoto.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tel Aviv, Tel Aviv, Israel", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.738203	2021-02-11 22:26:13.581646	t	f	f
1483	Focus Point Malaysia	{"ipo": "Public", "url": "focus-point.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Petaling Jaya, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.745345	2021-02-11 22:26:57.09136	t	f	f
1484	Akazoo	{"ipo": "Public", "url": "akazoo.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "London, England, United Kingdom", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.750366	2021-02-11 22:27:38.749673	t	f	f
1485	GtreeBNT	{"ipo": "Public", "url": "gtreebnt.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Seongnam, Kyonggi-do, South Korea", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.755401	2021-02-11 22:28:20.397677	t	f	f
1487	INEL	{"ipo": "Public", "url": "indianippon.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Chennai, Tamil Nadu, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.765591	2021-02-11 22:29:49.055281	t	f	f
1488	TRONICS GROUP	{"ipo": "Public", "url": "tronicsgroup.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Crolles, Rhone-Alpes, France", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.770564	2021-02-11 22:30:35.376044	t	f	f
1489	LFG Investment Holdings	{"ipo": "Public", "url": "legogroup.hkenindex.php", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Central, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.775534	2021-02-11 22:31:24.824217	t	f	f
1491	Mustika Ratu	{"ipo": "Public", "url": "mustika-ratu.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.78594	2021-02-11 22:32:43.440223	t	f	f
1492	N2N Connect	{"ipo": "Public", "url": "n2nconnect.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.791024	2021-02-11 22:33:24.015012	t	f	f
1493	Maha Energy-A	{"ipo": "Public", "url": "mahaenergy.ca", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Stockholm, Stockholms Lan, Sweden", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.79599	2021-02-11 22:34:04.029192	t	f	f
1494	Greater Bay Area Investments Group	{"ipo": "Public", "url": "gbaholdings.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sha Tin, New Territories, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.80099	2021-02-11 22:34:42.332565	t	f	f
1497	Community West Bancshares	{"ipo": "Public", "url": "communitywest.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Goleta, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.8164	2021-02-11 22:36:08.075722	t	f	f
1498	Gujarat Craft Industries	{"ipo": "Public", "url": "gujaratcraft.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Gandhinagar, Gujarat, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.821632	2021-02-11 22:36:47.744385	t	f	f
1499	Mi Ming Mart Holdings	{"ipo": "Public", "url": "mimingmart.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Causeway Bay, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.826753	2021-02-11 22:37:27.566331	t	f	f
1500	Ikonics Corp	{"ipo": "Public", "url": "ikonics.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Duluth, Minnesota, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.831698	2021-02-11 22:38:07.712207	t	f	f
1508	Mission Valley Bank	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.872885	2021-02-11 22:42:37.029199	f	t	f
1503	Scotts Liquid Gold Inc	{"ipo": "Public", "url": "slginc.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Denver, Colorado, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.846633	2021-02-11 22:39:39.173017	t	f	f
1504	Solarvest	{"ipo": "Public", "url": "solarvest.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Petaling Jaya, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.851781	2021-02-11 22:40:15.833328	t	f	f
1506	First Miami Bancorp Inc	{"ipo": "Public", "url": "fnbsm.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Miami, Florida, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.862133	2021-02-11 22:41:28.8985	t	f	f
1507	Triton Container International	{"ipo": "Public", "url": "tritoncontainer.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Hamilton, Hamilton, Bermuda", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.86771	2021-02-11 22:42:14.493231	t	f	f
1513	Energy, Fuel, Oil and Gas	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.901092	2021-02-11 22:45:19.857065	f	t	f
1509	Italia Independent	{"ipo": "Public", "url": "italiaindependent.comen", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Turin, Piemonte, Italy", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.880037	2021-02-11 22:42:56.05642	t	f	f
1510	Ptc India Financial Services L	{"ipo": "Public", "url": "ptcfinancial.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New Delhi, Delhi, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.885207	2021-02-11 22:43:30.26677	t	f	f
1511	INPRASE	{"ipo": "Public", "url": "inprasegroup.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.890466	2021-02-11 22:44:08.264237	t	f	f
1519	Royce Global Value Trust, Inc.	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.933546	2021-02-11 22:49:12.548893	f	t	f
1514	First Citrus Bancorp	{"ipo": "Public", "url": "firstcitrus.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tampa, Florida, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.906634	2021-02-11 22:45:38.174428	t	f	f
1515	Wayne Savings Bancshares	{"ipo": "Public", "url": "waynesavings.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wooster, Ohio, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.912424	2021-02-11 22:46:29.430071	t	f	f
1516	Eco-Tek Holdings	{"ipo": "Public", "url": "carmen.netoffice.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Eastern, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.917752	2021-02-11 22:47:09.230077	t	f	f
1518	Hang Sang (Siu Po) International Holding	{"ipo": "Public", "url": "hangsangpress.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sham Shui Po, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.928264	2021-02-11 22:48:42.023457	t	f	f
1522	OMNIQ Corp.	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.949224	2021-02-11 22:50:35.290831	f	t	f
1520	Sun Entertainment Group	{"ipo": "Public", "url": "sig.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kwun Tong, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.938978	2021-02-11 22:49:27.696826	t	f	f
1521	Matica Fintec	{"ipo": "Public", "url": "maticafintec.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Galliate, Piemonte, Italy", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.944192	2021-02-11 22:50:05.681699	t	f	f
1523	Long Well International Holdings	{"ipo": "Public", "url": "lwih.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wan Chai, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.954348	2021-02-11 22:50:55.309233	t	f	f
1525	eDaran	{"ipo": "Public", "url": "edaran.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.96566	2021-02-11 22:52:32.427347	t	f	f
1526	Charter Oak Bank	{"ipo": "Public", "url": "charteroak.org", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Waterford, Connecticut, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.970909	2021-02-11 22:53:13.988077	t	f	f
1527	Eduspec Holdings	{"ipo": "Public", "url": "eduspec.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Shah Alam, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.976413	2021-02-11 22:54:00.098864	t	f	f
1530	Symphony Communication	{"ipo": "Public", "url": "symphony.net.th", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Bangkok, Krung Thep, Thailand", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.991956	2021-02-11 22:55:29.846089	t	f	f
1531	Schlatter	{"ipo": "Public", "url": "schlattergroup.comen", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Schlieren, Zurich, Switzerland", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.997206	2021-02-11 22:56:16.276806	t	f	f
1533	Banking, Financial Services	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.007695	2021-02-11 22:57:32.338131	f	t	f
1539	Health Insurance, Insurance, Life Insurance	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.043564	2021-02-11 23:00:59.313547	f	t	f
1534	Versabank	{"ipo": "Public", "url": "versabank.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Toronto, Ontario, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.013909	2021-02-11 22:57:49.728545	t	f	f
1535	Kawan Food	{"ipo": "Public", "url": "kawanfood.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Klang, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.021754	2021-02-11 22:58:21.555078	t	f	f
1536	Man Sang International	{"ipo": "Public", "url": "msil.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Chai Wan, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.026978	2021-02-11 22:59:11.057865	t	f	f
1537	Edvance International Holdings	{"ipo": "Public", "url": "edvanceintl.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kwun Tong, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.03216	2021-02-11 22:59:46.265283	t	f	f
1549	Information Services, Information Technology	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.094646	2021-02-11 23:07:51.41322	f	t	f
1540	Sino Vision Worldwide Holdings	{"ipo": "Public", "url": "sinovisionworldwide.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Southern, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.048533	2021-02-11 23:01:18.419899	t	f	f
1541	Min Xin Holdings	{"ipo": "Public", "url": "minxin.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Central, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.053754	2021-02-11 23:01:54.32952	t	f	f
1542	Vsb Bancorp Inc	{"ipo": "Public", "url": "victorystatebank.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Staten Island, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.058753	2021-02-11 23:02:42.923932	t	f	f
1543	GMO Media	{"ipo": "Public", "url": "gmo-media.jp", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.063959	2021-02-11 23:03:26.460449	t	f	f
1546	Excelsior Alimentos	{"ipo": "Public", "url": "excelsior.ind.br", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Santa Cruz Do Sul, Rio Grande do Sul, Brazil", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.079484	2021-02-11 23:05:46.098817	t	f	f
1547	Asian Pac	{"ipo": "Public", "url": "asianpac.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.084709	2021-02-11 23:06:33.787418	t	f	f
1548	Zhejiang United Investment Holdings Group	{"ipo": "Public", "url": "zjuv8366.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Admiralty, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.089671	2021-02-11 23:07:16.75662	t	f	f
1551	Casino, Gaming	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.105072	2021-02-11 23:08:35.103898	f	t	f
1556	Sabb Takaful Co.	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.130126	2021-02-11 23:11:30.742003	f	t	f
1552	China Hongguang Holdings	{"ipo": "Public", "url": "hongguang.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jieyang, Guangdong, China", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.110072	2021-02-11 23:08:49.437265	t	f	f
1553	California First National Bank	{"ipo": "Public", "url": "calfirst.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Irvine, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.115272	2021-02-11 23:09:33.710659	t	f	f
1554	American Basketball	{"ipo": "Public", "url": "abaliveaction.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New York, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.120155	2021-02-11 23:10:21.141344	t	f	f
1555	Emergency Assistance Japan	{"ipo": "Public", "url": "emergency.co.jpenglish", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.124996	2021-02-11 23:11:05.887998	t	f	f
1564	Manufacturing, Pharmaceutical	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.177475	2021-02-11 23:15:20.001999	f	t	f
1559	Bank 34	{"ipo": "Public", "url": "bank34online.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Alamogordo, New Mexico, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.146036	2021-02-11 23:11:57.937941	t	f	f
1561	Kingkey Financial International Holdings	{"ipo": "Public", "url": "ukf.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kowloon City, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.159464	2021-02-11 23:13:17.105916	t	f	f
1562	Nanotech Entertainment Inc	{"ipo": "Public", "url": "ntek.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Neuchatel, Neuchatel, Switzerland", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.167338	2021-02-11 23:14:04.724232	t	f	f
1563	Ntegrator Intl	{"ipo": "Public", "url": "ntegrator.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Singapore, Central Region, Singapore", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.172484	2021-02-11 23:14:50.392824	t	f	f
1565	Casual Games, Toys	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.182461	2021-02-11 23:15:25.589542	f	t	f
1566	B & D Strategic Holdings	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.187632	2021-02-11 23:15:31.076372	f	t	f
1570	Insurance, Life Insurance, Property Insurance	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.207992	2021-02-11 23:17:40.926589	f	t	f
1567	Mikro	{"ipo": "Public", "url": "itmikro.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Shah Alam, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.19266	2021-02-11 23:15:48.041399	t	f	f
1569	Strateco Resources Inc	{"ipo": "Public", "url": "stratecoinc.comhome.php", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Boucherville, Quebec, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.202727	2021-02-11 23:17:14.307325	t	f	f
1574	First Seacoast Bank	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.230608	2021-02-11 23:19:57.801247	f	t	f
1571	Millennium Pacific Group	{"ipo": "Public", "url": "mpgroup.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Pingshan, Guangdong, China", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.214035	2021-02-11 23:18:01.107402	t	f	f
1572	Intl Baler Corp	{"ipo": "Public", "url": "intl-baler.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jacksonville, Florida, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.219756	2021-02-11 23:18:40.835953	t	f	f
1573	Digistar Holdings	{"ipo": "Public", "url": "digistar.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Ampang, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.224946	2021-02-11 23:19:22.203124	t	f	f
1576	FCN Banc Corp.	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.240877	2021-02-11 23:20:40.714857	f	t	f
1580	Construction, Electronics, Home Improvement	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.26116	2021-02-11 23:22:44.542199	f	t	f
1577	China Renewable Energy Investment	{"ipo": "Public", "url": "cre987.comtchome.aspx", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kowloon City, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.246087	2021-02-11 23:20:55.267352	t	f	f
1578	Seamless Green China Holdings	{"ipo": "Public", "url": "victoryhousefp.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sheung Wan, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.251212	2021-02-11 23:21:38.243748	t	f	f
1579	QRS Music Technology	{"ipo": "Public", "url": "qrsmusic.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Seneca, Pennsylvania, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.256147	2021-02-11 23:22:18.968218	t	f	f
1581	Financial Services, Real Estate	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.266186	2021-02-11 23:22:50.129093	f	t	f
1582	Intervest Offic & W	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.27119	2021-02-11 23:22:55.652454	f	t	f
1558	Construction, Recycling, Rental	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.140789	2021-02-11 23:11:36.328712	f	t	f
1585	Skyline National Bank	{"ipo": "Public", "url": "skylinenationalbank.bank", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Galax, Virginia, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.287374	2021-02-11 23:23:59.030882	t	f	f
1586	Preferred Dental Technologies Inc	{"ipo": "Public", "url": "prefdent.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Winnipeg, Manitoba, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.292603	2021-02-11 23:24:38.589116	t	f	f
1600	Property Development, Property Management	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.37258	2021-02-11 23:34:15.605766	f	t	f
1589	DFI Logistics	{"ipo": "Public", "url": "dfilogistics.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kelapagading, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.310783	2021-02-11 23:27:04.789532	t	f	f
1590	Ding He Mining Holdings Limited	{"ipo": "Public", "url": "dinghemining.com.hkceo.html", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "North Point, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.315892	2021-02-11 23:27:49.436178	t	f	f
1591	Nila Infrastructures	{"ipo": "Public", "url": "nilainfra.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Ahmedabad, Gujarat, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.320931	2021-02-11 23:28:38.445956	t	f	f
1592	Manorama Industries	{"ipo": "Public", "url": "manoramagroup.co.in", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Raipur, Chhattisgarh, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.325946	2021-02-11 23:29:22.134293	t	f	f
1594	IPMUDA	{"ipo": "Public", "url": "ipmuda.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.336294	2021-02-11 23:30:48.119948	t	f	f
1596	Pacific Construction	{"ipo": "Public", "url": "pacific-group.com.tw", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Taipei, T'ai-pei, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.351252	2021-02-11 23:31:37.918082	t	f	f
1597	Macpie	{"ipo": "Public", "url": "macpieberhad.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.356992	2021-02-11 23:32:14.37715	t	f	f
1599	Grand T G Gold Holdings	{"ipo": "Public", "url": "grandtg.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sheung Wan, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.367642	2021-02-11 23:33:40.878442	t	f	f
1606	Property Development, Real Estate	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.404964	2021-02-11 23:38:01.814195	f	t	f
1601	Eng Kah Corporation	{"ipo": "Public", "url": "engkah.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Penang, Pulau Pinang, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.377981	2021-02-11 23:34:37.385655	t	f	f
1602	Easy One Financial Group	{"ipo": "Public", "url": "easyonefg.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kowloon City, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.383276	2021-02-11 23:35:18.864981	t	f	f
1603	TH Heavy Engineering	{"ipo": "Public", "url": "thhe.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.388385	2021-02-11 23:36:06.443288	t	f	f
1605	China Finance Investment Holdings	{"ipo": "Public", "url": "cfih.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Yau Tsim Mong, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.399713	2021-02-11 23:37:31.985137	t	f	f
1607	Tomypak Flexible Packaging	{"ipo": "Public", "url": "tomypak.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Senai, Johor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.410246	2021-02-11 23:38:20.307973	t	f	f
1608	Tai Kam Holdings	{"ipo": "Public", "url": "taikamholdings.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Mong Kok, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.415694	2021-02-11 23:38:56.519998	t	f	f
1609	Artini Holdings	{"ipo": "Public", "url": "artini.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sheung Wan, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.423321	2021-02-11 23:39:34.931735	t	f	f
1611	Primamoda	{"ipo": "Public", "url": "primamoda.com.pl", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wroclaw, Dolnoslaskie, Poland", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.433918	2021-02-11 23:41:01.657503	t	f	f
1587	Diamines & Chemicals	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.298178	2021-02-11 23:25:06.382131	f	t	f
1613	SciVision Biotech	{"ipo": "Public", "url": "scivision.com.tw", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kaohsiung, T'ai-wan, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.446654	2021-02-11 23:41:47.603666	t	f	f
1624	Civil Engineering, Construction, Railroad	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.503636	2021-02-11 23:54:11.198889	f	t	f
1615	Bcc Fuba India	{"ipo": "Public", "url": "bccfuba.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New Delhi, Delhi, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.457633	2021-02-11 23:43:18.280472	t	f	f
1616	Carroll Shelby Intl	{"ipo": "Public", "url": "shelby.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Gardena, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.462535	2021-02-11 23:43:57.722609	t	f	f
1618	Commercial Natial Financial	{"ipo": "Public", "url": "cnbthebankonline.comhomehome", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Greensburg, Pennsylvania, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.473011	2021-02-11 23:44:41.039508	t	f	f
1619	Morganite Crucible	{"ipo": "Public", "url": "morganmms.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Aurangabad, Maharashtra, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.478041	2021-02-11 23:45:15.074681	t	f	f
1621	Damariscotta Bankshares Inc	{"ipo": "Public", "url": "damariscottabank.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Damariscotta, Maine, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.488308	2021-02-11 23:52:29.252385	t	f	f
1622	Lucisano Media Group	{"ipo": "Public", "url": "lucisanomediagroup.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Roma, Lazio, Italy", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.493265	2021-02-11 23:53:14.897044	t	f	f
1623	Champion Microelectronic	{"ipo": "Public", "url": "championmicro.com.tw", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Hsinchu, T'ai-wan, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.498168	2021-02-11 23:53:48.675396	t	f	f
1625	Chemical, Industrial Engineering, Manufacturing, Oil and Gas	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.509574	2021-02-11 23:54:16.695569	f	t	f
1628	Industrial, Oil and Gas	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.525338	2021-02-11 23:55:45.161472	f	t	f
1626	Hilton Metal Forging	{"ipo": "Public", "url": "hiltonmetal.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Mumbai, Maharashtra, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.515344	2021-02-11 23:54:33.727663	t	f	f
1632	Food and Beverage	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.546103	2021-02-11 23:58:03.844493	f	t	f
1629	Multi Agro Gemilang Plantation	{"ipo": "Public", "url": "mag-plantation.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta Pusat, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.530628	2021-02-11 23:56:07.393775	t	f	f
1630	Tanjung Bunga	{"ipo": "Public", "url": "tanjungbunga.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Makassar, Sulawesi Selatan, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.535858	2021-02-11 23:56:42.024738	t	f	f
1631	Hyosung ONB	{"ipo": "Public", "url": "hsonb.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Daejeon, Taejon-jikhalsi, South Korea", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.541147	2021-02-11 23:57:28.125252	t	f	f
1635	Chemical, Manufacturing, Textiles	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.562461	2021-02-11 23:59:24.245509	f	t	f
1633	Ishigaki Foods Co	{"ipo": "Public", "url": "ishigaki.co.jpenglish", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.551618	2021-02-11 23:58:19.660219	t	f	f
1638	Kothari Sugar&chem	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.578066	2021-02-12 00:00:48.039064	f	t	f
1636	Vakif Fin Kir	{"ipo": "Public", "url": "vakifleasing.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Istanbul, Istanbul, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.56785	2021-02-11 23:59:41.316172	t	f	f
1637	Winning Tower Group Holdings	{"ipo": "Public", "url": "wtgl.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kwai Tsing, New Territories, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.5729	2021-02-12 00:00:16.373923	t	f	f
1639	Mobile Apps, Wireless	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.585517	2021-02-12 00:00:53.523224	f	t	f
1647	Manufacturing, Textiles	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.637015	2021-02-12 00:04:21.750641	f	t	f
1643	Skm Egg Products Export	{"ipo": "Public", "url": "skmegg.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Chennai, Tamil Nadu, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.610938	2021-02-12 00:01:56.473871	t	f	f
1644	China Minsheng Financial Holding	{"ipo": "Public", "url": "cm-fin.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wan Chai, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.617899	2021-02-12 00:02:31.549272	t	f	f
1645	Eternity Investment	{"ipo": "Public", "url": "eternityinv.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Central, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.624793	2021-02-12 00:03:04.742353	t	f	f
1646	Unity Infraprojects	{"ipo": "Public", "url": "unityinfra.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Mumbai, Maharashtra, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.631502	2021-02-12 00:03:46.1472	t	f	f
1653	Food Processing, Manufacturing	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.668153	2021-02-12 00:07:33.59932	f	t	f
1648	China Trustful Group	{"ipo": "Public", "url": "china-trustful.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sham Shui Po, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.642021	2021-02-12 00:04:40.392304	t	f	f
1650	Meilleure Health International Industry Group	{"ipo": "Public", "url": "meilleure.com.cn", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Admiralty, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.652408	2021-02-12 00:05:55.960513	t	f	f
1651	Rr Metalmakers India	{"ipo": "Public", "url": "rrmetalmakers.comabout.asp", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Mumbai, Maharashtra, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.657786	2021-02-12 00:06:30.386843	t	f	f
1652	Wilmington Capital Management	{"ipo": "Public", "url": "wilmingtoncapital.ca", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Calgary, Alberta, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.663026	2021-02-12 00:07:08.012968	t	f	f
1659	Commercial, Real Estate, Residential	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.703288	2021-02-12 00:12:11.672118	f	t	f
1655	Galva Technologies	{"ipo": "Public", "url": "gtc.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta Pusat, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.680745	2021-02-12 00:09:44.719945	t	f	f
1656	Shun Wo Group Holdings	{"ipo": "Public", "url": "swgrph.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Eastern, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.686358	2021-02-12 00:10:21.193055	t	f	f
1657	Konfrut Gida	{"ipo": "Public", "url": "konfrut.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Istanbul, Istanbul, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.692524	2021-02-12 00:10:58.167481	t	f	f
1658	Creditwest Faktoring	{"ipo": "Public", "url": "creditwest.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Ankara, Ankara, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.697996	2021-02-12 00:11:43.072352	t	f	f
1665	Industrial, Mineral, Mining	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.736734	2021-02-12 00:16:07.895289	f	t	f
1660	Kristal Kola	{"ipo": "Public", "url": "kristalkola.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Istanbul, Istanbul, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.708435	2021-02-12 00:12:32.144376	t	f	f
1662	Bamboos Health Care Holdings	{"ipo": "Public", "url": "bamboos.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Yau Tsim Mong, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.718834	2021-02-12 00:14:01.961475	t	f	f
1663	Metalgrafica Iguacu	{"ipo": "Public", "url": "metaliguacu.com.br", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Ponta Grossa, Parana, Brazil", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.724123	2021-02-12 00:14:50.152805	t	f	f
1664	Jiangsu Innovative Ecological New Materials	{"ipo": "Public", "url": "jscxsh.cn", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Yixing, Jiangsu, China", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.731432	2021-02-12 00:15:37.110718	t	f	f
1641	Manufacturing, Precious Metals	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.599701	2021-02-12 00:00:59.25839	f	t	f
1668	Verusa Holding As	{"ipo": "Public", "url": "verusa.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sariyer, Istanbul, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.752151	2021-02-12 00:17:17.138611	t	f	f
1669	Metal Coatings	{"ipo": "Public", "url": "mcil.net", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New Delhi, Delhi, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.757697	2021-02-12 00:17:58.508811	t	f	f
1677	Construction, Industrial Design, Infrastructure	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.798683	2021-02-12 00:23:00.11265	f	t	f
1671	Peregrine Indus Inc	{"ipo": "Public", "url": "peregrineindustries.com.au", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Campbellfield, Victoria, Australia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.768355	2021-02-12 00:18:51.876182	t	f	f
1673	Country Heights Holdings	{"ipo": "Public", "url": "countryheights.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Serdang, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.778309	2021-02-12 00:20:13.035094	t	f	f
1674	Provident Agro	{"ipo": "Public", "url": "provident-agro.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.78342	2021-02-12 00:21:01.803463	t	f	f
1675	Tijaria Polypipes	{"ipo": "Public", "url": "tijaria-pipes.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jaipur, Rajasthan, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.788484	2021-02-12 00:21:49.554564	t	f	f
1676	Shivalik Bimetal Controls	{"ipo": "Public", "url": "shivalikbimetals.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New Delhi, Delhi, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.79348	2021-02-12 00:22:31.545538	t	f	f
1680	Health Care, Personal Health	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.814168	2021-02-12 00:24:10.065978	f	t	f
1679	Watt Mann	{"ipo": "Public", "url": "wattmann.co.jp", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Yokohama, Kanagawa, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.809035	2021-02-12 00:23:48.556682	t	f	f
1684	Furniture, Home Decor, Manufacturing	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.835284	2021-02-12 00:28:20.115145	f	t	f
1681	Bestec Power Electronics	{"ipo": "Public", "url": "bestec.com.tw", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Taoyüan, T'ai-wan, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.81931	2021-02-12 00:26:25.980839	t	f	f
1682	Shoal Point Energy	{"ipo": "Public", "url": "shoalpointenergy.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Vancouver, British Columbia, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.824587	2021-02-12 00:27:02.564677	t	f	f
1683	JKG Land	{"ipo": "Public", "url": "jkgland.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.829713	2021-02-12 00:27:52.294222	t	f	f
1685	Longino&cardenal	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.840303	2021-02-12 00:28:25.731337	f	t	f
1693	Oil and Gas	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.884153	2021-02-12 00:32:49.737311	f	t	f
1687	Buana Finance	{"ipo": "Public", "url": "buanafinance.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.850706	2021-02-12 00:29:34.287112	t	f	f
1689	Saray Matbaacilik	{"ipo": "Public", "url": "saraymatbaa.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Akyurt, Ankara, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.861223	2021-02-12 00:30:24.361888	t	f	f
1690	Tokyo Kiho	{"ipo": "Public", "url": "tokyokiho.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Chuo, Hokkaido, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.868443	2021-02-12 00:31:05.384512	t	f	f
1691	Gujarat Foils	{"ipo": "Public", "url": "gujaratfoils.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Mumbai, Maharashtra, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.873569	2021-02-12 00:31:44.360435	t	f	f
1692	Kbdom	{"ipo": "Public", "url": "kbdom.pl", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Krokowa, Pomorskie, Poland", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.878669	2021-02-12 00:32:15.69031	t	f	f
1694	Mining, Precious Metals	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.889425	2021-02-12 00:32:55.901618	f	t	f
1670	Textiles	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.762962	2021-02-12 00:18:34.062879	f	t	f
1698	Asset Management, Finance, Financial Services	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.910661	2021-02-12 00:35:45.843476	f	t	f
1697	Mega Polietilen	{"ipo": "Public", "url": "mega-pol.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Istanbul, Istanbul, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.905495	2021-02-12 00:35:19.225112	t	f	f
1701	Industrial	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.92616	2021-02-12 00:37:06.128905	f	t	f
1699	intra-mart	{"ipo": "Public", "url": "intra-mart.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Akasaka, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.916094	2021-02-12 00:36:01.014427	t	f	f
1700	Bukit Uluwatu Villa	{"ipo": "Public", "url": "buvagroup.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.921121	2021-02-12 00:36:35.54311	t	f	f
1710	Industrial, Manufacturing	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.973069	2021-02-12 00:42:49.591953	f	t	f
1702	China Environmental Resources Group	{"ipo": "Public", "url": "cergroup.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Central, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.931365	2021-02-12 00:37:26.469006	t	f	f
1704	SCHOKO	{"ipo": "Public", "url": "wahana-interfood.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Bandung, Jawa Barat, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.942155	2021-02-12 00:38:51.015968	t	f	f
1705	Garda Tujuh Buana	{"ipo": "Public", "url": "gtb.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.947256	2021-02-12 00:39:34.424344	t	f	f
1706	Poligrafici Printing	{"ipo": "Public", "url": "poligraficiprinting.it", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Bologna, Emilia-Romagna, Italy", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.952383	2021-02-12 00:40:19.000445	t	f	f
1707	Nfk Holdings	{"ipo": "Public", "url": "nfk-hd.co.jpen_index.html", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Yokohama, Kanagawa, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.957611	2021-02-12 00:40:58.983653	t	f	f
1709	Uday Jewellery Industries Limi	{"ipo": "Public", "url": "udayjewellery.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Hyderabad, Andhra Pradesh, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.967853	2021-02-12 00:42:23.82318	t	f	f
1716	Agriculture, Food Processing	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:31.007365	2021-02-12 00:45:33.159164	f	t	f
1712	Dingyi Group Investment	{"ipo": "Public", "url": "dingyi.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wan Chai, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.984245	2021-02-12 00:43:07.226758	t	f	f
1713	Clifton Mining	{"ipo": "Public", "url": "cliftonmining.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "American Fork, Utah, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.989466	2021-02-12 00:43:43.226876	t	f	f
1714	Associated Industries China	{"ipo": "Public", "url": "agneovo.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Nankang, T'ai-pei, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.994628	2021-02-12 00:44:30.20812	t	f	f
1718	Manufacturing, Paper Manufacturing	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:31.017833	2021-02-12 00:54:18.225981	f	t	f
1717	Reward Wool Industry	{"ipo": "Public", "url": "reward.com.tw", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Taipei, T'ai-pei, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:31.012387	2021-02-12 00:53:56.496829	t	f	f
1318	CareDx	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.836213	2021-02-12 00:33:01.776041	f	t	f
1322	Precigen	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.868068	2021-02-12 00:33:39.93352	f	t	f
1320	Veracyte	{"ipo": "Public", "url": "veracyte.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "South San Francisco, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.856611	2021-02-12 00:33:17.876319	t	f	f
1324	CytomX Therapeutics	{"ipo": "Public", "url": "cytomx.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "South San Francisco, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.880332	2021-02-12 00:33:57.101946	t	f	f
1333	Durect Corp.	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.940376	2021-02-12 00:58:40.01982	f	t	f
1326	Agilyx	{"ipo": "Public", "url": "agilyx.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tigard, Oregon, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.903678	2021-02-12 00:55:24.513112	t	f	f
1327	BioAtla	{"ipo": "Public", "url": "bioatla.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Diego, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.908795	2021-02-12 00:56:14.86782	t	f	f
1330	Redbubble	{"ipo": "Public", "url": "redbubble.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Melbourne, Victoria, Australia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.924234	2021-02-12 00:57:40.324141	t	f	f
1331	Arrowhead Pharmaceuticals	{"ipo": "Public", "url": "arrowheadcu.org", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Bernardino, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.929564	2021-02-12 00:58:16.425826	t	f	f
1335	Nurix Therapeutics	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.950829	2021-02-12 00:58:45.584355	f	t	f
1338	Translate Bio	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.966784	2021-02-12 00:59:22.819066	f	t	f
1336	TriState Capital	{"ipo": "Public", "url": "tristatecapitalbank.comdefault.aspx", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Pittsburgh, Pennsylvania, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.95598	2021-02-12 00:59:02.24088	t	f	f
1342	Sutro Biopharma	{"ipo": "Public", "url": "sutrobio.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "South San Francisco, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.989076	2021-02-12 01:00:19.331791	t	f	f
1344	Magenta Therapeutics	{"ipo": "Public", "url": "magentatx.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Cambridge, Massachusetts, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.000078	2021-02-12 01:01:03.620127	t	f	f
1345	Orexo	{"ipo": "Public", "url": "orexo.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Uppsala, Uppsala Lan, Sweden", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.005472	2021-02-12 01:01:42.859585	t	f	f
1349	Zentalis Pharmaceuticals	{"ipo": "Public", "url": "zentalis.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New York, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.026631	2021-02-12 01:02:50.250243	t	f	f
1351	Mesoblast	{"ipo": "Public", "url": "mesoblast.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Melbourne, Victoria, Australia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.038348	2021-02-12 01:03:26.500322	t	f	f
1353	Infibeam	{"ipo": "Public", "url": "infibeam.ooo", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Ahmedabad, Gujarat, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.053242	2021-02-12 01:04:11.604239	t	f	f
1354	Cidara Therapeutics	{"ipo": "Public", "url": "cidara.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Diego, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.058407	2021-02-12 01:04:44.816081	t	f	f
1356	Tricida	{"ipo": "Public", "url": "tricida.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Menlo Park, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.068566	2021-02-12 01:05:20.071483	t	f	f
1359	Xebec Adsorption	{"ipo": "Public", "url": "xebecinc.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Blainville, Quebec, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.084315	2021-02-12 01:06:39.905217	t	f	f
1360	Innate Pharma	{"ipo": "Public", "url": "innate-pharma.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Marseille, Provence-Alpes-Cote d'Azur, France", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.089318	2021-02-12 01:07:17.45601	t	f	f
1362	aTyr Pharma	{"ipo": "Public", "url": "atyrpharma.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Diego, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.099391	2021-02-12 01:08:03.412209	t	f	f
1364	Check-Cap	{"ipo": "Public", "url": "check-cap.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Isfiyeh, Hefa, Israel", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.109395	2021-02-12 01:10:26.146807	t	f	f
1366	Orphazyme	{"ipo": "Public", "url": "orphazyme.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Copenhagen, Hovedstaden, Denmark", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.119606	2021-02-12 01:10:59.881499	t	f	f
1367	USA Technologies	{"ipo": "Public", "url": "usatech.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Malvern, Pennsylvania, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.125274	2021-02-12 01:11:45.61741	t	f	f
1376	Vericel Corp	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.172048	2021-02-12 01:14:55.670493	f	t	f
1371	iCAD	{"ipo": "Public", "url": "icadmed.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Nashua, New Hampshire, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.14587	2021-02-12 01:13:18.248648	t	f	f
1373	Chiasma	{"ipo": "Public", "url": "chiasmapharma.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Waltham, Massachusetts, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.156552	2021-02-12 01:13:49.706764	t	f	f
1402	Contango Oil & Gas Co.	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.311042	2021-02-12 01:26:18.612557	f	t	f
1378	Capital Bancorp	{"ipo": "Public", "url": "capitalbankmd.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Rockville, Maryland, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.186738	2021-02-12 01:15:14.590126	t	f	f
1380	Team17 Software	{"ipo": "Public", "url": "team17.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Nottingham, Nottingham, United Kingdom", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.197016	2021-02-12 01:15:58.646574	t	f	f
1381	AI inside	{"ipo": "Public", "url": "inside.aiindex.html", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.201882	2021-02-12 01:16:39.436844	t	f	f
1384	Alimera Sciences	{"ipo": "Public", "url": "alimerasciences.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Alpharetta, Georgia, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.217279	2021-02-12 01:18:07.260711	t	f	f
1385	EverSpin Technologies	{"ipo": "Public", "url": "everspin.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Chandler, Arizona, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.222363	2021-02-12 01:18:45.834427	t	f	f
1386	BIMobject	{"ipo": "Public", "url": "bimobject.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Malmö, Skane Lan, Sweden", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.227433	2021-02-12 01:19:34.918184	t	f	f
1387	Oxford BioMedica	{"ipo": "Public", "url": "oxfordbiomedica.co.uk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Oxford, Oxfordshire, United Kingdom", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.232785	2021-02-12 01:20:15.282329	t	f	f
1391	Gladstone Capital	{"ipo": "Public", "url": "ir.gladstonecapital.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Mclean, Virginia, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.252807	2021-02-12 01:21:37.175681	t	f	f
1393	MusclePharm	{"ipo": "Public", "url": "musclepharm.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Denver, Colorado, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.26295	2021-02-12 01:22:17.30347	t	f	f
1395	Bovie Medical	{"ipo": "Public", "url": "boviemedical.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Clearwater, Florida, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.273699	2021-02-12 01:23:08.270471	t	f	f
1396	JHL Biotech	{"ipo": "Public", "url": "jhlbiotech.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Hsinchu, T'ai-wan, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.278709	2021-02-12 01:23:46.817451	t	f	f
1398	Voltalia	{"ipo": "Public", "url": "voltalia.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Paris, Ile-de-France, France", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.288934	2021-02-12 01:25:11.975068	t	f	f
1400	Cedar Realty Trust	{"ipo": "Public", "url": "cedarrealtytrust.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Port Washington, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.298824	2021-02-12 01:25:49.972414	t	f	f
1404	Tantalus Systems	{"ipo": "Public", "url": "tantalus.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Angier, North Carolina, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.324745	2021-02-12 01:26:34.906728	t	f	f
1407	Advanced Media	{"ipo": "Public", "url": "advanced-media.co.jp", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.34012	2021-02-12 01:27:56.63502	t	f	f
1408	Imprimis Pharmaceuticals	{"ipo": "Public", "url": "imprimispharma.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Diego, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.345052	2021-02-12 01:28:35.324297	t	f	f
1409	Micronet Enertec Technologies	{"ipo": "Public", "url": "micronet-enertec.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Montvale, New Jersey, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.349959	2021-02-12 01:30:18.032355	t	f	f
1319	Personalis	{"ipo": "Public", "url": "personalis.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Menlo Park, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.851103	2021-02-11 21:25:30.707131	t	f	f
1323	AcuityAds	{"ipo": "Public", "url": "acuityads.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Toronto, Ontario, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.873766	2021-02-11 21:26:28.702362	t	f	f
1329	OncoSec Medical	{"ipo": "Public", "url": "oncosec.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Diego, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.919191	2021-02-11 21:27:09.965524	t	f	f
1332	Boku	{"ipo": "Public", "url": "boku.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Francisco, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.935026	2021-02-11 21:27:50.34062	t	f	f
1334	Earthport Plc	{"ipo": "Public", "url": "earthport.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New York, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.945582	2021-02-11 21:28:31.199371	t	f	f
1341	Atreca	{"ipo": "Public", "url": "atreca.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Carlos, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.983723	2021-02-11 21:29:40.906557	t	f	f
1343	immatics biotechnologies	{"ipo": "Public", "url": "immatics.net", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tübingen, Baden-Wurttemberg, Germany", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.994403	2021-02-11 21:30:19.22368	t	f	f
1346	Foghorn Therapeutics	{"ipo": "Public", "url": "foghorntx.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Cambridge, Massachusetts, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.010525	2021-02-11 21:30:58.20435	t	f	f
1348	SiTime	{"ipo": "Public", "url": "sitime.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sunnyvale, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.021598	2021-02-11 21:31:47.548422	t	f	f
1544	Wafrah For Industry And Development Co.	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.069063	2021-02-12 01:35:10.285036	f	t	f
1445	nearmap.com	{"ipo": "Public", "url": "us.nearmap.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "South Jordan, Utah, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.542184	2021-02-12 01:32:25.210617	t	f	f
1501	Sporttotal	{"ipo": "Public", "url": "sporttotal.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Cologne, Nordrhein-Westfalen, Germany", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.836677	2021-02-12 01:33:57.411783	t	f	f
1529	Pure Earth	{"ipo": "Public", "url": "pureearth.org", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New York, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.986965	2021-02-12 01:34:42.719351	t	f	f
1584	Commercial, Product Design, Project Management	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.281968	2021-02-12 01:35:56.203042	f	t	f
1557	A.K.Capital Services	{"ipo": "Public", "url": "akgroup.co.in", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Mumbai, Maharashtra, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.135254	2021-02-12 01:35:28.462901	t	f	f
1640	Health Care, Pharmaceutical, Sales	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.590766	2021-02-12 01:37:57.662902	f	t	f
1595	Grand Talents Group Holdings	{"ipo": "Public", "url": "grandtalentsgroup.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sham Shui Po, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.341218	2021-02-12 01:36:12.869141	t	f	f
1617	Chitose Internasional	{"ipo": "Public", "url": "chitose-indonesia.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Cimahi, Jawa Barat, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.467706	2021-02-12 01:37:34.049937	t	f	f
1688	Property Development, Property Management, Real Estate	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.855888	2021-02-12 01:38:43.525088	f	t	f
1667	Cornerstone Financial Holdings	{"ipo": "Public", "url": "cs8112.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wan Chai, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.746768	2021-02-12 01:38:17.96763	t	f	f
1695	Consumer Goods, Mining	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.894535	2021-02-12 01:38:49.164687	f	t	f
1711	Construction, Property Development, Real Estate	{"ipo": "Public", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.978856	2021-02-12 01:38:54.734538	f	t	f
1350	Forty Seven	{"ipo": "Public", "url": "fortyseveninc.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Palo Alto, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.031643	2021-02-11 21:32:40.526242	t	f	f
1355	GrayBug	{"ipo": "Public", "url": "graybug.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Baltimore, Maryland, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.063437	2021-02-11 21:33:49.303029	t	f	f
1358	Net Element	{"ipo": "Public", "url": "netelement.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Miami, Florida, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.079296	2021-02-11 21:34:22.59607	t	f	f
1361	CrowdWorks	{"ipo": "Public", "url": "crowdworks.co.jp", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.094156	2021-02-11 21:35:10.826331	t	f	f
1368	Invuity	{"ipo": "Public", "url": "invuity.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Francisco, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.130692	2021-02-11 21:36:27.94522	t	f	f
1370	CymaBay Therapeutics	{"ipo": "Public", "url": "cymabay.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Hayward, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.140769	2021-02-11 21:37:10.430219	t	f	f
1377	Compugen	{"ipo": "Public", "url": "cgen.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tel Aviv, Tel Aviv, Israel", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.177321	2021-02-11 21:38:36.455566	t	f	f
1379	Chatwork	{"ipo": "Public", "url": "go.chatwork.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.19189	2021-02-11 21:39:13.506534	t	f	f
1388	Hugel Control	{"ipo": "Public", "url": "hugel.co.kr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Seoul, Seoul-t'ukpyolsi, South Korea", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.237826	2021-02-11 21:39:57.852617	t	f	f
1390	EasyVista	{"ipo": "Public", "url": "easyvista.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New York, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.248005	2021-02-11 21:40:35.462057	t	f	f
1394	RADA Electronic Industries Ltd	{"ipo": "Public", "url": "rada.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Netanya, HaMerkaz, Israel", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.268332	2021-02-11 21:41:20.697695	t	f	f
1401	Espial Group	{"ipo": "Public", "url": "espial.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Toronto, Ontario, Canada", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.304249	2021-02-11 21:42:52.258079	t	f	f
1403	TransAct	{"ipo": "Public", "url": "transact-tech.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Hamden, Connecticut, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.31751	2021-02-11 21:43:25.096347	t	f	f
1406	Energy Recovery	{"ipo": "Public", "url": "energyrecovery.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Leandro, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.335048	2021-02-11 21:43:56.08183	t	f	f
1410	TerraSky	{"ipo": "Public", "url": "terrasky.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.355159	2021-02-11 21:44:37.372548	t	f	f
1413	Vertex Energy	{"ipo": "Public", "url": "vertexenergy.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Houston, Texas, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.37073	2021-02-11 21:45:23.903557	t	f	f
1418	Circassia	{"ipo": "Public", "url": "circassia.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Oxford, Oxfordshire, United Kingdom", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.396922	2021-02-11 21:48:32.176496	t	f	f
1424	Northern Power Systems	{"ipo": "Public", "url": "northernpower.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Barre, Vermont, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.428539	2021-02-11 21:52:15.954763	t	f	f
1432	GrandSouth Bancorporation	{"ipo": "Public", "url": "grandsouth.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Greenville, South Carolina, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.47212	2021-02-11 21:56:09.47984	t	f	f
1437	California Bank of Commerce	{"ipo": "Public", "url": "californiabankofcommerce.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Lafayette, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.497087	2021-02-11 21:59:44.213682	t	f	f
1442	Youdao	{"ipo": "Public", "url": "youdao.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Beijing, Beijing, China", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.526872	2021-02-11 22:03:18.87246	t	f	f
1447	Darco Water Technologies	{"ipo": "Public", "url": "darcowater.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Singapore, Central Region, Singapore", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.552611	2021-02-11 22:04:51.976073	t	f	f
1455	Optex Systems	{"ipo": "Public", "url": "optexsys.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Richardson, Texas, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.595627	2021-02-11 22:09:04.44496	t	f	f
1461	Grand River Bank	{"ipo": "Public", "url": "grandriverbank.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Grandville, Michigan, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.629429	2021-02-11 22:12:08.375099	t	f	f
1466	Maravai Life Sciences	{"ipo": "Public", "url": "maravai.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Diego, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.655094	2021-02-11 22:15:19.864125	t	f	f
1471	ChemoCentryx	{"ipo": "Public", "url": "chemocentryx.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Mountain View, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.681376	2021-02-11 22:18:43.489599	t	f	f
1474	Achillion Pharmaceuticals	{"ipo": "Public", "url": "achillion.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Blue Bell, Pennsylvania, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.69673	2021-02-11 22:20:05.443641	t	f	f
1479	Onstream Media	{"ipo": "Public", "url": "onstreammedia.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Pompano Beach, Florida, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.722154	2021-02-11 22:23:22.638463	t	f	f
1486	EcoSynthetix	{"ipo": "Public", "url": "ecosynthetix.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Lansing, Michigan, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.760627	2021-02-11 22:29:02.567932	t	f	f
1490	Envision Bank	{"ipo": "Public", "url": "envisionbank.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Stoughton, Massachusetts, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.780701	2021-02-11 22:31:59.953162	t	f	f
1496	Nationwide Express	{"ipo": "Public", "url": "nationwide2u.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Shah Alam, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.8113	2021-02-11 22:35:30.382177	t	f	f
1502	FueTrek	{"ipo": "Public", "url": "fuetrek.co.jpenindex.html", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Osaka-shi, Osaka, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.841674	2021-02-11 22:38:55.325336	t	f	f
1505	Sense Technology Inc	{"ipo": "Public", "url": "pulstar.us", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Export, Pennsylvania, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.856896	2021-02-11 22:40:53.467676	t	f	f
1512	Bioalpha	{"ipo": "Public", "url": "bioa.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Bandar Baru Bangi, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.895802	2021-02-11 22:44:47.291616	t	f	f
1517	Mega Manunggal Property	{"ipo": "Public", "url": "mmproperty.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.923161	2021-02-11 22:47:56.671199	t	f	f
1524	Innovax Holdings	{"ipo": "Public", "url": "innovax.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wan Chai, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.960171	2021-02-11 22:51:40.660207	t	f	f
1528	Gladste Land	{"ipo": "Public", "url": "ir.gladstoneland.cominvestor-relations", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Camarillo, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.981702	2021-02-11 22:54:44.087474	t	f	f
1532	LamboGroup	{"ipo": "Public", "url": "lambogroup.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Petaling Jaya, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.002351	2021-02-11 22:56:59.770221	t	f	f
1538	Artiza Networks	{"ipo": "Public", "url": "artizanetworks.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tokyo, Tokyo, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.038066	2021-02-11 23:00:23.809427	t	f	f
1545	Fortune Oriental	{"ipo": "Public", "url": "focl.com.tw", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Hsintien, T'ai-wan, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.074238	2021-02-11 23:04:05.54899	t	f	f
1550	Superior Drilling Products	{"ipo": "Public", "url": "sdpi.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Vernal, Utah, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.099876	2021-02-11 23:08:11.474918	t	f	f
1560	Sino Splendid Holdings	{"ipo": "Public", "url": "sinosplendid.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sheung Wan, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.152274	2021-02-11 23:12:41.393036	t	f	f
1568	Medico Remedies	{"ipo": "Public", "url": "medicoremediesindia.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Thane, Maharashtra, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.197635	2021-02-11 23:16:39.552565	t	f	f
1575	Pinar Su	{"ipo": "Public", "url": "pinarsu.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Bornova, Izmir, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.235714	2021-02-11 23:20:15.149808	t	f	f
1583	China Environmental Energy Investment	{"ipo": "Public", "url": "986.com.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wan Chai, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.276499	2021-02-11 23:23:13.085365	t	f	f
1588	Sun International Group	{"ipo": "Public", "url": "sun8029.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kwun Tong, Kowloon, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.30565	2021-02-11 23:26:24.302887	t	f	f
1593	Unico American Corp	{"ipo": "Public", "url": "unicoamerican.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Calabasas, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.331219	2021-02-11 23:30:00.246751	t	f	f
1598	Heng Huat Group	{"ipo": "Public", "url": "henghuat.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Penang, Pulau Pinang, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.362573	2021-02-11 23:33:07.164075	t	f	f
1604	Tonlin Department Store	{"ipo": "Public", "url": "tonlin.com.tw", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Taipei, T'ai-pei, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.393791	2021-02-11 23:36:42.689171	t	f	f
1610	Ri Ying Holdings	{"ipo": "Public", "url": "riyingholding.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sheung Wan, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.428464	2021-02-11 23:40:16.029633	t	f	f
1614	Pak Wing Group Holdings	{"ipo": "Public", "url": "pakwingc.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Sheung Wan, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.45238	2021-02-11 23:42:36.780165	t	f	f
1620	Inocycle Technology Group	{"ipo": "Public", "url": "inocycle.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tangerang, Jawa Barat, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.483085	2021-02-11 23:51:50.687442	t	f	f
1627	Justplanning	{"ipo": "Public", "url": "justweb.co.jp", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Shibuya, Kanagawa, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.520504	2021-02-11 23:55:19.533433	t	f	f
1634	PRATAMA ABADI NUSA INDUSTRI	{"ipo": "Public", "url": "pratamaabadi.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Tigaraksa, Jawa Barat, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.556987	2021-02-11 23:59:01.683012	t	f	f
1642	Hong Kong ChaoShang Group	{"ipo": "Public", "url": "chaoshang.hk", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wan Chai, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.604999	2021-02-12 00:01:16.020856	t	f	f
1649	Rig Tenders Indonesia	{"ipo": "Public", "url": "rigtenders.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.646976	2021-02-12 00:05:16.643798	t	f	f
1654	IPC Car Terminal	{"ipo": "Public", "url": "indonesiacarterminal.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.67423	2021-02-12 00:07:56.066371	t	f	f
1661	Grand Hoover	{"ipo": "Public", "url": "hoover.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Shah Alam, Selangor, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.713793	2021-02-12 00:13:21.192057	t	f	f
1666	Cowell Development	{"ipo": "Public", "url": "cowelldev.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta Pusat, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.741771	2021-02-12 00:16:28.134961	t	f	f
1672	Ecobuilt Holdings	{"ipo": "Public", "url": "eco-built.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.773487	2021-02-12 00:19:35.767541	t	f	f
1678	Binasat Communications	{"ipo": "Public", "url": "binacom.com.my", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kuala Lumpur, Kuala Lumpur, Malaysia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.80388	2021-02-12 00:23:15.193874	t	f	f
1686	Cimbeton	{"ipo": "Public", "url": "cimbeton.com.tr", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Bornova, Izmir, Turkey", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.845278	2021-02-12 00:28:44.89354	t	f	f
1696	Virat Crane Industries	{"ipo": "Public", "url": "cranegroup.invcil", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Guntur, Andhra Pradesh, India", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.899734	2021-02-12 00:34:40.055066	t	f	f
1703	Golden Eagle Energy	{"ipo": "Public", "url": "go-eagle.co.id", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Jakarta, Jakarta Raya, Indonesia", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.936834	2021-02-12 00:38:04.055584	t	f	f
1708	Cathay Chemical Works	{"ipo": "Public", "url": "ccwi.com.tw", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Taipei, T'ai-pei, Taiwan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.962684	2021-02-12 00:41:36.394528	t	f	f
1715	Aso Foam Crete	{"ipo": "Public", "url": "asofoam.co.jp", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Kawasaki, Kanagawa, Japan", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:31.002177	2021-02-12 00:45:09.626845	t	f	f
1325	Revolution Medicines	{"ipo": "Public", "url": "revolutionmedicines.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Redwood City, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.89789	2021-02-12 00:54:39.248819	t	f	f
1328	UNITY Biotechnology	{"ipo": "Public", "url": "unitybiotechnology.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Brisbane, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.914079	2021-02-12 00:57:06.666996	t	f	f
1340	TransMedics	{"ipo": "Public", "url": "transmedics.comwthomeindex", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Andover, Massachusetts, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:28.978538	2021-02-12 00:59:40.002824	t	f	f
1347	SpringWorks Therapeutics	{"ipo": "Public", "url": "springworkstx.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Stamford, Connecticut, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.015824	2021-02-12 01:02:18.035256	t	f	f
1357	SI-BONE	{"ipo": "Public", "url": "si-bone.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Jose, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.073936	2021-02-12 01:06:03.739832	t	f	f
1363	Xencor	{"ipo": "Public", "url": "xencor.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Monrovia, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.104351	2021-02-12 01:08:38.499852	t	f	f
1369	Amryt Pharma	{"ipo": "Public", "url": "amrytpharma.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Dublin, Dublin, Ireland", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.13553	2021-02-12 01:12:29.227195	t	f	f
1374	Portola Pharmaceuticals	{"ipo": "Public", "url": "portola.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "South San Francisco, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.161585	2021-02-12 01:14:25.063924	t	f	f
1382	Vital Therapies	{"ipo": "Public", "url": "vitaltherapies.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "San Diego, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.206833	2021-02-12 01:17:18.358062	t	f	f
1389	Mustang Bio	{"ipo": "Public", "url": "mustangbio.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "New York, New York, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.242937	2021-02-12 01:20:57.921391	t	f	f
1397	GAMEVIL	{"ipo": "Public", "url": "gamevil.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Seoul, Seoul-t'ukpyolsi, South Korea", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.283785	2021-02-12 01:24:22.92751	t	f	f
1405	Luna Innovations	{"ipo": "Public", "url": "lunainnovations.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Roanoke, Virginia, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.329939	2021-02-12 01:27:21.439716	t	f	f
1411	Heartland Bank	{"ipo": "Public", "url": "heartland.co.nz", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Auckland, Auckland, New Zealand", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.360413	2021-02-12 01:30:57.213528	t	f	f
1417	Codexis	{"ipo": "Public", "url": "codexis.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Redwood City, California, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.391288	2021-02-12 01:31:47.991181	t	f	f
1473	Anika Therapeutics	{"ipo": "Public", "url": "anikatherapeutics.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Bedford, Massachusetts, United States", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:29.691602	2021-02-12 01:33:09.05287	t	f	f
1612	Central Development Holdings	{"ipo": "Public", "url": "475hk.com", "slug": null, "status": "Active", "keyword": "none", "revenue": "10m-50m", "location": "Wan Chai, Hong Kong Island, Hong Kong", "employees": "51-100", "company_tech": null, "headquarters": "United States", "website_tech": null}	2021-02-11 21:19:30.439343	2021-02-12 01:36:58.420485	t	f	f
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: leonid
--

COPY public.contacts (id, first_name, last_name, fields, company_id, created_at, updated_at, uploaded) FROM stdin;
19	Jay	Paul	{"title": "Product Manager"}	110	2021-02-08 00:54:20.813609	2021-02-08 20:13:24.796496	t
15	Joshua	Sowin	{"title": "VP of Product Design & Marketing"}	108	2021-02-08 00:53:41.662684	2021-02-08 20:10:26.729165	t
17	Paul	Albright	{"title": "Co-Founder & CEO"}	110	2021-02-08 00:54:20.75146	2021-02-08 20:10:27.683493	t
21	Paul	May	{"title": "Co-Founder, CEO"}	112	2021-02-08 00:54:59.937611	2021-02-08 20:13:25.759964	t
22	Tim	Bramer	{"title": "Head of Customer Success"}	112	2021-02-08 00:54:59.969855	2021-02-08 20:13:26.222469	t
16	Steven	Sowin	{"title": "President"}	108	2021-02-08 00:53:41.693421	2021-02-08 20:10:27.239275	t
18	Brandon	Christie	{"title": "Head of Product Monetization"}	110	2021-02-08 00:54:20.782012	2021-02-08 20:13:24.199456	t
14	Venkat	Devraj	{"title": "CEO"}	108	2021-02-08 00:53:41.632591	2021-02-08 20:10:26.262683	t
12	Mike	Mixon	{"title": "CMO"}	105	2021-02-08 00:53:06.537363	2021-02-08 20:09:57.323871	t
23	Tobias	Carson	{"title": "Head of Technology"}	112	2021-02-08 00:54:59.999992	2021-02-08 20:13:26.681269	t
24	Avery	More	{"title": "Chairman"}	112	2021-02-08 00:55:00.048629	2021-02-08 20:13:27.12367	t
25	Mike	Ryan	{"title": "CEO"}	113	2021-02-08 00:55:44.958111	2021-02-08 20:13:27.570059	t
27	Denis	Seynhaeve	{"title": "Chairman and CEO"}	104	2021-02-08 00:56:23.834372	2021-02-08 20:13:28.552298	t
28	Vikas	Nehru	{"title": "CTO"}	104	2021-02-08 00:56:23.865393	2021-02-08 20:13:29.836056	t
29	Gerry	Preville	{"title": "Chief Financial Officer"}	104	2021-02-08 00:56:23.895931	2021-02-08 20:13:30.277931	t
30	Matt	Durkin	{"title": "VP of Sales"}	104	2021-02-08 00:56:23.928852	2021-02-08 20:13:31.844345	t
31	Guillaume	Seynhaeve	{"title": "VP of Business and Alliances"}	104	2021-02-08 00:56:23.960849	2021-02-08 20:13:32.793199	t
32	Navya	Pandiri	{"title": "VP Product Management"}	104	2021-02-08 00:56:23.98929	2021-02-08 20:13:33.924239	t
34	Jane	Finkelstein	{"title": "Director of Operations"}	114	2021-02-08 00:57:14.156947	2021-02-08 20:15:26.552112	t
35	Boris	Shakhnovich	{"title": "President"}	114	2021-02-08 00:57:14.187316	2021-02-08 20:15:27.007075	t
36	Craig	Varljen	{"title": "EVP Channel and Business Development"}	116	2021-02-08 00:57:53.067694	2021-02-08 20:15:27.512243	t
37	Amy	Tanjong	{"title": "Business Operations"}	116	2021-02-08 00:57:53.100552	2021-02-08 20:15:28.39998	t
38	Mark	Koulogeorge	{"title": "Director"}	116	2021-02-08 00:57:53.129463	2021-02-08 20:15:28.922464	t
40	Kristy	O’Rourke	{"title": "Chief Customer Officer"}	116	2021-02-08 00:57:53.18953	2021-02-08 20:15:29.951794	t
41	Aleksey	Feldman	{"title": "CEO"}	117	2021-02-08 00:58:34.089534	2021-02-08 20:15:30.606995	t
42	Mahni	Ghorashi	{"title": "Co-Founder"}	117	2021-02-08 00:58:34.121562	2021-02-08 20:15:31.081399	t
43	David	Frederiksen	{"title": "Founder & Chief Executive Officer"}	118	2021-02-08 01:00:24.132705	2021-02-08 20:15:32.492933	t
44	Drew	Himel	{"title": "Founder & CEO"}	120	2021-02-08 01:01:02.300992	2021-02-08 20:15:33.070401	t
46	Wally	Smith	{"title": "Executive Director & Co-Founder & CEO & President"}	123	2021-02-08 01:02:16.380943	2021-02-08 20:15:34.051551	t
47	Barry	Maxon	{"title": "Senior Vice President, Sales"}	123	2021-02-08 01:02:16.412706	2021-02-08 20:15:34.533134	t
49	David	Zacarias	{"title": "Chief Financial Officer, Chief Operating Officer"}	123	2021-02-08 01:02:16.473934	2021-02-08 20:15:35.434234	t
50	Jag	Puttanna	{"title": "Founder & CEO"}	124	2021-02-08 01:02:59.389159	2021-02-08 20:15:35.958773	t
51	Glenn	Phillips	{"title": "Architect"}	124	2021-02-08 01:02:59.420413	2021-02-08 20:15:36.798447	t
52	Robert	Westell	{"title": "Vice President and Operations"}	129	2021-02-08 01:03:36.483573	2021-02-08 20:15:38.406921	t
53	Aurelien	Mottier	{"title": "CEO"}	129	2021-02-08 01:03:36.516229	2021-02-08 20:15:39.021292	t
54	Daniel	Seabrook	{"title": "VP Sales"}	129	2021-02-08 01:03:36.548266	2021-02-08 20:15:39.910589	t
55	Eirik	Antonsen	{"title": "Lead Designer"}	133	2021-02-08 01:04:56.120542	2021-02-08 20:15:40.96392	t
56	John	Feehan	{"title": "VP of Brand Development"}	133	2021-02-08 01:04:56.149724	2021-02-08 20:15:42.006304	t
57	Ben	Kirby	{"title": "VP of Integrated Marketing"}	133	2021-02-08 01:04:56.179419	2021-02-08 20:15:43.059764	t
58	Mark	McIntyre	{"title": "CEO"}	133	2021-02-08 01:04:56.208831	2021-02-08 20:15:43.863968	t
60	Matt	Smith	{"title": "CMO"}	133	2021-02-08 01:04:56.280632	2021-02-08 20:15:45.086382	t
61	Steve	Thomas-Patel	{"title": "Lead Developer"}	133	2021-02-08 01:04:56.308667	2021-02-08 20:15:45.985472	t
62	Roger	Curry	{"title": "COO"}	135	2021-02-08 01:05:44.004935	2021-02-08 20:15:46.691722	t
63	Jacob	Eli	{"title": "Data Scientist"}	135	2021-02-08 01:05:44.034634	2021-02-08 20:15:47.380512	t
64	Joshua	Phillips	{"title": "President"}	136	2021-02-08 01:06:18.046046	2021-02-08 20:15:48.073801	t
65	Brian	Winter	{"title": "Founder & Lead Advisor"}	136	2021-02-08 01:06:18.074864	2021-02-08 20:15:49.758879	t
67	Giovanni	Letellier	{"title": "CEO"}	138	2021-02-08 01:07:28.548908	2021-02-08 20:15:50.684474	t
68	Janielle	Denier	{"title": "Founder"}	141	2021-02-08 01:08:59.966909	2021-02-08 20:15:51.143237	t
69	Mike	Lieberman	{"title": "Co-Founder and Chief Executive Officer"}	142	2021-02-08 01:09:36.277513	2021-02-08 20:15:51.601017	t
70	Eric	Keiles	{"title": "Partner & CMO"}	142	2021-02-08 01:09:36.307456	2021-02-08 20:15:52.101405	t
72	Vanessa	Knipper	{"title": "Director of Marketing"}	143	2021-02-08 01:10:11.343593	2021-02-08 20:15:53.171044	t
73	John	McTigue	{"title": "Vice President, Co-Owner"}	143	2021-02-08 01:10:11.375087	2021-02-08 20:15:53.61545	t
74	Chris	Knipper	{"title": "President, Co-Owner"}	143	2021-02-08 01:10:11.408847	2021-02-08 20:15:54.088279	t
75	Phil	Hutcheon	{"title": "Founder & CEO"}	144	2021-02-08 01:10:55.367086	2021-02-08 20:15:54.553087	t
76	Joe	Apfelbaum	{"title": "Co-Founder & CEO"}	145	2021-02-08 01:11:38.437729	2021-02-08 20:15:55.06066	t
77	Josh	Dolin	{"title": "Founder"}	147	2021-02-08 01:12:25.217331	2021-02-08 20:15:55.503769	t
78	Charmon	Stiles	{"title": "VP"}	147	2021-02-08 01:12:25.249869	2021-02-08 20:15:55.940885	t
80	Greg	Grdodian	{"title": "CEO"}	152	2021-02-08 01:16:16.714975	2021-02-08 20:15:56.879616	t
81	Aaron	Liebson	{"title": "CFO"}	152	2021-02-08 01:16:16.745522	2021-02-08 20:15:57.411576	t
82	Chris	Longo	{"title": "COO"}	152	2021-02-08 01:16:16.774129	2021-02-08 20:15:57.843091	t
84	David	Klein	{"title": "SVP – Product Development & Database Services"}	152	2021-02-08 01:16:16.836053	2021-02-08 20:15:58.727559	t
85	Wayne	Roberts	{"title": "President"}	152	2021-02-08 01:16:16.865397	2021-02-08 20:15:59.131981	t
87	Chris	Steele	{"title": "Director- Database Technologies"}	152	2021-02-08 01:16:16.938688	2021-02-08 20:16:00.535974	t
88	Tom	Foster	{"title": "Founder / Owner"}	154	2021-02-08 01:17:59.522817	2021-02-08 20:16:00.984909	t
89	Oxana	Mereutsa	{"title": "Chief Executive Officer and Founder"}	159	2021-02-08 01:20:19.363245	2021-02-08 20:16:01.506372	t
90	Shekhar	Deo	{"title": "Co-Founder, CTO"}	132	2021-02-08 01:21:00.308205	2021-02-08 20:16:01.949202	t
91	Ravi	Thomas	{"title": "CFO"}	132	2021-02-08 01:21:00.337841	2021-02-08 20:16:02.403672	t
92	Brij	Mohan	{"title": "Head of India Operations"}	132	2021-02-08 01:21:00.36634	2021-02-08 20:16:02.907616	t
94	Ben	Bassi	{"title": "Founder & CEO"}	161	2021-02-08 01:21:31.231441	2021-02-08 20:16:04.06445	t
95	Samantha	Cuellar	{"title": "Account Executive"}	162	2021-02-08 01:22:11.018149	2021-02-08 20:16:04.718165	t
96	Grant	Hatfield	{"title": "Lead Creative Strategist & Developer"}	162	2021-02-08 01:22:11.049019	2021-02-08 20:16:05.181239	t
97	Trevor	Hatfield	{"title": "CEO"}	162	2021-02-08 01:22:11.078591	2021-02-08 20:16:06.407243	t
98	Nichole	Elizabeth	{"title": "Chief Strategy Officer"}	162	2021-02-08 01:22:11.129376	2021-02-08 20:16:06.853712	t
100	Katy	Katz	{"title": "Content Director"}	162	2021-02-08 01:22:11.189185	2021-02-08 20:16:08.013078	t
101	Christina	Clemens	{"title": "Program Coordinator"}	162	2021-02-08 01:22:11.218345	2021-02-08 20:16:08.479026	t
102	Drake	Hatfield	{"title": "Owner"}	163	2021-02-08 01:22:58.516069	2021-02-08 20:16:08.985022	t
103	Danielle	Hatfield	{"title": "Owner"}	163	2021-02-08 01:22:58.547639	2021-02-08 20:16:09.723775	t
104	Rayomond	Chinoy	{"title": "Founder & President"}	164	2021-02-08 01:23:37.49831	2021-02-08 20:16:10.203198	t
105	Chris	Abraham	{"title": "Marketing Strategist"}	165	2021-02-08 01:24:08.523518	2021-02-08 20:16:10.636029	t
107	Debbie	Snider	{"title": "Marketing Assistant"}	165	2021-02-08 01:24:08.584972	2021-02-08 20:16:11.67261	t
108	Mike	McDermott	{"title": "President"}	165	2021-02-08 01:24:08.614401	2021-02-08 20:16:12.935657	t
109	Phil	Laboon	{"title": "Owner"}	167	2021-02-08 01:24:45.443442	2021-02-08 20:16:13.366242	t
110	Chris	Hornak	{"title": "Director of Operations"}	167	2021-02-08 01:24:45.474867	2021-02-08 20:16:13.801903	t
111	Peter	Dean	{"title": "President/CEO"}	169	2021-02-08 01:26:04.282238	2021-02-08 20:16:14.299868	t
112	David	Snyder	{"title": "Owner"}	170	2021-02-08 01:26:48.719637	2021-02-08 20:16:14.91472	t
114	Billy	Mitchell	{"title": "President & Co-founder"}	176	2021-02-08 01:29:37.618869	2021-02-08 20:16:15.883605	t
115	Glenn	Taylor	{"title": "Co-founder"}	176	2021-02-08 01:29:37.650656	2021-02-08 20:16:16.349105	t
116	Nick	Simard	{"title": "Chief Marketing Officer"}	178	2021-02-08 01:31:00.694752	2021-02-08 20:16:17.175279	t
117	Ronnie	Ram	{"title": "President & Chief Executive Officer"}	178	2021-02-08 01:31:00.741639	2021-02-08 20:16:17.606741	t
119	Andy	Seraita	{"title": "Director of Outdoor Advertising"}	178	2021-02-08 01:31:00.864721	2021-02-08 20:16:18.628971	t
120	Michal	Huizinga	{"title": "Creative Director"}	178	2021-02-08 01:31:00.908377	2021-02-08 20:16:19.079305	t
121	Alan	Vitberg	{"title": "Executive Director of Professional Services Team"}	179	2021-02-08 01:31:42.386911	2021-02-08 20:16:19.597266	t
122	Dean	Moothart	{"title": "Director of Client Solutions"}	179	2021-02-08 01:31:42.439788	2021-02-08 20:16:20.735877	t
123	Alexandra	Holmes	{"title": "Director of Client Solutions"}	179	2021-02-08 01:31:42.490131	2021-02-08 20:16:21.269894	t
124	Matt	Sunshine	{"title": "Managing Partner"}	179	2021-02-08 01:31:42.542441	2021-02-08 20:16:21.713499	t
125	Dani	Buckley	{"title": "General Manager"}	179	2021-02-08 01:31:42.612958	2021-02-08 20:16:22.619152	t
126	Rusty	Brett	{"title": "CEO"}	181	2021-02-08 01:33:06.374029	2021-02-08 20:16:23.102012	t
128	Geoff	Revis	{"title": "Chief Technology Officer"}	181	2021-02-08 01:33:06.43823	2021-02-08 20:16:24.142829	t
129	Travis	Smith	{"title": "Co-Founder"}	181	2021-02-08 01:33:06.469291	2021-02-08 20:16:24.732976	t
130	Josh	Burrell	{"title": "Co-Founder"}	181	2021-02-08 01:33:06.498269	2021-02-08 20:16:25.433729	t
131	Josh	Burrell	{"title": "Chief Strategy Officer"}	181	2021-02-08 01:33:06.549471	2021-02-08 20:16:25.939436	t
132	Jamie	Stephens	{"title": "Chief of Digital Strategy"}	181	2021-02-08 01:33:06.579365	2021-02-08 20:16:26.407989	t
133	Jeremiah	Smith	{"title": "Owner & Founder"}	182	2021-02-08 01:33:38.338999	2021-02-08 20:20:38.730572	t
134	Yehuda	Reuven	{"title": "EVP COO"}	183	2021-02-08 01:34:22.393016	2021-02-08 20:20:39.165563	t
136	Eugene	Eruslanov	{"title": "COO"}	187	2021-02-08 01:37:04.303387	2021-02-08 20:20:40.445112	t
137	Raghu	Nandyala	{"title": "CTO"}	187	2021-02-08 01:37:04.334952	2021-02-08 20:20:40.924602	t
138	Ashley	Cline	{"title": "CMO"}	187	2021-02-08 01:37:04.36392	2021-02-08 20:20:41.364623	t
139	Hemant	"Sunny"	{"title": "Founder & Chairman"}	187	2021-02-08 01:37:04.3943	2021-02-08 20:20:41.845195	t
140	Suchintya	Dandapat	{"title": "CEO"}	187	2021-02-08 01:37:04.425623	2021-02-08 20:20:42.346691	t
142	Kris	Reeves	{"title": "COO / Co-Founder"}	198	2021-02-08 01:42:57.902122	2021-02-08 20:20:43.291479	t
143	Todd	Friesen	{"title": "SVP of Search"}	198	2021-02-08 01:42:57.932061	2021-02-08 20:20:43.768688	t
144	Kris	Roadruck	{"title": "CEO / Co-Founder"}	198	2021-02-08 01:42:57.961986	2021-02-08 20:20:44.211491	t
145	Grier	Allen	{"title": "CEO & Co-Founder"}	204	2021-02-08 01:46:39.705462	2021-02-08 20:20:44.734782	t
146	Chris	Rickborn	{"title": "COO"}	204	2021-02-08 01:46:39.735425	2021-02-08 20:20:45.179462	t
148	Rivers	Pearce	{"title": "Director of Industry Relations"}	204	2021-02-08 01:46:39.793107	2021-02-08 20:20:46.107501	t
149	Sarah	Bird	{"title": "CEO"}	205	2021-02-08 01:47:19.732508	2021-02-08 20:20:46.670564	t
150	Peter	Meyers	{"title": "Marketing Scientist"}	205	2021-02-08 01:47:19.762252	2021-02-08 20:20:47.965004	t
151	Ronell	Smith	{"title": "Associate"}	205	2021-02-08 01:47:19.795596	2021-02-08 20:20:48.457712	t
152	Jess	Stipe	{"title": "Executive Assistant"}	205	2021-02-08 01:47:19.838454	2021-02-08 20:20:48.977327	t
154	Britney	Muller	{"title": "SEO & Content Architect"}	205	2021-02-08 01:47:19.898564	2021-02-08 20:20:49.985966	t
157	Kyle	Messman	{"title": "CFO"}	209	2021-02-08 01:48:23.281367	2021-02-08 20:20:51.736015	t
158	Tiffany	Chelsvig	{"title": "VP of People"}	209	2021-02-08 01:48:23.312148	2021-02-08 20:20:52.297493	t
159	Josh	Evans	{"title": "SVP, Client Services"}	209	2021-02-08 01:48:23.340985	2021-02-08 20:20:52.810023	t
160	Jorge	Jeffery	{"title": "Director, Research and Analytics"}	209	2021-02-08 01:48:23.370578	2021-02-08 20:20:53.439223	t
161	Joel	Ginsberg	{"title": "General Counsel"}	209	2021-02-08 01:48:23.400978	2021-02-08 20:20:53.905728	t
163	Amanda	Milligan	{"title": "Marketing Director"}	210	2021-02-08 01:49:04.445372	2021-02-08 20:20:54.867261	t
164	Nicholas	Carretta	{"title": "President and Chief Executive Officer"}	211	2021-02-08 01:49:53.150866	2021-02-08 20:20:55.340902	t
165	Alfredo	Atanacio	{"title": "COO & Founder"}	212	2021-02-08 01:50:39.404058	2021-02-08 20:20:55.774789	t
166	Rodolfo	Schildknecht	{"title": "Co-Founder"}	212	2021-02-08 01:50:39.43302	2021-02-08 20:20:56.411274	t
167	Gregg	Johnson	{"title": "CEO"}	218	2021-02-08 01:53:42.046264	2021-02-08 20:20:56.844644	t
169	Robert	Duva	{"title": "Co Founder"}	218	2021-02-08 01:53:42.108578	2021-02-08 20:20:58.290006	t
170	Chris	Schulz	{"title": "SVP, Customer Success"}	218	2021-02-08 01:53:42.137826	2021-02-08 20:20:58.756855	t
171	Ben	Sullivan	{"title": "SVP, Sales"}	218	2021-02-08 01:53:42.167935	2021-02-08 20:20:59.236555	t
172	Aimee	Johnson	{"title": "VP, Finance"}	218	2021-02-08 01:53:42.196974	2021-02-08 20:20:59.791244	t
173	Ellen	Raim	{"title": "VP, People & Cultur"}	218	2021-02-08 01:53:42.226243	2021-02-08 20:21:00.253556	t
175	Michael	Carney	{"title": "Board Observer"}	218	2021-02-08 01:53:42.347356	2021-02-08 20:21:01.639706	t
176	Mehdi	Maghsoodnia	{"title": "Founder"}	219	2021-02-08 01:54:15.283374	2021-02-08 20:21:02.777088	t
177	Sridhar	Vutukuri	{"title": "Vice President and Country Head, India"}	219	2021-02-08 01:54:15.312685	2021-02-08 20:21:03.328484	t
178	Scott	Whitney	{"title": "Vice President, Product Management"}	219	2021-02-08 01:54:15.342235	2021-02-08 20:21:03.810283	t
179	Deric	Moilliet	{"title": "Vice President, Strategic Accounts"}	219	2021-02-08 01:54:15.371589	2021-02-08 20:21:04.45803	t
180	Ravi	Ravichandran	{"title": "VP of SaaS & Cloud Operations, Services & Delivery"}	219	2021-02-08 01:54:15.400963	2021-02-08 20:21:04.958298	t
181	Herb	Joiner	{"title": "Vice President of Engineering"}	219	2021-02-08 01:54:15.42985	2021-02-08 20:21:05.414839	t
183	Ashley	Eakers	{"title": "Global Strategic Account Director"}	219	2021-02-08 01:54:15.501804	2021-02-08 20:21:06.32116	t
184	Alexey	Levin	{"title": "VP Research and Development"}	220	2021-02-08 01:55:06.55816	2021-02-08 20:21:07.093884	t
185	John	R.	{"title": "Chairman of the Board of Directors"}	221	2021-02-08 01:55:41.659791	2021-02-08 20:21:07.564564	t
186	Ricky	Arriola	{"title": "Founder & CEO"}	223	2021-02-08 01:56:24.612041	2021-02-08 20:21:08.459366	t
187	Anthony	Marlowe	{"title": "President"}	227	2021-02-08 01:59:08.812262	2021-02-08 20:21:09.091024	t
188	John	Burchert	{"title": "COO"}	227	2021-02-08 01:59:08.84178	2021-02-08 20:21:09.534113	t
189	Anthony	Marlowe	{"title": "Founder"}	227	2021-02-08 01:59:08.870454	2021-02-08 20:21:09.974426	t
191	Ram	Ramanathan	{"title": "Chief Scientist"}	231	2021-02-08 02:01:52.351191	2021-02-08 20:21:11.321428	t
192	Jorge	Perdomo	{"title": "Inventor, Co-Founder"}	231	2021-02-08 02:01:52.391382	2021-02-08 20:21:11.940879	t
193	Valerie	Coghill	{"title": "VP of Finance"}	231	2021-02-08 02:01:52.432647	2021-02-08 20:21:12.394046	t
194	Shawn	Hurt	{"title": "Director, Channel Partners"}	231	2021-02-08 02:01:52.472768	2021-02-08 20:21:12.959011	t
196	Ken	Nelson	{"title": "CCO"}	233	2021-02-08 02:02:40.749726	2021-02-08 20:21:13.996386	t
197	Mark	Querry	{"title": "CFO"}	233	2021-02-08 02:02:40.77966	2021-02-08 20:21:14.475835	t
198	Gust	H.	{"title": "CEO & CMO"}	233	2021-02-08 02:02:40.810332	2021-02-08 20:21:14.94726	t
199	Kevin	Hykes	{"title": "President & CEO"}	233	2021-02-08 02:02:40.840392	2021-02-08 20:21:15.40746	t
200	Ed	Vertatschitsch	{"title": "COO"}	233	2021-02-08 02:02:40.869757	2021-02-08 20:21:16.286404	t
201	Rod	Robinson	{"title": "Founder, President & Chief Executive Officer"}	234	2021-02-08 02:03:31.8628	2021-02-08 20:21:16.728656	t
202	Daryl	Hammett	{"title": "COO"}	234	2021-02-08 02:03:31.893811	2021-02-08 20:21:17.171786	t
203	Jill	McCauley	{"title": "Account Manager"}	234	2021-02-08 02:03:31.92255	2021-02-08 20:21:17.660317	t
205	Chuck	Peck	{"title": "Operations Services Technical Support Manager"}	234	2021-02-08 02:03:32.001222	2021-02-08 20:21:18.577654	t
206	Anthony	Mitchell	{"title": "Sr. Manager of Operations Services"}	234	2021-02-08 02:03:32.030792	2021-02-08 20:21:19.063114	t
207	Crystal	Davis	{"title": "Sr. Member Services & Affiliate Program Manager"}	234	2021-02-08 02:03:32.060755	2021-02-08 20:21:19.506156	t
208	Tyler	Johnson	{"title": "Manager of Technology Solutions"}	234	2021-02-08 02:03:32.090132	2021-02-08 20:21:19.952278	t
209	Anna-Katrina	Shedletsky	{"title": "Founder and CEO"}	235	2021-02-08 02:04:11.046863	2021-02-08 20:21:20.42536	t
210	Samuel	Weiss	{"title": "Founder & CTO"}	235	2021-02-08 02:04:11.078348	2021-02-08 20:21:20.88153	t
212	Jonathan	Matus	{"title": "Founder & CEO"}	237	2021-02-08 02:05:00.400953	2021-02-08 20:21:21.810959	t
213	Abhilasha	Shripat	{"title": "Senior Product Manager"}	237	2021-02-08 02:05:00.435458	2021-02-08 20:21:22.275571	t
214	Rob	MacKethan	{"title": "VP of Insurance"}	237	2021-02-08 02:05:00.468028	2021-02-08 20:21:22.767804	t
215	Charles	Ashworth	{"title": "Global People and Culture Leader"}	237	2021-02-08 02:05:00.500735	2021-02-08 20:21:23.299134	t
216	Pankaj	Risbood	{"title": "Chief Technology Officer"}	237	2021-02-08 02:05:00.561701	2021-02-08 20:21:23.814016	t
218	Todd	Thomas	{"title": "VP Global Business Development"}	237	2021-02-08 02:05:00.62654	2021-02-08 20:21:24.740658	t
219	Jay	Harris	{"title": "Director of Product Management"}	237	2021-02-08 02:05:00.657109	2021-02-08 20:21:25.238135	t
220	Peter	Daboll	{"title": "CEO"}	238	2021-02-08 02:05:41.961692	2021-02-08 20:21:25.744924	t
221	Bill	Scharninghausen	{"title": "Chief Financial Officer"}	238	2021-02-08 02:05:41.991519	2021-02-08 20:21:26.378393	t
222	Peter	Sinclair	{"title": "Director"}	238	2021-02-08 02:05:42.019956	2021-02-08 20:21:26.832855	t
223	Bill	Parducci	{"title": "CTO"}	238	2021-02-08 02:05:42.049669	2021-02-08 20:21:27.338235	t
224	Emmanuel	Smadja	{"title": "CEO and Co-Founder"}	239	2021-02-08 02:06:20.873018	2021-02-08 20:21:27.821063	t
226	Robert	Armour	{"title": "Vice President of Operations"}	239	2021-02-08 02:06:20.932241	2021-02-08 20:21:28.686089	t
227	Matt	Marshall	{"title": "Founder and CEO"}	240	2021-02-08 02:07:06.053216	2021-02-08 20:21:29.261029	t
228	Paul	Hallett	{"title": "Chief Executive"}	240	2021-02-08 02:07:06.082112	2021-02-08 20:21:29.820755	t
230	Alexei	Ilinykh	{"title": "Director Product & Engineering"}	240	2021-02-08 02:07:06.155054	2021-02-08 20:21:30.709513	t
231	Stewart	Rogers	{"title": "Director of Marketing Technology"}	240	2021-02-08 02:07:06.184013	2021-02-08 20:21:31.779581	t
232	Blair	Hanley	{"title": "Staff Writer"}	240	2021-02-08 02:07:06.213649	2021-02-08 20:21:32.278345	t
233	Paul	Sawers	{"title": "European Correspondent"}	240	2021-02-08 02:07:06.242176	2021-02-08 20:26:38.329146	t
234	Emil	Protalinski	{"title": "Technology journalist"}	240	2021-02-08 02:07:06.271285	2021-02-08 20:26:38.91159	t
235	Brian	Shanahan	{"title": "Founder and CEO"}	241	2021-02-08 02:07:44.134184	2021-02-08 20:26:39.882283	t
236	Jason	Raznick	{"title": "CEO"}	242	2021-02-08 02:08:28.963697	2021-02-08 20:26:40.598371	t
238	Neal	Hamilton	{"title": "Head of Marketing"}	242	2021-02-08 02:08:29.022148	2021-02-08 20:26:43.333427	t
239	Javier	Hasse	{"title": "Director, Cannabis Newsdesk"}	242	2021-02-08 02:08:29.050571	2021-02-08 20:26:44.072992	t
240	Nicole	LaPointe	{"title": "Executive Vice President Of Operations"}	242	2021-02-08 02:08:29.079382	2021-02-08 20:26:44.757389	t
241	Neal	Hamilton	{"title": "Executive Vice President of Marketing"}	242	2021-02-08 02:08:29.113036	2021-02-08 20:26:45.360952	t
242	Michael	Peres	{"title": "Contributor"}	242	2021-02-08 02:08:29.142738	2021-02-08 20:26:46.204073	t
244	Damo	Vasudevan	{"title": "Head of Industry Solutions"}	244	2021-02-08 02:09:13.708906	2021-02-08 20:26:48.153155	t
245	James	Michels	{"title": "Software Engineer"}	244	2021-02-08 02:09:13.740025	2021-02-08 20:26:48.661452	t
246	Charles	Stuard	{"title": "Senior Account Executive"}	244	2021-02-08 02:09:13.769482	2021-02-08 20:26:49.259017	t
247	Pankaj	Chowdhry	{"title": "Chief Executive Officer"}	244	2021-02-08 02:09:13.799877	2021-02-08 20:26:49.76316	t
248	John	Freeman	{"title": "Head of Operations"}	244	2021-02-08 02:09:13.829014	2021-02-08 20:26:50.279696	t
249	Beth	Bourg	{"title": "Senior Product Marketing Manager"}	244	2021-02-08 02:09:13.859148	2021-02-08 20:26:50.801992	t
251	Shahar	Chen	{"title": "CEO & Co-Founder"}	246	2021-02-08 02:10:02.291889	2021-02-08 20:26:51.812996	t
252	Assaf	Melochna	{"title": "COO & Co-Founder"}	246	2021-02-08 02:10:02.323371	2021-02-08 20:26:52.249417	t
253	Dovi	Yellin	{"title": "Chief Scientist"}	246	2021-02-08 02:10:02.354148	2021-02-08 20:26:52.682739	t
254	Edwin	Pahk	{"title": "VP of Product Marketing and Business Development"}	246	2021-02-08 02:10:02.385373	2021-02-08 20:26:53.179643	t
255	Amit	Zilberberg	{"title": "VP R&D"}	246	2021-02-08 02:10:02.414433	2021-02-08 20:26:53.748604	t
257	Steve	Lehr	{"title": "Founder"}	248	2021-02-08 02:10:57.392174	2021-02-08 20:26:54.754411	t
258	Brian	Vitale	{"title": "CFO"}	248	2021-02-08 02:10:57.421958	2021-02-08 20:26:55.317856	t
259	Russ	Artzt	{"title": "CEO"}	248	2021-02-08 02:10:57.451618	2021-02-08 20:26:55.75215	t
260	John	Kosturos	{"title": "CPO"}	248	2021-02-08 02:10:57.481172	2021-02-08 20:26:56.276719	t
261	Colby	Greene	{"title": "COO"}	248	2021-02-08 02:10:57.53196	2021-02-08 20:26:56.815457	t
262	Matt	Valenzuela	{"title": "SVP Of Customer Success"}	248	2021-02-08 02:10:57.561317	2021-02-08 20:26:57.396904	t
263	Jaime	Muirhead	{"title": "SVP of Sales"}	248	2021-02-08 02:10:57.59045	2021-02-08 20:26:57.865209	t
265	Scott	Montgomerie	{"title": "Co-Founder, CEO and CTO"}	249	2021-02-08 02:11:44.680571	2021-02-08 20:26:59.009861	t
266	Graham	Melley	{"title": "Founder & Principal"}	249	2021-02-08 02:11:44.709268	2021-02-08 20:26:59.499288	t
267	Matt	Howe	{"title": "Angel Investor"}	249	2021-02-08 02:11:44.749693	2021-02-08 20:26:59.957949	t
268	Chad	Boulanger	{"title": "Genera Manager, EMEA"}	249	2021-02-08 02:11:44.784802	2021-02-08 20:27:00.639399	t
269	John	Brockhaus	{"title": "Manager, Inside Sales"}	249	2021-02-08 02:11:44.814925	2021-02-08 20:27:01.124659	t
271	Matthew	Lehto	{"title": "Chief Growth Officer"}	250	2021-02-08 02:12:21.750082	2021-02-08 20:27:02.167181	t
272	Alex	Vorobiev	{"title": "VP, Product Management & Customer Success"}	250	2021-02-08 02:12:21.778603	2021-02-08 20:27:02.699951	t
273	Charlie	Cohen	{"title": "Information Security BDR"}	250	2021-02-08 02:12:21.808331	2021-02-08 20:27:03.149002	t
274	Eddie	Lou	{"title": "Co-Founder"}	252	2021-02-08 02:12:58.501434	2021-02-08 20:27:04.126238	t
275	Rick	Bowman	{"title": "CEO"}	252	2021-02-08 02:12:58.532504	2021-02-08 20:27:04.590147	t
277	Long	Tran	{"title": "VP of Engineering"}	253	2021-02-08 02:13:38.529192	2021-02-08 20:27:05.533551	t
278	Troy	Lester	{"title": "Head of Partnerships"}	253	2021-02-08 02:13:38.559228	2021-02-08 20:27:05.971462	t
279	Daniel	Sokolovsky	{"title": "CEO & Co-Founder"}	253	2021-02-08 02:13:38.590138	2021-02-08 20:27:06.456357	t
280	Peter	Wysinski	{"title": "CTO & Co-Founder"}	253	2021-02-08 02:13:38.619245	2021-02-08 20:27:06.903929	t
281	Long	Tran	{"title": "VP of Engineering"}	253	2021-02-08 02:13:38.658898	2021-02-08 20:27:07.336575	t
282	Rob	Taylor	{"title": "Co-Founder & CEO"}	254	2021-02-08 02:15:20.394082	2021-02-08 20:27:07.808319	t
284	Jenny	Bebout	{"title": "Founder"}	254	2021-02-08 02:15:20.462133	2021-02-08 20:27:08.736829	t
285	Carson	Krieg	{"title": "Co-Founder"}	254	2021-02-08 02:15:20.497149	2021-02-08 20:27:09.268621	t
286	Michael	Miller	{"title": "Vice President, Channel and Alliances"}	254	2021-02-08 02:15:20.530918	2021-02-08 20:27:09.74331	t
287	Matt	Howitt	{"title": "Vice President of Product"}	254	2021-02-08 02:15:20.564129	2021-02-08 20:27:10.1905	t
288	Kirsten	Knipp	{"title": "Chief Growth Officer"}	254	2021-02-08 02:15:20.596378	2021-02-08 20:27:10.90772	t
290	Kuldeep	Mishra	{"title": "COO"}	255	2021-02-08 02:16:03.5548	2021-02-08 20:27:11.847261	t
291	Albert	Lai	{"title": "Android Development"}	256	2021-02-08 02:16:51.757181	2021-02-08 20:27:12.29191	t
292	Devendra	Laulkar	{"title": "Team Member"}	256	2021-02-08 02:16:51.790077	2021-02-08 20:27:12.712976	t
293	Patrick	Chung	{"title": "Team Member"}	256	2021-02-08 02:16:51.821918	2021-02-08 20:27:13.158028	t
294	Janeane	Mooring	{"title": "CEO"}	256	2021-02-08 02:16:51.852231	2021-02-08 20:27:13.624708	t
295	Haresh	Patel	{"title": "Co-Founder & CEO"}	259	2021-02-08 02:17:43.997852	2021-02-08 20:27:14.068659	t
297	Jason	Adams	{"title": "Sr. Director of Engineering"}	259	2021-02-08 02:17:44.058403	2021-02-08 20:27:15.004695	t
298	Cathy	Grossi	{"title": "Sr. Director of Product Management"}	259	2021-02-08 02:17:44.087988	2021-02-08 20:27:15.466168	t
299	Sam	Brown	{"title": "Senior Director of Strategy & Business Development"}	259	2021-02-08 02:17:44.118163	2021-02-08 20:27:15.952238	t
300	Tom	Vogt	{"title": "Senior Director of Professional Services"}	259	2021-02-08 02:17:44.147138	2021-02-08 20:27:16.484417	t
301	Chatch	Sirisuth	{"title": "Director of Marketing"}	259	2021-02-08 02:17:44.179126	2021-02-08 20:27:16.986335	t
303	Nat	Natraj	{"title": "Co-founder & President"}	261	2021-02-08 02:19:11.272002	2021-02-08 20:27:18.140699	t
304	Sreenivas	Gukal	{"title": "Co-founder & VP Engineering"}	261	2021-02-08 02:19:11.30362	2021-02-08 20:27:18.562016	t
305	Raj	Gopalakrishna	{"title": "MD, Co-Founder & Chief Product Architect"}	261	2021-02-08 02:19:11.335311	2021-02-08 20:27:18.981867	t
306	Erik	Wu	{"title": "VP , Security Research"}	261	2021-02-08 02:19:11.36748	2021-02-08 20:27:19.420647	t
307	Chad	Scrupps	{"title": "VP of Sales"}	261	2021-02-08 02:19:11.400036	2021-02-08 20:27:19.865156	t
308	Satnam	Singh	{"title": "Chief Data Scientist"}	261	2021-02-08 02:19:11.431457	2021-02-08 20:27:20.79858	t
310	John	Piekos	{"title": "VP of Engineering and Customer Support"}	262	2021-02-08 02:19:50.447574	2021-02-08 20:27:21.732392	t
311	Brian	Lachance	{"title": "Chief Information Security Officer"}	262	2021-02-08 02:19:50.479338	2021-02-08 20:27:22.201822	t
312	Chris	Baddeley	{"title": "VP, Worldwide Sales"}	262	2021-02-08 02:19:50.534225	2021-02-08 20:27:22.625806	t
313	Hannah	Smalltree	{"title": "Director, Product Marketing"}	262	2021-02-08 02:19:50.566193	2021-02-08 20:27:23.129375	t
314	Prat	Moghe	{"title": "Founder & CEO"}	262	2021-02-08 02:19:50.598184	2021-02-08 20:27:23.972988	t
315	Dan	Hayes	{"title": "CFO"}	262	2021-02-08 02:19:50.630355	2021-02-08 20:27:24.445395	t
317	Chris	Halligan	{"title": "VP Sales and Marketing"}	263	2021-02-08 02:20:37.798443	2021-02-08 20:27:25.556994	t
318	Brad	Pritchard	{"title": "CTO"}	263	2021-02-08 02:20:37.831551	2021-02-08 20:27:25.997038	t
319	Joe	Giordano	{"title": "CEO & Founder"}	263	2021-02-08 02:20:37.863029	2021-02-08 20:27:26.441412	t
320	Doug	Little	{"title": "President/Co-Founder"}	263	2021-02-08 02:20:37.898289	2021-02-08 20:27:26.903078	t
321	Andrew	Flachner	{"title": "Co-Founder and President"}	264	2021-02-08 02:21:17.886667	2021-02-08 20:27:27.348707	t
322	Michael	Parikh	{"title": "Co-founder & CTO"}	264	2021-02-08 02:21:17.919076	2021-02-08 20:27:27.805821	t
323	Chris	Conley	{"title": "Lead Engineer"}	264	2021-02-08 02:21:17.950818	2021-02-08 20:27:28.271451	t
325	Duke	Fan	{"title": "VP - Product"}	264	2021-02-08 02:21:18.01478	2021-02-08 20:27:29.156912	t
326	Arthur	Kaneko	{"title": "Business Operations"}	264	2021-02-08 02:21:18.046518	2021-02-08 20:27:29.638603	t
327	Arthur	Kaneko	{"title": "CEO"}	264	2021-02-08 02:21:18.079332	2021-02-08 20:27:30.072993	t
328	Jacek	Kajut	{"title": "Founder"}	265	2021-02-08 02:21:55.208178	2021-02-08 20:27:30.509613	t
329	Brian	Hazzard	{"title": "Founder & CEO"}	266	2021-02-08 02:22:30.31049	2021-02-08 20:27:30.976747	t
330	David	Wolpoff	{"title": "Founder & CTO"}	266	2021-02-08 02:22:30.341867	2021-02-08 20:27:32.012014	t
332	Amir	Schwartz	{"title": "VP Engineering"}	267	2021-02-08 02:23:12.212959	2021-02-08 20:27:32.948152	t
333	Alon	Eizenman	{"title": "CTO & Co-founder"}	267	2021-02-08 02:23:12.247077	2021-02-08 20:33:15.655518	t
334	Ofir	Nachtstern	{"title": "VP Finance"}	267	2021-02-08 02:23:12.279912	2021-02-08 20:33:16.212304	t
335	Mylea	Charvat,	{"title": "Chief Executive Officer"}	268	2021-02-08 02:23:49.392611	2021-02-08 20:33:16.687106	t
337	Jillian	Kwan-Jacobs	{"title": "Chief Operating Officer"}	268	2021-02-08 02:23:49.455553	2021-02-08 20:33:17.591915	t
338	Daniel	Kogan	{"title": "Chief Technology Officer"}	268	2021-02-08 02:23:49.489062	2021-02-08 20:33:18.558385	t
339	Simon	Collinson,	{"title": "Chief Science Officer"}	268	2021-02-08 02:23:49.519134	2021-02-08 20:33:19.116821	t
340	Reynald	Hiole	{"title": "VP of Marketing"}	268	2021-02-08 02:23:49.554419	2021-02-08 20:33:19.625683	t
341	Mylea	Charvat,	{"title": "CEO & Founder"}	268	2021-02-08 02:23:49.589125	2021-02-08 20:33:20.097764	t
342	Sterling	Wilson	{"title": "President & CEO"}	269	2021-02-08 02:24:35.674985	2021-02-08 20:33:20.673109	t
343	Steve	O'Brien	{"title": "Chief Marketing Officer"}	269	2021-02-08 02:24:35.716886	2021-02-08 20:33:21.148133	t
345	Annette	Eyraud	{"title": "Chief Financial Officer"}	269	2021-02-08 02:24:35.799114	2021-02-08 20:33:22.132462	t
346	Sachin	Agrawal	{"title": "Chief Technology Officer"}	269	2021-02-08 02:24:35.835289	2021-02-08 20:33:22.57381	t
347	Bicheng	Han	{"title": "CEO"}	271	2021-02-08 02:25:20.744282	2021-02-08 20:33:23.035657	t
348	Yi	Zhang	{"title": "CTO, Co-Founder & Chair of the Board"}	273	2021-02-08 02:26:00.34473	2021-02-08 20:33:23.547291	t
349	Jim	Diaz	{"title": "VP Business Development"}	273	2021-02-08 02:26:00.375519	2021-02-08 20:33:23.993877	t
350	Marc	Vanlerberghe	{"title": "CEO"}	273	2021-02-08 02:26:00.406625	2021-02-08 20:33:24.465991	t
352	Marc	Vanlerberghe	{"title": "CEO"}	273	2021-02-08 02:26:00.470356	2021-02-08 20:33:25.421981	t
353	Neil	Steinhardt	{"title": "Co-Founder and President"}	274	2021-02-08 02:26:44.998269	2021-02-08 20:33:25.860842	t
354	Jamie	Rosenberg	{"title": "Founder & CEO"}	274	2021-02-08 02:26:45.031313	2021-02-08 20:33:26.298941	t
355	Melody	Page	{"title": "Vice President of Sales"}	274	2021-02-08 02:26:45.062518	2021-02-08 20:33:26.731128	t
356	Lisbeth	Garassino	{"title": "Marketing Director"}	274	2021-02-08 02:26:45.094318	2021-02-08 20:33:27.231295	t
357	Angela	Bao	{"title": "Board Observer"}	274	2021-02-08 02:26:45.125296	2021-02-08 20:33:28.193144	t
358	Roger	Barnette	{"title": "CEO"}	277	2021-02-08 02:27:37.328161	2021-02-08 20:33:28.709854	t
360	Taylor	Jones	{"title": "Co-Founder, Principal Engineer"}	277	2021-02-08 02:27:37.433811	2021-02-08 20:33:29.640441	t
361	Craig	Pohan	{"title": "CTO"}	277	2021-02-08 02:27:37.500314	2021-02-08 20:33:30.098187	t
362	Ari	Koteles	{"title": "Finance Director"}	277	2021-02-08 02:27:37.550747	2021-02-08 20:33:30.627224	t
363	Walter	Rowland	{"title": "SVP"}	277	2021-02-08 02:27:37.636863	2021-02-08 20:33:31.282821	t
364	Will	Devlin	{"title": "Marketing Director"}	277	2021-02-08 02:27:37.684341	2021-02-08 20:33:31.87485	t
367	Erin	Osborn	{"title": "Co-Founder and COO"}	278	2021-02-08 02:28:11.793314	2021-02-08 20:33:35.126904	t
369	Norma	Gordon	{"title": "Director of Teacher Learning"}	278	2021-02-08 02:28:11.854838	2021-02-08 20:33:36.075082	t
370	Yevy	Spivak	{"title": "Director of Product Development"}	278	2021-02-08 02:28:11.88591	2021-02-08 20:33:36.566068	t
371	Grejdi	Gjura	{"title": "Vice President of Engineering & Director of Engineering"}	278	2021-02-08 02:28:11.916615	2021-02-08 20:33:37.074811	t
372	Matthew	Lenard	{"title": "Director of Research"}	278	2021-02-08 02:28:11.946644	2021-02-08 20:33:37.518015	t
373	Edward	Rayner	{"title": "Chief Financial Officer"}	278	2021-02-08 02:28:11.978251	2021-02-08 20:33:38.027257	t
374	Elizabeth	Wills	{"title": "Board Observer"}	278	2021-02-08 02:28:12.009309	2021-02-08 20:33:38.734688	t
375	Ashley	Bittner	{"title": "Board Observer"}	278	2021-02-08 02:28:12.067214	2021-02-08 20:33:39.830715	t
377	Brett	Lindsey	{"title": "President & CEO"}	279	2021-02-08 02:28:43.485172	2021-02-08 20:33:42.410039	t
378	Christian	Gartner,	{"title": "CFO"}	279	2021-02-08 02:28:43.520197	2021-02-08 20:33:45.494659	t
379	Sarah	Mugford	{"title": "Chief Marketing Officer"}	279	2021-02-08 02:28:43.54972	2021-02-08 20:33:46.216757	t
380	Chuck	Girt	{"title": "CTO"}	279	2021-02-08 02:28:43.579368	2021-02-08 20:33:46.908182	t
381	Greg	Besner	{"title": "Vice Chairman & Founder"}	280	2021-02-08 02:29:20.958551	2021-02-08 20:33:47.64135	t
382	Jawaun	Brown	{"title": "Software Engineer"}	280	2021-02-08 02:29:20.990332	2021-02-08 20:33:48.136891	t
384	Micah	Rosenbloom	{"title": "Board Observer"}	280	2021-02-08 02:29:21.099254	2021-02-08 20:33:51.128029	t
385	Bettina	Herz	{"title": "Global Operations"}	281	2021-02-08 02:30:04.955615	2021-02-08 20:33:52.151826	t
386	Fabian-Carlos	Guhl	{"title": "Founder and CEO"}	281	2021-02-08 02:30:04.989921	2021-02-08 20:33:53.1973	t
387	Emily	Rasowsky	{"title": "Customer Experience"}	282	2021-02-08 02:30:52.947618	2021-02-08 20:33:54.013736	t
388	Pier	LaFarge	{"title": "Co-Founder & CEO"}	282	2021-02-08 02:30:52.978519	2021-02-08 20:33:54.512121	t
389	Leigh-Golding	DeSantis	{"title": "COO"}	282	2021-02-08 02:30:53.008707	2021-02-08 20:33:55.335162	t
391	Angela	Ferrante	{"title": "CMO"}	282	2021-02-08 02:30:53.090177	2021-02-08 20:33:58.528474	t
392	Joe	Indvik	{"title": "Co-Founder, President & COO"}	282	2021-02-08 02:30:53.121224	2021-02-08 20:33:59.012061	t
393	Jeffrey	Stanton	{"title": "Engineer"}	282	2021-02-08 02:30:53.150413	2021-02-08 20:33:59.4523	t
394	Nathan	Sorenson	{"title": "Senior Tech Lead"}	282	2021-02-08 02:30:53.183666	2021-02-08 20:33:59.923523	t
396	Carl	Schachter	{"title": "Chief Revenue Officer"}	283	2021-02-08 02:31:26.458925	2021-02-08 20:34:00.91216	t
397	Ron	Gutman	{"title": "CTO"}	283	2021-02-08 02:31:26.489134	2021-02-08 20:34:01.357305	t
398	Sean	Doherty	{"title": "CEO"}	283	2021-02-08 02:31:26.520368	2021-02-08 20:34:01.795389	t
399	David	Martinez	{"title": "Chief Architect & Co-Founder & VP Engineering"}	283	2021-02-08 02:31:26.576988	2021-02-08 20:34:02.258536	t
400	Juni	Mukherjee	{"title": "Owner"}	284	2021-02-08 02:31:57.278407	2021-02-08 20:34:02.72898	t
401	Milan	Rikic	{"title": "CTO"}	285	2021-02-08 02:32:31.017369	2021-02-08 20:34:03.599432	t
402	Skiddy	von	{"title": "Vice Chairman"}	285	2021-02-08 02:32:31.049016	2021-02-08 20:34:04.080199	t
403	Eric	Stutzke	{"title": "CEO"}	285	2021-02-08 02:32:31.080311	2021-02-08 20:34:04.648856	t
405	Scott	Tilton	{"title": "CEO"}	286	2021-02-08 02:33:16.394902	2021-02-08 20:34:05.596623	t
406	Kimberly	Cook	{"title": "Chief Revenue Officer"}	286	2021-02-08 02:33:16.424207	2021-02-08 20:34:06.040121	t
407	Sam	Simkin	{"title": "EVP & Chief Financial Officer"}	286	2021-02-08 02:33:16.456605	2021-02-08 20:34:06.525836	t
408	Scott	Kannry	{"title": "Chief Executive Officer"}	287	2021-02-08 02:33:50.389959	2021-02-08 20:34:07.024427	t
409	David	White	{"title": "Founder and President"}	287	2021-02-08 02:33:50.42285	2021-02-08 20:34:07.469654	t
411	Dale	Gonzalez	{"title": "Chief Product Officer"}	287	2021-02-08 02:33:50.490026	2021-02-08 20:34:08.375208	t
412	Jason	Christopher	{"title": "Chief Technology Officer"}	287	2021-02-08 02:33:50.525319	2021-02-08 20:34:08.82448	t
413	Pamela	Cirtus	{"title": "Vice President"}	287	2021-02-08 02:33:50.559902	2021-02-08 20:34:09.257799	t
414	Brendan	Fitzpatrick	{"title": "Vice President of Cyber Risk Engineering"}	287	2021-02-08 02:33:50.590671	2021-02-08 20:34:09.696821	t
415	Lisa	Young	{"title": "Vice President of Service Delivery"}	287	2021-02-08 02:33:50.619235	2021-02-08 20:34:10.130834	t
416	Matthew	Mullins	{"title": "CTO"}	288	2021-02-08 02:34:27.555037	2021-02-08 20:34:10.848753	t
418	Ken	Crafford	{"title": "CFO"}	288	2021-02-08 02:34:27.626749	2021-02-08 20:34:11.866998	t
419	Chris	Coad	{"title": "VP of Customer Development"}	288	2021-02-08 02:34:27.670764	2021-02-08 20:34:12.32874	t
420	Richard	Hall	{"title": "CEO"}	288	2021-02-08 02:34:27.706072	2021-02-08 20:34:12.81184	t
421	Rick	Hall	{"title": "CEO"}	288	2021-02-08 02:34:27.737469	2021-02-08 20:34:13.466476	t
422	David	Spreng	{"title": "Board Observer"}	288	2021-02-08 02:34:27.797667	2021-02-08 20:34:13.925515	t
424	James	Conrad	{"title": "CCO North America"}	290	2021-02-08 02:35:16.717619	2021-02-08 20:34:14.912832	t
425	Ricardo	Majela	{"title": "Investor"}	290	2021-02-08 02:35:16.747706	2021-02-08 20:34:15.395263	t
426	Scott	McClennan	{"title": "Director of Solver Technology"}	291	2021-02-08 02:36:07.917663	2021-02-08 20:34:15.86846	t
427	Robbie	Banks	{"title": "VP of Product, Founder"}	291	2021-02-08 02:36:07.966485	2021-02-08 20:34:16.326678	t
429	Valerio	Marra	{"title": "VP of Sales and Marketing"}	291	2021-02-08 02:36:08.035709	2021-02-08 20:34:17.315533	t
430	Ryan	Diestelhorst	{"title": "VP of Strategy"}	291	2021-02-08 02:36:08.084137	2021-02-08 20:34:17.757843	t
431	Gerry	Harvey	{"title": "VP Engineering, Founder"}	291	2021-02-08 02:36:08.131922	2021-02-08 20:34:18.261092	t
432	David	Freed	{"title": "CTO"}	291	2021-02-08 02:36:08.167948	2021-02-08 20:34:18.803983	t
433	Ian	Campbell	{"title": "CEO"}	291	2021-02-08 02:36:08.20234	2021-02-08 20:34:19.247994	t
434	Tonya	Meister	{"title": "CMO"}	292	2021-02-08 02:36:52.482168	2021-02-08 20:34:19.97136	t
435	Neil	Thomas	{"title": "VP, Project Management Office"}	292	2021-02-08 02:36:52.512779	2021-02-08 20:34:20.440119	t
436	Eric	Dahlen	{"title": "Chief Software Architect"}	292	2021-02-08 02:36:52.543718	2021-02-08 20:34:20.927544	t
439	Dude	Frank	{"title": "Co-Founder, CTO"}	292	2021-02-08 02:36:52.636554	2021-02-08 20:34:22.298792	t
440	Tom	Samuel	{"title": "CEO & Board Member"}	292	2021-02-08 02:36:52.672184	2021-02-08 20:34:22.777086	t
442	Kostas	Nikolouzakis	{"title": "CEO"}	294	2021-02-08 02:37:38.631352	2021-02-08 20:34:23.790813	t
443	Peter	Taliancich	{"title": "Chief Innovation Officer"}	295	2021-02-08 02:38:17.488201	2021-02-08 20:34:24.221704	t
444	Gayle	Messmann	{"title": "Chief Service Officer"}	295	2021-02-08 02:38:17.519111	2021-02-08 20:34:24.871301	t
445	Steven	Theesfeld	{"title": "Founder and Chief Integrity Officer"}	295	2021-02-08 02:38:17.549113	2021-02-08 20:34:25.449736	t
446	Jason	Osburn	{"title": "Chief Empathy Officer"}	295	2021-02-08 02:38:17.579098	2021-02-08 20:34:26.054261	t
447	Michael	Walsh	{"title": "Founder and Chief Executive Officer"}	295	2021-02-08 02:38:17.608913	2021-02-08 20:34:26.555271	t
448	Michael	Stoltz,	{"title": "Board Observer"}	295	2021-02-08 02:38:17.65941	2021-02-08 20:34:27.003984	t
450	Maria	E.	{"title": "President, CEO and Founder"}	297	2021-02-08 02:39:42.846025	2021-02-08 20:34:28.009875	t
451	Ralph	M.	{"title": "Jr. Managing Director"}	297	2021-02-08 02:39:42.877992	2021-02-08 20:34:28.503435	t
452	Leonard	M.	{"title": "Managing Director"}	297	2021-02-08 02:39:42.909355	2021-02-08 20:34:28.987956	t
453	Patricia	B.	{"title": "Managing Director"}	297	2021-02-08 02:39:42.941518	2021-02-08 20:34:29.456092	t
455	John	Chae	{"title": "Chief Medical Advisor"}	297	2021-02-08 02:39:43.000279	2021-02-08 20:34:30.435867	t
456	Joseph	Boggs	{"title": "Senior Vice President, Research and Development"}	297	2021-02-08 02:39:43.029032	2021-02-08 20:34:30.93546	t
457	Mark	Stultz	{"title": "Vice President of Market Development"}	297	2021-02-08 02:39:43.058774	2021-02-08 20:34:31.709637	t
458	Branden	Spikes	{"title": "Technology Evangelist"}	298	2021-02-08 02:40:18.004304	2021-02-08 20:34:32.149377	t
459	Yashwanth	Hemaraj	{"title": "Board Observer"}	298	2021-02-08 02:40:18.045227	2021-02-08 20:34:33.023012	t
460	Kevin	Shane	{"title": "Director Community Development"}	300	2021-02-08 02:42:05.549938	2021-02-08 20:34:33.624512	t
461	Alex	Egan	{"title": "Creative Director"}	300	2021-02-08 02:42:05.580595	2021-02-08 20:34:34.206011	t
462	Allen	Shayanfekr	{"title": "CEO + Founder"}	300	2021-02-08 02:42:05.611303	2021-02-08 20:34:34.678162	t
463	Denton	Burnell	{"title": "CTO"}	303	2021-02-08 02:42:57.724618	2021-02-08 20:34:35.20209	t
465	Mike	Oliver	{"title": "Head of Product"}	303	2021-02-08 02:42:57.789485	2021-02-08 20:34:36.148351	t
466	Andrew	Herman	{"title": "Founder, Chairman & CEO"}	303	2021-02-08 02:42:57.856965	2021-02-08 20:34:36.599814	t
467	David	Leinweber	{"title": "CEO"}	304	2021-02-08 02:43:36.311321	2021-02-08 20:34:37.047867	t
468	Justin	Behar	{"title": "CEO"}	305	2021-02-08 02:44:17.875744	2021-02-08 20:34:37.49363	t
469	John	Mecklenburg	{"title": "COO/Co-Founder"}	305	2021-02-08 02:44:17.907236	2021-02-08 20:34:38.044704	t
471	Mark	Cook	{"title": "Vice President, Product"}	305	2021-02-08 02:44:17.967878	2021-02-08 20:34:39.241948	t
472	Sebastien	Thiebaud	{"title": "iOS Software Engineer"}	305	2021-02-08 02:44:17.997497	2021-02-08 20:34:39.7152	t
473	Sarita	Bhargava	{"title": "Chief Communications Officer"}	306	2021-02-08 02:44:56.649337	2021-02-08 20:34:40.154375	t
474	Karen	Cator	{"title": "Director"}	306	2021-02-08 02:44:56.680706	2021-02-08 20:34:40.600292	t
475	Jim	Beeler	{"title": "Chief Learning Officer"}	306	2021-02-08 02:44:56.711488	2021-02-08 20:34:41.366672	t
477	Bridget	Foster	{"title": "Director of Partnerships"}	306	2021-02-08 02:44:56.773356	2021-02-08 20:34:42.332235	t
478	Sara	Schapiro	{"title": "Director of the League of Innovative Schools"}	306	2021-02-08 02:44:56.8026	2021-02-08 20:34:42.793389	t
479	Alfred	Solis	{"title": "Director of Professional Services"}	306	2021-02-08 02:44:56.83291	2021-02-08 20:34:43.527203	t
480	Aubrey	Francisco	{"title": "Research Director"}	306	2021-02-08 02:44:56.865059	2021-02-08 20:34:44.108901	t
481	Will	Fredrick	{"title": "CFO"}	307	2021-02-08 02:45:32.920289	2021-02-08 20:34:44.599433	t
482	Marion	Lewis	{"title": "Founder & CEO"}	307	2021-02-08 02:45:32.952345	2021-02-08 20:34:45.110539	t
483	Bill	Yudichak	{"title": "Chief Experience Officer"}	307	2021-02-08 02:45:32.987441	2021-02-08 20:34:45.551655	t
485	Bob	Barnes	{"title": "VP Sales and Business Development"}	308	2021-02-08 02:46:18.241846	2021-02-08 20:34:46.489061	t
486	Craig	Miwa	{"title": "VP Technology"}	308	2021-02-08 02:46:18.272571	2021-02-08 20:34:46.92954	t
487	Jay	Bean	{"title": "CEO"}	308	2021-02-08 02:46:18.303011	2021-02-08 20:34:47.497226	t
488	David	Hsieh	{"title": "CEO"}	309	2021-02-08 02:46:58.181211	2021-02-08 20:34:48.182672	t
490	Steve	Semenzato	{"title": "Chief Revenue Officer"}	309	2021-02-08 02:46:58.241563	2021-02-08 20:34:49.301601	t
491	Adrian	Cable	{"title": "Co-Founder & CTO"}	309	2021-02-08 02:46:58.290389	2021-02-08 20:34:49.782061	t
492	Nic	Lawrence	{"title": "Co-Founder"}	309	2021-02-08 02:46:58.322356	2021-02-08 20:34:50.211043	t
493	Gregory	Smith	{"title": "CFO"}	309	2021-02-08 02:46:58.352296	2021-02-08 20:34:50.651135	t
494	Dave	Kelly	{"title": "Founder & CEO"}	310	2021-02-08 02:47:37.200339	2021-02-08 20:34:51.110398	t
495	Mike	Hattub	{"title": "COO"}	310	2021-02-08 02:47:37.230143	2021-02-08 20:34:51.674926	t
496	Dean	Kelly	{"title": "CFO"}	310	2021-02-08 02:47:37.260125	2021-02-08 20:34:52.523751	t
498	Melissa	Kronsberg	{"title": "Managing Director of Academics"}	311	2021-02-08 02:48:20.187571	2021-02-08 20:34:53.506927	t
499	Gideon	Stein	{"title": "Founder & CEO"}	311	2021-02-08 02:48:20.216666	2021-02-08 20:34:54.049656	t
500	Brandon	Cohen	{"title": "Chief Partnership Officer"}	311	2021-02-08 02:48:20.248362	2021-02-08 20:34:54.494724	t
501	David	Gentile	{"title": "Chief Executive Officer"}	312	2021-02-08 02:49:05.174278	2021-02-08 20:34:54.969071	t
502	Michael	Cohn	{"title": "Managing Director & Chief Compliance Officer"}	312	2021-02-08 02:49:05.206843	2021-02-08 20:34:55.406858	t
503	Daniel	Rainey	{"title": "Vice President"}	312	2021-02-08 02:49:05.238499	2021-02-08 20:34:55.831772	t
504	Manuel	Federico	{"title": "Managing partner"}	312	2021-02-08 02:49:05.270203	2021-02-08 20:34:56.346461	t
506	Brian	Weisenberger	{"title": "Managing director of communications"}	312	2021-02-08 02:49:05.3394	2021-02-08 20:34:57.285368	t
507	Michael	Frost	{"title": "Managing director"}	312	2021-02-08 02:49:05.368279	2021-02-08 20:34:57.77555	t
509	Max	Rudman	{"title": "CEO"}	313	2021-02-08 02:49:45.451652	2021-02-08 20:34:58.720157	t
511	Dean	Leavitt	{"title": "Founder & CEO"}	314	2021-02-08 02:50:27.235074	2021-02-08 20:34:59.684764	t
512	James	Lister	{"title": "EVP Product and Technology"}	314	2021-02-08 02:50:27.265516	2021-02-08 20:35:00.140226	t
513	Stephen	Cohen	{"title": "Senior Vice President"}	314	2021-02-08 02:50:27.295988	2021-02-08 20:35:00.607618	t
515	Gordon	Elliot	{"title": "COO"}	314	2021-02-08 02:50:27.377568	2021-02-08 20:35:01.545641	t
516	Mohan	Chunduri	{"title": "Chief Information Officer"}	314	2021-02-08 02:50:27.4087	2021-02-08 20:35:01.999393	t
517	Dawn	Orr	{"title": "Chief Operating Officer"}	315	2021-02-08 02:51:13.107838	2021-02-08 20:35:02.493288	t
518	Andrew	Mahr	{"title": "Chief Customer Officer"}	315	2021-02-08 02:51:13.138799	2021-02-08 20:35:03.04199	t
519	Mike	Ball	{"title": "CTO"}	315	2021-02-08 02:51:13.170433	2021-02-08 20:35:03.627657	t
520	Jason	Jue	{"title": "Chief Marketing Officer & Co-founder"}	315	2021-02-08 02:51:13.218051	2021-02-08 20:35:04.168968	t
521	Andre	Yee	{"title": "Co-Founder & CEO"}	315	2021-02-08 02:51:13.249352	2021-02-08 20:35:04.630818	t
522	Trish	Kennedy	{"title": "Co Founder & COO"}	316	2021-02-08 02:52:00.180815	2021-02-08 20:35:05.084809	t
524	Charles	Nardi	{"title": "CEO"}	316	2021-02-08 02:52:00.243966	2021-02-08 20:35:06.133071	t
525	Shami	Patel	{"title": "CEO"}	318	2021-02-08 02:52:49.114381	2021-02-08 20:35:06.583256	t
526	Jen	McLean	{"title": "Vice President of People"}	319	2021-02-08 02:53:29.368777	2021-02-08 20:35:07.042561	t
527	Aloysius	Fobi	{"title": "Vice President of Business Development"}	319	2021-02-08 02:53:29.400172	2021-02-08 20:35:07.492285	t
528	Taylor	Eke	{"title": "Lead Architect / Engineer"}	319	2021-02-08 02:53:29.429293	2021-02-08 20:35:07.983334	t
530	Stefanie	Folk	{"title": "Executive Assistant"}	319	2021-02-08 02:53:29.491686	2021-02-08 20:35:08.849654	t
531	Zoe	Graman	{"title": "People Operations Manager"}	319	2021-02-08 02:53:29.522148	2021-02-08 20:35:09.435602	t
532	Marlon	Ma	{"title": "Frontend Engineer"}	319	2021-02-08 02:53:29.554704	2021-02-08 20:35:09.904825	t
533	Andrea	Grimshaw	{"title": "Vice President of Product"}	319	2021-02-08 02:53:29.584894	2021-02-08 20:49:00.838599	t
534	Gary	Abrahams	{"title": "Board Observer"}	319	2021-02-08 02:53:29.663808	2021-02-08 20:49:01.338485	t
535	Wilder	Ramsey	{"title": "Board Observer"}	319	2021-02-08 02:53:29.69592	2021-02-08 20:49:01.797963	t
537	Mark	Hinkle	{"title": "Co-Founder"}	321	2021-02-08 02:54:48.919185	2021-02-08 20:49:02.769684	t
538	Christopher	Baumbauer	{"title": "Sr Software Engineer"}	321	2021-02-08 02:54:48.951061	2021-02-08 20:49:03.357084	t
539	Sebastien	Goasguen	{"title": "Co-Founder"}	321	2021-02-08 02:54:48.981994	2021-02-08 20:49:04.002797	t
540	Jason	Ware	{"title": "Head Municipal Trader"}	322	2021-02-08 02:55:21.850014	2021-02-08 20:49:04.682071	t
541	Prescott	Nasser	{"title": "CTO"}	322	2021-02-08 02:55:21.879834	2021-02-08 20:49:05.196942	t
543	Heather	Hall	{"title": "CFO"}	322	2021-02-08 02:55:21.942278	2021-02-08 20:49:06.069409	t
544	Dave	Rudd	{"title": "Head of Institutional Sales"}	322	2021-02-08 02:55:21.984483	2021-02-08 20:49:06.645688	t
545	Tom	Lockard	{"title": "Head of Originations"}	322	2021-02-08 02:55:22.016827	2021-02-08 20:49:07.179051	t
546	Sean	McDaniel	{"title": "CEO & Founder"}	323	2021-02-08 02:56:07.920347	2021-02-08 20:49:07.629002	t
547	Mike	Carey	{"title": "CSO & Founder"}	323	2021-02-08 02:56:07.95248	2021-02-08 20:49:08.226574	t
548	Joe	Winowiecki	{"title": "CFO"}	323	2021-02-08 02:56:07.987883	2021-02-08 20:49:08.677941	t
549	Mark	Malosh	{"title": "COO"}	323	2021-02-08 02:56:08.018541	2021-02-08 20:49:09.120775	t
551	Travis	Lopes	{"title": "Director of Sales"}	324	2021-02-08 02:56:49.958222	2021-02-08 20:49:10.058853	t
552	Katharina	Kufieta	{"title": "Robotics Automation Engineer"}	324	2021-02-08 02:56:49.989081	2021-02-08 20:49:10.502928	t
553	Leanne	Luce	{"title": "Product Manager"}	324	2021-02-08 02:56:50.018004	2021-02-08 20:49:11.036849	t
554	Oliver	Ortlieb	{"title": "Co-Founder"}	324	2021-02-08 02:56:50.075961	2021-02-08 20:49:11.542472	t
556	Patrick	Deem	{"title": "Co-Founder and CFO, Head of Business Development"}	324	2021-02-08 02:56:50.138375	2021-02-08 20:49:12.442028	t
557	Jonathan	Schwartz	{"title": "Co-Founder, CPO"}	324	2021-02-08 02:56:50.169326	2021-02-08 20:49:12.904416	t
558	Mary	Pigatti	{"title": "CEO"}	325	2021-02-08 04:13:30.538268	2021-02-08 20:49:13.443963	t
559	Ruth	Wolever	{"title": "Chief Science Officer"}	325	2021-02-08 04:13:30.568267	2021-02-08 20:49:13.887779	t
561	Zev	Suissa	{"title": "Chief Innovation Officer, Strategic Partnerships"}	325	2021-02-08 04:13:30.627715	2021-02-08 20:49:14.928407	t
562	Denise	Shields,	{"title": "Director of Curriculum, Delivery, and Research"}	325	2021-02-08 04:13:30.656366	2021-02-08 20:49:15.38885	t
563	Sara	Mayo	{"title": "Controller and Director of Administration"}	325	2021-02-08 04:13:30.707275	2021-02-08 20:49:15.852151	t
564	Bill	Fisher	{"title": "Founder & Chief Executive Officer"}	327	2021-02-08 04:14:13.883058	2021-02-08 20:49:16.311685	t
565	J.R.	Garibaldi	{"title": "VP & General Counsel"}	327	2021-02-08 04:14:13.91486	2021-02-08 20:49:16.828494	t
566	Shaw	Yean	{"title": "VP of Finance & Operations"}	327	2021-02-08 04:14:13.945525	2021-02-08 20:49:17.284082	t
567	Nick	Brown	{"title": "Chief Operating Officer"}	327	2021-02-08 04:14:13.977881	2021-02-08 20:49:17.880052	t
569	Julie	Tyler	{"title": "VP, Head of Marketing"}	327	2021-02-08 04:14:14.038064	2021-02-08 20:49:18.746747	t
570	Ajay	Manglalam	{"title": "Chief Data Scientist"}	327	2021-02-08 04:14:14.083487	2021-02-08 20:49:19.213424	t
571	Paige	Brooks	{"title": "Head of People"}	327	2021-02-08 04:14:14.114166	2021-02-08 20:49:19.667856	t
572	Greg	Bullington	{"title": "Co-Founder & CEO"}	328	2021-02-08 04:14:54.729057	2021-02-08 20:49:20.122653	t
573	Bob	Gerberich	{"title": "Chief Commercial Officer"}	328	2021-02-08 04:14:54.757946	2021-02-08 20:49:20.588326	t
574	Richard	G.	{"title": "Co-Founder & Medical Director"}	328	2021-02-08 04:14:54.784701	2021-02-08 20:49:23.43158	t
575	Eric	Pulaski	{"title": "Founder and Chief Executive Officer"}	329	2021-02-08 04:15:38.701591	2021-02-08 20:49:24.389582	t
576	Dania	Buchanan	{"title": "Chief Marketing Officer"}	329	2021-02-08 04:15:38.732032	2021-02-08 20:49:28.095411	t
577	Michael	Webb	{"title": "Chief Technology Officer"}	329	2021-02-08 04:15:38.761296	2021-02-08 20:49:30.4279	t
579	Todd	Simpson	{"title": "Board Observer"}	330	2021-02-08 04:16:13.600206	2021-02-08 20:49:32.832308	t
580	Christopher	Coleman	{"title": "Founder"}	331	2021-02-08 04:17:03.012013	2021-02-08 20:49:33.289701	t
581	Nicholas	Hinrichsen	{"title": "Founder"}	331	2021-02-08 04:17:03.041005	2021-02-08 20:49:33.851048	t
583	D.	Wayne	{"title": "Chief Executive Officer"}	335	2021-02-08 04:18:39.73878	2021-02-08 20:49:34.852536	t
584	Gerald	Schlechter	{"title": "Chief Technology Officer"}	335	2021-02-08 04:18:39.768263	2021-02-08 20:49:35.314121	t
585	Steven	Hochheiser	{"title": "Vice-President of Product Delivery"}	335	2021-02-08 04:18:39.796089	2021-02-08 20:49:35.811459	t
586	Erik	Pilgrim	{"title": "Head of Product and Director of Solutions Engineering"}	335	2021-02-08 04:18:39.835181	2021-02-08 20:49:36.271138	t
587	Remsen	Harris	{"title": "Board Observer"}	335	2021-02-08 04:18:39.89382	2021-02-08 20:49:36.711419	t
588	Remsen	Harris	{"title": "Board Observer"}	335	2021-02-08 04:18:39.923392	2021-02-08 20:49:37.16159	t
590	Hong	Hu	{"title": "Co-Founder"}	337	2021-02-08 04:19:22.346237	2021-02-08 20:49:38.171952	t
591	Justin	Yoshimura	{"title": "Founder & CEO"}	337	2021-02-08 04:19:22.37544	2021-02-08 20:49:38.605917	t
592	Zvi	Guterman	{"title": "Co-Founder & CEO"}	338	2021-02-08 04:20:00.179984	2021-02-08 20:49:39.058111	t
593	Amir	Hofman	{"title": "Chief Product Officer"}	338	2021-02-08 04:20:00.210415	2021-02-08 20:49:39.497704	t
594	Sheila	Aharoni	{"title": "Global VP of Sales"}	338	2021-02-08 04:20:00.24019	2021-02-08 20:49:39.953038	t
595	Kiran	Bellare	{"title": "Team Member"}	338	2021-02-08 04:20:00.269967	2021-02-08 20:49:40.380956	t
597	Alec	Manfre	{"title": "Chief Executive Officer & Co-Founder"}	339	2021-02-08 04:20:46.145168	2021-02-08 20:49:41.33226	t
598	Matthew	Lynch	{"title": "Chief Product Officer & Co-Founder"}	339	2021-02-08 04:20:46.173814	2021-02-08 20:49:41.858495	t
599	Brian	Smith	{"title": "Chief Technology Officer & Co-Founder"}	339	2021-02-08 04:20:46.202036	2021-02-08 20:49:42.290942	t
600	Eric	Moxham	{"title": "Chief Financial Officer and Head of Sales"}	339	2021-02-08 04:20:46.244768	2021-02-08 20:49:42.839066	t
602	Craig	Herron	{"title": "Board Observer"}	339	2021-02-08 04:20:46.314524	2021-02-08 20:49:43.8403	t
603	Jason	Blumberg	{"title": "Board Observer"}	339	2021-02-08 04:20:46.353864	2021-02-08 20:49:44.433265	t
604	Srinagesh	Vitthanala	{"title": "CEO"}	340	2021-02-08 04:21:30.074934	2021-02-08 20:49:44.904735	t
605	David	Grubman	{"title": "Vice President, Partnership Strategy"}	340	2021-02-08 04:21:30.105019	2021-02-08 20:49:45.354174	t
606	Jeff	Parker	{"title": "VP of Engineering"}	341	2021-02-08 04:22:16.102571	2021-02-08 20:49:45.891484	t
607	Matthew	Condon	{"title": "CEO"}	341	2021-02-08 04:22:16.134744	2021-02-08 20:49:46.331476	t
608	Dan	Appleman	{"title": "CTO"}	342	2021-02-08 04:23:05.547092	2021-02-08 20:49:46.802894	t
610	Bonnie	Crater	{"title": "President & CEO"}	342	2021-02-08 04:23:05.609144	2021-02-08 20:49:47.7498	t
611	Christine	Vermes	{"title": "Vice President, Marketing"}	342	2021-02-08 04:23:05.640111	2021-02-08 20:49:48.214485	t
612	Bob	Teplitsky	{"title": "Vice President, Engineering"}	342	2021-02-08 04:23:05.67044	2021-02-08 20:49:48.658062	t
613	Roan	Bear	{"title": "VP, Customer Success"}	342	2021-02-08 04:23:05.701534	2021-02-08 20:49:49.10477	t
614	Eugene	A.	{"title": "CEO and founder"}	343	2021-02-08 04:23:43.736896	2021-02-08 20:49:49.937836	t
615	John	Dixon	{"title": "CFO"}	344	2021-02-08 04:24:24.831157	2021-02-08 20:49:51.214491	t
616	Phil	Dixon	{"title": "Founder and CEO"}	344	2021-02-08 04:24:24.866237	2021-02-08 20:49:51.690569	t
618	Eric	Schweikardt	{"title": "CEO"}	345	2021-02-08 04:25:12.793583	2021-02-08 20:49:52.60043	t
619	Jonathan	Moyes	{"title": "Chief Operating Officer"}	345	2021-02-08 04:25:12.823732	2021-02-08 20:49:53.032225	t
620	Campbell	Kennedy	{"title": "Co-founder/CEO"}	347	2021-02-08 04:26:06.31234	2021-02-08 20:49:53.557992	t
621	Sam	Ziegler	{"title": "Co-founder/VP of Engineering"}	347	2021-02-08 04:26:06.3438	2021-02-08 20:49:53.999529	t
623	Michael	Osofsky	{"title": "Principal Software Engineer"}	347	2021-02-08 04:26:06.407857	2021-02-08 20:49:54.903632	t
624	Bryan	Burkhart	{"title": "Founder and CEO"}	348	2021-02-08 04:26:49.161644	2021-02-08 20:49:55.371292	t
625	Cassandra	Miller	{"title": "VP Account Management"}	348	2021-02-08 04:26:49.193505	2021-02-08 20:49:55.852051	t
626	Steve	Hehl	{"title": "Director of Engineering"}	348	2021-02-08 04:26:49.223984	2021-02-08 20:49:56.331816	t
627	Michaela	Lindsay	{"title": "Vice President, Marketplace Development"}	348	2021-02-08 04:26:49.253669	2021-02-08 20:49:56.775477	t
628	D.	Orlando	{"title": "CTO"}	349	2021-02-08 04:27:32.359895	2021-02-08 20:49:57.263175	t
629	Sally	Poblete	{"title": "Founder & CEO"}	349	2021-02-08 04:27:32.391349	2021-02-08 20:49:57.703405	t
630	Bob	Casey	{"title": "CEO"}	350	2021-02-08 04:28:22.788185	2021-02-08 20:49:58.245368	t
632	Corrie	Johnson	{"title": "VP Finance"}	350	2021-02-08 04:28:22.850229	2021-02-08 20:49:59.196354	t
633	Tim	Gu	{"title": "VP Product & Engineering"}	350	2021-02-08 04:28:22.937119	2021-02-08 20:49:59.753	t
634	Aaron	Schumm	{"title": "Founder & CEO"}	351	2021-02-08 04:29:05.79974	2021-02-08 20:50:00.187871	t
635	John	Skovron	{"title": "Chief Technology Officer"}	351	2021-02-08 04:29:05.83252	2021-02-08 20:50:00.627482	t
636	Joe	Pampel	{"title": "VP, Operations & CISO"}	351	2021-02-08 04:29:05.863554	2021-02-08 20:50:01.104708	t
637	David	Sheen	{"title": "Chief Financial Officer"}	351	2021-02-08 04:29:05.907788	2021-02-08 20:50:02.026221	t
639	Alessa	Messineo	{"title": "Full Stack Engineer"}	351	2021-02-08 04:29:05.969816	2021-02-08 20:50:03.499813	t
640	Brad	Svrluga	{"title": "Board Observer"}	351	2021-02-08 04:29:05.999614	2021-02-08 20:50:04.035099	t
641	Anh	Huynh	{"title": "Founder"}	352	2021-02-08 04:29:56.202399	2021-02-08 20:50:04.518642	t
642	Edward	Vesely	{"title": "CMO"}	352	2021-02-08 04:29:56.232675	2021-02-08 20:50:05.067662	t
643	Hemingway	Huynh	{"title": "CTO"}	352	2021-02-08 04:29:56.268493	2021-02-08 20:50:05.800054	t
645	Vrahram	Kadkhodaian	{"title": "CEO"}	352	2021-02-08 04:29:56.332374	2021-02-08 20:50:06.729183	t
646	Jeff	Farnsworth	{"title": "Founder"}	352	2021-02-08 04:29:56.363227	2021-02-08 20:50:07.32901	t
647	William	Green	{"title": "CRO"}	352	2021-02-08 04:29:56.392986	2021-02-08 20:50:07.798503	t
648	Johnny	Stoddard	{"title": "Co-Founder and Chief Data Scientist"}	354	2021-02-08 04:30:41.991262	2021-02-08 20:50:08.26833	t
650	John	Hatfield	{"title": "CTO & Chief Architect"}	354	2021-02-08 04:30:42.054642	2021-02-08 20:50:09.335301	t
651	Queen	C.	{"title": "Co-Founder"}	355	2021-02-08 04:31:18.13156	2021-02-08 20:50:09.805408	t
653	Ben	Leo	{"title": "Co-Founder and CEO"}	355	2021-02-08 04:31:18.197052	2021-02-08 20:50:10.875447	t
654	Bobby	J.	{"title": "Co-Founder and Chairman"}	355	2021-02-08 04:31:18.227007	2021-02-08 20:50:11.683392	t
655	Tom	Kottler	{"title": "CEO and Co-Founder"}	356	2021-02-08 04:32:06.258017	2021-02-08 20:50:12.143426	t
656	Katrina	S.	{"title": "Chief Medical Officer and Co-Founder"}	356	2021-02-08 04:32:06.291784	2021-02-08 20:50:12.683081	t
657	John	Ragland	{"title": "Chief Product and Brand Officer"}	356	2021-02-08 04:32:06.32275	2021-02-08 20:50:13.188921	t
658	Doug	Fulcher	{"title": "VP Technology"}	356	2021-02-08 04:32:06.352531	2021-02-08 20:50:13.660606	t
660	Vishal	Khanna	{"title": "Director of Marketing & Communications"}	356	2021-02-08 04:32:06.412507	2021-02-08 20:50:14.821184	t
661	Antonio	Martins	{"title": "Creative Director"}	356	2021-02-08 04:32:06.454402	2021-02-08 20:50:15.623457	t
662	Eric	simmerman	{"title": "CTO"}	356	2021-02-08 04:32:06.4975	2021-02-08 20:50:16.060217	t
663	Tim	Quinn	{"title": "Founder and CEO"}	358	2021-02-08 04:32:58.173599	2021-02-08 20:50:16.577271	t
664	Brian	Corcoran	{"title": "President and Co-Founder"}	358	2021-02-08 04:32:58.205513	2021-02-08 20:50:17.047283	t
666	Phil	Hui-Bon-Hoa	{"title": "CEO and Founder"}	359	2021-02-08 04:33:31.085662	2021-02-08 20:50:17.927117	t
667	Patrick	Eggen	{"title": "Board Observer"}	359	2021-02-08 04:33:31.14016	2021-02-08 20:50:18.376324	t
668	Megh	Gupta	{"title": "Board Observer"}	359	2021-02-08 04:33:31.220936	2021-02-08 20:50:18.861181	t
669	Crystal	Icenhour	{"title": "CEO"}	360	2021-02-08 04:34:12.317641	2021-02-08 20:50:19.696853	t
670	Elizabeth	P.	{"title": "Chief Operating Officer"}	360	2021-02-08 04:34:12.350577	2021-02-08 20:50:20.165926	t
671	Alvin	Chen	{"title": "CTO"}	360	2021-02-08 04:34:12.382672	2021-02-08 20:50:20.793883	t
673	Paul	Molloy	{"title": "President & CEO"}	361	2021-02-08 04:34:54.363193	2021-02-08 20:50:21.751113	t
674	Ken	Beres	{"title": "Chief Commercial Officer"}	361	2021-02-08 04:34:54.398303	2021-02-08 20:50:22.191196	t
675	David	Bigg	{"title": "Director of Sales"}	361	2021-02-08 04:34:54.448451	2021-02-08 20:50:22.633191	t
676	Stephen	Bumb	{"title": "VP of Global Marketing"}	361	2021-02-08 04:34:54.481829	2021-02-08 20:50:23.106094	t
678	George	Daddis	{"title": "President & CEO"}	362	2021-02-08 04:35:31.516026	2021-02-08 20:50:24.176765	t
679	Greg	Overholtzer	{"title": "Chief Financial Officer"}	362	2021-02-08 04:35:31.550114	2021-02-08 20:50:24.695961	t
680	Johnny	Wang	{"title": "Managing Director, Omni-ID China"}	362	2021-02-08 04:35:31.580452	2021-02-08 20:50:25.155454	t
681	Dave	Hewett	{"title": "Quality and Manufacturing Director"}	362	2021-02-08 04:35:31.611223	2021-02-08 20:50:25.606928	t
682	René	Wermke	{"title": "RF System Application Manager"}	362	2021-02-08 04:35:31.665864	2021-02-08 20:50:26.19493	t
683	Thomas	C.	{"title": "President and CEO"}	362	2021-02-08 04:35:31.696012	2021-02-08 20:50:26.662045	t
685	Tony	Kington	{"title": "Managing Director, Europe"}	362	2021-02-08 04:35:31.754921	2021-02-08 20:50:27.65374	t
686	Talia	Mashiach	{"title": "Founder & CEO"}	363	2021-02-08 04:36:16.800034	2021-02-08 20:50:28.205438	t
687	Trista	Hannan	{"title": "VP of Client Solutions"}	363	2021-02-08 04:36:16.832113	2021-02-08 20:50:28.704705	t
688	Christi	Zeck	{"title": "Chief Technology Officer"}	363	2021-02-08 04:36:16.863284	2021-02-08 20:50:29.204567	t
689	Sue	Buckles	{"title": "VP of Development"}	363	2021-02-08 04:36:16.894345	2021-02-08 20:50:29.726666	t
691	Chris	Yoo	{"title": "Director of Finance"}	363	2021-02-08 04:36:16.956843	2021-02-08 20:50:30.822011	t
692	Tevi	Hirschhorn	{"title": "Director of Design"}	363	2021-02-08 04:36:16.990554	2021-02-08 20:50:31.31729	t
693	Dick	Zhang	{"title": "Chief Executive Officer"}	364	2021-02-08 04:36:56.108935	2021-02-08 20:50:31.788157	t
694	Andy	Wu	{"title": "Founding Director and Investor"}	364	2021-02-08 04:36:56.141993	2021-02-08 20:50:32.255285	t
695	Barry	Rabkin	{"title": "Chief Marketing Officer"}	364	2021-02-08 04:36:56.171836	2021-02-08 20:50:32.753421	t
696	Frances	Stephen	{"title": "VP of Finance"}	364	2021-02-08 04:36:56.202499	2021-02-08 20:50:33.599261	t
697	David	Hattan	{"title": "Vice President of Sales"}	364	2021-02-08 04:36:56.233495	2021-02-08 20:50:34.159379	t
699	Chris	Macomber	{"title": "CEO"}	365	2021-02-08 04:37:26.284812	2021-02-08 20:50:35.212116	t
700	Eyal	Susser	{"title": "VP of Development and Integration"}	365	2021-02-08 04:37:26.316637	2021-02-08 20:50:35.685016	t
701	Barry	Rowe	{"title": "VP of Research"}	365	2021-02-08 04:37:26.348065	2021-02-08 20:50:36.14378	t
702	Alex	Daly	{"title": "Chairman"}	365	2021-02-08 04:37:26.380346	2021-02-08 20:50:36.588094	t
703	Bill	Halpenny	{"title": "Co-Founder"}	365	2021-02-08 04:37:26.435054	2021-02-08 20:50:37.07703	t
704	Toufi	Saliba	{"title": "CTO"}	365	2021-02-08 04:37:26.464508	2021-02-08 20:50:37.550637	t
706	Michael	Rothman	{"title": "Chief Science Officer"}	366	2021-02-08 04:38:03.383756	2021-02-08 20:50:38.467921	t
707	Diane	Hayes	{"title": "Co-Founder and Presidnet"}	368	2021-02-08 04:38:48.071188	2021-02-08 20:50:38.934503	t
708	Janet	Kosloff	{"title": "Co-Founder and CEO"}	368	2021-02-08 04:38:48.10467	2021-02-08 20:50:39.464886	t
709	Tom	Lancaster	{"title": "Vice President of Software Engineering"}	368	2021-02-08 04:38:48.134899	2021-02-08 20:50:39.89667	t
711	Frank	Vezzuto	{"title": "Senior Vice President ofBusiness Development"}	368	2021-02-08 04:38:48.19945	2021-02-08 20:50:40.879377	t
712	Caleb	Costa	{"title": "Vice President,Client Services"}	368	2021-02-08 04:38:48.232154	2021-02-08 20:50:41.364915	t
713	Alan	B.	{"title": "CFO"}	369	2021-02-08 04:39:18.398811	2021-02-08 20:50:41.794397	t
714	Jonathan	Silverberg	{"title": "GM, International"}	369	2021-02-08 04:39:18.434162	2021-02-08 20:50:42.257885	t
715	Greg	Swayne	{"title": "Chairman & President, Board of Directors"}	369	2021-02-08 04:39:18.468189	2021-02-08 20:50:42.709965	t
716	Michael	Cascone	{"title": "CEO"}	369	2021-02-08 04:39:18.500522	2021-02-08 20:50:43.131252	t
718	Anne	Hogarty	{"title": "CEO"}	372	2021-02-08 04:40:03.947045	2021-02-08 20:50:44.546566	t
719	Joshua	Klein	{"title": "Co-Founder and Chief Medical Officer"}	372	2021-02-08 04:40:03.978602	2021-02-08 20:50:45.21771	t
721	Bill	McConnell	{"title": "Chief Security and Privacy Officer"}	375	2021-02-08 04:41:29.672691	2021-02-08 20:50:46.614822	t
722	Jon	Barnhouse	{"title": "VP, Engineering"}	375	2021-02-08 04:41:29.702984	2021-02-08 20:50:47.072556	t
723	Stephanie	Cox	{"title": "VP, Sales and Marketing"}	375	2021-02-08 04:41:29.732235	2021-02-08 20:50:47.523404	t
725	Arthur	S.	{"title": "CEO & Co-Founder"}	377	2021-02-08 04:42:11.320432	2021-02-08 20:50:48.762124	t
726	Doug	Pfiffner	{"title": "Chief Technology Officer"}	377	2021-02-08 04:42:11.351666	2021-02-08 20:50:49.411729	t
727	Mark	Khandjian	{"title": "COO"}	377	2021-02-08 04:42:11.383424	2021-02-08 20:50:49.889173	t
728	Rebecca	Power	{"title": "Director of Marketing"}	377	2021-02-08 04:42:11.414983	2021-02-08 20:50:50.489029	t
729	Tony	Hughes	{"title": "Director, Solutions and Partners"}	377	2021-02-08 04:42:11.444914	2021-02-08 20:50:50.913123	t
730	Gillan	Taddune	{"title": "CEO"}	378	2021-02-08 04:43:00.344349	2021-02-08 20:50:51.388074	t
731	Ron	Lee	{"title": "Co-Founder, CTO & CMO"}	381	2021-02-08 04:43:50.036728	2021-02-08 20:50:52.014413	t
733	Cara	Posey	{"title": "Director of Marketing"}	381	2021-02-08 04:43:50.105828	2021-02-08 21:37:55.782308	t
734	Kurt	Peterson	{"title": "Director of Sales"}	381	2021-02-08 04:43:50.137056	2021-02-08 21:38:26.325773	t
735	William	Knapp	{"title": "CEO"}	381	2021-02-08 04:43:50.192641	2021-02-08 21:38:56.932912	t
736	Rick	Heine	{"title": "Founder & CEO"}	382	2021-02-08 04:44:36.7264	2021-02-08 21:39:27.492076	t
737	Lain	Gutierrez	{"title": "CEO"}	383	2021-02-08 04:45:19.450912	2021-02-08 21:39:57.979782	t
738	Matt	Mustaro	{"title": "VP, Credit Administration"}	383	2021-02-08 04:45:19.487464	2021-02-08 21:40:28.564064	t
740	Mrunal	Desai	{"title": "CEO"}	385	2021-02-08 04:46:02.87444	2021-02-08 21:41:29.735238	t
741	Mahendra	Patel	{"title": "Co-Founder and Director of India Operations"}	385	2021-02-08 04:46:02.904795	2021-02-08 21:42:00.285073	t
742	Ratan	Hodar	{"title": "Chief Technology Officer"}	385	2021-02-08 04:46:02.949204	2021-02-08 21:42:30.883045	t
743	Yogesh	Thakkar	{"title": "CFO"}	385	2021-02-08 04:46:02.988357	2021-02-08 21:43:01.424483	t
744	Eric	Apfelbach	{"title": "President & CEO"}	387	2021-02-08 04:58:00.778586	2021-02-08 21:43:32.265606	t
745	David	DiPasquale	{"title": "CRO"}	387	2021-02-08 04:58:00.809149	2021-02-08 21:44:02.932029	t
746	Wade	Maleck	{"title": "CFO"}	387	2021-02-08 04:58:00.850474	2021-02-08 21:44:33.665026	t
748	Charles	McKinney	{"title": "VP Marketing"}	388	2021-02-08 04:58:44.506023	2021-02-08 21:51:38.316265	t
749	Gordon	P.	{"title": "Chairman & Founder"}	388	2021-02-08 04:58:44.536649	2021-02-08 21:52:08.81196	t
750	Eric	M.	{"title": "CTO"}	388	2021-02-08 04:58:44.566249	2021-02-08 21:52:39.40004	t
751	Daniel	E.	{"title": "CEO"}	388	2021-02-08 04:58:44.61407	2021-02-08 21:53:09.959492	t
752	Robert	E.	{"title": "COO & President"}	388	2021-02-08 04:58:44.643925	2021-02-08 21:53:40.441674	t
754	Scott	McCorkle	{"title": "Executive Chairman"}	389	2021-02-08 04:59:33.629568	2021-02-08 21:54:42.292233	t
755	James	Cutillo	{"title": "Executive vice-president of strategy sales and enterprise"}	389	2021-02-08 04:59:33.660205	2021-02-08 21:55:12.840755	t
756	Aaron	Berkey	{"title": "Vice President"}	389	2021-02-08 04:59:33.693298	2021-02-08 21:55:43.316746	t
757	Anna	Yen	{"title": "Co-Founder"}	390	2021-02-08 05:00:17.822977	2021-02-08 21:56:13.851576	t
758	Kim	Keller	{"title": "EVP Sales"}	393	2021-02-08 05:01:05.764355	2021-02-08 21:56:44.353783	t
759	Peter	Stilson	{"title": "President and CEO"}	393	2021-02-08 05:01:05.795627	2021-02-08 21:57:14.969416	t
761	Michael	Faye	{"title": "Co-founder and President"}	394	2021-02-08 05:01:38.222662	2021-02-08 21:58:16.707604	t
762	Paul	Niehaus	{"title": "Co-Founder"}	394	2021-02-08 05:01:38.252885	2021-02-08 21:58:47.279305	t
763	Rohit	Wanchoo	{"title": "Co-Founder, Director"}	394	2021-02-08 05:01:38.281782	2021-02-08 21:59:18.106139	t
764	John	Cowan	{"title": "Co-Founder & Chief Executive Officer"}	395	2021-02-08 05:02:17.137591	2021-02-08 21:59:48.628246	t
765	Douglas	Steele	{"title": "Chief Operating Officer"}	395	2021-02-08 05:02:17.16967	2021-02-08 22:00:19.215497	t
767	Tree	McGlown	{"title": "Co-Founder & CRO"}	396	2021-02-08 05:03:05.034298	2021-02-08 22:01:22.533104	t
768	Jeremy	Haile	{"title": "CEO and Founder"}	396	2021-02-08 05:03:05.064498	2021-02-08 22:01:53.065388	t
769	Deepesh	Chourey	{"title": "Co-Founder & Head of Engineering"}	397	2021-02-08 05:03:46.905459	2021-02-08 22:02:23.797748	t
770	Darlene	Mann	{"title": "Co-Founder, President & COO"}	397	2021-02-08 05:03:46.935498	2021-02-08 22:02:54.447615	t
771	Jeff	Freund	{"title": "Founder & CEO"}	397	2021-02-08 05:03:46.964783	2021-02-08 22:03:24.92305	t
772	Garrett	Wu	{"title": "Founder and CTO"}	398	2021-02-08 05:04:26.039318	2021-02-08 22:03:55.570607	t
774	Amit	Nithian	{"title": "Member of Technical Staff"}	398	2021-02-08 05:04:26.100826	2021-02-08 22:04:56.58063	t
775	Bzur	Haun	{"title": "CEO"}	399	2021-02-08 05:04:58.603044	2021-02-08 22:05:27.202914	t
777	Mani	Zarrehparvar	{"title": "President"}	399	2021-02-08 05:04:58.66502	2021-02-08 22:06:28.327679	t
778	Venkat	Prodhuturi	{"title": "Vice President, Product and Engineering, Director, Product Development, Development Manager"}	399	2021-02-08 05:04:58.696749	2021-02-08 22:06:58.82673	t
779	Scott	Peterson	{"title": "Director, Production Operations & Services"}	399	2021-02-08 05:04:58.737884	2021-02-08 22:07:29.366456	t
780	David	Sardana	{"title": "Board Observer"}	399	2021-02-08 05:04:58.789721	2021-02-08 22:07:59.856147	t
781	Jason	Nadaf	{"title": "Founder & CEO"}	400	2021-02-08 05:05:38.793498	2021-02-08 22:08:30.737982	t
782	Chris	Labatt-Simon	{"title": "Executive Vice President of Operations and Finance"}	400	2021-02-08 05:05:38.825285	2021-02-08 22:09:01.717875	t
783	Ryan	Witt	{"title": "VP of Engineering"}	400	2021-02-08 05:05:38.8568	2021-02-08 22:09:32.264766	t
784	Brian	Barr	{"title": "Sales Engineer"}	400	2021-02-08 05:05:38.887436	2021-02-08 22:10:02.835285	t
785	Brian	Barr	{"title": "Customer Success"}	400	2021-02-08 05:05:38.919459	2021-02-08 22:10:33.35205	t
786	Ben	Omesi	{"title": "Senior Sales Engineer"}	400	2021-02-08 05:05:38.951262	2021-02-08 22:11:04.252562	t
787	Derek	DeMeo	{"title": "EVP, Sales & Business Development"}	400	2021-02-08 05:05:38.980151	2021-02-08 22:11:34.837622	t
788	Marty	Siewert	{"title": "Chief Revenue Officer"}	401	2021-02-08 05:06:13.894154	2021-02-08 22:12:05.347313	t
789	Josh	Bulgin	{"title": "VP of Mobile"}	401	2021-02-08 05:06:13.924595	2021-02-08 22:12:36.104346	t
791	Mike	Caffey	{"title": "VP of Engineering"}	401	2021-02-08 05:06:13.986861	2021-02-08 22:13:37.265275	t
793	Rand	Arnold	{"title": "Lead Software Engineer"}	401	2021-02-08 05:06:14.071993	2021-02-08 22:14:38.365088	t
794	Gregg	Hammann	{"title": "Chairman, CEO, and President"}	405	2021-02-08 05:07:10.504616	2021-02-08 22:15:09.097379	t
795	Ali	Ahmad	{"title": "Chief Operating Officer"}	405	2021-02-08 05:07:10.537522	2021-02-08 22:15:39.631959	t
796	David	Lenzen	{"title": "CMO"}	405	2021-02-08 05:07:10.569855	2021-02-08 22:16:10.438105	t
797	Patrick	Tierney	{"title": "CFO"}	405	2021-02-08 05:07:10.599497	2021-02-08 22:16:40.996187	t
798	Jon	Howes	{"title": "CTO"}	405	2021-02-08 05:07:10.630436	2021-02-09 00:37:04.73079	t
799	Peter	Baek	{"title": "CSO"}	408	2021-02-08 05:07:42.575452	2021-02-09 00:37:20.30231	t
801	Ian	Kwon	{"title": "COO"}	408	2021-02-08 05:07:42.636994	2021-02-09 00:37:51.532272	t
802	Jeff	Gale	{"title": "Founder & CEO"}	410	2021-02-08 05:08:26.199727	2021-02-09 00:38:07.087965	t
803	John	Sharps	{"title": "Co-Founder & Co-Owner"}	412	2021-02-08 05:09:12.598005	2021-02-09 00:38:22.694377	t
804	Laurance	Ranta	{"title": "CEO"}	412	2021-02-08 05:09:12.641231	2021-02-09 00:38:38.162355	t
806	James	Harringman	{"title": "Co-Founder & COO"}	413	2021-02-08 05:09:48.637241	2021-02-09 00:39:09.188457	t
807	Chris	Perram	{"title": "CEO"}	414	2021-02-08 05:10:30.566314	2021-02-09 00:39:24.682203	t
808	Ben	Lundin	{"title": "CEO / Co-Founder"}	415	2021-02-08 05:11:07.565113	2021-02-09 00:39:40.256265	t
809	Melanie	Silverman	{"title": "Chief Clinical Officer"}	415	2021-02-08 05:11:07.594874	2021-02-09 00:39:57.121268	t
810	George	Brandes	{"title": "COO / Co-Founder"}	415	2021-02-08 05:11:07.626449	2021-02-09 00:40:12.597127	t
812	Lacey	Loehr	{"title": "Director Of Business Development"}	415	2021-02-08 05:11:07.705558	2021-02-09 00:40:43.65798	t
813	Katelyn	McAdams	{"title": "Director, Programs and Opreations"}	415	2021-02-08 05:11:07.735212	2021-02-09 00:40:59.18443	t
814	Scott	Hemmeter	{"title": "Founder and CEO"}	419	2021-02-08 05:12:08.407246	2021-02-09 00:41:14.701724	t
815	Jason	Venable	{"title": "CTO"}	419	2021-02-08 05:12:08.43789	2021-02-09 00:41:30.285306	t
816	Eric	Baird	{"title": "VP Channel Development"}	419	2021-02-08 05:12:08.472139	2021-02-09 00:41:45.744344	t
817	Mark	Baird	{"title": "VP Sales"}	419	2021-02-08 05:12:08.501131	2021-02-09 00:42:01.384688	t
819	Scott	Cotter	{"title": "Vice President of Marketing"}	419	2021-02-08 05:12:08.582304	2021-02-09 00:42:32.436292	t
820	Stephanie	Thornton	{"title": "Director of Alliances"}	419	2021-02-08 05:12:08.612079	2021-02-09 00:42:48.06159	t
821	Ben	Gibbs	{"title": "Director of Solution Engineering"}	419	2021-02-08 05:12:08.642263	2021-02-09 00:43:03.767826	t
822	Vedad	Kajtaz	{"title": "Head of Software Development"}	420	2021-02-08 05:12:51.597723	2021-02-09 00:43:19.783557	t
824	Shawn	Convery	{"title": "CEO & Founder"}	420	2021-02-08 05:12:51.659282	2021-02-09 00:43:51.454571	t
825	Ulrich	Egouy	{"title": "Strategic projects"}	420	2021-02-08 05:12:51.692037	2021-02-09 00:44:06.98088	t
826	Michael	Composto	{"title": "Chief Executive Officer & Co-Founder"}	421	2021-02-08 05:13:35.489634	2021-02-09 00:44:22.506192	t
827	Doug	Anderson	{"title": "Founder"}	421	2021-02-08 05:13:35.519893	2021-02-09 00:44:38.227982	t
828	Amitay	Kalmar	{"title": "Co-founder and CEO"}	424	2021-02-08 05:14:25.662721	2021-02-09 00:44:53.769253	t
829	Hasan	Oğuz	{"title": "Business Development"}	424	2021-02-08 05:14:25.694105	2021-02-09 00:45:09.295378	t
830	Otkrist	Gupta	{"title": "Vice President of Data Science"}	424	2021-02-08 05:14:25.724568	2021-02-09 00:45:24.818815	t
831	Dan	Raviv	{"title": "Co-Founder and CTO"}	424	2021-02-08 05:14:25.756924	2021-02-09 00:45:40.289773	t
833	Scott	Chesrown	{"title": "Board Observer"}	424	2021-02-08 05:14:25.817659	2021-02-09 00:46:12.162968	t
834	Partha	Sen	{"title": "Founder & CEO"}	425	2021-02-08 05:15:05.670625	2021-02-09 00:46:27.704093	t
835	Bill	Wiemann	{"title": "Co-Founder/President"}	426	2021-02-08 05:15:44.503562	2021-02-09 00:46:43.214367	t
836	Keith	Eddleman	{"title": "CTO"}	426	2021-02-08 05:15:44.533862	2021-02-09 00:46:58.713842	t
837	Zac	Hornsey	{"title": "Director, Platform Development"}	426	2021-02-08 05:15:44.564524	2021-02-09 00:47:14.225972	t
838	Matt	Bentley	{"title": "Co-Founder & COO"}	426	2021-02-08 05:15:44.596899	2021-02-09 00:47:29.775248	t
840	Paul	V.	{"title": "Founder & Chairman"}	427	2021-02-08 05:16:27.53936	2021-02-09 00:48:00.774116	t
841	Michael	D.	{"title": "Executive Director"}	427	2021-02-08 05:16:27.572608	2021-02-09 00:48:16.299069	t
842	Malek	Bohsali	{"title": "Chief Financial Officer"}	427	2021-02-08 05:16:27.601725	2021-02-09 00:48:31.829834	t
843	Rick	Kabra	{"title": "CEO"}	428	2021-02-08 05:17:04.442837	2021-02-09 00:48:47.392301	t
844	Pankaj	Gupta	{"title": "CTO"}	428	2021-02-08 05:17:04.474943	2021-02-09 00:49:02.984647	t
845	Joe	Terry	{"title": "Co-founder & CTO"}	429	2021-02-08 05:17:41.342819	2021-02-09 00:49:18.491772	t
847	Anthony	Caudill	{"title": "Manager"}	429	2021-02-08 05:17:41.405919	2021-02-09 00:49:49.516973	t
848	Joe	Romano	{"title": "CEO"}	430	2021-02-08 05:18:12.306429	2021-02-09 00:50:05.042311	t
849	Jon	Slangerup	{"title": "Chairman & CEO"}	431	2021-02-08 05:19:00.158233	2021-02-09 00:50:20.539211	t
850	Yedidia	(Didi)	{"title": "Co-Founder & Chairman"}	432	2021-02-08 05:19:37.498447	2021-02-09 00:50:36.061181	t
851	Gabriela	Cezar	{"title": "Co-Founder"}	435	2021-02-08 05:20:15.168924	2021-02-09 00:50:51.684907	t
852	Elizabeth	L.	{"title": "CEO"}	435	2021-02-08 05:20:15.199572	2021-02-09 00:51:07.238188	t
854	Todd	Liebbe	{"title": "President & CEO"}	436	2021-02-08 05:21:07.205962	2021-02-09 00:51:38.55032	t
855	John	Worrall	{"title": "CEO"}	437	2021-02-08 05:21:52.019517	2021-02-09 00:51:54.065101	t
856	John	Steven	{"title": "CTO"}	437	2021-02-08 05:21:52.050347	2021-02-09 00:52:09.518087	t
857	Dave	Howell	{"title": "VP of Marketing"}	437	2021-02-08 05:21:52.082145	2021-02-09 00:52:25.000358	t
859	Joanne	Godfrey	{"title": "Director of Product Marketing"}	437	2021-02-08 05:21:52.156936	2021-02-09 00:52:56.609321	t
860	Christian	Branden	{"title": "Senior Vice President Of Engineering & Product Management"}	437	2021-02-08 05:21:52.18776	2021-02-09 00:53:12.153526	t
861	Chris	Riley	{"title": "Senior Vice President, Sales"}	437	2021-02-08 05:21:52.219818	2021-02-09 00:53:27.676275	t
1151	Tyler	Robertson	{"title": "CEO"}	571	2021-02-08 14:09:24.281834	2021-02-09 02:31:26.015647	t
863	Stephen	D.	{"title": "President"}	438	2021-02-08 05:22:30.228159	2021-02-09 00:53:58.734127	t
864	David	Stone	{"title": "Founder and CEO"}	439	2021-02-08 05:23:11.170249	2021-02-09 00:54:14.254962	t
865	Shankar	Balasubramanian	{"title": "CTO"}	440	2021-02-08 05:23:49.913703	2021-02-09 00:54:29.765131	t
867	Kelly	Sajid	{"title": "Director of Customer Success"}	441	2021-02-08 05:24:24.051907	2021-02-09 00:55:01.013349	t
868	Paul	Noone	{"title": "CEO"}	441	2021-02-08 05:24:24.082767	2021-02-09 00:55:16.573763	t
869	Eric	Sengbusch	{"title": "CEO"}	442	2021-02-08 05:25:06.025592	2021-02-09 00:55:32.076204	t
870	Maury	Magids	{"title": "Founder & President"}	443	2021-02-08 05:25:41.931111	2021-02-09 00:55:47.536184	t
871	Elliott	Fouts	{"title": "CTO"}	444	2021-02-08 05:26:23.659261	2021-02-09 00:56:03.024273	t
872	Amy	Ankrum	{"title": "President & CEO"}	444	2021-02-08 05:26:23.688459	2021-02-09 00:56:18.5423	t
874	Kristen	Hare	{"title": "Reporter"}	445	2021-02-08 05:27:11.651969	2021-02-09 00:56:49.646886	t
875	Katie	Hawkins-Gaar	{"title": "Digital Innovation Faculty"}	445	2021-02-08 05:27:11.682896	2021-02-09 00:57:05.444728	t
876	John	Mahlmeister	{"title": "Co-Founder and Chief Operating Officer"}	446	2021-02-08 05:27:42.522919	2021-02-09 00:57:21.053226	t
877	Jon	Boyle	{"title": "VP Products"}	447	2021-02-08 05:28:20.342312	2021-02-09 00:57:36.553473	t
879	Alex	Hung	{"title": "Lead Developer"}	447	2021-02-08 05:28:20.403246	2021-02-09 00:58:07.525661	t
880	Dan	Schultz	{"title": "Senior Developer"}	447	2021-02-08 05:28:20.43365	2021-02-09 00:58:23.032446	t
881	Matthew	Case	{"title": "Site Reliability Engineer"}	447	2021-02-08 05:28:20.463159	2021-02-09 00:58:38.513999	t
882	Todd	Federman	{"title": "Board of Directors"}	447	2021-02-08 05:28:20.492849	2021-02-09 00:58:54.674105	t
883	Alex	Zeig	{"title": "CEO"}	449	2021-02-08 05:29:04.864889	2021-02-09 00:59:10.204716	t
884	Jeff	Peres	{"title": "Co-Founder and CEO"}	450	2021-02-08 05:29:38.194632	2021-02-09 00:59:25.722543	t
885	Michael	Smith	{"title": "COO"}	450	2021-02-08 05:29:38.225843	2021-02-09 00:59:41.267843	t
887	Clark	Jernigan	{"title": "CEO"}	453	2021-02-08 05:31:12.582897	2021-02-09 01:00:12.332259	t
888	Dale	Harrison	{"title": "CTO"}	453	2021-02-08 05:31:12.612006	2021-02-09 01:00:27.877261	t
889	Vernon	Tirey	{"title": "Founder & CEO"}	454	2021-02-08 05:31:58.958955	2021-02-09 01:00:43.419619	t
890	Jamshed	Khan	{"title": "CTO"}	454	2021-02-08 05:31:58.993289	2021-02-09 01:00:58.934016	t
891	John	Caruso	{"title": "Vice President"}	454	2021-02-08 05:31:59.024168	2021-02-09 01:01:14.47938	t
893	Sean	O'Leary	{"title": "CEO"}	456	2021-02-08 05:33:27.164095	2021-02-09 01:01:46.272118	t
894	Cody	Broderick	{"title": "Founder & CEO"}	457	2021-02-08 05:34:15.376078	2021-02-09 01:02:01.8339	t
895	Katherine	Rosen	{"title": "Vice President Enterprise Solutions"}	457	2021-02-08 05:34:15.408684	2021-02-09 01:02:17.325724	t
896	Tim	Hunt	{"title": "CTO"}	457	2021-02-08 05:34:15.437254	2021-02-09 01:02:32.87075	t
897	Maurice	van	{"title": "Director & COO"}	457	2021-02-08 05:34:15.468401	2021-02-09 01:02:48.356391	t
898	Peter	Smith	{"title": "President"}	457	2021-02-08 05:34:15.497396	2021-02-09 01:25:47.87662	t
899	Tim	Hunt	{"title": "CTO"}	457	2021-02-08 05:34:15.526882	2021-02-09 01:26:03.453703	t
901	Bill	Johnson	{"title": "Founder , President & CEO"}	460	2021-02-08 05:36:29.978653	2021-02-09 01:26:34.736394	t
902	Kim	Glaze	{"title": "VP of Client Success"}	460	2021-02-08 05:36:30.009092	2021-02-09 01:26:50.227435	t
903	Andrew	Carlson	{"title": "VP of Engineering"}	460	2021-02-08 05:36:30.039383	2021-02-09 01:27:05.768289	t
904	Jeff	Lackey	{"title": "President & COO"}	460	2021-02-08 05:36:30.068758	2021-02-09 01:27:21.291691	t
905	Michael	Ross	{"title": "CEO"}	463	2021-02-08 05:37:44.46182	2021-02-09 01:27:36.858362	t
907	Keston	Robinson	{"title": "Co-Founder & CEO"}	465	2021-02-08 05:38:36.158533	2021-02-09 01:28:07.836368	t
908	Daniel	Weekley	{"title": "Co-Founder & CFO"}	465	2021-02-08 05:38:36.191526	2021-02-09 01:28:23.380366	t
909	Ryan	Krantz	{"title": "COO"}	465	2021-02-08 05:38:36.221179	2021-02-09 01:28:38.869679	t
910	Travis	Hevelone	{"title": "Founder & CEO"}	466	2021-02-08 05:39:08.288302	2021-02-09 01:28:54.400679	t
912	Eric	Leftwich	{"title": "Chief Revenue Officer"}	466	2021-02-08 05:39:08.34701	2021-02-09 01:29:25.40942	t
913	Kurt	Kraiger	{"title": "PRINCIPAL PSYCHOLOGIST"}	466	2021-02-08 05:39:08.375624	2021-02-09 01:29:40.974484	t
914	Sean	Morham	{"title": "Co-founder and Board Member"}	467	2021-02-08 05:39:54.523037	2021-02-09 01:29:56.467359	t
915	James	(Jim)	{"title": "Co-Founder, President, CEO & Board Member"}	469	2021-02-08 05:40:41.048388	2021-02-09 01:30:11.994107	t
916	Jack	Hill	{"title": "Co-Founder, Board Member, COO/CFO"}	469	2021-02-08 05:40:41.081155	2021-02-09 01:30:27.488305	t
917	Lowell	A.	{"title": "Co Founder"}	469	2021-02-08 05:40:41.112179	2021-02-09 01:30:42.976405	t
919	Michael	Haase	{"title": "Founder & Partner"}	470	2021-02-08 05:41:18.945217	2021-02-09 01:31:14.756706	t
920	Frank	Powell	{"title": "Partner"}	470	2021-02-08 05:41:18.986354	2021-02-09 01:31:30.3752	t
921	Renwick	Congdon	{"title": "Founder & CEO"}	471	2021-02-08 05:41:59.275582	2021-02-09 01:31:45.837579	t
922	Bill	Yaman	{"title": "President & Chief Revenue Officer"}	471	2021-02-08 05:41:59.308402	2021-02-09 01:32:01.372732	t
923	Gudmundur	Heidarsson	{"title": "CEO"}	473	2021-02-08 05:42:41.448555	2021-02-09 01:32:16.918966	t
924	Gabe	Farrell	{"title": "CFO"}	473	2021-02-08 05:42:41.481437	2021-02-09 01:32:32.452541	t
926	Tony	Patti	{"title": "VP Deliverability and Privacy Compliance"}	473	2021-02-08 05:42:41.55117	2021-02-09 01:33:03.740366	t
927	John	Landsman	{"title": "Director of Strategy & Analytics"}	473	2021-02-08 05:42:41.583283	2021-02-09 01:33:19.287794	t
928	Rose	Barnsley	{"title": "Director of Sales"}	473	2021-02-08 05:42:41.616341	2021-02-09 01:33:35.082721	t
929	Dave	Martin	{"title": "Senior Engineering Manager"}	473	2021-02-08 05:42:41.647879	2021-02-09 01:33:50.543237	t
930	Wayne	Lam	{"title": "President"}	474	2021-02-08 05:43:23.209127	2021-02-09 01:34:06.054939	t
932	Wai	Lam	{"title": "Chief Technology Officer"}	474	2021-02-08 05:43:23.274885	2021-02-09 01:34:37.114459	t
933	James	Zhang	{"title": "Chief Financial Officer, VP of China operations"}	474	2021-02-08 05:43:23.30979	2021-02-09 01:34:52.63907	t
934	Damon	Kosofsky	{"title": "VP Staffing"}	475	2021-02-08 05:44:01.563516	2021-02-09 01:35:08.153449	t
936	Keith	Katz	{"title": "Vice President Of Technical Services"}	475	2021-02-08 05:44:01.62827	2021-02-09 01:35:39.138038	t
937	Ilan	Raab	{"title": "Co-founder and VP Engineering"}	475	2021-02-08 05:44:01.659744	2021-02-09 01:35:54.762349	t
938	Jayaram	Bhat	{"title": "Co-Founder and CEO"}	475	2021-02-08 05:44:01.691784	2021-02-09 01:36:10.301801	t
939	Dan	Morris	{"title": "Vice President of Sales"}	475	2021-02-08 05:44:01.725272	2021-02-09 01:36:25.849868	t
941	Nathalie	Criou	{"title": "VP of Product"}	475	2021-02-08 05:44:01.792013	2021-02-09 01:36:57.323267	t
942	Chuck	Doyle	{"title": "Founder and Managing Director"}	477	2021-02-08 05:44:54.703247	2021-02-09 01:37:12.912336	t
943	Tonya	Mallory	{"title": "Co-Founder"}	478	2021-02-08 05:45:35.019708	2021-02-09 01:37:28.511904	t
944	Peter	Bernard	{"title": "CEO & Co-Founder"}	478	2021-02-08 05:45:35.052745	2021-02-09 01:37:44.10668	t
945	Clinton	B.	{"title": "President & CEO"}	480	2021-02-08 05:46:23.88567	2021-02-09 01:37:59.726377	t
947	David	Spaulding	{"title": "VP, Customer Success"}	481	2021-02-08 05:47:06.000736	2021-02-09 01:38:30.77793	t
948	Mark	Smith	{"title": "President"}	481	2021-02-08 05:47:06.03331	2021-02-09 01:38:46.864646	t
949	Joshua	Berkowitz	{"title": "VP, Product"}	481	2021-02-08 05:47:06.066322	2021-02-09 01:39:02.369401	t
950	James	Allum	{"title": "Managing Director, EMEA"}	481	2021-02-08 05:47:06.132013	2021-02-09 01:39:18.415399	t
951	Kerri	Antles	{"title": "Chief Financial Officer"}	481	2021-02-08 05:47:06.175163	2021-02-09 01:39:33.913618	t
952	Neil	Skilling	{"title": "Chief Technology Officer"}	481	2021-02-08 05:47:06.207711	2021-02-09 01:39:49.550435	t
953	Drew	Leakey	{"title": "CEO"}	482	2021-02-08 05:47:49.288028	2021-02-09 01:40:05.131351	t
955	Matt	Ferguson	{"title": "Director of Advertising Operations"}	482	2021-02-08 05:47:49.35737	2021-02-09 01:40:36.142714	t
956	Justin	Pressly	{"title": "Senior Account Manager"}	482	2021-02-08 05:47:49.387636	2021-02-09 01:40:52.313227	t
957	Jeff	Cook	{"title": "Vice President of Sales"}	482	2021-02-08 05:47:49.453501	2021-02-09 01:41:08.011435	t
958	Jenna	Jurewicz	{"title": "Senior Account Manager"}	482	2021-02-08 05:47:49.489841	2021-02-09 01:41:23.529431	t
959	Derek	Vorherr	{"title": "Recruiter"}	482	2021-02-08 05:47:49.522189	2021-02-09 01:41:39.058898	t
960	Eric	Dinger	{"title": "CEO and Co-Founder"}	483	2021-02-08 05:48:31.130447	2021-02-09 01:41:54.874846	t
962	Jessica	Hamilton	{"title": "CFO"}	484	2021-02-08 05:49:09.613378	2021-02-09 01:42:26.032694	t
963	Brian	Caskey	{"title": "Chief Marketing Officer"}	484	2021-02-08 05:49:09.65049	2021-02-09 01:42:41.594369	t
964	Adam	Chickman	{"title": "Sales Director"}	484	2021-02-08 05:49:09.690399	2021-02-09 01:42:57.079543	t
965	Jim	Tobin	{"title": "President"}	485	2021-02-08 05:49:54.375237	2021-02-09 01:43:12.694202	t
966	EDWARD	LEONARD	{"title": "CFO"}	487	2021-02-08 05:50:37.57161	2021-02-09 01:43:28.174418	t
968	Ann-Louise	Everett	{"title": "Chief Operating Officer"}	489	2021-02-08 06:01:19.619341	2021-02-09 01:43:59.370953	t
969	John	Everett	{"title": "Chief Executive Officer"}	489	2021-02-08 06:01:19.66404	2021-02-09 01:44:14.88377	t
970	Vinny	Olmstead	{"title": "Director"}	489	2021-02-08 06:01:19.697188	2021-02-09 01:44:30.427171	t
971	Craig	Honeyfield	{"title": "Co-Founder & Chief Technology Officer"}	490	2021-02-08 06:01:56.011473	2021-02-09 01:44:45.936418	t
972	Steven	Minsky	{"title": "Founder & CEO"}	491	2021-02-08 06:02:35.978375	2021-02-09 01:45:01.438187	t
973	Rob	Cardenas	{"title": "Marketing Manager"}	493	2021-02-08 06:03:12.689731	2021-02-09 01:45:16.935151	t
975	L.	Allen	{"title": "Chairman & Founder, Vice President of Sales"}	495	2021-02-08 06:03:56.371135	2021-02-09 01:45:48.356016	t
976	J.	Booth	{"title": "President & Chief Executive Officer"}	495	2021-02-08 06:03:56.408392	2021-02-09 01:46:03.85488	t
977	Nick	Nesbitt	{"title": "Executive Vice President"}	496	2021-02-08 06:04:47.40336	2021-02-09 01:46:19.388911	t
978	Kevin	Kelly	{"title": "CEO"}	497	2021-02-08 06:05:29.455978	2021-02-09 01:46:34.93176	t
980	David	Agus	{"title": "Co-Founder"}	497	2021-02-08 06:05:29.525897	2021-02-09 01:47:06.978303	t
981	Mark	Molter	{"title": "Vice President of Sales"}	498	2021-02-08 06:06:10.56062	2021-02-09 01:47:22.503395	t
982	Shamus	Hines	{"title": "CEO"}	498	2021-02-08 06:06:10.597593	2021-02-09 01:47:38.086631	t
983	Randall	Clark	{"title": "Sales Development"}	498	2021-02-08 06:06:10.634317	2021-02-09 01:47:53.596321	t
984	Thomas	Bloom	{"title": "Vice President & Operations"}	499	2021-02-08 06:06:52.969782	2021-02-09 01:48:09.151074	t
985	Petra	Mitchell	{"title": "Founder ,President and CEO"}	499	2021-02-08 06:06:53.008689	2021-02-09 01:48:24.639882	t
987	Michael	Hoxter	{"title": "Chief Technology Officer"}	500	2021-02-08 06:07:34.023914	2021-02-09 01:48:55.639861	t
988	Patrick	Cline	{"title": "CEO"}	500	2021-02-08 06:07:34.060291	2021-02-09 01:49:11.209903	t
989	Kirk	Clove	{"title": "Chief Analytics Officer"}	500	2021-02-08 06:07:34.095028	2021-02-09 01:49:26.725966	t
990	Jeff	Peterson	{"title": "Chief Financial Officer"}	500	2021-02-08 06:07:34.129846	2021-02-09 01:49:42.3061	t
991	Ugo	Curello	{"title": "Chief Software Architect"}	500	2021-02-08 06:07:34.163175	2021-02-09 01:49:57.767549	t
992	Brian	Reale	{"title": "Founder"}	501	2021-02-08 06:08:14.145438	2021-02-09 01:50:13.230172	t
993	Taylor	Dondich	{"title": "Chief Technical Officer"}	501	2021-02-08 06:08:14.183051	2021-02-09 01:50:28.746318	t
995	Jason	Ray	{"title": "Co-Founder & CEO"}	502	2021-02-08 06:08:48.213361	2021-02-09 01:51:00.23679	t
996	Scott	Sawyer	{"title": "Co-Founder & CTO"}	502	2021-02-08 06:08:48.247153	2021-02-09 01:51:15.78238	t
997	Matthew	Sordillo	{"title": "Co-Founder & CMO"}	502	2021-02-08 06:08:48.288591	2021-02-09 01:51:31.317478	t
998	Charlotte	Fudge	{"title": "Managing Partner, CEO"}	503	2021-02-08 06:09:32.894196	2021-02-09 01:51:46.815113	t
999	James	Shaw	{"title": "Sr Director of Engineering"}	503	2021-02-08 06:09:32.92921	2021-02-09 01:52:02.294367	t
1000	Andy	Vanderhoff	{"title": "Founder & CEO"}	505	2021-02-08 06:10:13.575682	2021-02-09 01:52:17.817838	t
1001	Nick	Burch	{"title": "CTO"}	505	2021-02-08 06:10:13.611641	2021-02-09 01:52:33.315837	t
1003	Dan	Banning	{"title": "Director of Marketing"}	505	2021-02-08 06:10:13.680373	2021-02-09 01:53:04.423656	t
1004	JoAnn	Tolentino	{"title": "Director of Sales"}	505	2021-02-08 06:10:13.739359	2021-02-09 01:53:20.706229	t
1005	Paul	Rorberg	{"title": "CTO"}	505	2021-02-08 06:10:13.773615	2021-02-09 01:53:36.221008	t
1007	Alyson	Schwartz	{"title": "General Counsel"}	506	2021-02-08 06:10:59.738008	2021-02-09 01:54:07.251695	t
1008	Amir	Avitzur	{"title": "Vice President Customer Success"}	506	2021-02-08 06:10:59.777297	2021-02-09 01:54:22.802323	t
1009	Yoram	Bibring	{"title": "CFO"}	506	2021-02-08 06:10:59.80932	2021-02-09 01:54:38.343073	t
1011	Faith	Gabriel-Svaboe	{"title": "Head of People"}	506	2021-02-08 06:10:59.888214	2021-02-09 01:55:09.36744	t
1012	Michael	Kohlmeyer	{"title": "CSO, Co-Founder"}	506	2021-02-08 06:10:59.920857	2021-02-09 01:55:24.912437	t
1013	Mahdad	Taheri	{"title": "President and CEO"}	507	2021-02-08 06:11:51.012619	2021-02-09 01:55:40.477809	t
1014	Michael	Katz	{"title": "Executive Director"}	508	2021-02-08 06:12:35.081284	2021-02-09 01:55:55.954665	t
1015	Christian	Cowan	{"title": "senior executive"}	508	2021-02-08 06:12:35.114912	2021-02-09 01:56:11.449774	t
1017	Ken	Horton	{"title": "Co-Founder and Chief Executive Officer"}	509	2021-02-08 06:13:14.285555	2021-02-09 01:56:42.554309	t
1018	Robert	Oberle	{"title": "Co-Founder and Chief Technology Officer"}	509	2021-02-08 06:13:14.318971	2021-02-09 01:56:58.117283	t
1019	Craig	Hyde	{"title": "CEO & Founder"}	511	2021-02-08 06:14:03.478764	2021-02-09 01:57:13.637679	t
1020	Stephanie	Elsesser	{"title": "Co-Founder Account Executive"}	511	2021-02-08 06:14:03.513649	2021-02-09 01:57:29.119105	t
1021	Roberta	Reusch-Lewis	{"title": "Software Engineer"}	511	2021-02-08 06:14:03.547917	2021-02-09 01:57:44.640085	t
1023	Billy	Hoffman	{"title": "CTO"}	511	2021-02-08 06:14:03.613572	2021-02-09 01:58:15.702171	t
1024	Jasmin	Young	{"title": "CEO"}	513	2021-02-08 06:14:59.471056	2021-02-09 01:58:31.220359	t
1025	James	Mancini	{"title": "Solution Architect"}	513	2021-02-08 06:14:59.507494	2021-02-09 01:58:46.734591	t
1026	Andrew	Anderson	{"title": "President"}	513	2021-02-08 06:14:59.540496	2021-02-09 01:59:02.276332	t
1027	Tom	Blue	{"title": "CEO/Founder"}	514	2021-02-08 06:15:40.622496	2021-02-09 01:59:17.769671	t
1028	Jeff	Kaplan	{"title": "Chief Architect"}	514	2021-02-08 06:15:40.654806	2021-02-09 01:59:33.315836	t
1029	Paul	Bach	{"title": "VP of Sales"}	514	2021-02-08 06:15:40.690592	2021-02-09 01:59:48.950336	t
1030	Andreas	Ronneseth	{"title": "Co-Founder & CTO"}	516	2021-02-08 06:16:18.696436	2021-02-09 02:00:04.399963	t
1032	Richard	Awdeh	{"title": "CEO"}	517	2021-02-08 06:16:58.88878	2021-02-09 02:00:36.273337	t
1033	Alana	Paskett	{"title": "Head of Product Management"}	518	2021-02-08 06:18:39.52408	2021-02-09 02:00:51.98378	t
1034	Zack	Chandler	{"title": "Head of Engineering"}	518	2021-02-08 06:18:39.558065	2021-02-09 02:01:07.520472	t
1035	Damon	Gacicia	{"title": "Head of Supply"}	518	2021-02-08 06:18:39.592201	2021-02-09 02:01:23.06262	t
1036	Jeff	Werthammer	{"title": "Head of Sales"}	518	2021-02-08 06:18:39.625847	2021-02-09 02:01:38.614621	t
1037	Adam	Duffy	{"title": "Software Engineer"}	518	2021-02-08 06:18:39.65898	2021-02-09 02:01:54.120032	t
1038	Blair	Cohen	{"title": "Founder"}	519	2021-02-08 06:19:17.221831	2021-02-09 02:02:09.665478	t
1040	Eric	Maas	{"title": "Co-Founder"}	521	2021-02-08 06:20:44.095354	2021-02-09 02:02:40.717802	t
1041	Bjorn	Espenes	{"title": "Co-Fouder"}	521	2021-02-08 06:20:44.126034	2021-02-09 02:02:56.261896	t
1042	Jason	Lowry	{"title": "Head of Operations"}	521	2021-02-08 06:20:44.155993	2021-02-09 02:03:11.800932	t
1043	Jeff	Williams	{"title": "VP, Products"}	522	2021-02-08 06:21:16.177389	2021-02-09 02:03:27.326067	t
1045	Brie	Aletto	{"title": "VP of Operations"}	522	2021-02-08 06:21:16.239177	2021-02-09 02:03:58.700457	t
1046	Jason	Searfoss	{"title": "CFO"}	522	2021-02-08 06:21:16.286195	2021-02-09 02:04:14.1943	t
1047	Kevin	Kelly	{"title": "Founder & CEO"}	522	2021-02-08 06:21:16.317135	2021-02-09 02:04:29.699178	t
1048	Ben	Hendershot	{"title": "COO"}	522	2021-02-08 06:21:16.348283	2021-02-09 02:04:45.271395	t
1049	Kjael	Skaalerud	{"title": "SVP, Revenue"}	522	2021-02-08 06:21:16.383049	2021-02-09 02:05:00.79012	t
1050	Anuj	Seth	{"title": "Managing Director - India Operations"}	523	2021-02-08 06:22:08.381306	2021-02-09 02:05:16.290403	t
1052	Tayo	Ademuyiwa	{"title": "Founder"}	524	2021-02-08 06:22:42.273848	2021-02-09 02:05:47.485901	t
1053	Walle	Mafolasire	{"title": "Founder"}	524	2021-02-08 06:22:42.304856	2021-02-09 02:06:03.061281	t
1054	Tony	Zorc	{"title": "Chief Executive Officer & Founder"}	525	2021-02-08 06:23:22.759621	2021-02-09 02:06:18.574579	t
1055	Chris	Farrell	{"title": "CEO"}	526	2021-02-08 06:23:59.340771	2021-02-09 02:06:34.139754	t
1056	Nick	Stojka	{"title": "Co-Founder"}	527	2021-02-08 06:24:36.60484	2021-02-09 02:06:49.676868	t
1057	John	Stojka	{"title": "Co-Founder"}	527	2021-02-08 06:24:36.635363	2021-02-09 02:07:05.207129	t
1059	Bob	Waldie	{"title": "Co Founder & Director"}	528	2021-02-08 06:25:10.666659	2021-02-09 02:07:36.289662	t
1060	Rick	Stevenson	{"title": "COO"}	528	2021-02-08 06:25:10.71287	2021-02-09 02:07:51.828083	t
1061	Gary	Marks	{"title": "CEO"}	528	2021-02-08 06:25:10.802367	2021-02-09 02:08:07.321081	t
1062	Todd	Rychecky	{"title": "Vice President Sales"}	528	2021-02-08 06:25:10.851633	2021-02-09 02:08:22.81485	t
1063	Kevin	Materi	{"title": "Co-Founder"}	529	2021-02-08 06:25:47.977092	2021-02-09 02:08:38.3025	t
1064	Casey	Schorr	{"title": "Co-Founder"}	529	2021-02-08 06:25:48.01317	2021-02-09 02:08:53.820603	t
1066	Michelle	Marceny	{"title": "Senior Product Line Manager"}	530	2021-02-08 06:26:32.456616	2021-02-09 02:09:24.854896	t
1067	Ken	Granader	{"title": "Vice President of Sales"}	530	2021-02-08 06:26:32.501012	2021-02-09 02:09:40.360527	t
1068	Scott	Allen	{"title": "Chief Marketing Officer"}	530	2021-02-08 06:26:32.540127	2021-02-09 02:09:55.838161	t
1069	Karl	Kunz	{"title": "CFO"}	530	2021-02-08 06:26:32.578383	2021-02-09 02:10:11.385787	t
1070	Kim	Niederman	{"title": "CEO"}	530	2021-02-08 06:26:32.630369	2021-02-09 02:10:26.887082	t
1071	Steve	Wulchin	{"title": "Founder and President"}	530	2021-02-08 06:26:32.691619	2021-02-09 02:10:42.452928	t
1072	Kelly	Wenzel	{"title": "Director of Human Resources"}	530	2021-02-08 06:26:32.737185	2021-02-09 02:10:57.97336	t
1074	Kristin	Voinovich	{"title": "Co-Founder & Treasurer"}	535	2021-02-08 06:28:14.234483	2021-02-09 02:11:29.113814	t
1075	Andrew	Dix	{"title": "Co-Founder and CEO"}	535	2021-02-08 06:28:14.270581	2021-02-09 02:11:44.639199	t
1076	Alon	Krashinsky	{"title": "Co-Founder"}	536	2021-02-08 06:28:51.305944	2021-02-09 02:12:00.194687	t
1077	Brian	Lovett	{"title": "Co-Founder"}	536	2021-02-08 06:28:51.338753	2021-02-09 02:12:15.699497	t
1080	Joshua	Raines	{"title": "Controller"}	539	2021-02-08 06:30:50.722654	2021-02-09 02:13:02.775178	t
1082	Tom	Praschak	{"title": "President & CEO"}	539	2021-02-08 06:30:50.813373	2021-02-09 02:13:33.774088	t
1083	Paul	Breitenbach	{"title": "Regional CIO"}	539	2021-02-08 06:30:50.850471	2021-02-09 02:13:49.290991	t
1084	Katharina	Warzel	{"title": "Head of Data Analytics and Performance Marketing"}	540	2021-02-08 06:31:40.86166	2021-02-09 02:14:04.784464	t
1085	Seth	Cassel	{"title": "President"}	540	2021-02-08 06:31:40.896897	2021-02-09 02:14:20.289774	t
1086	Alfonso	Ramirez	{"title": "Director of Ecommerce Services"}	540	2021-02-08 06:31:40.929683	2021-02-09 02:14:35.74043	t
1087	Mohamed	Alkady	{"title": "Co-CEO"}	541	2021-02-08 06:32:12.089631	2021-02-09 02:14:51.26835	t
1089	Rick	Hopfer	{"title": "Co-CEO"}	541	2021-02-08 06:32:12.153631	2021-02-09 02:15:22.424077	t
1090	michele	macpherson	{"title": "coo"}	543	2021-02-08 06:32:58.237114	2021-02-09 02:15:37.967991	t
1091	Harry	Blount	{"title": "CEO & Founder"}	543	2021-02-08 06:32:58.267661	2021-02-09 02:15:53.474141	t
1092	Rob	Cross	{"title": "Founder"}	544	2021-02-08 06:33:29.486831	2021-02-09 02:16:09.035694	t
1093	Brian	Price	{"title": "Founder"}	544	2021-02-08 06:33:29.518822	2021-02-09 02:16:24.851755	t
1095	Julie	Ruvolo	{"title": "Managing Director of Venture Capital"}	545	2021-02-08 06:34:05.782439	2021-02-09 02:16:55.828893	t
1096	Vlad	Papko	{"title": "Director of Engineering"}	546	2021-02-08 06:34:46.84368	2021-02-09 02:17:11.307791	t
1097	Lance	Obermeyer	{"title": "CTO"}	546	2021-02-08 06:34:46.876727	2021-02-09 02:17:26.796482	t
1098	Alex	Pomes	{"title": "Director of Brand Sales"}	546	2021-02-08 06:34:46.907125	2021-02-09 02:17:42.361829	t
1099	Alex	Broeker	{"title": "CEO and Founder"}	546	2021-02-08 06:34:46.957178	2021-02-09 02:17:57.942767	t
1101	Bayan	Towfiq	{"title": "Co-founder and Chief Executive Officer"}	551	2021-02-08 06:37:00.830602	2021-02-09 02:18:28.973197	t
1102	Sean	Hsieh	{"title": "Co-founder and Chief Product Officer"}	551	2021-02-08 06:37:00.861972	2021-02-09 02:18:44.492903	t
1103	MohammedAli	Merchant	{"title": "Software, Data, Product"}	551	2021-02-08 06:37:00.892427	2021-02-09 02:19:00.055814	t
1104	Douglas	Waller	{"title": "Product Owner"}	551	2021-02-08 06:37:00.924381	2021-02-09 02:19:15.546173	t
1105	Dan	Nordale	{"title": "Chief Revenue Officer"}	551	2021-02-08 06:37:00.955897	2021-02-09 02:19:31.03695	t
1107	William	King	{"title": "CTO"}	551	2021-02-08 06:37:01.049643	2021-02-09 02:20:02.093943	t
1108	Gangadhar	Ramesh	{"title": "Senior Product Manager"}	551	2021-02-08 06:37:01.082027	2021-02-09 02:20:17.637896	t
1109	Bo	Preising	{"title": "VP of Engineering"}	553	2021-02-08 06:38:23.718632	2021-02-09 02:20:33.131981	t
1110	Josh	Tyler	{"title": "Director of Software Engineering"}	553	2021-02-08 06:38:23.750637	2021-02-09 02:20:48.571496	t
1111	Scott	Hassan	{"title": "President & CEO"}	553	2021-02-08 06:38:23.782303	2021-02-09 02:21:04.102241	t
1112	Milan	Bhalala	{"title": "VP, Operations & Support"}	553	2021-02-08 06:38:23.817196	2021-02-09 02:21:19.618422	t
1114	Ryan	Dotters	{"title": "Chief Executive Officer"}	555	2021-02-08 13:21:17.204064	2021-02-09 02:21:50.634543	t
1115	Pete	Longo	{"title": "CEO of U.S. Media for IDG Communications"}	557	2021-02-08 13:21:59.640921	2021-02-09 02:22:06.626483	t
1116	John	Gallant	{"title": "Chief Content Officer, IDG Communications, U.S."}	557	2021-02-08 13:21:59.673174	2021-02-09 02:22:22.173975	t
1117	Brian	Glynn	{"title": "Chief Revenue Officer"}	557	2021-02-08 13:21:59.703711	2021-02-09 02:22:37.722277	t
1118	Scot	Finnie	{"title": "Editor in Chief"}	557	2021-02-08 13:21:59.736992	2021-02-09 02:22:53.292781	t
1120	Gregg	Pinsky	{"title": "Senior Vice President/GM of Digital Operations"}	557	2021-02-08 13:21:59.804285	2021-02-09 02:23:24.354556	t
1121	Simon	Phipps	{"title": "Writer"}	557	2021-02-08 13:21:59.836235	2021-02-09 02:23:39.825636	t
1122	Sharon	Machlis	{"title": "Online Managing Editor"}	557	2021-02-08 13:21:59.870641	2021-02-09 02:23:55.435193	t
1123	Jim	D'Amico	{"title": "President"}	559	2021-02-08 13:23:23.184238	2021-02-09 02:24:11.043162	t
1124	Chris	McDonald	{"title": "Founder"}	561	2021-02-08 13:25:38.066426	2021-02-09 02:24:26.558767	t
1125	Debi	Srdoc	{"title": "CFO"}	561	2021-02-08 13:25:38.099259	2021-02-09 02:24:42.015323	t
1127	Vipin	Hegde	{"title": "CTO & SVP Engineering"}	561	2021-02-08 13:25:38.1874	2021-02-09 02:25:13.120899	t
1128	Klaus	Korak	{"title": "Co-founder"}	562	2021-02-08 14:06:02.463073	2021-02-09 02:25:28.722717	t
1129	Moshe	Pritsker	{"title": "CEO, Co-Founder"}	562	2021-02-08 14:06:02.492515	2021-02-09 02:25:44.230693	t
1131	Sue	Imhoff	{"title": "Director of Marketing Communication"}	562	2021-02-08 14:06:02.596488	2021-02-09 02:26:15.197639	t
1132	Ray	Kingman	{"title": "Founder & CEO"}	563	2021-02-08 14:06:42.561086	2021-02-09 02:26:30.714563	t
1133	Michael	Schwalbert	{"title": "Vice President of Corporate Sales"}	563	2021-02-08 14:06:42.591223	2021-02-09 02:26:46.226875	t
1134	Jessica	Chaset	{"title": "SVP Business Development"}	563	2021-02-08 14:06:42.625272	2021-02-09 02:27:01.741991	t
1135	Brian	Rivard	{"title": "Chief Technology Officer"}	563	2021-02-08 14:06:42.654712	2021-02-09 02:27:17.222412	t
1136	Kevin	Petrillo	{"title": "Chief Financial Officer"}	563	2021-02-08 14:06:42.703361	2021-02-09 02:27:32.704948	t
1138	Marty	Agius	{"title": "Vice President of Sales"}	563	2021-02-08 14:06:42.767105	2021-02-09 02:28:03.767733	t
1139	Mike	Pusateri	{"title": "Founder/CEO"}	564	2021-02-08 14:07:17.541502	2021-02-09 02:28:19.345333	t
1140	Marty	Cordova	{"title": "COO"}	564	2021-02-08 14:07:17.571594	2021-02-09 02:28:34.822241	t
1141	Tom	Santoli	{"title": "General Manager"}	564	2021-02-08 14:07:17.60076	2021-02-09 02:28:50.308651	t
1142	Teddy	Zee	{"title": "Business Development Consultant"}	564	2021-02-08 14:07:17.631965	2021-02-09 02:29:05.883179	t
1143	Adam	Hyatt	{"title": "Senior Talent and Account Manager"}	564	2021-02-08 14:07:17.66184	2021-02-09 02:29:21.416324	t
1144	John	Howell	{"title": "Editorial Director"}	565	2021-02-08 14:07:53.848285	2021-02-09 02:29:36.907304	t
1145	Gregory	Schneider	{"title": "CEO and Co-Founder"}	565	2021-02-08 14:07:53.878941	2021-02-09 02:29:52.40974	t
1147	Dave	Armon	{"title": "CMO"}	565	2021-02-08 14:07:53.939382	2021-02-09 02:30:23.38859	t
1148	Doug	Fulton	{"title": "CTO"}	565	2021-02-08 14:07:53.969919	2021-02-09 02:30:38.943746	t
1149	Dave	Armon	{"title": "CEO"}	565	2021-02-08 14:07:53.999747	2021-02-09 02:30:54.520803	t
1150	William	Ward	{"title": "National Sales Manager"}	571	2021-02-08 14:09:24.249791	2021-02-09 02:31:10.429453	t
1154	Desiree	Salgado	{"title": "Co-Founder & Operations"}	572	2021-02-08 14:10:04.100149	2021-02-09 02:32:13.264115	t
1155	John	Chamberlin	{"title": "CIO & Co-Founder"}	573	2021-02-08 14:10:40.062003	2021-02-09 02:32:28.790618	t
1156	Shelby	Carlson	{"title": "Co-founder"}	573	2021-02-08 14:10:40.09364	2021-02-09 02:32:44.389503	t
1157	Brock	Berry	{"title": "Founder & CEO"}	573	2021-02-08 14:10:40.124526	2021-02-09 02:32:59.891555	t
1158	Chris	Junior	{"title": "Founder"}	574	2021-02-08 14:11:24.030268	2021-02-09 02:33:15.420848	t
1160	Ray	Rahbar	{"title": "Founder"}	574	2021-02-08 14:11:24.096511	2021-02-09 02:33:46.740753	t
1161	Jim	Broome	{"title": "President"}	576	2021-02-08 14:14:59.532834	2021-02-09 02:34:02.328696	t
1162	Beau	Shahriary	{"title": "VP of Sales"}	576	2021-02-08 14:14:59.563873	2021-02-09 02:34:17.828421	t
1163	Mike	Bateman	{"title": "Director"}	577	2021-02-08 14:15:38.32598	2021-02-09 02:34:33.359015	t
1165	Vadim	Koleoshkin	{"title": "COO"}	578	2021-02-08 14:16:22.527696	2021-02-09 02:35:05.084015	t
1166	Alexey	Bashlykov	{"title": "CTO"}	578	2021-02-08 14:16:22.583384	2021-02-09 02:35:21.974647	t
1167	Evgeny	Yurtaev	{"title": "CEO"}	578	2021-02-08 14:16:22.625638	2021-02-09 02:35:37.468051	t
1168	Michael	Greten	{"title": "Chief Financial Officer"}	580	2021-02-08 14:17:05.323739	2021-02-09 02:35:53.032191	t
1169	Steven	Eisenberg	{"title": "CEO"}	580	2021-02-08 14:17:05.354719	2021-02-09 02:36:08.532038	t
1170	Evelyn	Eagle	{"title": "Co-Founder & Director of Client Services"}	583	2021-02-08 14:19:12.40621	2021-02-09 02:36:24.010407	t
1171	Kim	Vivian-Downs	{"title": "Co-Founder & VP"}	583	2021-02-08 14:19:12.438233	2021-02-09 02:36:40.076189	t
1173	Rick	Banister	{"title": "CEO and Founder"}	584	2021-02-08 14:19:50.585371	2021-02-09 02:37:11.12173	t
1174	William	Dubberley	{"title": "Chief Technical Officer"}	584	2021-02-08 14:19:50.618376	2021-02-09 02:37:26.64531	t
1175	Kunal	Ashar	{"title": "CTO"}	585	2021-02-08 14:20:34.242072	2021-02-09 02:37:42.21393	t
1176	Eugene	Hayes	{"title": "Founder"}	585	2021-02-08 14:20:34.275902	2021-02-09 02:37:57.719926	t
1178	Anna	Maxin	{"title": "Vice President of Marketing, Product Management & Consulting Services"}	585	2021-02-08 14:20:34.344693	2021-02-09 02:38:28.70341	t
1179	Matt	Winebright	{"title": "Chief Executive Officer & President"}	585	2021-02-08 14:20:34.414442	2021-02-09 02:38:45.410857	t
1180	Laura	Sager	{"title": "Vice President of Research & Development"}	585	2021-02-08 14:20:34.44963	2021-02-09 02:39:00.929126	t
1181	Deborah	Disler	{"title": "Vice President of Customer Support & Training"}	585	2021-02-08 14:20:34.481372	2021-02-09 02:39:16.479764	t
1182	Michael	Hayes	{"title": "Founder"}	585	2021-02-08 14:20:34.511048	2021-02-09 02:39:32.013341	t
1183	Angela	Bossie	{"title": "VP of Customer Success"}	587	2021-02-08 14:22:01.132588	2021-02-09 02:39:47.559494	t
1184	Brian	Fitzpatrick	{"title": "CEO"}	587	2021-02-08 14:22:01.165408	2021-02-09 02:40:03.203487	t
1185	Richard	Thomas	{"title": "VP of Sales & Marketing"}	587	2021-02-08 14:22:01.199091	2021-02-09 02:40:18.696891	t
1187	PAUL	DURAN	{"title": "Vice President of Marketing and Sales"}	588	2021-02-08 14:22:44.536424	2021-02-09 02:40:49.780548	t
1188	LILLIE	CHEUNG	{"title": "Senior Vice President"}	588	2021-02-08 14:22:44.566996	2021-02-09 02:41:05.340819	t
1189	JON	S.	{"title": "Founder, President & CEO"}	588	2021-02-08 14:22:44.597703	2021-02-09 02:41:20.837769	t
1190	WADE	E.	{"title": "Vice President of Software Development"}	588	2021-02-08 14:22:44.6278	2021-02-09 02:41:36.371959	t
1191	Gary	McTall	{"title": "Co-founder/CTO"}	589	2021-02-08 14:23:31.454252	2021-02-09 02:41:52.248101	t
1192	Paul	Cammisa	{"title": "Co-founder"}	589	2021-02-08 14:23:31.49734	2021-02-09 02:42:07.816482	t
1193	Richard	Noe	{"title": "President & CEO"}	590	2021-02-08 14:24:10.556157	2021-02-09 02:42:23.378531	t
1195	Mykel	Nahorniak	{"title": "Co-Founder & CEO"}	591	2021-02-08 14:24:57.691678	2021-02-09 02:42:54.432222	t
1196	Eric	Steil	{"title": "Lead Developer"}	591	2021-02-08 14:24:57.721971	2021-02-09 02:43:09.96757	t
1197	Colt	Pierson	{"title": "Sales Associate"}	591	2021-02-08 14:24:57.751913	2021-02-09 02:43:25.48889	t
1198	Jason	Finney	{"title": "VP, Sales"}	591	2021-02-08 14:24:57.80799	2021-02-09 02:43:41.017258	t
1200	Nate	Mook	{"title": "Co-Founder & Chairman"}	591	2021-02-08 14:24:57.870232	2021-02-09 02:44:12.01102	t
1201	Steve	Goldbeck	{"title": "Sales Manager"}	591	2021-02-08 14:24:57.900528	2021-02-09 02:44:27.48043	t
1202	Will	Norris	{"title": "Sales Executive"}	591	2021-02-08 14:24:57.935722	2021-02-09 02:44:43.107673	t
1203	Sean	Safreed	{"title": "Manager & Co-founder"}	592	2021-02-08 14:25:35.179301	2021-02-09 02:44:58.889643	t
1204	John	Cumbers	{"title": "Founder & Executive President"}	593	2021-02-08 14:26:08.178085	2021-02-09 02:45:14.631532	t
1206	Michael	Vietri	{"title": "VP Ad Operatioins"}	596	2021-02-08 14:27:04.555759	2021-02-09 02:45:46.131071	t
1207	Robert	Osborne	{"title": "VP Engineering"}	596	2021-02-08 14:27:04.587239	2021-02-09 02:46:01.671928	t
1208	Leif	Welch	{"title": "Founder & CEO"}	596	2021-02-08 14:27:04.618294	2021-02-09 02:46:17.23582	t
1209	Greg	Stuart	{"title": "CEO"}	597	2021-02-08 14:27:55.66975	2021-02-09 02:46:32.786996	t
1210	Juan	A.	{"title": "President- Spain"}	597	2021-02-08 14:27:55.701299	2021-02-09 02:46:48.29381	t
1212	Michael	J.	{"title": "Mobile Marketing Association Board Member"}	597	2021-02-08 14:27:55.765198	2021-02-09 02:47:19.321327	t
1213	Paul	Berney	{"title": "Chief Marketing Officer and Managing Director, EMEA"}	597	2021-02-08 14:27:55.796435	2021-02-09 02:47:34.832974	t
1214	Sheryl	Daija	{"title": "Chief Strategy Officer and General Manager, Global Events"}	597	2021-02-08 14:27:55.827475	2021-02-09 02:47:50.336085	t
1215	Vassilis	Bakopoulos	{"title": "Head of Insights & Research"}	597	2021-02-08 14:27:55.859417	2021-02-09 02:48:06.062623	t
1216	Tazeen	Shaikh	{"title": "EA to CEO"}	597	2021-02-08 14:27:55.891144	2021-02-09 02:48:21.581183	t
1217	Darrin	Dexheimer	{"title": "Vice President of Information Technology"}	602	2021-02-08 14:30:16.434722	2021-02-09 02:48:37.027121	t
1218	Jeff	Cohen	{"title": "President"}	602	2021-02-08 14:30:16.468819	2021-02-09 02:48:52.677263	t
1219	Beth	Castellano	{"title": "Vice President of Operations and Client Management"}	602	2021-02-08 14:30:16.504531	2021-02-09 02:49:08.276021	t
1220	Jack	Nolan	{"title": "Vice President of Business Development"}	602	2021-02-08 14:30:16.538514	2021-02-09 02:49:23.732805	t
1223	David	Knight	{"title": "Chief Revenue Officer"}	606	2021-02-08 14:31:45.484515	2021-02-09 02:50:10.270269	t
1224	Keith	Sawarynski	{"title": "President and COO"}	606	2021-02-08 14:31:45.51531	2021-02-09 02:50:25.817175	t
1225	Kevin	Miller	{"title": "CFO"}	606	2021-02-08 14:31:45.547868	2021-02-09 02:50:41.296286	t
1226	Chris	Wiegand	{"title": "CTO"}	606	2021-02-08 14:31:45.596677	2021-02-09 02:50:56.761029	t
1228	Scott	Smith	{"title": "Founder & CEO"}	607	2021-02-08 14:32:25.222581	2021-02-09 02:51:27.864401	t
1229	Sean	Smith	{"title": "Founder & Chairman"}	607	2021-02-08 14:32:25.254962	2021-02-09 02:51:43.364152	t
1230	Dinesh	Patel	{"title": "President & CEO"}	610	2021-02-08 14:33:50.977174	2021-02-09 02:51:58.873238	t
1231	Mark	Smythe	{"title": "Founder and Vice President of Technology & Alliances"}	610	2021-02-08 14:33:51.007949	2021-02-09 02:52:14.396599	t
1232	David	Y.	{"title": "Chief Scientific Officer"}	610	2021-02-08 14:33:51.038765	2021-02-09 02:52:29.905339	t
1233	Tom	O'Neil	{"title": "Chief Financial Officer"}	610	2021-02-08 14:33:51.072723	2021-02-09 02:52:45.773122	t
1235	Guy	Gordon	{"title": "Creative Director"}	611	2021-02-08 14:34:22.884934	2021-02-09 02:53:16.784374	t
1236	Yehuda	Elitzur	{"title": "Chief Software Architect"}	611	2021-02-08 14:34:22.915731	2021-02-09 02:53:32.297827	t
1237	Justin	Rockman	{"title": "VP Sales & BizDev"}	611	2021-02-08 14:34:22.946401	2021-02-09 02:53:47.823866	t
1238	Sari	Nossbaum	{"title": "Director of Marketing"}	611	2021-02-08 14:34:22.975754	2021-02-09 02:54:03.367794	t
1239	Jennifer	Preston	{"title": "Vice President of Sales"}	613	2021-02-08 14:35:40.515397	2021-02-09 02:54:18.891696	t
1241	Tony	DelVaglio	{"title": "Senior Director of Regional Sales"}	613	2021-02-08 14:35:40.574184	2021-02-09 02:54:50.086564	t
1242	Henry	Popplewell	{"title": "President"}	613	2021-02-08 14:35:40.603844	2021-02-09 02:55:05.59957	t
1243	William	De	{"title": "Founder"}	613	2021-02-08 14:35:40.648216	2021-02-09 02:55:21.105123	t
1244	Tim	Cook	{"title": "Chief Executive Officer"}	614	2021-02-08 14:36:28.503808	2021-02-09 02:55:36.621893	t
1245	Tiffany	Romero	{"title": "President, Influencer Management"}	616	2021-02-08 14:37:56.323719	2021-02-09 02:55:52.13754	t
1246	Francesca	Banducci	{"title": "Chief Operations Officer"}	616	2021-02-08 14:37:56.354242	2021-02-09 02:56:07.988742	t
1247	Allison	Talamantez	{"title": "Chief Revenue Officer"}	616	2021-02-08 14:37:56.38872	2021-02-09 02:56:23.496893	t
1248	Danielle	Wiley	{"title": "Chief Executive Officer"}	616	2021-02-08 14:37:56.42162	2021-02-09 02:56:39.076622	t
1250	Ari	Marcellino	{"title": "Sr Business Development Associate"}	617	2021-02-08 14:38:36.561446	2021-02-09 02:57:10.054047	t
1251	Magda	Marquet	{"title": "Board of Directors"}	617	2021-02-08 14:38:36.593552	2021-02-09 02:57:25.518006	t
1252	Stephanie	Hsieh	{"title": "Executive Director of its Los Angeles Office"}	617	2021-02-08 14:38:36.636823	2021-02-09 02:57:41.006238	t
1253	Kacem	Bacha	{"title": "VP, Quality Assurance"}	618	2021-02-08 14:39:13.76991	2021-02-09 02:57:56.547244	t
1255	Kahensa	Bangert	{"title": "Vice President, Marketing & Business Development"}	618	2021-02-08 14:39:13.833644	2021-02-09 02:58:27.614678	t
1256	Salim	Khalife	{"title": "Founder, President & CEO"}	618	2021-02-08 14:39:13.864359	2021-02-09 02:58:43.132764	t
1257	Chris	Baird	{"title": "Chief Technology Officer"}	618	2021-02-08 14:39:13.89512	2021-02-09 02:58:58.624116	t
1258	Foy	Mainor	{"title": "Vice President, Sales"}	618	2021-02-08 14:39:13.925246	2021-02-09 02:59:14.143044	t
1259	Derek	Lundsten	{"title": "CEO"}	619	2021-02-08 14:39:51.857469	2021-02-09 02:59:29.639938	t
1260	Angela	Wittholt	{"title": "CFO"}	619	2021-02-08 14:39:51.893092	2021-02-09 02:59:45.151136	t
1261	David	Herring	{"title": "CTO"}	619	2021-02-08 14:39:51.922267	2021-02-09 03:00:01.29184	t
1262	Greg	Jensen	{"title": "CEO Founder"}	620	2021-02-08 14:40:24.53276	2021-02-09 03:00:16.824563	t
1263	Martin	Smithmyer	{"title": "Founder and CEO"}	622	2021-02-08 14:40:57.317368	2021-02-09 03:00:32.366178	t
1265	Scott	Marshall	{"title": "EVP & CFO"}	623	2021-02-08 14:41:35.227665	2021-02-09 03:01:03.439826	t
1266	John	Collins	{"title": "Chief Executive Officer"}	623	2021-02-08 14:41:35.260596	2021-02-09 03:01:19.013124	t
1267	Michele	Yavarian	{"title": "Vice President, Controller"}	623	2021-02-08 14:41:35.290518	2021-02-09 03:01:34.512572	t
1268	Dan	Rosenthal	{"title": "Vice President, Premium Sales"}	623	2021-02-08 14:41:35.326176	2021-02-09 03:01:50.119137	t
1269	Steve	Fout	{"title": "VP of Customer Solutions"}	625	2021-02-08 14:42:18.760474	2021-02-09 03:02:05.631656	t
1270	Bobby	Rudder	{"title": "VP of Marketing & Communications"}	625	2021-02-08 14:42:18.791352	2021-02-09 03:02:21.181894	t
1271	Ron	Clontz	{"title": "VP of Solutions"}	625	2021-02-08 14:42:18.821491	2021-02-09 03:02:36.733682	t
1273	Ed	Lanko	{"title": "President"}	625	2021-02-08 14:42:18.884494	2021-02-09 03:03:07.786507	t
1274	Padma	Soundararajan	{"title": "Director Product Development and Innovation"}	627	2021-02-08 14:43:36.668775	2021-02-09 03:03:23.301584	t
1275	Charles	Crew	{"title": "CFO"}	627	2021-02-08 14:43:36.700576	2021-02-09 03:03:38.806342	t
1276	Doug	Smith	{"title": "Chief Marketing Officer"}	627	2021-02-08 14:43:36.731712	2021-02-09 03:03:54.321608	t
1278	Nick	Perdikis	{"title": "CEO"}	627	2021-02-08 14:43:36.799389	2021-02-09 03:04:25.394972	t
1279	Ryan	Ripley	{"title": "Professional Scrum Trainer"}	628	2021-02-08 14:44:15.848526	2021-02-09 03:04:40.919974	t
1280	Jakob	Juul	{"title": "Professional Scrum Master"}	628	2021-02-08 14:44:15.880099	2021-02-09 03:04:56.48079	t
1281	Naveen	Kumar	{"title": "Professional Scrum Trainer & DevOps Consultant"}	628	2021-02-08 14:44:15.908497	2021-02-09 03:05:12.115537	t
1282	Robert	Pieper	{"title": "Professional Scrum Trainer"}	628	2021-02-08 14:44:15.941168	2021-02-09 03:05:27.631777	t
1283	Ken	Schwaber	{"title": "Founder"}	628	2021-02-08 14:44:15.972313	2021-02-09 03:05:43.191075	t
1285	Todd	Leto	{"title": "CEO"}	629	2021-02-08 14:44:52.931914	2021-02-09 03:06:14.324494	t
1286	Doug	Leupen	{"title": "President"}	630	2021-02-08 14:45:34.041922	2021-02-09 03:06:29.867212	t
1287	Brad	Leupen	{"title": "CTO"}	630	2021-02-08 14:45:34.071935	2021-02-09 03:06:45.37313	t
1288	Peter	Lilienthal	{"title": "Founder & CEO"}	631	2021-02-08 14:46:21.974051	2021-02-09 03:07:00.925338	t
1289	Marilyn	Walker	{"title": "Chief Operating Officer"}	631	2021-02-08 14:46:22.01574	2021-02-09 03:07:16.608203	t
1290	Jason	Kruger	{"title": "President & Founder"}	632	2021-02-08 14:47:03.894215	2021-02-09 03:07:32.136029	t
1292	Jeff	Dunning	{"title": "Vice President of Support and Strategic Initiatives"}	634	2021-02-08 14:48:16.965999	2021-02-09 03:08:03.179069	t
1293	Chris	McHenry	{"title": "Vice President, Technology & Co-Founder"}	634	2021-02-08 14:48:16.997365	2021-02-09 03:08:18.707856	t
1295	Scott	Burt	{"title": "President & Co-Founder"}	634	2021-02-08 14:48:17.059125	2021-02-09 03:08:49.735235	t
1296	Jason	Brandes	{"title": "Vice President & Co-Founder"}	634	2021-02-08 14:48:17.091119	2021-02-09 03:09:05.265531	t
1297	Matthew	Briggs	{"title": "Chief Executive Officer"}	638	2021-02-08 14:49:01.327971	2021-02-09 03:09:20.76873	t
1298	Dan	Neiweem	{"title": "Principal"}	640	2021-02-08 14:50:20.484981	2021-02-09 04:59:56.430528	t
1299	Paul	Weinewuth	{"title": "Co-Founder, Partner"}	640	2021-02-08 14:50:20.519715	2021-02-09 05:00:12.210878	t
1300	Gibson	Smith	{"title": "Chief People Officer"}	640	2021-02-08 14:50:20.550091	2021-02-09 05:00:27.750033	t
1301	Chris	Dalton	{"title": "Co-Founder, Partner"}	640	2021-02-08 14:50:20.582049	2021-02-09 05:00:43.283919	t
1302	Scott	Webb	{"title": "Principal"}	640	2021-02-08 14:50:20.628683	2021-02-09 05:00:58.848659	t
1304	Victoria	Phillips	{"title": "Chief Operating Officer"}	640	2021-02-08 14:50:20.689884	2021-02-09 05:01:29.899558	t
1305	Chris	Clever	{"title": "CEO, PRESIDENT, FOUNDER"}	643	2021-02-08 14:52:15.501086	2021-02-09 05:01:45.403407	t
1306	Wayne	Wager	{"title": "Director"}	644	2021-02-08 14:53:04.832239	2021-02-09 05:02:00.88066	t
1307	Jennifer	Cheng	{"title": "President & CEO"}	645	2021-02-08 14:53:52.158046	2021-02-09 05:02:16.435088	t
1309	Carol	Rudolph	{"title": "Vice President of Sales"}	645	2021-02-08 14:53:52.220839	2021-02-09 05:02:47.503115	t
1310	Terry	Timmins	{"title": "Partner Relationship Manager"}	645	2021-02-08 14:53:52.250639	2021-02-09 05:03:03.021502	t
1311	Jim	Van	{"title": "Vice President, Software Development"}	645	2021-02-08 14:53:52.283145	2021-02-09 05:03:18.835681	t
1312	Charles	Schindo	{"title": "Director of Client Services"}	645	2021-02-08 14:53:52.333746	2021-02-09 05:03:34.35575	t
1313	Grace	Bolen	{"title": "Vice President of Finance and Operations"}	645	2021-02-08 14:53:52.362826	2021-02-09 05:03:49.862676	t
1314	Jim	Van	{"title": "Vice President, Software Development"}	645	2021-02-08 14:53:52.397172	2021-02-09 05:04:05.375228	t
1316	Jonas	Gyllensvaan	{"title": "CEO"}	649	2021-02-08 14:55:10.951365	2021-02-09 05:04:36.744407	t
1317	Penny	Bristow	{"title": "Director of Operations"}	649	2021-02-08 14:55:10.987792	2021-02-09 05:04:52.280564	t
1318	Gregg	Fleet	{"title": "VP of Business Development"}	649	2021-02-08 14:55:11.023628	2021-02-09 05:05:07.918238	t
1319	Kevin	Lewis	{"title": "Director of Development"}	649	2021-02-08 14:55:11.09484	2021-02-09 05:05:23.411454	t
1320	John	Platillero	{"title": "Founder / CEO"}	650	2021-02-08 14:56:00.191888	2021-02-09 05:05:38.940538	t
1322	Tim	Charters	{"title": "Director of Program Operations, Techonomy Media"}	652	2021-02-08 14:58:29.550594	2021-02-09 05:06:09.941548	t
1323	Alex	Cudaback	{"title": "Director of Programs"}	652	2021-02-08 14:58:29.580397	2021-02-09 05:06:25.459261	t
1324	Josh	Kampel	{"title": "Chief Strategy Officer, Techonomy"}	652	2021-02-08 14:58:29.615306	2021-02-09 05:06:41.098572	t
1325	David	Kirkpatrick	{"title": "Founder & CEO"}	652	2021-02-08 14:58:29.649802	2021-02-09 05:06:56.605158	t
1326	Simone	Ross	{"title": "EVP & Chief Program Officer"}	652	2021-02-08 14:58:29.735299	2021-02-09 05:07:12.142922	t
1327	Geraldine	O'Reilly	{"title": "Partnership Coordinator"}	652	2021-02-08 14:58:29.779195	2021-02-09 05:07:27.648112	t
1328	Ginger	Ackerman	{"title": "VP of Sales and Marketing"}	655	2021-02-08 15:00:28.446212	2021-02-09 05:07:43.341141	t
1329	Jessica	Stephenson	{"title": "VP of Marketing & Talent"}	656	2021-02-08 15:01:02.395799	2021-02-09 05:07:58.998124	t
1331	Jeff	Hallam	{"title": "Co-Founder & Sales"}	656	2021-02-08 15:01:02.46973	2021-02-09 05:08:30.017324	t
1332	Eric	Stauffer	{"title": "Chief Technology Officer"}	656	2021-02-08 15:01:02.503889	2021-02-09 05:08:46.079857	t
1333	Peter	Glazman	{"title": "Founder"}	657	2021-02-08 15:01:48.57079	2021-02-09 05:09:01.483559	t
1334	Jeff	Allen	{"title": "President"}	658	2021-02-08 15:02:35.906834	2021-02-09 05:09:16.947708	t
1335	Bryan	Gaynor	{"title": "Digital Marketing Account Manager"}	658	2021-02-08 15:02:35.937557	2021-02-09 05:09:30.580759	t
1336	Mary	Hartman	{"title": "Senior Digital Marketing Account Manager"}	658	2021-02-08 15:02:35.967633	2021-02-09 05:09:46.107634	t
1338	Rebekah	Keida	{"title": "VP of Founders House"}	660	2021-02-08 15:04:03.232245	2021-02-09 05:10:19.16396	t
1339	Chad	Johnson	{"title": "Director of Creative"}	660	2021-02-08 15:04:03.263493	2021-02-09 05:10:34.662344	t
1340	Tyler	Coppock	{"title": "SVP , Entrepreneur Expo & Launch"}	660	2021-02-08 15:04:03.295554	2021-02-09 05:10:50.307597	t
1341	Jason	Cherveny	{"title": "President & CEO"}	662	2021-02-08 15:05:18.311577	2021-02-09 05:11:05.93366	t
1342	Edward	Mazzarella	{"title": "Director of Chapters"}	664	2021-02-08 15:06:46.008131	2021-02-09 05:11:21.906918	t
1343	Nancy	Eiring	{"title": "Director of Membership"}	664	2021-02-08 15:06:46.040591	2021-02-09 15:07:47.930514	t
1344	Michelle	Kremer	{"title": "COO"}	664	2021-02-08 15:06:46.071965	2021-02-09 15:08:03.454215	t
1346	Chad	Nelsen	{"title": "CEO"}	664	2021-02-08 15:06:46.136413	2021-02-09 15:08:35.071817	t
1347	Angela	Howe	{"title": "Legal Director"}	664	2021-02-08 15:06:46.166324	2021-02-09 15:08:50.589219	t
1348	Tom	Curren	{"title": "Founding Member"}	664	2021-02-08 15:06:46.196547	2021-02-09 15:09:07.275534	t
1349	Steve	Blank	{"title": "Director of Development"}	664	2021-02-08 15:06:46.227563	2021-02-09 15:09:22.848939	t
1350	Jacqueline	Tiso	{"title": "Founder & CEO"}	665	2021-02-08 15:07:26.288519	2021-02-09 15:09:38.498868	t
1351	Tom	Thornton	{"title": "COO"}	665	2021-02-08 15:07:26.319761	2021-02-09 15:09:54.071422	t
1352	Andrew	Harleman	{"title": "Director of Sales"}	665	2021-02-08 15:07:26.349841	2021-02-09 15:10:10.222151	t
1353	Kent	Hollrah	{"title": "President"}	665	2021-02-08 15:07:26.382257	2021-02-09 15:10:26.483863	t
1355	KoAnn	Skrzyniarz	{"title": "Chief Executive Officer & Founder"}	666	2021-02-08 15:08:06.542009	2021-02-09 15:10:57.646855	t
1356	Michael	Peters	{"title": "Vice President"}	667	2021-02-08 15:08:48.412343	2021-02-09 15:11:13.087697	t
1357	Aaron	Plante	{"title": "COO"}	667	2021-02-08 15:08:48.445491	2021-02-09 15:11:28.929944	t
1358	Kara	Jensen	{"title": "Creative Principal"}	668	2021-02-08 15:09:35.328397	2021-02-09 15:11:44.645111	t
1359	Jeremy	Durant	{"title": "Business Principal"}	668	2021-02-08 15:09:35.359384	2021-02-09 15:12:01.051507	t
1360	Lisa	Hymas	{"title": "Senior Editor"}	669	2021-02-08 15:10:16.904885	2021-02-09 15:12:17.05344	t
1361	Elyse	Kemmerer	{"title": "Chief Science Officer"}	670	2021-02-08 15:11:02.220793	2021-02-09 15:12:32.52948	t
11	James	Diel	{"title": "Founder and CEO"}	105	2021-02-08 00:53:06.506961	2021-02-08 20:09:57.325596	t
13	Hernando	Blanco	{"title": "VP of Product Engineering/Co-founder"}	108	2021-02-08 00:53:41.604598	2021-02-08 20:10:25.78913	t
20	Bryan	Sattler	{"title": "UX Designer"}	110	2021-02-08 00:54:20.844776	2021-02-08 20:13:25.297693	t
26	Pete	Blackmer	{"title": "VP Software Development"}	113	2021-02-08 00:55:44.988615	2021-02-08 20:13:28.025723	t
33	Vadim	Yasinovsky	{"title": "CEO"}	114	2021-02-08 00:57:14.125715	2021-02-08 20:15:26.076774	t
39	Bob	Riazzi	{"title": "President & CEO"}	116	2021-02-08 00:57:53.159146	2021-02-08 20:15:29.504577	t
1362	Michael	Ellison	{"title": "President & Founder"}	672	2021-02-08 15:12:34.658918	2021-02-09 15:12:48.417082	t
1363	Dan	Cole	{"title": "Product Manager"}	673	2021-02-08 15:13:20.567755	2021-02-09 15:13:04.066135	t
1364	David	McTaggart	{"title": "Founder & CEO"}	673	2021-02-08 15:13:20.63125	2021-02-09 15:13:19.540756	t
45	James	Swanston	{"title": "Founder"}	122	2021-02-08 01:01:35.466242	2021-02-08 20:15:33.573839	t
48	Daniel	Bernkopf	{"title": "Vice President, Food Safety and Quality Assurance Applications"}	123	2021-02-08 01:02:16.442094	2021-02-08 20:15:34.967571	t
59	Ed	Rutherfurd	{"title": "VP of Marketing Strategy"}	133	2021-02-08 01:04:56.252434	2021-02-08 20:15:44.619539	t
66	Clement	Connor	{"title": "COO"}	138	2021-02-08 01:07:28.515638	2021-02-08 20:15:50.219961	t
71	Gabe	Wahhab	{"title": "Director of Interactive Services"}	142	2021-02-08 01:09:36.338133	2021-02-08 20:15:52.692082	t
79	Scott	Baradell	{"title": "President"}	150	2021-02-08 01:14:41.946663	2021-02-08 20:15:56.434924	t
83	Aristotle	Spyropoulos	{"title": "CTO"}	152	2021-02-08 01:16:16.803294	2021-02-08 20:15:58.276486	t
86	Joel	Manning	{"title": "VP – List Brokerage"}	152	2021-02-08 01:16:16.89475	2021-02-08 20:15:59.696458	t
93	Manoj	Rajshekar	{"title": "Co-Founder & CEO"}	132	2021-02-08 01:21:00.416219	2021-02-08 20:16:03.601141	t
1365	Peter	Jasko	{"title": "Head of Business Development"}	675	2021-02-08 15:14:00.837828	2021-02-09 15:13:35.042149	t
1366	Gabor	Moczar	{"title": "CTO and Co-Founder"}	675	2021-02-08 15:14:00.868003	2021-02-09 15:13:50.609352	t
1367	Wayne	Crawford	{"title": "Vice President, Sales"}	676	2021-02-08 15:14:39.809109	2021-02-09 15:14:06.459762	t
1368	John	Peinhardt	{"title": "President"}	678	2021-02-08 15:17:06.668662	2021-02-09 15:14:22.455599	t
1369	Scott	E.	{"title": "CEO"}	679	2021-02-08 15:17:42.649532	2021-02-09 15:14:38.427872	t
1370	Seth	Jeacopello	{"title": "Chief Architect and Engineering Manager"}	681	2021-02-08 15:18:28.978019	2021-02-09 15:14:53.89906	t
1371	Pete	Petersen	{"title": "CEO"}	682	2021-02-08 15:19:04.901919	2021-02-09 15:15:09.413088	t
1372	Dennis	McGinn	{"title": "Founder & CEO"}	683	2021-02-08 15:19:43.625782	2021-02-09 15:15:25.600283	t
1373	Steven	Roemerman	{"title": "Chairman & CEO"}	685	2021-02-08 15:21:05.679033	2021-02-09 15:15:41.15477	t
1374	Adam	Ameen	{"title": "Founder & President"}	686	2021-02-08 15:21:46.64294	2021-02-09 15:15:57.189292	t
1375	Brad	Berwald	{"title": "Product Manager"}	689	2021-02-08 15:24:00.115332	2021-02-09 15:16:12.950077	t
1376	Trevor	Crist	{"title": "Founder , President CEO"}	691	2021-02-08 15:25:28.447157	2021-02-09 15:16:28.604874	t
1377	Dan	Hansen	{"title": "President"}	692	2021-02-08 15:26:05.287031	2021-02-09 15:16:44.397544	t
1378	Rick	Williams	{"title": "Chairman of the Board"}	693	2021-02-08 15:26:48.19573	2021-02-09 15:17:00.077838	t
1379	Jack	Collins	{"title": "Chief Operations Officer and Chief Financial Officer"}	693	2021-02-08 15:26:48.230885	2021-02-09 15:17:16.094743	t
1380	Peter	W.	{"title": "Co-Founder and Scientific Advisor"}	693	2021-02-08 15:26:48.279478	2021-02-09 15:17:32.304665	t
1381	Petra	B.	{"title": "Co-Founder"}	693	2021-02-08 15:26:48.328319	2021-02-09 15:17:47.882008	t
1382	Mike	Maiorino	{"title": "CEO & Founder"}	695	2021-02-08 15:28:03.626454	2021-02-09 15:18:03.378187	t
1383	Nicole	Pennington	{"title": "VP of Professional Services"}	695	2021-02-08 15:28:03.658746	2021-02-09 15:18:18.9123	t
1384	Joseph	E.	{"title": "Founder"}	696	2021-02-08 15:28:52.264702	2021-02-09 15:18:34.397452	t
1385	Bill	Mitchell	{"title": "COO"}	697	2021-02-08 15:29:29.261274	2021-02-09 15:18:49.940394	t
1386	Joseph	Flanagan	{"title": "CEO"}	699	2021-02-08 15:31:01.985438	2021-02-09 15:19:05.465676	t
1387	Josh	Mettle	{"title": "Owner and Senior Loan Officer"}	700	2021-02-08 15:31:45.770033	2021-02-09 15:19:21.061722	t
1389	Jennifer	Carroll	{"title": "Former Lieutenant Governor"}	700	2021-02-08 15:31:45.83366	2021-02-09 15:19:52.633038	t
1390	Rodger	Alan	{"title": "Financial Advisor"}	700	2021-02-08 15:31:45.864156	2021-02-09 15:20:08.182595	t
1391	Pat	Williams	{"title": "Co- Founder"}	700	2021-02-08 15:31:45.894666	2021-02-09 15:20:23.941689	t
1392	Jack	Daly	{"title": "Sales Trainer and Sales Coaching Expert"}	700	2021-02-08 15:31:45.925592	2021-02-09 15:20:39.423615	t
1393	Lauren	Elmore	{"title": "President"}	704	2021-02-08 15:34:12.14496	2021-02-09 15:20:55.30757	t
1394	Jay	Heck	{"title": "Founder & President"}	704	2021-02-08 15:34:12.175646	2021-02-09 15:21:11.186226	t
1395	Oleg	Sheyner	{"title": "Chief Technology Officer"}	706	2021-02-08 15:35:35.469643	2021-02-09 15:21:26.899083	t
1397	Michael	DeNitto	{"title": "Founder & Chief Executive Officer"}	706	2021-02-08 15:35:35.534237	2021-02-09 15:21:58.197447	t
1398	Mark	Ryan	{"title": "Chief Analyst"}	707	2021-02-08 15:36:21.919048	2021-02-09 15:22:13.764648	t
1399	Craig	McLaughlin	{"title": "CEO"}	707	2021-02-08 15:36:21.952724	2021-02-09 15:22:29.428923	t
1400	Daryl	Travis	{"title": "CEO"}	710	2021-02-08 15:38:06.825359	2021-02-09 15:22:45.340136	t
1401	Patrik	Misko	{"title": "Product Manager"}	711	2021-02-08 15:38:43.896737	2021-02-09 15:23:00.986056	t
1402	Michael	Rossi	{"title": "Co-Founder & President"}	711	2021-02-08 15:38:43.931249	2021-02-09 15:23:16.499306	t
1403	David	Hark	{"title": "President"}	714	2021-02-08 15:40:40.972713	2021-02-09 15:23:32.1717	t
1405	Tim	Bogard	{"title": "Chief Technology Evangelist and Founder"}	715	2021-02-08 15:41:28.084727	2021-02-09 15:24:03.406325	t
1406	Stephen	Werst	{"title": "Software Product/Program Manager"}	715	2021-02-08 15:41:28.114045	2021-02-09 15:24:18.896819	t
1407	Chris	Wilkes	{"title": "President and CEO"}	715	2021-02-08 15:41:28.144428	2021-02-09 15:24:35.15669	t
99	Emily	Mouton	{"title": "Account Strategist"}	162	2021-02-08 01:22:11.159508	2021-02-08 20:16:07.519638	t
106	Virginia	McDermott	{"title": "Office Manager"}	165	2021-02-08 01:24:08.55454	2021-02-08 20:16:11.212535	t
113	Kate	Haley	{"title": "Co-Founder & Vice President"}	173	2021-02-08 01:28:11.834683	2021-02-08 20:16:15.418587	t
118	Bridget	Gibbons	{"title": "Director of Digital & Inbound Marketing"}	178	2021-02-08 01:31:00.778887	2021-02-08 20:16:18.115352	t
127	Jamie	Stephens	{"title": "Co-Founder & Chief of Digital Strategy"}	181	2021-02-08 01:33:06.403912	2021-02-08 20:16:23.591398	t
135	Catrine	Charron	{"title": "CEO & Founder"}	184	2021-02-08 01:34:55.174079	2021-02-08 20:20:39.803016	t
141	Richard	Dawson	{"title": "President"}	196	2021-02-08 01:40:27.495995	2021-02-08 20:20:42.831666	t
147	Cooper	Bane	{"title": "Vice President"}	204	2021-02-08 01:46:39.764232	2021-02-08 20:20:45.646865	t
153	Neil	Crist	{"title": "VP of Moz Local"}	205	2021-02-08 01:47:19.867752	2021-02-08 20:20:49.487086	t
155	David	Joslin	{"title": "Systems Engineer"}	205	2021-02-08 01:47:19.927705	2021-02-08 20:20:50.773481	t
156	Tim	Ellis	{"title": "Product Analyst"}	205	2021-02-08 01:47:19.957512	2021-02-08 20:20:51.287143	t
162	David	Travers	{"title": "Board of Directors"}	209	2021-02-08 01:48:23.430074	2021-02-08 20:20:54.3555	t
168	Colin	Kelley	{"title": "Chief Technlogy Officer"}	218	2021-02-08 01:53:42.080006	2021-02-08 20:20:57.335173	t
174	Cathie	Brunnick	{"title": "Vice President of Partnerships and Alliances"}	218	2021-02-08 01:53:42.277653	2021-02-08 20:21:00.726062	t
182	Robert	Cruz	{"title": "Director, Information Governance"}	219	2021-02-08 01:54:15.473157	2021-02-08 20:21:05.887543	t
190	Daniela	Perdomo	{"title": "Co-founder & CEO"}	231	2021-02-08 02:01:52.309606	2021-02-08 20:21:10.873647	t
195	Mark	Handfelt	{"title": "Chief Administrative Officer & General Counsel"}	233	2021-02-08 02:02:40.717981	2021-02-08 20:21:13.485961	t
204	Shannon	Frohme	{"title": "Sr. Marketing Manager"}	234	2021-02-08 02:03:31.969041	2021-02-08 20:21:18.105013	t
211	Rustem	Feyzkhanov	{"title": "Machine Learning Engineer"}	235	2021-02-08 02:04:11.109665	2021-02-08 20:21:21.338031	t
217	Marissa	Bowman	{"title": "Senior Director, Customer Success"}	237	2021-02-08 02:05:00.596179	2021-02-08 20:21:24.250516	t
225	Lana	Bronipolsky	{"title": "VP of Finance & CFO"}	239	2021-02-08 02:06:20.903105	2021-02-08 20:21:28.249993	t
229	Wendy	Schuchart	{"title": "Webinar Manager"}	240	2021-02-08 02:07:06.110485	2021-02-08 20:21:30.276345	t
237	Luke	Jacobi	{"title": "Director of Operations"}	242	2021-02-08 02:08:28.99272	2021-02-08 20:26:41.08046	t
243	Javier	Hasse	{"title": "Managing Director, Benzinga Cannabis"}	242	2021-02-08 02:08:29.172249	2021-02-08 20:26:47.009161	t
250	Henry	Lee	{"title": "Data Scientist"}	244	2021-02-08 02:09:13.887976	2021-02-08 20:26:51.250357	t
256	Uri	Polishook	{"title": "Director of Customer Success"}	246	2021-02-08 02:10:02.455488	2021-02-08 20:26:54.21892	t
264	David	Nedohin	{"title": "Founder & President"}	249	2021-02-08 02:11:44.650107	2021-02-08 20:26:58.287952	t
270	Craig	Unger	{"title": "Founder & CEO"}	250	2021-02-08 02:12:21.719812	2021-02-08 20:27:01.594608	t
276	Adam	Koopersmith	{"title": "Investor"}	252	2021-02-08 02:12:58.562901	2021-02-08 20:27:05.091355	t
283	Dan	Bebout	{"title": "Founder & VP Customer Success"}	254	2021-02-08 02:15:20.425593	2021-02-08 20:27:08.275193	t
289	Dane	Francis	{"title": "Business Development"}	254	2021-02-08 02:15:20.62592	2021-02-08 20:27:11.374155	t
296	Tim	Buchner	{"title": "Co-Founder & Chief Operations Officer"}	259	2021-02-08 02:17:44.028419	2021-02-08 20:27:14.519484	t
302	Ram	Varadarajan	{"title": "Founder, Chairman and CEO"}	261	2021-02-08 02:19:11.239172	2021-02-08 20:27:17.548657	t
309	Sam	Berg	{"title": "VP, Sales, Business Development, and Strategy"}	262	2021-02-08 02:19:50.413464	2021-02-08 20:27:21.296733	t
316	Lovan	Chetty	{"title": "VP, Product & Solution Architecture"}	262	2021-02-08 02:19:50.661962	2021-02-08 20:27:24.887226	t
324	Bart	Marchioni	{"title": "Director of Member Success"}	264	2021-02-08 02:21:17.982043	2021-02-08 20:27:28.709378	t
331	Eran	Sher	{"title": "Co-Founder & CEO"}	267	2021-02-08 02:23:12.174904	2021-02-08 20:27:32.447829	t
336	Pin	Chin	{"title": "Chief Business Officer & President of Asia"}	268	2021-02-08 02:23:49.424279	2021-02-08 20:33:17.157508	t
344	Ian	Herbert-Jones	{"title": "Chief Revenue Officer"}	269	2021-02-08 02:24:35.757016	2021-02-08 20:33:21.670574	t
351	Thi	Avrahami	{"title": "Senior AI Experience Engineer"}	273	2021-02-08 02:26:00.436572	2021-02-08 20:33:24.889671	t
359	Dan	Roy	{"title": "Co-Founder, CPO"}	277	2021-02-08 02:27:37.381339	2021-02-08 20:33:29.190398	t
365	Albert	Liu	{"title": "Email Deliverability Manager"}	277	2021-02-08 02:27:37.719913	2021-02-08 20:33:33.647414	t
366	Alex	Grodd	{"title": "Founder & Chief Executive Officer"}	278	2021-02-08 02:28:11.763125	2021-02-08 20:33:34.650885	t
368	Chris	Hartmann	{"title": "Director of Curriculum & Instruction"}	278	2021-02-08 02:28:11.823885	2021-02-08 20:33:35.610051	t
376	Bill	Major	{"title": "Chief Revenue Officer"}	279	2021-02-08 02:28:43.452482	2021-02-08 20:33:41.360265	t
383	Russell	Sachs	{"title": "Chief Revenue Officer"}	280	2021-02-08 02:29:21.026023	2021-02-08 20:33:48.907216	t
390	Nikko	Patten	{"title": "Co-Founder & CTO"}	282	2021-02-08 02:30:53.057714	2021-02-08 20:33:58.07115	t
395	Sean	Doherty,	{"title": "SVP Operations / Co-Founder"}	283	2021-02-08 02:31:26.425616	2021-02-08 20:34:00.367733	t
404	RJ	Kraus	{"title": "Chief Product Officer / Co-Founder"}	286	2021-02-08 02:33:16.362148	2021-02-08 20:34:05.095301	t
410	Daniel	Hirt	{"title": "Chief Operating Officer"}	287	2021-02-08 02:33:50.455961	2021-02-08 20:34:07.906002	t
417	Agne	Adomonyte	{"title": "Chief Product Officer"}	288	2021-02-08 02:34:27.595465	2021-02-08 20:34:11.340222	t
423	Guilherme	Cerqueira	{"title": "Founder"}	290	2021-02-08 02:35:16.685189	2021-02-08 20:34:14.396297	t
428	Andrew	Tweedie	{"title": "Director of UK Operations, Founder"}	291	2021-02-08 02:36:08.002862	2021-02-08 20:34:16.801788	t
437	David	Parker	{"title": "COO/CFO"}	292	2021-02-08 02:36:52.573008	2021-02-08 20:34:21.405439	t
438	Tammy	Angel-Gorzela	{"title": "Director Human Resources"}	292	2021-02-08 02:36:52.603749	2021-02-08 20:34:21.853568	t
441	Nikki	Harkin	{"title": "Director of People & Culture"}	294	2021-02-08 02:37:38.599735	2021-02-08 20:34:23.332542	t
449	Michael	Gorton	{"title": "Board Observer"}	295	2021-02-08 02:38:17.711266	2021-02-08 20:34:27.524558	t
454	Julie	Grill	{"title": "Vice President of Regulatory Affairs and Quality Systems"}	297	2021-02-08 02:39:42.970635	2021-02-08 20:34:29.959737	t
464	Elizabeth	Long	{"title": "VP of Customer Engagement"}	303	2021-02-08 02:42:57.756777	2021-02-08 20:34:35.679588	t
470	James	Lamberti	{"title": "Chief Marketing Officer"}	305	2021-02-08 02:44:17.938219	2021-02-08 20:34:38.474962	t
476	Kathryn	Petrillo-Smith	{"title": "Chief Operating Officer"}	306	2021-02-08 02:44:56.741238	2021-02-08 20:34:41.884342	t
484	Jeanette	Thomas	{"title": "Founder & CTO"}	307	2021-02-08 02:45:33.017904	2021-02-08 20:34:45.990068	t
489	Celeste	Henkelmann	{"title": "Senior Marketing and Communications Manager"}	309	2021-02-08 02:46:58.211686	2021-02-08 20:34:48.662695	t
497	Chris	Geiser	{"title": "Managing Director of Product & Design"}	311	2021-02-08 02:48:20.156444	2021-02-08 20:34:53.049085	t
505	Evan	Myrianthopoulos	{"title": "Managing director"}	312	2021-02-08 02:49:05.302479	2021-02-08 20:34:56.81472	t
508	Abhaya	Shrestha	{"title": "Managing director"}	312	2021-02-08 02:49:05.39982	2021-02-08 20:34:58.234264	t
510	Daniel	Rudman	{"title": "Founder and CTO"}	313	2021-02-08 02:49:45.481475	2021-02-08 20:34:59.173902	t
514	Valerie	Brodie	{"title": "SVP Marketing & Supplier Enablement Operations"}	314	2021-02-08 02:50:27.346202	2021-02-08 20:35:01.075133	t
523	Tom	Kennedy	{"title": "Co Founder & CTO"}	316	2021-02-08 02:52:00.21237	2021-02-08 20:35:05.560081	t
529	Zach	Smith	{"title": "Vice President of Nursing"}	319	2021-02-08 02:53:29.461672	2021-02-08 20:35:08.410077	t
536	Prasad	Gollapalli	{"title": "CEO & Founder"}	320	2021-02-08 02:54:05.872056	2021-02-08 20:49:02.296648	t
542	Gurinder	Ahluwalia	{"title": "CEO & Co founder"}	322	2021-02-08 02:55:21.910626	2021-02-08 20:49:05.652752	t
550	Brad	Bode	{"title": "CTO & CIO"}	323	2021-02-08 02:56:08.075136	2021-02-08 20:49:09.61574	t
555	Max	Friedfeld	{"title": "Co-Founder"}	324	2021-02-08 02:56:50.106862	2021-02-08 20:49:11.977072	t
560	Himanshu	Chaudhary	{"title": "Director of Software Engineering and Compliance"}	325	2021-02-08 04:13:30.597737	2021-02-08 20:49:14.312227	t
568	Christopher	Zaki	{"title": "Managing Director, Head of Capital Markets and Partnerships"}	327	2021-02-08 04:14:14.008747	2021-02-08 20:49:18.303755	t
578	Toffer	Grant	{"title": "Founder & CEO"}	330	2021-02-08 04:16:13.559506	2021-02-08 20:49:31.77992	t
582	Scott	Rogers	{"title": "Engineering & Design"}	331	2021-02-08 04:17:03.073754	2021-02-08 20:49:34.392676	t
589	Kristine	Jacobs	{"title": "VP Customer Success"}	337	2021-02-08 04:19:22.315841	2021-02-08 20:49:37.592923	t
596	Chris	Riley	{"title": "Dir Tech Evangelist"}	338	2021-02-08 04:20:00.310782	2021-02-08 20:49:40.877442	t
601	Nicholas	Cardwell	{"title": "VP of Engineering and Operations"}	339	2021-02-08 04:20:46.274728	2021-02-08 20:49:43.334339	t
609	Leila	Jere	{"title": "Vice President, Customer Success"}	342	2021-02-08 04:23:05.577925	2021-02-08 20:49:47.278799	t
617	Laure	Levin	{"title": "VP of Sales"}	345	2021-02-08 04:25:12.763265	2021-02-08 20:49:52.125026	t
622	Jason	McMinn	{"title": "Co-Founder & VP of Product"}	347	2021-02-08 04:26:06.375216	2021-02-08 20:49:54.461117	t
631	Jason	MacMurray	{"title": "Vice President of Operations and Partnerships"}	350	2021-02-08 04:28:22.820019	2021-02-08 20:49:58.691539	t
638	Benjamin	Malka	{"title": "Investor"}	351	2021-02-08 04:29:05.940262	2021-02-08 20:50:02.902957	t
644	Alan	Blank	{"title": "General Counsel"}	352	2021-02-08 04:29:56.300474	2021-02-08 20:50:06.244654	t
649	Morgan	Davis	{"title": "Co-Founder and Chief Executive Officer"}	354	2021-02-08 04:30:42.024252	2021-02-08 20:50:08.708487	t
652	Robert	Morello	{"title": "Co-Founder and Director of Data Analytics"}	355	2021-02-08 04:31:18.165072	2021-02-08 20:50:10.409469	t
659	J.R.	Hermann	{"title": "SVP, Sales"}	356	2021-02-08 04:32:06.381677	2021-02-08 20:50:14.14004	t
665	John	Lynch	{"title": "Founder & CTO"}	359	2021-02-08 04:33:31.053117	2021-02-08 20:50:17.493166	t
672	Edward	M.	{"title": "Chairman"}	361	2021-02-08 04:34:54.330615	2021-02-08 20:50:21.263532	t
677	Serrah	Namini	{"title": "Vice President RA, CA, QA"}	361	2021-02-08 04:34:54.512942	2021-02-08 20:50:23.702599	t
684	James	G.	{"title": "Chief Financial Officer"}	362	2021-02-08 04:35:31.725826	2021-02-08 20:50:27.160873	t
690	Remus	Hociota	{"title": "VP of Information Technology"}	363	2021-02-08 04:36:16.927236	2021-02-08 20:50:30.313562	t
698	Jon	Little	{"title": "VP of Aviation"}	364	2021-02-08 04:36:56.265179	2021-02-08 20:50:34.589991	t
705	Greg	White	{"title": "Chief Executive Officer"}	366	2021-02-08 04:38:03.352239	2021-02-08 20:50:38.021695	t
710	Geoff	Penney	{"title": "Vice President of Business Development"}	368	2021-02-08 04:38:48.16753	2021-02-08 20:50:40.408712	t
717	Leslie	Ramirez	{"title": "Assistant Director, Embryology Laboratory"}	372	2021-02-08 04:40:03.916329	2021-02-08 20:50:43.776079	t
720	Mark	Hill	{"title": "CEO and Chairman"}	375	2021-02-08 04:41:29.639882	2021-02-08 20:50:46.10991	t
724	Bill	Godfrey	{"title": "Co-founder and VP of Business Development"}	375	2021-02-08 04:41:29.779481	2021-02-08 20:50:48.216613	t
732	Karen	Stainbrook	{"title": "VP, Operations"}	381	2021-02-08 04:43:50.070229	2021-02-08 20:50:52.639638	t
739	John	Kinney	{"title": "Founder and Executive Chairman"}	383	2021-02-08 04:45:19.524518	2021-02-08 21:40:59.186569	t
747	Dan	Chamberlin	{"title": "Vice President of Sales and Marketing"}	387	2021-02-08 04:58:00.894672	2021-02-08 21:45:04.838159	t
753	Susan	Marshall	{"title": "Co-Founder and CEO"}	389	2021-02-08 04:59:33.599057	2021-02-08 21:54:10.976578	t
760	Ted	Stine	{"title": "General Manager"}	393	2021-02-08 05:01:05.825158	2021-02-08 21:57:45.562989	t
766	Delano	Seymour	{"title": "Co-Founder & CTO"}	395	2021-02-08 05:02:17.200335	2021-02-08 22:00:51.914384	t
773	Christophe	Bisciglia	{"title": "Founder and CEO"}	398	2021-02-08 05:04:26.071053	2021-02-08 22:04:26.047517	t
776	Steve	Prince	{"title": "Vp, Sales & Operations; Director, Sales Engineering, Product Management & Operations"}	399	2021-02-08 05:04:58.634782	2021-02-08 22:05:57.779939	t
790	Joseph	Gillespie	{"title": "President & CEO"}	401	2021-02-08 05:06:13.956399	2021-02-08 22:13:06.752212	t
792	Tim	Jemison	{"title": "Co-Founder & Chief Operating Officer"}	401	2021-02-08 05:06:14.017015	2021-02-08 22:14:07.778306	t
800	Peter	Keum	{"title": "CEO"}	408	2021-02-08 05:07:42.604372	2021-02-09 00:37:35.98331	t
805	Ken	Sullivan	{"title": "Co-Founder & Shareholder"}	412	2021-02-08 05:09:12.673921	2021-02-09 00:38:53.637704	t
811	Daniel	Abrams	{"title": "Chief Technology Officer"}	415	2021-02-08 05:11:07.659063	2021-02-09 00:40:28.097313	t
818	Julie	Dunn	{"title": "Marketing Director"}	419	2021-02-08 05:12:08.532536	2021-02-09 00:42:16.915664	t
823	Matt	Owen	{"title": "Investor of Kigo, Consultant for Kigo"}	420	2021-02-08 05:12:51.629479	2021-02-09 00:43:35.302024	t
832	Alex	Wagenheim	{"title": "Strategy and Corporate Development"}	424	2021-02-08 05:14:25.787646	2021-02-09 00:45:55.892075	t
839	Karl	McGarvey	{"title": "Chief Executive Officer and Director"}	427	2021-02-08 05:16:27.507673	2021-02-09 00:47:45.298982	t
846	Tony	Caudill	{"title": "Co-Founder & CEO"}	429	2021-02-08 05:17:41.375002	2021-02-09 00:49:34.00575	t
853	Robert	E.	{"title": "COO"}	435	2021-02-08 05:20:15.233281	2021-02-09 00:51:22.80069	t
858	Karen	Higgins	{"title": "CFO"}	437	2021-02-08 05:21:52.12229	2021-02-09 00:52:40.991551	t
862	Stephen	Moritz	{"title": "Founder, President and CEO"}	438	2021-02-08 05:22:30.196809	2021-02-09 00:53:43.234688	t
866	Elizabeth	Tomaszewicz	{"title": "CEO"}	440	2021-02-08 05:23:49.944082	2021-02-09 00:54:45.500179	t
873	Ryan	Hagan	{"title": "Chief Operating Officer"}	444	2021-02-08 05:26:23.719139	2021-02-09 00:56:34.129902	t
878	James	Werner	{"title": "EVP Higher Education Sales"}	447	2021-02-08 05:28:20.373149	2021-02-09 00:57:52.06292	t
886	Andrew	Dennis	{"title": "CEO & Founder"}	452	2021-02-08 05:30:31.676865	2021-02-09 00:59:56.797468	t
892	Margie	Daniell	{"title": "Head of Human Resource"}	454	2021-02-08 05:31:59.076748	2021-02-09 01:01:29.965109	t
900	Rajesh	Kutty	{"title": "Founder and CEO"}	459	2021-02-08 05:35:56.68771	2021-02-09 01:26:18.981481	t
906	Bruce	H.	{"title": "President&Director"}	463	2021-02-08 05:37:44.492758	2021-02-09 01:27:52.30712	t
911	Bryan	Dik	{"title": "Co-Founder & Chief Science Officer"}	466	2021-02-08 05:39:08.317941	2021-02-09 01:29:09.893646	t
918	Nick	Miletich	{"title": "Chief Technology Officer"}	470	2021-02-08 05:41:18.904603	2021-02-09 01:30:59.185415	t
925	Chris	Adams	{"title": "CTO"}	473	2021-02-08 05:42:41.514074	2021-02-09 01:32:47.990099	t
931	Paul	Bjorndahl	{"title": "Vice President Sales & Marketing"}	474	2021-02-08 05:43:23.241635	2021-02-09 01:34:21.583886	t
935	Janette	Chock	{"title": "Janette Chock"}	475	2021-02-08 05:44:01.596506	2021-02-09 01:35:23.632896	t
940	Giorgina	Gottlieb	{"title": "Co-Founder and VP Marketing"}	475	2021-02-08 05:44:01.758558	2021-02-09 01:36:41.392821	t
946	Timothy	Claytor	{"title": "SVP, Partner Development"}	481	2021-02-08 05:47:05.966701	2021-02-09 01:38:15.25151	t
954	Jan	Ulep	{"title": "Director of Finance and Operations"}	482	2021-02-08 05:47:49.32235	2021-02-09 01:40:20.643576	t
961	Steve	Rafferty	{"title": "President & CEO"}	484	2021-02-08 05:49:09.573962	2021-02-09 01:42:10.457925	t
967	WILLIAM	H.	{"title": "Founder & CEO"}	487	2021-02-08 05:50:37.606828	2021-02-09 01:43:43.836702	t
974	Mike	Lapchick	{"title": "Founder & CEO"}	493	2021-02-08 06:03:12.722815	2021-02-09 01:45:32.430146	t
979	Steven	Weidman	{"title": "Chief Operating and Development Officer"}	497	2021-02-08 06:05:29.492167	2021-02-09 01:46:50.439546	t
986	Jeanne	Straw	{"title": "Vice President of Administration"}	499	2021-02-08 06:06:53.040498	2021-02-09 01:48:40.12927	t
994	Matt	McClintock	{"title": "Director of Product Marketing"}	501	2021-02-08 06:08:14.216032	2021-02-09 01:50:44.688566	t
1002	Derek	Schlicker	{"title": "Chief Financial Officer"}	505	2021-02-08 06:10:13.644506	2021-02-09 01:52:48.876521	t
1006	Ziv	Navoth	{"title": "Chief Revenue Officer"}	506	2021-02-08 06:10:59.703368	2021-02-09 01:53:51.73652	t
1010	Edo	Segal	{"title": "Co-Founder, CEO"}	506	2021-02-08 06:10:59.840927	2021-02-09 01:54:53.855127	t
1016	Sandra	Garby	{"title": "Co-Founder, President and VP of Operations"}	509	2021-02-08 06:13:14.24858	2021-02-09 01:56:26.962421	t
1022	Chapman	Lever	{"title": "Director of Alliances & Market Development"}	511	2021-02-08 06:14:03.579598	2021-02-09 01:58:00.121029	t
1031	Ibrahim	Mesbah	{"title": "Co-Founder & CEO"}	516	2021-02-08 06:16:18.733087	2021-02-09 02:00:19.916709	t
1039	Clifford	Pollan	{"title": "Co-Founder, CEO"}	520	2021-02-08 06:19:58.231461	2021-02-09 02:02:25.208505	t
1044	Michael	Belding	{"title": "Chief Technology Officer"}	522	2021-02-08 06:21:16.208374	2021-02-09 02:03:43.178055	t
1051	Mark	Lloyd	{"title": "Founder & Executive Vice President"}	523	2021-02-08 06:22:08.413625	2021-02-09 02:05:31.840542	t
1058	Robert	Waldie	{"title": "Distinguished Engineer"}	528	2021-02-08 06:25:10.621369	2021-02-09 02:07:20.753488	t
1065	Greg	Veintimilla	{"title": "Chief Technology Officer and Vice President of Engineering"}	530	2021-02-08 06:26:32.415656	2021-02-09 02:09:09.318121	t
1073	Therese	Torris	{"title": "Senior Contributing Editor"}	535	2021-02-08 06:28:14.201034	2021-02-09 02:11:13.550576	t
1078	Timothy	Spell	{"title": "Founder"}	538	2021-02-08 06:30:06.294421	2021-02-09 02:12:31.2987	t
1079	William	Sanchez	{"title": "Regional Vice President"}	539	2021-02-08 06:30:50.690197	2021-02-09 02:12:46.766003	t
1081	Aaron	Wood	{"title": "Director of Operations"}	539	2021-02-08 06:30:50.753709	2021-02-09 02:13:18.276571	t
1088	Michael	Richard	{"title": "Director of Finance"}	541	2021-02-08 06:32:12.121199	2021-02-09 02:15:06.897908	t
1094	Robert	W.	{"title": "President & CEO"}	545	2021-02-08 06:34:05.751165	2021-02-09 02:16:40.358798	t
1100	Gloria	S.	{"title": "CEO, Co-Founder"}	550	2021-02-08 06:36:18.366563	2021-02-09 02:18:13.445877	t
1106	Al	Castle	{"title": "VP, Engineering & Product"}	551	2021-02-08 06:37:01.012827	2021-02-09 02:19:46.525409	t
1113	Floyd	Arnold	{"title": "Founder"}	555	2021-02-08 13:21:17.118647	2021-02-09 02:21:35.125419	t
1119	Adam	Dennison	{"title": "SVP/Publisher"}	557	2021-02-08 13:21:59.771674	2021-02-09 02:23:08.829656	t
1126	Collin	Cohen	{"title": "Chairman"}	561	2021-02-08 13:25:38.131888	2021-02-09 02:24:57.615738	t
1130	Aaron	Kolski-Andreaco	{"title": "Director of Video Productions"}	562	2021-02-08 14:06:02.536351	2021-02-09 02:25:59.69339	t
1137	Geetha	Neelakantiah	{"title": "Vice President of Business Development"}	563	2021-02-08 14:06:42.738378	2021-02-09 02:27:48.225095	t
1146	Cindy	Esposito	{"title": "Co-founder and COO"}	565	2021-02-08 14:07:53.909879	2021-02-09 02:30:07.930791	t
1152	Troy	Anderson	{"title": "Founder & CTO"}	572	2021-02-08 14:10:04.038455	2021-02-09 02:31:41.573869	t
1153	Robert	Reichner	{"title": "CEO"}	572	2021-02-08 14:10:04.070277	2021-02-09 02:31:57.80131	t
1159	Jason	Shrensky	{"title": "Founder"}	574	2021-02-08 14:11:24.061124	2021-02-09 02:33:31.191109	t
1164	Chuck	Ciarlo	{"title": "Chief Executive Officer & Founder Vice President & GM"}	577	2021-02-08 14:15:38.357051	2021-02-09 02:34:48.876455	t
1172	Bram	Belzberg	{"title": "Chairman and CEO"}	583	2021-02-08 14:19:12.467721	2021-02-09 02:36:55.611648	t
1177	Brad	Moore	{"title": "Vice President of Sales & Business Development"}	585	2021-02-08 14:20:34.309331	2021-02-09 02:38:13.212726	t
1186	HENG	WANG	{"title": "Vice President of Engineering, San Diego"}	588	2021-02-08 14:22:44.505339	2021-02-09 02:40:34.207293	t
1194	Michael	Hall	{"title": "Founder"}	590	2021-02-08 14:24:10.589035	2021-02-09 02:42:38.874174	t
1199	Rebecca	Wilmoth	{"title": "Director of Marketing"}	591	2021-02-08 14:24:57.839072	2021-02-09 02:43:56.488791	t
1205	Ted	Pacitti	{"title": "VP Sales and Client Services"}	596	2021-02-08 14:27:04.524886	2021-02-09 02:45:30.654504	t
1211	Erica	DeLorenzo	{"title": "Sr. Director, Global Membership at Mobile Marketing Association"}	597	2021-02-08 14:27:55.733662	2021-02-09 02:47:03.836594	t
1221	Stanley	Kania	{"title": "Founder , CEO & President"}	603	2021-02-08 14:31:01.360579	2021-02-09 02:49:39.224458	t
1222	Joe	Oltmann	{"title": "CEO"}	606	2021-02-08 14:31:45.45114	2021-02-09 02:49:54.724051	t
1227	Chris	Leebelt	{"title": "Chief Information and Innovation Officer"}	606	2021-02-08 14:31:45.627559	2021-02-09 02:51:12.309712	t
1234	Rebecca	Brygel	{"title": "Founder & CEO"}	611	2021-02-08 14:34:22.853857	2021-02-09 02:53:01.33134	t
1240	John	McKethan	{"title": "Vice President of Enterprise Sales and New Market Development"}	613	2021-02-08 14:35:40.545634	2021-02-09 02:54:34.429432	t
1249	Karmin	Noar	{"title": "Executive Director, Biocom Institute"}	617	2021-02-08 14:38:36.527813	2021-02-09 02:56:54.591275	t
1254	Spencer	Chambers	{"title": "VP, Product Management and Strategic Initiatives"}	618	2021-02-08 14:39:13.80401	2021-02-09 02:58:12.117347	t
1264	Renee	Fitzgerald	{"title": "Chief Operations Officer"}	622	2021-02-08 14:40:57.347997	2021-02-09 03:00:47.866041	t
1272	Billy	Ray	{"title": "VP of Professional Services"}	625	2021-02-08 14:42:18.853678	2021-02-09 03:02:52.223452	t
1277	Michelle	Zurlo	{"title": "Social Medial Specialist"}	627	2021-02-08 14:43:36.76534	2021-02-09 03:04:09.847781	t
1284	Benjamin	Day	{"title": "Professional Scrum Trainer"}	628	2021-02-08 14:44:16.005015	2021-02-09 03:05:58.769672	t
1291	Jeff	Sammak	{"title": "Founder"}	633	2021-02-08 14:47:42.162267	2021-02-09 03:07:47.682815	t
1294	Sue	Burford	{"title": "Vice President, Consulting Operations"}	634	2021-02-08 14:48:17.029359	2021-02-09 03:08:34.228151	t
1303	Craig	Traxler	{"title": "Principal"}	640	2021-02-08 14:50:20.659119	2021-02-09 05:01:14.361355	t
1308	Sev	Onyshkevych	{"title": "Chief Marketing Officer"}	645	2021-02-08 14:53:52.190277	2021-02-09 05:02:32.005315	t
1315	Clay	Miller	{"title": "CTO / Chief Software Architect"}	649	2021-02-08 14:55:10.915107	2021-02-09 05:04:20.897068	t
1321	Ann	Babe	{"title": "Assistant to the CEO & Projects Coordinator, Techonomy Media"}	652	2021-02-08 14:58:29.51788	2021-02-09 05:05:54.44967	t
1330	Harlan	Schafir	{"title": "Chief Visionary Officer & Co-Founder"}	656	2021-02-08 15:01:02.429955	2021-02-09 05:08:14.543702	t
1337	Chris	Bordeaux	{"title": "Chief Operations Officer & General Counsel"}	660	2021-02-08 15:04:03.201304	2021-02-09 05:10:01.643176	t
1345	Nancy	Eiring	{"title": "Director of Marketing Strategies & Engagement"}	664	2021-02-08 15:06:46.102576	2021-02-09 15:08:19.159778	t
1354	Neesha	A.	{"title": "Innovation Open Coordinator"}	666	2021-02-08 15:08:06.510383	2021-02-09 15:10:42.132449	t
1388	Peter	Margaritis	{"title": "Speaker, Educator, Trainer, and Stand-up Comedian"}	700	2021-02-08 15:31:45.800894	2021-02-09 15:19:37.073553	t
1396	Michele	Beckley	{"title": "Director of Finance & Administration"}	706	2021-02-08 15:35:35.503764	2021-02-09 15:21:42.669426	t
1404	James	Stoddard	{"title": "VP Product Development & Chief Technical Officer"}	715	2021-02-08 15:41:28.052644	2021-02-09 15:23:47.708715	t
1409	Mike	Anders	{"title": "President"}	720	2021-02-09 15:47:36.759978	2021-02-09 17:32:10.643734	t
1410	Tom	Case	{"title": "VP of Managed Services"}	720	2021-02-09 15:47:36.796911	2021-02-09 17:32:26.175407	t
1411	Brian	K.	{"title": "CTO"}	720	2021-02-09 15:47:36.84235	2021-02-09 17:32:41.770142	t
1412	Jeff	Boersma	{"title": "President & CEO"}	722	2021-02-09 15:48:54.585301	2021-02-09 17:32:57.258017	t
1413	Stuart	Hatfield	{"title": "Business Manager"}	722	2021-02-09 15:48:54.614065	2021-02-09 17:33:12.818889	t
1414	David	Loke	{"title": "CEO & Co-Founder"}	724	2021-02-09 15:49:42.404462	2021-02-09 17:33:28.28904	t
1415	Roberto	Angulo	{"title": "CEO"}	725	2021-02-09 15:50:27.338435	2021-02-09 17:33:44.253722	t
1416	Ami	Goldenberg	{"title": "Co-Founder & CTO"}	780	2021-02-09 15:51:49.947395	2021-02-09 17:33:59.805293	t
1417	Ishai	Ankri	{"title": "Head of Product"}	780	2021-02-09 15:51:49.977372	2021-02-09 17:34:15.705784	t
1418	Uri	Levine	{"title": "Chairman"}	780	2021-02-09 15:51:50.007568	2021-02-09 17:34:31.397154	t
1419	Aviel	Siman-Tov	{"title": "Co-Founder & CEO"}	780	2021-02-09 15:51:50.036088	2021-02-09 17:34:46.913692	t
1420	Alex	Burkholder	{"title": "Co-Founder"}	729	2021-02-09 15:53:21.036222	2021-02-09 17:35:02.607311	t
1421	Andrea	Lodigiani	{"title": "Co-Founder"}	729	2021-02-09 15:53:21.065346	2021-02-09 17:35:18.079409	t
1422	Craig	Jordan	{"title": "Co-Founder"}	729	2021-02-09 15:53:21.094383	2021-02-09 17:35:33.613564	t
1423	SAITO	Kouji	{"title": "CTO"}	732	2021-02-09 15:54:59.180543	2021-02-09 17:35:49.149508	t
1424	HItotsugi	Takayuki	{"title": "CEO"}	732	2021-02-09 15:54:59.210741	2021-02-09 17:36:05.138049	t
1425	Barry	Flaherty	{"title": "Business Development Director"}	732	2021-02-09 15:54:59.239937	2021-02-09 17:36:21.607574	t
1426	WATABE	Kazuki	{"title": "CCO"}	732	2021-02-09 15:54:59.2688	2021-02-09 17:36:37.593218	t
1427	Adriano	Rosa	{"title": "CEO"}	733	2021-02-09 15:55:45.789695	2021-02-09 17:36:53.825333	t
1428	Tony	Medrano	{"title": "CEO"}	734	2021-02-09 15:59:34.772171	2021-02-09 17:37:10.178687	t
1429	Nicholas	Wehr	{"title": "Executive Vice President of Technology"}	734	2021-02-09 15:59:34.803171	2021-02-09 17:37:25.974689	t
1430	Megan	Vizzini	{"title": "Vice President of Sales, Accounts and Service"}	734	2021-02-09 15:59:34.833992	2021-02-09 17:37:41.929393	t
1431	Ray	King	{"title": "Account Executive"}	734	2021-02-09 15:59:34.863595	2021-02-09 17:37:57.648338	t
1432	Glenn	Miller	{"title": "Senior Manager of Accounting"}	734	2021-02-09 15:59:34.905927	2021-02-09 17:38:13.304969	t
1433	Katie	Stinson	{"title": "Library Outreach"}	734	2021-02-09 15:59:34.937151	2021-02-09 17:38:29.152497	t
1434	Megan	Vizzini	{"title": "Director of Accounts & Business Development"}	734	2021-02-09 15:59:34.967248	2021-02-09 17:38:44.732202	t
1435	Richard	Haley	{"title": "Software Engineer"}	734	2021-02-09 15:59:34.997297	2021-02-09 17:39:01.218481	t
1436	Will	Snook	{"title": "Owner"}	738	2021-02-09 16:00:51.91485	2021-02-09 17:39:16.953905	t
1437	Nick	Eubanks	{"title": "Vice President"}	738	2021-02-09 16:00:51.958903	2021-02-09 17:39:32.781456	t
1438	Andreas	Glocker	{"title": "CEO / Founder"}	739	2021-02-09 16:01:32.979156	2021-02-09 17:39:48.379872	t
1439	Cody	James	{"title": "Marketing Manager"}	739	2021-02-09 16:01:33.009478	2021-02-09 17:40:04.678734	t
1440	Jody	Hamlett	{"title": "Managing Director"}	740	2021-02-09 16:02:15.067452	2021-02-09 17:40:20.190684	t
1442	Alex	Sartogo	{"title": "VP Technology"}	740	2021-02-09 16:02:15.129522	2021-02-09 17:40:52.149364	t
1443	Tony	DiCostanzo	{"title": "President"}	741	2021-02-09 16:03:01.884151	2021-02-09 17:41:08.064641	t
1446	Todd	Lindenbaum	{"title": "Founder and Chief Executive Officer"}	746	2021-02-09 16:06:31.300152	2021-02-09 17:41:54.670052	t
1447	Matthew	Cleaver	{"title": "CEO & Founding Partner"}	747	2021-02-09 16:07:19.429797	2021-02-09 17:42:10.192927	t
1448	Anthony	DeLuca	{"title": "CFO"}	748	2021-02-09 16:07:58.867083	2021-02-09 17:42:25.748146	t
1449	Jodi	Harouche	{"title": "President and Creative Director"}	748	2021-02-09 16:07:58.897017	2021-02-09 17:42:41.344499	t
1450	Dave	Harouche	{"title": "Founder, CEO & CTO"}	748	2021-02-09 16:07:58.926568	2021-02-09 17:42:56.862781	t
1451	Foster	Charles	{"title": "Founder"}	750	2021-02-09 16:09:32.966891	2021-02-09 17:43:12.34182	t
1452	Bella	Banbury	{"title": "Founder and CEO"}	751	2021-02-09 16:10:14.726159	2021-02-09 17:43:27.890179	t
1453	Tracy	Lloyd	{"title": "Co-Founder and Chief Strategy Officer"}	751	2021-02-09 16:10:14.760512	2021-02-09 17:43:43.418855	t
1454	Tom	McGrath	{"title": "CEO"}	753	2021-02-09 16:10:59.742211	2021-02-09 17:43:58.911826	t
1455	Colin	Cole	{"title": "Co-Founder, Senior Consultant & Architect"}	753	2021-02-09 16:10:59.772185	2021-02-09 17:44:14.50098	t
1456	Dave	Klein	{"title": "Co-Founder & COO"}	753	2021-02-09 16:10:59.800893	2021-02-09 17:44:30.028455	t
1457	Chris	Delany	{"title": "CEO & Founder"}	755	2021-02-09 16:11:42.745201	2021-02-09 17:44:45.917208	t
1458	Jonathan	Wygant	{"title": "Founder and CEO"}	759	2021-02-09 16:14:01.05008	2021-02-09 17:45:02.036604	t
1459	Mitch	Lowe	{"title": "Speaker"}	759	2021-02-09 16:14:01.081514	2021-02-09 17:45:17.707113	t
1460	Elizabeth	Green	{"title": "Co-founder / CEO"}	762	2021-02-09 16:17:14.102393	2021-02-09 17:45:33.238647	t
1461	Sean	Devereaux	{"title": "Service Director"}	765	2021-02-09 16:19:13.14866	2021-02-09 17:45:48.834607	t
1462	Kurt	Canova	{"title": "President"}	765	2021-02-09 16:19:13.178494	2021-02-09 17:46:04.457692	t
1463	Laura	Wasson	{"title": "Director of Healthcare"}	765	2021-02-09 16:19:13.21043	2021-02-09 17:46:19.956646	t
1464	Craig	Lubbers	{"title": "Chief Financial Officer"}	765	2021-02-09 16:19:13.239216	2021-02-09 17:46:35.530668	t
1465	Michael	Scott	{"title": "Director of Corporate Information Technology"}	765	2021-02-09 16:19:13.268867	2021-02-09 17:46:51.128989	t
1466	John	Maniaci	{"title": "Executive Vice President"}	765	2021-02-09 16:19:13.315323	2021-02-09 17:47:07.092339	t
1467	Emily	Patterson	{"title": "Vice President of Human Resources"}	765	2021-02-09 16:19:13.344785	2021-02-09 17:47:22.642339	t
1468	Chris	Wilhelm	{"title": "Executive Director of Construction"}	765	2021-02-09 16:19:13.375064	2021-02-09 17:47:38.172981	t
1469	Robert	Edmeyer	{"title": "Co-Founder, Chief Executive Officer & Chairman"}	766	2021-02-09 16:19:46.269225	2021-02-09 17:47:53.702327	t
1471	Beth	Goodell	{"title": "Co-Founder, President, Board Member & Chief Marketing Officer"}	766	2021-02-09 16:19:46.332381	2021-02-09 17:48:25.282038	t
1472	Sebastian	Teitz	{"title": "Scientific Coordinator"}	767	2021-02-09 16:20:26.014685	2021-02-09 17:48:41.227567	t
1473	Bixente	Martirene	{"title": "Senior Product Manager, Europe"}	767	2021-02-09 16:20:26.044506	2021-02-09 17:48:57.34361	t
1474	Daniel	Strauss	{"title": "Senior Scientist"}	767	2021-02-09 16:20:26.075799	2021-02-09 17:49:12.880226	t
1475	Roya	Dayani	{"title": "Senior Product Manager"}	767	2021-02-09 16:20:26.111617	2021-02-09 17:49:28.408615	t
1476	Denise	Donohue	{"title": "Network Architect"}	768	2021-02-09 16:21:07.351914	2021-02-09 17:49:44.002175	t
1477	Terry	Slattery	{"title": "Principal Consultant"}	768	2021-02-09 16:21:07.383636	2021-02-09 17:50:00.295139	t
1478	Joseph	LaRosa	{"title": "Engineer"}	768	2021-02-09 16:21:07.414906	2021-02-09 17:50:15.832025	t
1479	Raimundo	Encina	{"title": "Director General"}	769	2021-02-09 16:21:55.622378	2021-02-09 17:50:31.446186	t
1480	Charles	Robertson	{"title": "Managing Director"}	770	2021-02-09 16:22:33.501787	2021-02-09 17:50:46.96511	t
1481	Noah	Hamman	{"title": "Founder & CEO"}	770	2021-02-09 16:22:33.533585	2021-02-09 17:51:02.887715	t
1482	James	Carl	{"title": "Managing Director"}	770	2021-02-09 16:22:33.563628	2021-02-09 17:51:18.454251	t
1483	Dan	Ahrens	{"title": "Managing Director"}	770	2021-02-09 16:22:33.594076	2021-02-09 17:51:34.172567	t
1484	Jay	Levine	{"title": "CEO"}	773	2021-02-09 16:23:57.667563	2021-02-09 17:51:49.997428	t
1485	Nick	Ledbetter	{"title": "Founder, CTO"}	774	2021-02-09 16:24:27.563214	2021-02-09 17:52:05.995984	t
1486	Bradford	Beale	{"title": "President"}	775	2021-02-09 16:25:01.7517	2021-02-09 17:52:21.584239	t
1487	Zachary	Fierstadt	{"title": "Team Member"}	777	2021-02-09 16:25:53.390493	2021-02-09 17:52:37.377921	t
1488	Carol	Fawcett	{"title": "Founder"}	777	2021-02-09 16:25:53.421526	2021-02-09 17:52:53.255297	t
1489	Evan	Alexander	{"title": "VP of Sales"}	777	2021-02-09 16:25:53.452217	2021-02-09 17:53:09.228238	t
1490	Ariel	Kunar	{"title": "CEO"}	779	2021-02-09 16:27:23.572919	2021-02-09 17:53:24.776598	t
1491	Jeff	Grossman	{"title": "President"}	779	2021-02-09 16:27:23.604339	2021-02-09 17:53:40.330222	t
1492	Irwin	Lazar	{"title": "Vice President & Service Director"}	784	2021-02-09 16:29:35.367862	2021-02-09 17:53:56.068639	t
1493	John	Burke	{"title": "CIO and Principal Research Analyst"}	784	2021-02-09 16:29:35.402058	2021-02-09 17:54:11.876808	t
1494	Johna	Till	{"title": "CEO & Founder"}	784	2021-02-09 16:29:35.434698	2021-02-09 17:54:28.240034	t
1495	Robin	Gareiss	{"title": "President"}	784	2021-02-09 16:29:35.466293	2021-02-09 17:54:44.2646	t
1496	Ryan	Barton	{"title": "CEO & Founder"}	785	2021-02-09 16:30:10.549987	2021-02-09 17:54:59.808584	t
1497	Aaron	Rosenberg	{"title": "Partner & SVP Business Development"}	792	2021-02-09 16:34:11.760736	2021-02-09 17:55:16.405579	t
1498	Annette	Manias	{"title": "Co-Founder & President & Owner"}	792	2021-02-09 16:34:11.79317	2021-02-09 17:55:32.236236	t
1499	Jason	Goldberg	{"title": "VP & CFO"}	794	2021-02-09 16:35:31.109915	2021-02-09 17:55:47.822205	t
1500	Gregory	Nordone	{"title": "President & CEO"}	794	2021-02-09 16:35:31.140685	2021-02-09 17:56:03.364552	t
1501	Dan	Payomo	{"title": "Vice President, Sales"}	799	2021-02-09 16:39:20.287628	2021-02-09 17:56:18.857489	t
1502	Marin	Bright	{"title": "Founder & CEO"}	799	2021-02-09 16:39:20.321218	2021-02-09 17:56:35.152168	t
1503	James	Sievers	{"title": "Manager, Finance"}	802	2021-02-09 16:40:52.312799	2021-02-09 17:56:50.757875	t
1504	Scott	Cummans	{"title": "President & CEO"}	804	2021-02-09 16:42:21.303757	2021-02-09 17:57:06.358162	t
1505	Reo	B.	{"title": "Chief Operating Executive"}	804	2021-02-09 16:42:21.344493	2021-02-09 17:57:22.519029	t
1507	Armand	Alvarez	{"title": "President & CEO"}	805	2021-02-09 16:43:00.31501	2021-02-09 17:57:54.181311	t
1508	P.	Wayne	{"title": "Owner & Founder"}	809	2021-02-09 16:44:29.661174	2021-02-09 17:58:10.433329	t
1509	Sam	Tagliavore	{"title": "Director of Sales"}	812	2021-02-09 16:46:17.338773	2021-02-09 17:58:25.999599	t
1510	Bob	Michaels	{"title": "Chief Executive Officer"}	812	2021-02-09 16:46:17.369633	2021-02-09 17:58:42.191601	t
1511	Jeremy	Greene	{"title": "Co-founder & Vice President Software and Quality"}	812	2021-02-09 16:46:17.398964	2021-02-09 17:58:57.720664	t
1512	Steve	Metzger	{"title": "Co-founder & Vice President Hardware & Operations"}	812	2021-02-09 16:46:17.433333	2021-02-09 17:59:13.259395	t
1513	Don	Walsh	{"title": "Senior Vice President"}	817	2021-02-09 16:49:06.837265	2021-02-09 17:59:28.833683	t
1514	Charles	Lewis	{"title": "Founder"}	818	2021-02-09 16:49:47.480836	2021-02-09 17:59:44.391253	t
1515	Carrie	Levine	{"title": "Reporter"}	818	2021-02-09 16:49:47.516786	2021-02-09 17:59:59.923592	t
1516	John	Lighton	{"title": "President and Chief Scientist & Founder"}	820	2021-02-09 16:51:04.322551	2021-02-09 18:00:15.467904	t
1517	Carolina	Davila	{"title": "Business Development Manager"}	821	2021-02-09 16:51:42.649819	2021-02-09 18:00:30.998417	t
1518	Nathan	Whittacre	{"title": "President and CEO"}	821	2021-02-09 16:51:42.681098	2021-02-09 18:00:46.483141	t
1519	Brian	Alwood	{"title": "Director of Technical Operations"}	821	2021-02-09 16:51:42.711176	2021-02-09 18:01:03.106503	t
1520	Kauana	Jackson	{"title": "Accounting Manager"}	821	2021-02-09 16:51:42.740995	2021-02-09 18:01:19.00848	t
1521	Laura	Stiles	{"title": "Manager, Digital Advertising"}	822	2021-02-09 16:52:29.133346	2021-02-09 18:01:35.190104	t
1522	Aaron	Burnett	{"title": "CEO"}	822	2021-02-09 16:52:29.163373	2021-02-09 18:01:51.115776	t
1523	Brian	Hoppe	{"title": "Chief Technology Officer"}	826	2021-02-09 16:56:22.383604	2021-02-09 18:02:06.746206	t
1524	Robert	McEachern	{"title": "Vice President of Strategic Accounts"}	826	2021-02-09 16:56:22.415621	2021-02-09 18:02:22.365399	t
1525	Greg	McEachern	{"title": "President"}	826	2021-02-09 16:56:22.448754	2021-02-09 18:02:38.026385	t
1526	Vance	Lawson	{"title": "Chief Operating Officer"}	826	2021-02-09 16:56:22.479509	2021-02-09 18:02:53.500845	t
1527	Foy	Burns	{"title": "Vice President of Development"}	826	2021-02-09 16:56:22.508762	2021-02-09 18:03:09.010279	t
1528	Richard	Place	{"title": "Vice President of Sales"}	826	2021-02-09 16:56:22.541846	2021-02-09 18:03:24.92362	t
1529	Henry	Wozow	{"title": "Principal and CEO"}	827	2021-02-09 16:57:09.203397	2021-02-09 18:03:40.522883	t
1530	Pattie	Wozow	{"title": "Co-Founder"}	827	2021-02-09 16:57:09.258103	2021-02-09 18:03:57.176199	t
1531	Reaven	D'Souza	{"title": "Owner"}	829	2021-02-09 16:58:05.086258	2021-02-09 18:04:20.723795	t
1532	Ryan	P.	{"title": "Chief Operating Officer"}	829	2021-02-09 16:58:05.126008	2021-02-09 18:04:36.265075	t
1533	Lisa	McGreevy	{"title": "President & CEO"}	831	2021-02-09 16:59:28.071949	2021-02-09 18:04:52.078828	t
1535	Jake	DiMare	{"title": "Head of Marketing"}	835	2021-02-09 17:00:47.817183	2021-02-09 18:05:24.031608	t
1536	Cathy	McKnight	{"title": "Co-founder and Vice President of Consulting and Operations"}	835	2021-02-09 17:00:47.848173	2021-02-09 18:05:39.616654	t
1537	Larry	Plutchak	{"title": "Founder"}	836	2021-02-09 17:01:33.136046	2021-02-09 18:05:56.352167	t
1538	Scott	Waniger	{"title": "VP Bioprocessing"}	839	2021-02-09 17:03:42.318851	2021-02-09 18:06:12.32397	t
1539	Danny	Lyons	{"title": "Chief Executive Officer"}	840	2021-02-09 17:04:32.080898	2021-02-09 18:06:27.912103	t
1540	Gianluca	Varriale	{"title": "COO & Co-Founder"}	845	2021-02-09 17:07:38.150085	2021-02-09 18:06:43.461707	t
1541	Joshua	Priore	{"title": "Founder and CEO"}	845	2021-02-09 17:07:38.187249	2021-02-09 18:06:59.290224	t
1542	Lynn	Sontag	{"title": "Owner & Chief Mentoring Officer"}	846	2021-02-09 17:08:22.348877	2021-02-09 18:07:15.137349	t
1543	Ryan	Kelly	{"title": "Founder / CEO"}	847	2021-02-09 17:09:02.57784	2021-02-09 18:07:30.706935	t
1544	Ruth	Whitenton	{"title": "Partner & COO"}	847	2021-02-09 17:09:02.614097	2021-02-09 18:07:46.238768	t
1545	Kyle	DeWitt	{"title": "VP Product"}	848	2021-02-09 17:09:45.074275	2021-02-09 18:08:02.558611	t
1546	John	Bohan	{"title": "Founder & CEO"}	848	2021-02-09 17:09:45.106003	2021-02-09 18:08:18.076289	t
1547	Jon	Garfield	{"title": "CFO"}	848	2021-02-09 17:09:45.13717	2021-02-09 18:08:33.614246	t
1548	Ahava	Leibtag	{"title": "President"}	852	2021-02-09 17:21:11.200686	2021-02-09 18:08:49.204841	t
1549	Michael	Varni	{"title": "Vice President Of Production/Sr Loan Officer"}	854	2021-02-09 17:21:50.167377	2021-02-09 18:09:05.001393	t
1550	Bill	Lyons	{"title": "President & CEO"}	854	2021-02-09 17:21:50.199191	2021-02-09 18:09:20.797351	t
1551	Tiffany	Montgomery	{"title": "Founder, Chief Executive Officer & Editor-in-chief."}	860	2021-02-09 17:24:38.440825	2021-02-09 18:09:36.533325	t
1552	Maggie	McCullough	{"title": "CEO and Founder"}	861	2021-02-09 17:25:11.777755	2021-02-09 18:09:52.11631	t
1553	Lee	Schare	{"title": "Founding partner"}	862	2021-02-09 17:25:58.86409	2021-02-09 18:10:07.737161	t
1554	Howard	T.	{"title": "Founder & Managing Partner"}	862	2021-02-09 17:25:58.895852	2021-02-09 18:10:23.262283	t
1555	Brent	Britton	{"title": "Co-Founder"}	863	2021-02-09 17:26:44.746533	2021-02-09 18:10:39.101942	t
1556	C.	Christopher	{"title": "President / CEO"}	864	2021-02-09 17:27:18.416939	2021-02-09 18:10:55.621432	t
1557	Marc	Hopkins	{"title": "Vice President - Operations"}	864	2021-02-09 17:27:18.458443	2021-02-09 18:11:11.546584	t
1558	Michael	Hopkins	{"title": "Vice President"}	864	2021-02-09 17:27:18.493094	2021-02-09 18:11:28.450204	t
1559	Mary	Godley	{"title": "VP Programs, Sponsorships and Partners"}	868	2021-02-09 17:29:36.010232	2021-02-09 18:11:44.002445	t
1560	Jeff	Asselin	{"title": "Vice President"}	870	2021-02-09 17:30:57.01674	2021-02-09 18:11:59.504037	t
1561	Tim	Schnell	{"title": "General Manager / SVP"}	870	2021-02-09 17:30:57.047633	2021-02-09 18:12:15.457606	t
1562	Bri	Robinson	{"title": "Member Services Director"}	871	2021-02-09 17:31:30.91034	2021-02-09 18:12:31.115882	t
1563	Ty	Wooten	{"title": "Education & PSAP Operations Director"}	871	2021-02-09 17:31:30.942451	2021-02-09 18:12:46.699781	t
1564	Chris	Nussman	{"title": "Communications Director"}	871	2021-02-09 17:31:30.974019	2021-02-09 18:13:02.177633	t
1566	Deborah	Shields	{"title": "Conference & Events Director"}	871	2021-02-09 17:31:31.034594	2021-02-09 18:13:34.281866	t
1408	Syeed	Mansur	{"title": "Chief Executive Officer & President"}	719	2021-02-09 15:47:04.713657	2021-02-09 17:31:54.92357	t
1441	Jeff	Kennedy	{"title": "Vice President Strategic Solutions"}	740	2021-02-09 16:02:15.099929	2021-02-09 17:40:35.810646	t
1444	Howard	Horn	{"title": "President & Owner"}	742	2021-02-09 16:03:46.795648	2021-02-09 17:41:23.605173	t
1445	Keith	Ferrazzi	{"title": "Founder & Chairman"}	743	2021-02-09 16:04:27.906574	2021-02-09 17:41:39.099979	t
1470	Lynn	Carter	{"title": "Co-Founder, Chief Technology Officer, Executive Vice President & Board Member"}	766	2021-02-09 16:19:46.300686	2021-02-09 17:48:09.658087	t
1506	Robert	Rodriguez	{"title": "Partner & COO"}	805	2021-02-09 16:43:00.26299	2021-02-09 17:57:38.035472	t
1534	Scott	Liewehr	{"title": "Co-founder and CEO"}	835	2021-02-09 17:00:47.784169	2021-02-09 18:05:08.148809	t
1565	Trey	Forgety	{"title": "Director of Government Affairs"}	871	2021-02-09 17:31:31.004599	2021-02-09 18:13:18.111388	t
1567	Roger	Hixson	{"title": "Technical Issues Director"}	871	2021-02-09 17:31:31.080461	2021-02-09 18:13:49.795671	t
1568	Anna	Batt	{"title": "Special Projects & Exhibits Director"}	871	2021-02-09 17:31:31.111085	2021-02-09 18:14:06.605737	t
1569	Mary	Hester	{"title": "Board of Member"}	871	2021-02-09 17:31:31.143826	2021-02-09 18:14:22.102537	t
1570	Peter	Fidler	{"title": "President & Founder"}	874	2021-02-09 18:20:15.204737	2021-02-10 14:16:23.487668	t
1571	Warren	Eng	{"title": "Partner & Owner"}	874	2021-02-09 18:20:15.237763	2021-02-10 14:16:39.032612	t
1572	Renee	Murphy	{"title": "Research Consultant"}	875	2021-02-09 18:21:05.774707	2021-02-10 14:16:54.573643	t
1573	Keri	Stephens	{"title": "VP of Breakthrough Ideas"}	875	2021-02-09 18:21:05.811991	2021-02-10 14:17:10.150001	t
1574	Jason	Hauer	{"title": "Cofounder"}	875	2021-02-09 18:21:05.844155	2021-02-10 14:17:25.677243	t
1575	Dennis	Furia	{"title": "Innovation & Growth Strategist"}	875	2021-02-09 18:21:05.877231	2021-02-10 14:17:42.149061	t
1576	Ann	Thompson	{"title": "Co -Founder"}	875	2021-02-09 18:21:05.911111	2021-02-10 14:17:57.694558	t
1577	Erin	Faulk	{"title": "Vice President of Lean Growth"}	875	2021-02-09 18:21:05.964135	2021-02-10 14:18:13.159613	t
1578	Jack	Corrao	{"title": "Managing Partner"}	882	2021-02-09 18:24:57.48728	2021-02-10 14:18:28.635134	t
1579	Jack	Corrao	{"title": "Vice-President of Marketing"}	882	2021-02-09 18:24:57.515882	2021-02-10 14:18:44.53142	t
1580	Thomas	Bersch	{"title": "Northeast Regional Manager"}	882	2021-02-09 18:24:57.546126	2021-02-10 14:19:00.100542	t
1581	Ernesto	Mendiburu	{"title": "Project Manager"}	882	2021-02-09 18:24:57.575156	2021-02-10 14:19:15.690941	t
1582	Ryan	Slack	{"title": "CEO"}	883	2021-02-09 18:25:45.033005	2021-02-10 14:19:31.195605	t
1583	Caleb	Sidel	{"title": "Chief Technical Architect + Co-Founder"}	884	2021-02-09 18:26:24.087689	2021-02-10 14:19:46.800823	t
1584	Erik	Fike	{"title": "Senior Vice President & Chief Engagement Officer"}	884	2021-02-09 18:26:24.119456	2021-02-10 14:20:02.295616	t
1585	Brad	Miles	{"title": "CEO"}	884	2021-02-09 18:26:24.147932	2021-02-10 14:20:18.493882	t
1586	Debbie	Matker	{"title": "Chief Financial Officer"}	887	2021-02-09 18:27:44.560298	2021-02-10 14:20:34.025661	t
1587	Marcel	Munoz	{"title": "Chief Technology Officer"}	887	2021-02-09 18:27:44.591019	2021-02-10 14:20:49.709054	t
1588	Paul	Matker	{"title": "Chief Executive Officer"}	887	2021-02-09 18:27:44.620781	2021-02-10 14:21:05.324806	t
1589	David	Huffman	{"title": "President/CEO & Founder"}	891	2021-02-09 18:30:15.44387	2021-02-10 14:21:21.425626	t
1590	Mike	Hoppe	{"title": "COO"}	893	2021-02-09 18:31:28.787596	2021-02-10 14:21:36.978268	t
1591	Bruce	Grant	{"title": "President & CEO"}	893	2021-02-09 18:31:28.819355	2021-02-10 14:21:52.58897	t
1592	Dan	Krahn	{"title": "VP, Hardware Services"}	894	2021-02-09 18:32:20.378935	2021-02-10 14:22:08.282893	t
1593	Lorri	Howski	{"title": "VP, Administration"}	894	2021-02-09 18:32:20.409042	2021-02-10 14:22:23.783315	t
1594	Greg	Wheeler	{"title": "Chief Information Security Officer"}	894	2021-02-09 18:32:20.438336	2021-02-10 14:22:39.276053	t
1595	Bill	Buerger	{"title": "President & Owner"}	894	2021-02-09 18:32:20.466644	2021-02-10 14:22:55.153297	t
1596	Earl	Williams	{"title": "VP, Professional Services"}	894	2021-02-09 18:32:20.497349	2021-02-10 14:23:11.002462	t
1597	Eric	Willis	{"title": "EVP, Chief Operating Officer"}	894	2021-02-09 18:32:20.526487	2021-02-10 14:23:26.498155	t
1598	Joseph	Rezell	{"title": "Vice President"}	894	2021-02-09 18:32:20.555723	2021-02-10 14:23:42.622062	t
1599	Sharat	Nagaraj	{"title": "Founder, President & CEO"}	896	2021-02-09 18:33:45.310392	2021-02-10 14:23:58.244889	t
1600	Sanjay	Upadhyaya	{"title": "Chief Marketing Officer"}	897	2021-02-09 18:34:21.380064	2021-02-10 14:24:13.953444	t
1601	Rick	Braddy	{"title": "CTO"}	897	2021-02-09 18:34:21.407763	2021-02-10 14:24:30.068316	t
1602	Song	M.	{"title": "COO"}	897	2021-02-09 18:34:21.435159	2021-02-10 14:24:45.590196	t
1603	Victor	J.	{"title": "Co-Founder & CEO"}	897	2021-02-09 18:34:21.464015	2021-02-10 14:25:01.26151	t
1604	William	B.	{"title": "Founder & Chairman"}	898	2021-02-09 18:35:10.420999	2021-02-10 14:25:17.378252	t
1605	Mika	Moser	{"title": "Senior Vice President"}	898	2021-02-09 18:35:10.45109	2021-02-10 14:25:33.937396	t
1606	Al	Dominick	{"title": "President"}	898	2021-02-09 18:35:10.481904	2021-02-10 14:25:49.833067	t
1607	Rob	Blakemore	{"title": "VP of Engineering"}	899	2021-02-09 18:36:53.953257	2021-02-10 14:26:05.735534	t
1608	Mike	Randall	{"title": "Chief Operating Officer"}	899	2021-02-09 18:36:53.983446	2021-02-10 14:26:21.751391	t
1609	Todd	Lindenbaum	{"title": "Chief Executive Officer"}	899	2021-02-09 18:36:54.014464	2021-02-10 14:26:37.818186	t
1610	Zander	Lurie	{"title": "Co-Founder"}	900	2021-02-09 18:37:28.187962	2021-02-10 14:26:53.802382	t
1611	Leah	Bernthal	{"title": "Co-Founder"}	900	2021-02-09 18:37:28.222384	2021-02-10 14:27:09.732311	t
1612	Stephen	Choi	{"title": "Executive Director"}	905	2021-02-09 18:40:12.411602	2021-02-10 14:27:25.902316	t
1613	James	Connelly	{"title": "Director of Living Product Challenge"}	905	2021-02-09 18:40:12.44188	2021-02-10 14:27:41.679511	t
1614	Wade	Rhodes	{"title": "Sales Manager"}	906	2021-02-09 18:40:49.341221	2021-02-10 14:27:57.515759	t
1615	Eric	Sporakowski	{"title": "President"}	906	2021-02-09 18:40:49.393894	2021-02-10 14:28:13.227604	t
1616	Crystal	Morgan	{"title": "Director of Business Development"}	906	2021-02-09 18:40:49.441856	2021-02-10 14:28:28.848312	t
1618	Joe	Spair	{"title": "Channel Manager"}	906	2021-02-09 18:40:49.567044	2021-02-10 14:29:00.214799	t
1619	Benjamin	Collins	{"title": "Co-Founder & President"}	912	2021-02-09 18:43:11.070672	2021-02-10 14:29:15.926574	t
1620	Keith	Heller	{"title": "Founder & Chief Strategist"}	914	2021-02-09 18:44:21.990116	2021-02-10 14:29:31.486884	t
1621	Jeffrey	Appell	{"title": "CEO"}	914	2021-02-09 18:44:22.019187	2021-02-10 14:29:47.119814	t
1622	William	M.	{"title": "Chief Executive Officer & Executive Board Member"}	918	2021-02-09 18:46:34.60693	2021-02-10 14:30:02.639671	t
1623	Paul	Kukk	{"title": "Chief Technology Officer"}	921	2021-02-09 18:48:50.006436	2021-02-10 14:30:18.816415	t
1624	John	McCloskey	{"title": "Co-Founder & CEO"}	921	2021-02-09 18:48:50.03637	2021-02-10 14:30:35.524121	t
1625	Tyler	Wax	{"title": "Co-Founder & Managing Director"}	921	2021-02-09 18:48:50.06454	2021-02-10 14:30:51.319656	t
1626	Andrew	Vose	{"title": "Co-Founder & Managing Director"}	921	2021-02-09 18:48:50.093394	2021-02-10 14:31:07.171921	t
1627	Bradford	Smart	{"title": "Founder and CEO"}	922	2021-02-09 18:49:23.887879	2021-02-10 14:31:23.127211	t
1628	Bo	Manning	{"title": "President"}	922	2021-02-09 18:49:23.91811	2021-02-10 14:31:38.837073	t
1629	Chris	Mursau	{"title": "Vice President"}	922	2021-02-09 18:49:23.947226	2021-02-10 14:31:55.138755	t
1630	Brianna	Brailey	{"title": "Design + Development Lead"}	923	2021-02-09 18:49:56.370614	2021-02-10 14:32:11.136162	t
1631	Mark	Homer	{"title": "CEO & Founder"}	923	2021-02-09 18:49:56.401402	2021-02-10 14:32:26.936951	t
1632	Jabez	LeBret	{"title": "Chief Innovation Officer"}	923	2021-02-09 18:49:56.430652	2021-02-10 14:32:42.505399	t
1633	Andrew	Nere	{"title": "CEO"}	924	2021-02-09 18:50:40.217319	2021-02-10 14:32:58.448619	t
1634	Sumanth	Rayancha	{"title": "Founder & CTO"}	929	2021-02-09 18:52:38.764377	2021-02-10 14:33:13.952703	t
1635	Peter	Jupp	{"title": "Co-Owner And Co-Founder"}	931	2021-02-09 18:53:25.898508	2021-02-10 14:33:30.493917	t
1637	Michael	Bowman	{"title": "Senior Director, Policy and Strategic Initiatives"}	932	2021-02-09 18:54:13.328248	2021-02-10 14:34:03.300786	t
1638	Paul	Weyrich	{"title": "Founder"}	932	2021-02-09 18:54:13.377376	2021-02-10 14:34:19.722804	t
1639	Amy	Kjose	{"title": "Director, Task Force on Civil Justice"}	932	2021-02-09 18:54:13.40865	2021-02-10 14:34:35.560557	t
1640	Lisa	B	{"title": "Chief Executive Officer"}	932	2021-02-09 18:54:13.465048	2021-02-10 14:34:51.622253	t
1641	Scott	Sheppard	{"title": "President , CTO & Founder"}	935	2021-02-09 18:55:44.24867	2021-02-10 14:35:07.743313	t
1642	Bogdan	Litvinenko	{"title": "Pre-sale Specialist"}	936	2021-02-09 18:56:26.698173	2021-02-10 14:35:24.084819	t
1643	Star	VanderHaar	{"title": "Vice President"}	938	2021-02-09 18:57:13.659613	2021-02-10 14:35:40.025054	t
1644	Derrick	Larane	{"title": "Director of Client Partnerships"}	940	2021-02-09 18:58:37.072895	2021-02-10 14:35:55.975278	t
1645	RJay	Haluko	{"title": "Creative Director"}	940	2021-02-09 18:58:37.102785	2021-02-10 14:36:12.107233	t
1646	Michael	Alfaro	{"title": "Chief Technical Officer"}	940	2021-02-09 18:58:37.133001	2021-02-10 14:36:28.22709	t
1647	Pinaki	Kathiari	{"title": "Chief Marketing Officer"}	940	2021-02-09 18:58:37.164633	2021-02-10 14:36:44.054389	t
1648	Albert	Roy	{"title": "Executive Director"}	941	2021-02-09 18:59:09.632352	2021-02-10 14:37:00.006924	t
1649	Kenneth	Farber	{"title": "Co-President and CEO"}	941	2021-02-09 18:59:09.667956	2021-02-10 14:37:15.924809	t
1650	Association	for	{"title": "Subsidiary"}	944	2021-02-09 19:01:50.205222	2021-02-10 14:37:31.689964	t
1651	Nancy	Gorski	{"title": "Founder & Chief Executive Officer"}	946	2021-02-09 19:03:20.558964	2021-02-10 14:37:47.281083	t
1652	Ian	Thomson	{"title": "CEO & Co-Founder"}	947	2021-02-09 19:03:59.589951	2021-02-10 14:38:02.999431	t
1653	Ceylan	Oney	{"title": "CMO & Co-Founder"}	947	2021-02-09 19:03:59.623497	2021-02-10 14:38:19.798659	t
1654	Marco	Schmoecker	{"title": "CPO & Co-Founder"}	947	2021-02-09 19:03:59.656408	2021-02-10 14:38:35.72842	t
1655	Adam	Dunhill	{"title": "Founder"}	950	2021-02-09 19:06:00.670623	2021-02-10 14:38:51.94811	t
1656	Andrew	Friedman	{"title": "Co-Founder"}	955	2021-02-09 19:08:33.006568	2021-02-10 14:39:08.093479	t
1657	Oona	Chatterjee	{"title": "Co-Founder"}	955	2021-02-09 19:08:33.037111	2021-02-10 14:39:24.29574	t
1658	David	Venus	{"title": "Director Of Marketing"}	956	2021-02-09 19:09:20.206761	2021-02-10 14:39:40.503989	t
1659	Ryan	VanOsdol	{"title": "Account Director, SE US"}	958	2021-02-09 19:10:10.340751	2021-02-10 14:39:57.810493	t
1660	Christian	Dahlberg	{"title": "Co-founder and Managing Partner"}	961	2021-02-09 19:12:25.118528	2021-02-10 14:40:13.322116	t
1661	Mike	Paradis	{"title": "Co-Founder"}	961	2021-02-09 19:12:25.14955	2021-02-10 14:40:29.301422	t
1662	Fabrice	Roger	{"title": "Sales Director"}	967	2021-02-09 19:13:57.066975	2021-02-10 14:40:44.880184	t
1663	David	Dixon	{"title": "President"}	967	2021-02-09 19:13:57.097458	2021-02-10 14:41:00.7744	t
1664	Chad	Anderson	{"title": "President"}	967	2021-02-09 19:13:57.126769	2021-02-10 14:41:16.317879	t
1665	Chris	Brenner	{"title": "Senior Vice President of Sales"}	967	2021-02-09 19:13:57.171627	2021-02-10 14:41:32.366372	t
1666	Peter	Antonenko	{"title": "Chief Operating Officer"}	967	2021-02-09 19:13:57.201198	2021-02-10 14:41:48.267369	t
1667	Lance	Platt	{"title": "CEO"}	969	2021-02-09 19:15:12.30129	2021-02-10 14:42:04.471803	t
1668	Lila	Ibrahim	{"title": "Co-Founder"}	972	2021-02-09 19:16:49.330339	2021-02-10 14:42:20.696517	t
1670	Mark	Wyllie	{"title": "CEO"}	973	2021-02-09 19:17:35.085802	2021-02-10 15:10:51.628489	t
1671	Doug	Paton	{"title": "Chief Operating Officer"}	973	2021-02-09 19:17:35.114607	2021-02-10 15:11:07.415306	t
1672	Ed	Janeczek	{"title": "Chief Technical Officer"}	973	2021-02-09 19:17:35.143163	2021-02-10 15:11:23.100982	t
1673	Tom	Mitchell	{"title": "Vice President of Sales"}	973	2021-02-09 19:17:35.172508	2021-02-10 15:11:39.09358	t
1674	Edgard	Lopez	{"title": "Senior Sales and Strategy Vice President"}	973	2021-02-09 19:17:35.201563	2021-02-10 15:11:54.642221	t
1675	Heather	Kirksey	{"title": "Director"}	974	2021-02-09 19:18:15.326936	2021-02-10 15:12:11.250813	t
1676	Chris	Price	{"title": "EMEA Lead"}	974	2021-02-09 19:18:15.356159	2021-02-10 15:12:27.491414	t
1677	Fatih	Degirmenci	{"title": "Member of the Technical Steering Committee"}	974	2021-02-09 19:18:15.385681	2021-02-10 15:12:43.753061	t
1678	Doug	Manter	{"title": "FOUNDER/CTO"}	975	2021-02-09 19:18:58.371553	2021-02-10 15:12:59.410788	t
1680	Eduardo	Ruiz	{"title": "Senior Director of Information Technology"}	976	2021-02-09 19:19:36.731949	2021-02-10 15:13:30.769145	t
1681	Emily	Burke	{"title": "Manager, Data Analytics"}	976	2021-02-09 19:19:36.760474	2021-02-10 15:13:46.835974	t
1682	Rachel	Porter	{"title": "Full Stack Web Developer"}	976	2021-02-09 19:19:36.789248	2021-02-10 15:14:02.86612	t
1683	Angela	McIlveen	{"title": "CEO & Co-Founder, Partner"}	979	2021-02-09 19:22:43.323049	2021-02-10 15:14:18.595223	t
1684	Sean	McIlveen	{"title": "Co-Founder, Partner"}	979	2021-02-09 19:22:43.352991	2021-02-10 15:14:34.129551	t
1685	Crystle	Wong	{"title": "Co-Founder & President"}	980	2021-02-09 19:23:13.589191	2021-02-10 15:14:49.646234	t
1686	Scott	T.	{"title": "Co-Founder"}	982	2021-02-09 19:24:41.946298	2021-02-10 15:15:05.147603	t
1687	Michael	E.	{"title": "Co-Founder"}	982	2021-02-09 19:24:41.977245	2021-02-10 15:15:20.973697	t
1688	Robert	E.	{"title": "Co-Founder"}	982	2021-02-09 19:24:42.007815	2021-02-10 15:15:36.508246	t
1689	Frey	Radfar	{"title": "Managing Partner"}	983	2021-02-09 19:25:22.091121	2021-02-10 15:15:52.08324	t
1690	Deemah	Ramadan	{"title": "Managing Partner and CEO"}	983	2021-02-09 19:25:22.121909	2021-02-10 15:16:07.851545	t
1691	Tim	McTighe	{"title": "president and founder"}	984	2021-02-09 19:26:02.5772	2021-02-10 15:16:23.331485	t
1692	Dustin	Swisstack	{"title": "CTO"}	990	2021-02-09 19:28:29.227755	2021-02-10 15:16:38.917751	t
1694	Ben	Brashen	{"title": "President & CEO"}	990	2021-02-09 19:28:29.286638	2021-02-10 15:17:10.626188	t
1695	Heather	Moore	{"title": "Client Services Director"}	990	2021-02-09 19:28:29.316494	2021-02-10 15:17:26.75269	t
1696	Matt	Cashman	{"title": "Production Manager"}	994	2021-02-09 19:30:52.4537	2021-02-10 15:17:42.277866	t
1697	Lana	Abraham-Murawski	{"title": "VP, Marketing & Biz Dev/Sales"}	994	2021-02-09 19:30:52.484804	2021-02-10 15:17:57.801341	t
1698	Luke	Siegel	{"title": "President"}	994	2021-02-09 19:30:52.513576	2021-02-10 15:18:13.312801	t
1699	Michael	Greeson	{"title": "President and Co-founder"}	998	2021-02-09 19:32:12.101265	2021-02-10 15:18:28.81932	t
1700	Alan	Wolk	{"title": "Analyst"}	998	2021-02-09 19:32:12.131641	2021-02-10 15:18:44.844073	t
1701	Sterling	Ledet	{"title": "Owner"}	1004	2021-02-09 19:35:56.120274	2021-02-10 15:19:00.474521	t
1702	Brandon	Eggart	{"title": "CEO, President"}	1007	2021-02-09 19:37:14.360573	2021-02-10 15:19:16.0461	t
1703	Tim	Ward	{"title": "Founder"}	1010	2021-02-09 19:40:09.715868	2021-02-10 15:19:32.011193	t
1704	Bret	Olseth	{"title": "CEO"}	1014	2021-02-09 19:42:48.29743	2021-02-10 15:19:47.837756	t
1705	Vinay	Bhagat	{"title": "Founder and CEO"}	1026	2021-02-09 19:50:08.729797	2021-02-10 15:20:03.649992	t
1706	Scott	Miller	{"title": "Co-Founder & Board Member"}	1026	2021-02-09 19:50:08.760429	2021-02-10 15:20:19.483067	t
1707	Jeff	Mills	{"title": "Chief Architect"}	1026	2021-02-09 19:50:08.792319	2021-02-10 15:20:35.172819	t
1708	Bertrand	Hazard	{"title": "VP Marketing"}	1026	2021-02-09 19:50:08.821229	2021-02-10 15:20:51.141435	t
1709	Scott	Brittain	{"title": "Chief Technology Officer"}	1026	2021-02-09 19:50:08.850765	2021-02-10 15:21:07.510062	t
1710	Megan	Headley	{"title": "Research Director"}	1026	2021-02-09 19:50:08.881789	2021-02-10 15:21:23.082209	t
1711	Patrick	Hansen	{"title": "VP Customer Success"}	1026	2021-02-09 19:50:08.923243	2021-02-10 15:21:38.917577	t
1712	Patrick	Bonnaure	{"title": "VP Operations"}	1026	2021-02-09 19:50:08.954255	2021-02-10 15:21:54.446487	t
1713	Hassan	M.	{"title": "Executive Vice President, Endocrinology and Metabolism"}	1028	2021-02-09 19:51:03.847834	2021-02-10 15:22:09.977268	t
1714	Eyal	S.	{"title": "Head of Regulatory"}	1028	2021-02-09 19:51:03.879009	2021-02-10 15:22:25.530462	t
1715	Elaine	Chiquette	{"title": "Chief Scientific Officer"}	1028	2021-02-09 19:51:03.908543	2021-02-10 15:22:41.162931	t
1716	David	Pass	{"title": "COO & Head of Commercial"}	1028	2021-02-09 19:51:03.939086	2021-02-10 15:22:56.67722	t
1717	Yishai	Zohar	{"title": "CEO and Founder"}	1028	2021-02-09 19:51:03.968029	2021-02-10 15:23:12.328061	t
1718	Harry	Leider	{"title": "Chief Medical Officer"}	1028	2021-02-09 19:51:03.997126	2021-02-10 15:23:27.850282	t
1719	Andrew	Weinreich	{"title": "Co-Founder / Chairman"}	1029	2021-02-09 19:51:51.170243	2021-02-10 15:23:43.636581	t
1720	Jeremy	Levy	{"title": "Co-Founder & CEO"}	1029	2021-02-09 19:51:51.1995	2021-02-10 15:24:00.115775	t
1721	Joseph	Saunders	{"title": "Chairman of the Board"}	1031	2021-02-09 19:52:40.074273	2021-02-10 15:24:15.722213	t
1722	Margaret	Tierney	{"title": "Director of Regional Operations"}	1033	2021-02-09 19:53:30.887752	2021-02-10 15:24:31.318576	t
1723	Sarah	Shinn	{"title": "Director"}	1033	2021-02-09 19:53:30.91726	2021-02-10 15:24:46.830362	t
1724	Jessica	Mizrachi	{"title": "Director of Evaluations"}	1033	2021-02-09 19:53:30.947836	2021-02-10 15:25:02.848436	t
1725	Vika	Osipenko	{"title": "Senior Marketing Manager"}	1033	2021-02-09 19:53:30.976681	2021-02-10 15:25:18.600172	t
1726	Erica	Raphael	{"title": "Director of Business Development"}	1033	2021-02-09 19:53:31.005923	2021-02-10 15:25:35.120078	t
1727	Brian	Kobashigawa	{"title": "Associate Counsel"}	1034	2021-02-09 19:54:14.968935	2021-02-10 15:25:50.638944	t
1728	Leifur	Thordarson	{"title": "President & CEO"}	1036	2021-02-09 19:54:50.56084	2021-02-10 15:26:06.226045	t
1729	Roger	Ruttimann	{"title": "CTO"}	1036	2021-02-09 19:54:50.590711	2021-02-10 15:26:22.140343	t
1730	Cyril	Cohen-Solal	{"title": "Board Observer"}	1036	2021-02-09 19:54:50.619924	2021-02-10 15:26:37.72964	t
1731	Eduardo	F	{"title": "CEO, Founder"}	1037	2021-02-09 19:55:32.084937	2021-02-10 15:26:53.519445	t
1733	Jenny	V.	{"title": "CFO"}	1038	2021-02-09 19:56:14.09185	2021-02-10 15:27:24.80015	t
1734	Jennifer	Carrico	{"title": "Co-Founder"}	1039	2021-02-09 19:56:58.946777	2021-02-10 15:27:40.376919	t
1735	Michael	Trompeta	{"title": "Head of Engineering"}	1039	2021-02-09 19:56:58.975681	2021-02-10 15:27:56.68542	t
1736	Marko	Greisen	{"title": "Co-Founder & CEO"}	1039	2021-02-09 19:56:59.004829	2021-02-10 15:28:12.206362	t
1737	Ryan	Dean	{"title": "Corp Dev"}	1039	2021-02-09 19:56:59.045287	2021-02-10 15:28:28.169851	t
1738	Ricardo	Bilton	{"title": "Reporter"}	1040	2021-02-09 19:57:33.408581	2021-02-10 15:28:43.719752	t
1739	Tim	Peterson	{"title": "Senior Reporter"}	1040	2021-02-09 19:57:33.440276	2021-02-10 15:28:59.348348	t
1740	Max	Willens	{"title": "Platforms Reporter"}	1040	2021-02-09 19:57:33.472574	2021-02-10 15:29:14.884146	t
1741	Nick	Friese	{"title": "Founder & CEO"}	1040	2021-02-09 19:57:33.526713	2021-02-10 15:29:30.435129	t
1743	Shareen	Pathak	{"title": "Co-Executive Editor"}	1040	2021-02-09 19:57:33.585823	2021-02-10 15:30:01.748527	t
1744	Sahil	Patel	{"title": "Reporter, Video"}	1040	2021-02-09 19:57:33.615216	2021-02-10 15:30:17.276368	t
1745	Brian	Morrissey	{"title": "President and Editor-in-Chief"}	1040	2021-02-09 19:57:33.643634	2021-02-10 15:30:32.871809	t
1746	Mark	Scrivner	{"title": "COO"}	1042	2021-02-09 19:58:12.963936	2021-02-10 15:30:48.456833	t
1747	Ben	Rigsby	{"title": "Founder and CCO"}	1042	2021-02-09 19:58:12.995686	2021-02-10 15:31:04.293139	t
1748	Craig	Ciali	{"title": "Director of Production"}	1042	2021-02-09 19:58:13.027051	2021-02-10 15:31:19.938129	t
1749	Kristina	Dolan	{"title": "Director of Marketing"}	1042	2021-02-09 19:58:13.062098	2021-02-10 15:31:35.427066	t
1751	Chance	Strickland	{"title": "Director of Client Happiness"}	1042	2021-02-09 19:58:13.138468	2021-02-10 15:32:06.772592	t
1752	Jered	Schneider	{"title": "Executive Marketing Director"}	1042	2021-02-09 19:58:13.168992	2021-02-10 15:32:22.644217	t
1753	Nathanael	Eisenberg	{"title": "Chairman"}	1043	2021-02-09 19:58:50.52176	2021-02-10 15:32:41.689278	t
1754	Tommy	Sagroun	{"title": "CEO"}	1043	2021-02-09 19:58:50.552658	2021-02-10 15:32:57.667875	t
1755	Prof.	Shlomo	{"title": "Chairman"}	1043	2021-02-09 19:58:50.582388	2021-02-10 15:33:13.228718	t
1756	John	Ivy	{"title": "Executive Director"}	1045	2021-02-09 20:00:01.598747	2021-02-10 15:33:29.504008	t
1757	Nathan	Bryan	{"title": "Co-Founder and Nitric Oxide Scientist"}	1045	2021-02-09 20:00:01.629511	2021-02-10 15:33:45.332581	t
1758	Mitch	Wein	{"title": "Senior Vice President, Research and Consulting"}	1046	2021-02-09 20:00:39.94609	2021-02-10 15:34:00.974746	t
1759	Jeff	Goldberg	{"title": "Senior Vice President, Research and Consulting"}	1046	2021-02-09 20:00:39.976094	2021-02-10 15:34:16.668006	t
1760	Michael	Fiebach	{"title": "Founder & CEO"}	1047	2021-02-09 20:01:22.337212	2021-02-10 15:34:32.192254	t
1761	Eric	Hahn	{"title": "Chief Marketing Officer & Chief Strategy Officer"}	1047	2021-02-09 20:01:22.369051	2021-02-10 15:34:47.803244	t
1762	Ryan	Hall	{"title": "Account Manager"}	1047	2021-02-09 20:01:22.402774	2021-02-10 15:35:03.38331	t
1763	Samuel	Huntington	{"title": "Vice President of Business Development & Client Relations"}	1047	2021-02-09 20:01:22.43202	2021-02-10 15:35:19.755004	t
1764	Brian	Aranda	{"title": "Senior Manager of Data & Engagement"}	1047	2021-02-09 20:01:22.461338	2021-02-10 15:35:35.321074	t
1765	Mike	Sacchetti	{"title": "Account Manager"}	1047	2021-02-09 20:01:22.489216	2021-02-10 15:35:50.841262	t
1766	Adam	Hechler	{"title": "Vice President of Operations & Finance"}	1047	2021-02-09 20:01:22.517619	2021-02-10 15:36:06.418635	t
1767	Adam	Rappoport	{"title": "Digital Marketing Account Manager"}	1047	2021-02-09 20:01:22.546221	2021-02-10 15:36:22.34093	t
1768	Mark	Silverman	{"title": "Member of Board of Directors"}	1048	2021-02-09 20:02:00.998149	2021-02-10 15:36:39.990818	t
1769	Nancy	Hurley	{"title": "President & CEO"}	1048	2021-02-09 20:02:01.027958	2021-02-10 15:36:55.525671	t
1770	Kim	Read	{"title": "Chief Operating Officer"}	1048	2021-02-09 20:02:01.057974	2021-02-10 15:39:22.472358	t
1771	Kathryn	Otto	{"title": "CFO"}	1048	2021-02-09 20:02:01.087766	2021-02-10 15:39:37.971388	t
1772	Nerissa	Sardi	{"title": "Vice President Marketing"}	1049	2021-02-09 20:02:37.523752	2021-02-10 15:39:53.707357	t
1773	Chris	Lalonde	{"title": "Founder, CEO"}	1050	2021-02-09 20:03:16.835141	2021-02-10 15:40:09.710202	t
1774	Kimberly	Wilkins	{"title": "Senior DBA and Database Denizen"}	1050	2021-02-09 20:03:16.866971	2021-02-10 15:40:25.827269	t
1775	Tim	Banks	{"title": "DevOps Engineer"}	1050	2021-02-09 20:03:16.899666	2021-02-10 15:40:41.449029	t
1776	Erik	Nathan	{"title": "COO"}	1052	2021-02-09 20:04:01.420498	2021-02-10 15:40:57.030848	t
1777	Cameron	Brown	{"title": "Co-Founder & VP Engineering"}	1052	2021-02-09 20:04:01.451366	2021-02-10 15:41:12.656852	t
1778	Kip	Quackenbush	{"title": "CEO"}	1052	2021-02-09 20:04:01.480744	2021-02-10 15:41:28.171449	t
1779	Steve	Wilson	{"title": "Chief Operating Officer"}	1053	2021-02-09 20:04:50.071783	2021-02-10 15:41:43.679778	t
1780	Jonathan	Marsico	{"title": "Founder/President"}	1053	2021-02-09 20:04:50.102389	2021-02-10 15:42:00.581628	t
1781	Nicholas	Coleman	{"title": "Founder/CEO"}	1053	2021-02-09 20:04:50.131139	2021-02-10 15:42:16.574814	t
1782	Ben	Hayes	{"title": "Director of West Coast Sales"}	1053	2021-02-09 20:04:50.162541	2021-02-10 15:42:32.477342	t
1783	Mark	Kessenich	{"title": "Director of Sales"}	1053	2021-02-09 20:04:50.193407	2021-02-10 15:42:48.258105	t
1784	Paul	Crespo	{"title": "Director of CSR"}	1053	2021-02-09 20:04:50.222364	2021-02-10 15:43:03.862484	t
1785	Michael	Saldi	{"title": "CEO & Founder"}	1055	2021-02-09 20:05:42.163524	2021-02-10 15:43:19.565696	t
1786	Terry	Hedden	{"title": "CEO & Founder"}	1056	2021-02-09 20:06:15.530122	2021-02-10 15:43:35.169396	t
1788	Lauren	Schulman	{"title": "Director of Operations, Optimization, & Analysis"}	1058	2021-02-09 20:07:32.329629	2021-02-10 15:44:07.205294	t
1789	R.J.	Lewis	{"title": "President"}	1058	2021-02-09 20:07:32.358894	2021-02-10 15:44:22.881376	t
1790	Mike	Koller	{"title": "Vice President, Finance"}	1058	2021-02-09 20:07:32.388072	2021-02-10 15:44:38.501882	t
1791	Renee	Kennedy	{"title": "Director, Digital Marketing & Analytics"}	1058	2021-02-09 20:07:32.41729	2021-02-10 15:44:54.596004	t
1792	Donald	Langsdorf	{"title": "Director, Digital Solutions & Strategy"}	1058	2021-02-09 20:07:32.447352	2021-02-10 15:45:10.191893	t
1793	Daniel	Carlin	{"title": "Founder & CEO"}	1059	2021-02-09 20:08:22.507376	2021-02-10 15:45:25.72641	t
1794	Richard	Fontaine	{"title": "President"}	1060	2021-02-09 20:08:59.296362	2021-02-10 15:45:41.330813	t
1795	Kurt	M.	{"title": "CEO & Co-Founder"}	1060	2021-02-09 20:08:59.327088	2021-02-10 15:45:56.864894	t
1796	Paul	Scharre	{"title": "Senior Fellow & Director of the Technology and National Security Program"}	1060	2021-02-09 20:08:59.358286	2021-02-10 15:46:12.361343	t
1797	Brendan	McCord	{"title": "Adjunct Senior Fellow"}	1060	2021-02-09 20:08:59.401175	2021-02-10 15:46:28.069278	t
1798	Patrick	Cronin	{"title": "Senior Director, Asia-Pacific Security Program and Senior Director"}	1060	2021-02-09 20:08:59.430673	2021-02-10 15:46:44.304503	t
1799	Michele	Flournoy	{"title": "Co-Founder & Chief Executive Officer"}	1060	2021-02-09 20:08:59.460467	2021-02-10 15:47:00.00111	t
1800	Elsa	Kania	{"title": "Adjunct Senior Fellow, Technology and National Security Program"}	1060	2021-02-09 20:08:59.492615	2021-02-10 15:47:15.568957	t
1801	Jim	Carpenter	{"title": "Founder, President & CEO"}	1065	2021-02-09 20:12:37.923827	2021-02-10 15:47:32.222462	t
1803	Jack	Wilson	{"title": "Vice President, Chief Technical Officer"}	1068	2021-02-09 20:13:28.474047	2021-02-10 15:48:03.392183	t
1805	Thomas	Koll	{"title": "Chairman of the Board, CEO"}	1068	2021-02-09 20:13:28.547811	2021-02-10 15:48:34.441264	t
1806	Lee	Starusta	{"title": "Founder"}	1069	2021-02-09 20:14:06.451066	2021-02-10 15:48:50.012684	t
1807	Jody	Hook	{"title": "General Manager, Production"}	1070	2021-02-09 20:14:50.761008	2021-02-10 15:49:05.540897	t
1808	Mark	Koch	{"title": "Distribution Director"}	1070	2021-02-09 20:14:50.790556	2021-02-10 15:49:22.287793	t
1809	Jason	Taylor	{"title": "President and Publisher"}	1070	2021-02-09 20:14:50.820223	2021-02-10 15:49:37.903639	t
1810	Stacia	King	{"title": "Advertising & Digital Sales Director"}	1070	2021-02-09 20:14:50.848075	2021-02-10 15:49:53.454823	t
1811	Joe	Williams	{"title": "Finance Director"}	1070	2021-02-09 20:14:50.877439	2021-02-10 15:50:08.962382	t
1812	Joshua	Shane	{"title": "Managing Director and VP of Strategy"}	1071	2021-02-09 20:15:34.101741	2021-02-10 15:50:25.580033	t
1813	Dan	Heimbrock	{"title": "Founder"}	1073	2021-02-09 20:17:08.761908	2021-02-10 15:50:41.1172	t
1814	David	DeVore	{"title": "CEO"}	1073	2021-02-09 20:17:08.791764	2021-02-10 15:50:56.652365	t
1815	Andy	Gadiel	{"title": "Founder"}	1073	2021-02-09 20:17:08.820688	2021-02-10 15:51:12.232888	t
1816	David	Rosenheim	{"title": "Founder"}	1073	2021-02-09 20:17:08.850435	2021-02-10 15:51:28.670234	t
1817	Daniela	Salas	{"title": "Chief Operating Officer"}	1076	2021-02-09 20:19:13.943793	2021-02-10 15:51:44.186482	t
1818	Jose	Quinonez	{"title": "Chief Executive Officer"}	1076	2021-02-09 20:19:13.975254	2021-02-10 15:51:59.728581	t
1819	Tara	Robinson	{"title": "Chief Development Officer"}	1076	2021-02-09 20:19:14.005066	2021-02-10 15:52:15.468131	t
1820	Joel	Russell	{"title": "Founder & CEO"}	1077	2021-02-09 20:19:53.812251	2021-02-10 15:52:31.139633	t
1821	Sridhar	Kunadi	{"title": "Co-Founder & CEO"}	1079	2021-02-09 20:21:08.692308	2021-02-10 15:52:46.627709	t
1822	Surajit	Sengupta	{"title": "Co-Founder & President"}	1079	2021-02-09 20:21:08.722988	2021-02-10 15:53:03.632892	t
1823	David	Carbone	{"title": "President"}	1087	2021-02-09 20:23:55.981919	2021-02-10 15:53:19.672417	t
1824	Seth	Rogin	{"title": "Chief Commercial Officer"}	1089	2021-02-09 20:25:18.94619	2021-02-10 15:53:35.170139	t
1825	Vijay	Tella	{"title": "CEO & Co‑Founder"}	1095	2021-02-09 20:29:52.845596	2021-02-10 15:53:51.462984	t
1826	Gautham	Viswanathan	{"title": "VP of Product & Co‑Founder"}	1095	2021-02-09 20:29:52.876723	2021-02-10 15:54:07.025122	t
1827	Dimitris	Kogias	{"title": "Co-Founder and Software Engineer & Architect"}	1095	2021-02-09 20:29:52.911861	2021-02-10 15:54:23.267711	t
1828	Harish	Shetty	{"title": "VP of Engineering & Co‑Founder"}	1095	2021-02-09 20:29:52.941138	2021-02-10 15:54:38.953075	t
1829	Amlan	Debnath	{"title": "VP Solutions and Customer Success"}	1095	2021-02-09 20:29:52.971266	2021-02-10 15:54:54.63533	t
1830	Markus	Zirn	{"title": "VP, Business Development"}	1095	2021-02-09 20:29:53.022748	2021-02-10 15:55:10.617657	t
1831	Bhaskar	Roy	{"title": "Head of Growth"}	1095	2021-02-09 20:29:53.053274	2021-02-10 15:55:26.352664	t
1832	Allan	Teng	{"title": "Managing Director, APJ and VP, IT"}	1095	2021-02-09 20:29:53.08553	2021-02-10 15:55:41.882006	t
1833	Andy	Rachleff	{"title": "President and CEO"}	1097	2021-02-09 20:30:48.704343	2021-02-10 15:55:57.528213	t
1834	Dan	Carroll	{"title": "Founder and Chief Strategy Officer"}	1097	2021-02-09 20:30:48.733789	2021-02-10 15:56:13.057951	t
1835	Burt	Malkiel	{"title": "Chief Investment Officer"}	1097	2021-02-09 20:30:48.762718	2021-02-10 15:56:29.158991	t
1836	Jakub	Jurek	{"title": "VP of Research and"}	1097	2021-02-09 20:30:48.813054	2021-02-10 15:56:44.794559	t
1837	Apeksha	Garga	{"title": "Head of Design"}	1097	2021-02-09 20:30:48.843057	2021-02-10 15:57:00.306418	t
1838	Kate	Wauck	{"title": "Senior Director of Corporate Communications"}	1097	2021-02-09 20:30:48.874067	2021-02-10 15:57:15.863382	t
1839	Roy	Adams	{"title": "VP of Legal and General Counsel"}	1097	2021-02-09 20:30:48.903031	2021-02-10 15:57:31.400133	t
1840	Andrew	Chang	{"title": "Director of Product Management"}	1097	2021-02-09 20:30:48.932533	2021-02-10 15:57:46.930176	t
1841	Jeremy	Philips	{"title": "Board Observer"}	1097	2021-02-09 20:30:48.961633	2021-02-10 15:58:02.502055	t
1842	Meyer	Malka	{"title": "Board Observer"}	1097	2021-02-09 20:30:49.033597	2021-02-10 15:58:18.274689	t
1843	Brett	Cooper	{"title": "Co-Founder"}	1098	2021-02-09 20:31:33.21661	2021-02-10 15:58:34.111337	t
1844	Ryan	Hinchey	{"title": "Chief Actuary"}	1098	2021-02-09 20:31:33.25085	2021-02-10 15:58:49.677422	t
1845	Vishal	Parikh	{"title": "Co-Founder, CTO"}	1098	2021-02-09 20:31:33.291318	2021-02-10 15:59:06.051598	t
1846	Munjal	Shah	{"title": "CEO & Co-Founder"}	1098	2021-02-09 20:31:33.335473	2021-02-10 15:59:21.713499	t
1847	Chang	Fu	{"title": "Head of Growth"}	1098	2021-02-09 20:31:33.370691	2021-02-10 15:59:37.262656	t
1848	Gaurav	Suri	{"title": "COO, Co-Founder"}	1098	2021-02-09 20:31:33.419145	2021-02-10 15:59:53.190793	t
1850	Chip	Vanek	{"title": "Software Fellow"}	1098	2021-02-09 20:31:33.482018	2021-02-10 16:00:25.537567	t
1851	Sundeep	Peechu	{"title": "Board Observer"}	1098	2021-02-09 20:31:33.513632	2021-02-10 16:00:41.54399	t
1852	Bill	Budinger	{"title": "Investor"}	1099	2021-02-09 20:32:16.39952	2021-02-10 16:00:58.567833	t
1853	Jeff	Stibel	{"title": "Investor"}	1099	2021-02-09 20:32:16.448578	2021-02-10 16:01:14.206346	t
1854	Bill	Budinger	{"title": "Board Observer"}	1099	2021-02-09 20:32:16.594731	2021-02-10 16:01:30.702871	t
1855	Emre	Kılınç	{"title": "Founder"}	1100	2021-02-09 20:32:52.204442	2021-02-10 16:01:46.566313	t
1856	Edith	Harbaugh	{"title": "Co-Founder and CEO"}	1102	2021-02-09 20:34:15.047596	2021-02-10 16:02:02.602009	t
1857	John	Kodumal	{"title": "Co-Founder and CTO"}	1102	2021-02-09 20:34:15.080303	2021-02-10 16:02:19.332931	t
1858	Jonathan	Nolen	{"title": "VP Engineering"}	1102	2021-02-09 20:34:15.111653	2021-02-10 16:02:34.891574	t
1859	Adam	Zimman	{"title": "VP of Product and Platform"}	1102	2021-02-09 20:34:15.141472	2021-02-10 16:02:51.051349	t
1860	Rich	Manalang	{"title": "Principal Developer Advocate"}	1102	2021-02-09 20:34:15.174387	2021-02-10 16:03:07.0319	t
1861	Jeremy	Smith	{"title": "SVP, Revenue"}	1102	2021-02-09 20:34:15.205216	2021-02-10 16:03:22.690402	t
1862	Heidi	Waterhouse	{"title": "Developer Advocate"}	1102	2021-02-09 20:34:15.235261	2021-02-10 16:03:38.342407	t
1863	Tim	Keohane	{"title": "VP Finance & Administration"}	1102	2021-02-09 20:34:15.26549	2021-02-10 16:03:54.074886	t
1865	Liad	Agmon	{"title": "Co-Founder, Director & CEO"}	1103	2021-02-09 20:35:00.018174	2021-02-10 16:04:25.212279	t
1866	Omri	Mendellevich	{"title": "Co-Founder and CTO"}	1103	2021-02-09 20:35:00.047822	2021-02-10 16:04:41.086171	t
1867	Mukund	Ramachandran	{"title": "CMO"}	1103	2021-02-09 20:35:00.078152	2021-02-10 16:04:57.534482	t
1868	David	Sasson	{"title": "COO"}	1103	2021-02-09 20:35:00.108854	2021-02-10 16:05:13.116029	t
1870	Ori	Lavie	{"title": "VP of Sales"}	1103	2021-02-09 20:35:00.166363	2021-02-10 16:07:13.949259	t
1871	Colton	Perry	{"title": "VP, Channel"}	1103	2021-02-09 20:35:00.198529	2021-02-10 16:07:31.335826	t
1872	Nina	Manor	{"title": "VP, Human Resources"}	1103	2021-02-09 20:35:00.228168	2021-02-10 16:07:47.097673	t
1873	Vivek	Ravisankar	{"title": "Co-Founder & Chief Executive Officer"}	1107	2021-02-09 20:35:52.77505	2021-02-10 16:08:02.690207	t
1874	Harishankaran	Karunanidhi	{"title": "Co-Founder & Chief Technology Officer"}	1107	2021-02-09 20:35:52.813036	2021-02-10 16:08:19.349679	t
1875	Jawahar	Malhotra	{"title": "Vice President, Engineering"}	1107	2021-02-09 20:35:52.845113	2021-02-10 16:08:35.640073	t
1876	Gaurav	Verma	{"title": "Chief Customer Officer"}	1107	2021-02-09 20:35:52.873981	2021-02-10 16:08:51.567898	t
1877	Oded	Shekel	{"title": "Chief Product Officer"}	1107	2021-02-09 20:35:52.904466	2021-02-10 16:09:07.462081	t
1878	Maria	Chung	{"title": "Chief People Officer"}	1107	2021-02-09 20:35:52.934887	2021-02-10 16:09:22.978079	t
1879	Ramesh	Sethuraman	{"title": "CFO"}	1107	2021-02-09 20:35:52.983755	2021-02-10 16:09:38.832357	t
1880	Jennifer	Nance	{"title": "CMO"}	1107	2021-02-09 20:35:53.028044	2021-02-10 16:09:54.571839	t
1881	Michael	MacLean	{"title": "CEO"}	1108	2021-02-09 20:36:40.178309	2021-02-10 16:10:10.128675	t
1882	Ashwini	Asokan	{"title": "CEO"}	1109	2021-02-09 20:37:25.06555	2021-02-10 16:10:25.674351	t
1883	Julia	Kaplan	{"title": "Chief Product Officer"}	1109	2021-02-09 20:37:25.095373	2021-02-10 16:10:41.606022	t
1884	Costa	Colbert	{"title": "Chief Science Officer, Founder"}	1109	2021-02-09 20:37:25.124729	2021-02-10 16:10:57.702048	t
1885	Anand	Chandrasekaran	{"title": "Founder & CTO"}	1109	2021-02-09 20:37:25.155345	2021-02-10 16:11:13.63616	t
1886	Jessie	Woolley-Wilson	{"title": "CEO & President"}	1110	2021-02-09 20:38:13.25044	2021-02-10 16:11:29.086596	t
1887	Todd	Howson	{"title": "CTO"}	1110	2021-02-09 20:38:13.280088	2021-02-10 16:11:44.71691	t
1888	James	Stoffer	{"title": "Vice President of Business Operations"}	1110	2021-02-09 20:38:13.315121	2021-02-10 16:12:00.284446	t
1889	Mark	D'Agostino	{"title": "Vice President of Product Management"}	1110	2021-02-09 20:38:13.375546	2021-02-10 16:12:16.132432	t
1890	Jennifer	Agustin	{"title": "Vice President of Marketing"}	1110	2021-02-09 20:38:13.404963	2021-02-10 16:12:31.691057	t
1891	Nigel	Green	{"title": "Vice President of User Experience"}	1110	2021-02-09 20:38:13.437346	2021-02-10 16:12:48.651079	t
1892	Kelly	Havens	{"title": "Controller"}	1110	2021-02-09 20:38:13.467852	2021-02-10 16:13:04.201629	t
1893	Tim	Hudson	{"title": "Chief Learning Officer"}	1110	2021-02-09 20:38:13.496735	2021-02-10 16:13:20.591134	t
1894	Irv	H.	{"title": "CEO"}	1111	2021-02-09 20:38:52.734434	2021-02-10 16:13:36.157358	t
1895	Richard	Sullivan	{"title": "Chief Government Officer"}	1111	2021-02-09 20:38:52.765611	2021-02-10 16:13:52.108415	t
1896	Lily	S.	{"title": "CTO"}	1111	2021-02-09 20:38:52.796878	2021-02-10 16:14:08.41747	t
1897	Bobbie	Peterson	{"title": "VP, Federal Government Business Development"}	1111	2021-02-09 20:38:52.861519	2021-02-10 16:14:24.039693	t
1898	Michael	Morotti	{"title": "VP, Sales & Marketing"}	1111	2021-02-09 20:38:52.903766	2021-02-10 16:14:39.897653	t
1899	Dana	Deely	{"title": "Senior Director, Customer Care"}	1111	2021-02-09 20:38:52.937535	2021-02-10 16:14:55.52632	t
1900	Jeri	Judkins	{"title": "Chief Sales & Marketing Officer"}	1111	2021-02-09 20:38:52.97712	2021-02-10 16:15:11.33917	t
1901	Josh	Price	{"title": "VP, Product Management and R&D"}	1111	2021-02-09 20:38:53.019134	2021-02-10 16:15:26.849308	t
1902	Rob	Born	{"title": "Board Observer"}	1111	2021-02-09 20:38:53.116734	2021-02-10 16:15:43.938997	t
1904	Mike	Silvey	{"title": "EVP and Co-Founder"}	1114	2021-02-09 20:40:28.286928	2021-02-10 16:16:16.744719	t
1905	Kelsey	Hanger	{"title": "Product Marketing Manager, AI & Machine Learning"}	1114	2021-02-09 20:40:28.31604	2021-02-10 16:16:32.538098	t
1906	Winston	Dimaano	{"title": "Director of Finance"}	1114	2021-02-09 20:40:28.345662	2021-02-10 16:16:48.215322	t
1907	Will	Cappelli	{"title": "CTO, EMEA"}	1114	2021-02-09 20:40:28.394362	2021-02-10 16:17:03.795168	t
1908	Terry	Ramos	{"title": "SVP Alliances and Channel"}	1114	2021-02-09 20:40:28.443216	2021-02-10 16:17:19.41002	t
1909	Richard	Whitehead	{"title": "Evangelist In Chief & CTO"}	1114	2021-02-09 20:40:28.498831	2021-02-10 16:17:34.999193	t
1910	Dominic	Wellington	{"title": "Director of Strategic Architecture"}	1114	2021-02-09 20:40:28.543773	2021-02-10 16:17:50.53213	t
1911	Raman	Khanna	{"title": "Board Observer"}	1114	2021-02-09 20:40:28.586227	2021-02-10 16:18:06.298751	t
1912	Mike	Chalfen	{"title": "Board Observer"}	1114	2021-02-09 20:40:28.644434	2021-02-10 16:18:22.076612	t
1913	Tore	C.	{"title": "CEO"}	1116	2021-02-09 20:41:48.119154	2021-02-10 16:18:39.482141	t
1914	Darren	Powderly	{"title": "Co-Founder"}	1116	2021-02-09 20:41:48.149343	2021-02-10 16:18:55.267821	t
1915	Rohit	Colaco	{"title": "VP, Engineering"}	1116	2021-02-09 20:41:48.180294	2021-02-10 16:19:10.768756	t
1916	Steve	Drew	{"title": "VP, Product"}	1116	2021-02-09 20:41:48.20993	2021-02-10 16:19:26.411164	t
1917	Ian	Formigle	{"title": "VP, Investments"}	1116	2021-02-09 20:41:48.239352	2021-02-10 16:19:42.971627	t
1918	Shafqat	Islam	{"title": "Co-founder & CEO"}	1117	2021-02-09 20:42:34.141788	2021-02-10 16:19:58.518029	t
1919	Charles	Hough	{"title": "Chief Operating Officer and President"}	1117	2021-02-09 20:42:34.1715	2021-02-10 16:20:14.344842	t
1920	Iraj	Islam	{"title": "Co-founder & Chief Technology Officer"}	1117	2021-02-09 20:42:34.20054	2021-02-10 16:20:29.899134	t
1921	Cliff	Dorsey	{"title": "Senior Vice-President of Global Sales"}	1117	2021-02-09 20:42:34.242917	2021-02-10 16:20:45.740682	t
1922	Ankit	Malhotra	{"title": "Vice-President of Engineering"}	1117	2021-02-09 20:42:34.273112	2021-02-10 16:21:01.388981	t
1923	Jennifer	Stenger	{"title": "Recruiter"}	1117	2021-02-09 20:42:34.303437	2021-02-10 16:21:16.894177	t
1924	Asif	Rahman	{"title": "Co-Founder"}	1117	2021-02-09 20:42:34.332362	2021-02-10 16:21:32.702827	t
1925	Brad	Gillespie	{"title": "Board Observer"}	1117	2021-02-09 20:42:34.401723	2021-02-10 16:21:48.364358	t
1927	Amnon	Mishor	{"title": "Co-Founder"}	1120	2021-02-09 20:43:54.392116	2021-02-10 16:22:21.180202	t
1928	Alex	Yoder	{"title": "CEO"}	1120	2021-02-09 20:43:54.422611	2021-02-10 16:22:37.25601	t
1929	Sherrod	Patching	{"title": "Chief Customer Officer"}	1120	2021-02-09 20:43:54.451719	2021-02-10 16:22:52.863199	t
1930	Michael	Ramlet	{"title": "CEO & Co-Founder"}	1121	2021-02-09 20:44:34.961671	2021-02-10 16:23:08.616718	t
1931	Kyle	Dropp	{"title": "President & Co-Founder"}	1121	2021-02-09 20:44:34.993103	2021-02-10 16:23:24.368862	t
1932	Alex	Dulin	{"title": "Co-Founder & Chief Technology Officer"}	1121	2021-02-09 20:44:35.021998	2021-02-10 16:23:39.927225	t
1933	Libby	Isenstein	{"title": "Chief Product Officer"}	1121	2021-02-09 20:44:35.053126	2021-02-10 16:23:55.50407	t
1934	Jeff	Cartwright	{"title": "Chief Growth Officer"}	1121	2021-02-09 20:44:35.082558	2021-02-10 16:24:11.366075	t
1935	Tyler	Sinclair	{"title": "Chief Research Officer"}	1121	2021-02-09 20:44:35.125916	2021-02-10 16:24:27.0155	t
1936	Mitch	Pirtle	{"title": "VP of Engineering"}	1121	2021-02-09 20:44:35.155655	2021-02-10 16:24:43.073071	t
1937	Max	Courtney	{"title": "Chief Commercial Officer"}	1121	2021-02-09 20:44:35.186067	2021-02-10 16:24:59.049976	t
1939	Alex	Cavoulacos	{"title": "Founder & President"}	1122	2021-02-09 20:45:18.994304	2021-02-10 16:25:31.303619	t
1940	Sharon	Feder	{"title": "Chief Content Officer"}	1122	2021-02-09 20:45:19.024698	2021-02-10 16:25:46.862121	t
1941	David	Kietz	{"title": "Head of Account Management"}	1122	2021-02-09 20:45:19.053691	2021-02-10 16:26:02.766129	t
1942	Lisa	Blau	{"title": "Investor"}	1122	2021-02-09 20:45:19.082313	2021-02-10 16:26:18.275015	t
1943	John	Hyland	{"title": "SVP Revenue"}	1122	2021-02-09 20:45:19.11132	2021-02-10 16:26:34.127946	t
1944	Heather	Freiser	{"title": "Vice President"}	1122	2021-02-09 20:45:19.140491	2021-02-10 16:26:49.650471	t
1945	Douglas	Freeman	{"title": "VP of Sales"}	1122	2021-02-09 20:45:19.181797	2021-02-10 16:27:05.303941	t
1946	Watson	Yim	{"title": "Co-Founder / CTO"}	1123	2021-02-09 20:46:11.002367	2021-02-10 16:27:20.805284	t
1947	Troy	Otillio	{"title": "Chief Executive Officer"}	1123	2021-02-09 20:46:11.033074	2021-02-10 16:27:36.648186	t
1948	Kevin	Phelan	{"title": "VP of Sales and Marketing"}	1123	2021-02-09 20:46:11.064001	2021-02-10 16:27:52.643747	t
1949	Michael	Ellenbogen	{"title": "Investor"}	1123	2021-02-09 20:46:11.093745	2021-02-10 16:28:08.192379	t
1950	Yuja	Chang	{"title": "Co-Founder"}	1123	2021-02-09 20:46:11.122079	2021-02-10 16:28:23.72487	t
1951	Bob	Nelson	{"title": "Investor"}	1123	2021-02-09 20:46:11.151394	2021-02-10 16:28:39.83484	t
1952	Chris	Anderson	{"title": "CEO"}	1124	2021-02-09 20:46:48.0681	2021-02-10 16:28:55.700836	t
1953	Jordi	Munoz	{"title": "Founder"}	1124	2021-02-09 20:46:48.100467	2021-02-10 16:29:11.804131	t
1954	Kimberly	Saunders	{"title": "Vice President, People and Culture"}	1124	2021-02-09 20:46:48.130139	2021-02-10 16:29:27.477848	t
1955	Brent	Pirruccello	{"title": "Vice President, Enterprise"}	1124	2021-02-09 20:46:48.158564	2021-02-10 16:29:43.004196	t
1956	Vu	Tran	{"title": "Vice President, Operations"}	1124	2021-02-09 20:46:48.188315	2021-02-10 16:29:59.31382	t
1957	Jason	Yau	{"title": "Vice President, Engineering"}	1124	2021-02-09 20:46:48.21741	2021-02-10 16:30:14.997232	t
1958	Veronica	Sampaio	{"title": "Talent Manager"}	1124	2021-02-09 20:46:48.257709	2021-02-10 16:30:31.272842	t
1959	Nick	Costa	{"title": "Controller"}	1124	2021-02-09 20:46:48.286873	2021-02-10 16:30:46.872461	t
1960	Tim	Chang	{"title": "Board Observer"}	1124	2021-02-09 20:46:48.355717	2021-02-10 16:31:02.693058	t
1961	Gareth	Keane	{"title": "Board Observer"}	1124	2021-02-09 20:46:48.395658	2021-02-10 16:31:18.207712	t
1962	Robert	Gabel	{"title": "Founder & CEO"}	1126	2021-02-09 20:47:32.790733	2021-02-10 16:31:33.739847	t
1963	Allison	Stern	{"title": "Co-Founder"}	1126	2021-02-09 20:47:32.822193	2021-02-10 16:31:49.873475	t
1964	Neil	Patil	{"title": "Chief Commercial Officer"}	1126	2021-02-09 20:47:32.852643	2021-02-10 16:32:06.155043	t
1965	Michael	Kamprath	{"title": "CTO"}	1126	2021-02-09 20:47:32.883709	2021-02-10 16:32:21.713453	t
1966	Patrick	Williams	{"title": "Chief Revenue Officer"}	1126	2021-02-09 20:47:32.912002	2021-02-10 16:32:37.505249	t
1967	Denis	Crushell	{"title": "VP of Europe"}	1126	2021-02-09 20:47:32.942451	2021-02-10 16:32:53.054598	t
1968	Mark	Mangiola	{"title": "Goalie"}	1126	2021-02-09 20:47:32.972331	2021-02-10 16:33:08.657996	t
1969	Dean	Gilbert	{"title": "Investor"}	1126	2021-02-09 20:47:33.001787	2021-02-10 16:33:24.265907	t
1970	Chris	DePatria	{"title": "VP of Revenue"}	1128	2021-02-09 20:48:27.689376	2021-02-10 16:55:43.003211	t
1971	Seth	Purcell	{"title": "VP of Engineering"}	1128	2021-02-09 20:48:27.719968	2021-02-10 16:55:58.516599	t
1972	Jason	Calacanis	{"title": "Team Member"}	1128	2021-02-09 20:48:27.764769	2021-02-10 16:56:14.562714	t
1973	Todd	Dagres	{"title": "Board Member / Investor"}	1128	2021-02-09 20:48:27.796138	2021-02-10 16:56:30.57078	t
1974	Stuart	Wall	{"title": "Founder"}	1128	2021-02-09 20:48:27.826893	2021-02-10 16:56:46.081141	t
1975	Jack	Herrick	{"title": "Team Member"}	1128	2021-02-09 20:48:27.857388	2021-02-10 16:57:01.657198	t
1976	David	Wachtendonk	{"title": "VP Product"}	1128	2021-02-09 20:48:27.887512	2021-02-10 16:57:17.553028	t
1978	Ricky	Pelletier	{"title": "Board Observer"}	1128	2021-02-09 20:48:27.989018	2021-02-10 16:57:49.688732	t
1979	Tyson	Baber	{"title": "Board Observer"}	1128	2021-02-09 20:48:28.055162	2021-02-10 16:58:05.226284	t
1980	Josh	Leslie	{"title": "CEO"}	1130	2021-02-09 20:49:16.71545	2021-02-10 16:58:22.137296	t
1981	James	McNicholas	{"title": "CFO"}	1130	2021-02-09 20:49:16.747196	2021-02-10 16:58:38.029123	t
1982	Ron	DiBiase	{"title": "VP World Wide Sales"}	1130	2021-02-09 20:49:16.777805	2021-02-10 16:58:54.134319	t
1983	Ami	Badani	{"title": "VP of Marketing"}	1130	2021-02-09 20:49:16.807541	2021-02-10 16:59:09.688022	t
1984	Sandy	Palicio	{"title": "VP of Human Resources"}	1130	2021-02-09 20:49:16.837562	2021-02-10 16:59:25.195547	t
1985	Ami	Badani	{"title": "VP Marketing"}	1130	2021-02-09 20:49:16.866808	2021-02-10 16:59:40.760619	t
1986	Curt	Brune	{"title": "Principal Engineer"}	1130	2021-02-09 20:49:16.896805	2021-02-10 16:59:56.34388	t
1987	Shrijeet	Mukherjee	{"title": "VP of Software Engineering"}	1130	2021-02-09 20:49:16.926646	2021-02-10 17:00:12.060078	t
1988	William	Coughran	{"title": "Board Observer"}	1130	2021-02-09 20:49:16.966756	2021-02-10 17:00:27.647369	t
1989	Drew	Schiller	{"title": "Co-Founder & CEO"}	1133	2021-02-09 20:51:04.245907	2021-02-10 17:00:43.627712	t
1991	Sara	Giacobbi	{"title": "Account Executive"}	1134	2021-02-09 20:51:48.655807	2021-02-10 17:01:15.618915	t
1992	Benny	Baltrotsky	{"title": "Chief Strategy Officer"}	1134	2021-02-09 20:51:48.684982	2021-02-10 17:01:31.451259	t
1993	Angelina	Hendricks	{"title": "CTO"}	1134	2021-02-09 20:51:48.715768	2021-02-10 17:01:46.957599	t
1994	Matt	Belkin	{"title": "Chief Operating Officer"}	1134	2021-02-09 20:51:48.75784	2021-02-10 17:02:03.095627	t
1995	Chad	Halvorson	{"title": "Co-Founder & CEO"}	1136	2021-02-09 20:53:00.194028	2021-02-10 17:02:18.755718	t
1996	Daniel	Olfelt	{"title": "Co-Founder & Chief Architect"}	1136	2021-02-09 20:53:00.226643	2021-02-10 17:02:34.675332	t
1997	LeeAnn	Belski	{"title": "Vice President of Talent and Culture"}	1136	2021-02-09 20:53:00.257452	2021-02-10 17:02:50.954126	t
1998	Shane	Helget	{"title": "SVP, Engineering & Data"}	1136	2021-02-09 20:53:00.285787	2021-02-10 17:03:06.616486	t
2000	Nick	VanWagner	{"title": "SVP, Operations & Product"}	1136	2021-02-09 20:53:00.365999	2021-02-10 17:03:38.250085	t
2001	Alan	Patricof	{"title": "Board Observer"}	1136	2021-02-09 20:53:00.405024	2021-02-10 17:03:54.755147	t
2002	Brent	Handler	{"title": "Founder & CEO"}	1137	2021-02-09 20:53:40.628737	2021-02-10 17:04:10.340624	t
2003	Brad	Handler	{"title": "Founder"}	1137	2021-02-09 20:53:40.658993	2021-02-10 17:04:26.607847	t
2004	David	Kallery	{"title": "President"}	1137	2021-02-09 20:53:40.70679	2021-02-10 17:04:43.085531	t
2005	Emma	Castleton	{"title": "Associate Portfolio Manager"}	1137	2021-02-09 20:53:40.739666	2021-02-10 17:04:59.08511	t
2006	Marlena	Sacks	{"title": "Regional Director"}	1137	2021-02-09 20:53:40.770688	2021-02-10 17:05:15.233665	t
2007	Michael	Flanagan	{"title": "Vice President, Marketing"}	1137	2021-02-09 20:53:40.8002	2021-02-10 17:05:31.301692	t
2008	Randy	Nicolau	{"title": "CEO & Co-Founder"}	1138	2021-02-09 20:54:29.739875	2021-02-10 17:05:47.076353	t
2009	Jesse	Liu	{"title": "Vice President of Merchandising"}	1138	2021-02-09 20:54:29.769777	2021-02-10 17:06:03.494862	t
2010	Meredith	Zenkel	{"title": "VP of Marketing + Communications"}	1138	2021-02-09 20:54:29.79921	2021-02-10 17:06:19.545492	t
2011	Merritt	F.	{"title": "President & Co-Founder"}	1139	2021-02-09 20:55:07.657837	2021-02-10 17:06:35.10069	t
2012	Sarah	Bidnick	{"title": "VP of Marketing"}	1139	2021-02-09 20:55:07.688431	2021-02-10 17:06:51.277954	t
2013	Brian	M.	{"title": "CEO & Co-Founder"}	1139	2021-02-09 20:55:07.718783	2021-02-10 17:07:06.81897	t
2014	Jes	Osrow	{"title": "Director of People & Culture"}	1139	2021-02-09 20:55:07.749369	2021-02-10 17:07:22.320303	t
2015	Larry	Marcus	{"title": "Director- board observer"}	1139	2021-02-09 20:55:07.809635	2021-02-10 17:07:38.947555	t
2016	Y.	Darius	{"title": "VP of Global Expansion"}	1139	2021-02-09 20:55:07.848191	2021-02-10 17:07:54.647454	t
2017	Gerard	Casale	{"title": "Board Observer"}	1139	2021-02-09 20:55:07.898052	2021-02-10 17:08:10.178409	t
2018	Asanka	de	{"title": "VP, Sales"}	1140	2021-02-09 20:55:49.957889	2021-02-10 17:08:26.604636	t
2019	Ken	Andersen	{"title": "VP, Research"}	1140	2021-02-09 20:55:49.990148	2021-02-10 17:08:42.239151	t
2020	Tom	Krazit	{"title": "Executive Editor"}	1140	2021-02-09 20:55:50.022747	2021-02-10 17:08:58.475939	t
2021	Om	Malik	{"title": "Founder"}	1140	2021-02-09 20:55:50.055445	2021-02-10 17:09:13.998768	t
2022	Andrea	Abegglen	{"title": "VP, Marketing"}	1140	2021-02-09 20:55:50.126698	2021-02-10 17:09:30.011774	t
2023	Elias	MurrayMetzger	{"title": "VP, Finance"}	1140	2021-02-09 20:55:50.167254	2021-02-10 17:09:45.474149	t
2024	Ben	Book	{"title": "Chief Strategy Officer"}	1140	2021-02-09 20:55:50.202459	2021-02-10 17:10:01.508223	t
2025	Lauren	Hockenson	{"title": "Social Media/Consumer Web Reporter"}	1140	2021-02-09 20:55:50.236116	2021-02-10 17:10:17.168371	t
2026	Jean	Bélanger	{"title": "Chairman and CEO"}	1141	2021-02-09 20:56:31.569952	2021-02-10 17:10:33.123271	t
2027	Arun	Prakash	{"title": "CFO"}	1141	2021-02-09 20:56:31.598737	2021-02-10 17:10:48.63813	t
2028	James	Stojanov	{"title": "Vice President and CMO"}	1141	2021-02-09 20:56:31.627922	2021-02-10 17:11:04.509505	t
2029	Alain	Briancon	{"title": "VP Data Science and CTO"}	1141	2021-02-09 20:56:31.657986	2021-02-10 17:11:53.245386	t
2030	Tom	Gerace	{"title": "CEO"}	1142	2021-02-09 20:57:08.312598	2021-02-10 17:12:09.206788	t
2031	Patricia	Travaline	{"title": "VP of Marketing"}	1142	2021-02-09 20:57:08.342099	2021-02-10 17:12:24.799505	t
2032	Tyler	Hoffman	{"title": "CFO"}	1142	2021-02-09 20:57:08.373512	2021-02-10 17:12:40.162222	t
2033	Darryl	Gehly	{"title": "EVP"}	1142	2021-02-09 20:57:08.403429	2021-02-10 17:12:55.523105	t
2034	Andrew	C.	{"title": "VP Content Services"}	1142	2021-02-09 20:57:08.434374	2021-02-10 17:13:10.916119	t
2035	MaryAnne	Flynn	{"title": "VP of Global Operations"}	1142	2021-02-09 20:57:08.464977	2021-02-10 17:13:26.31395	t
2036	John	Tawadros	{"title": "Chief Revenue Officer (CRO)"}	1142	2021-02-09 20:57:08.497873	2021-02-10 17:13:41.713391	t
2037	Krishna	Raman	{"title": "Chief Product & Technology Officer"}	1142	2021-02-09 20:57:08.529468	2021-02-10 17:13:57.082318	t
2038	Dale	Renner	{"title": "Founder/Chief Executive Officer"}	1144	2021-02-09 20:57:54.415016	2021-02-10 17:14:12.451599	t
2040	George	Corugedo	{"title": "Chief Technology Officer"}	1144	2021-02-09 20:57:54.475124	2021-02-10 17:14:43.198443	t
2041	Michael	Novak	{"title": "UI Developer"}	1144	2021-02-09 20:57:54.508838	2021-02-10 17:14:58.55928	t
2042	Julia	Taxin	{"title": "Board Observer"}	1144	2021-02-09 20:57:54.546312	2021-02-10 17:15:13.922903	t
2043	Philip	Lang	{"title": "Co-Founder"}	1147	2021-02-09 20:58:42.972711	2021-02-10 17:15:29.278286	t
2044	David	Walker	{"title": "Co-Founder & CEO"}	1147	2021-02-09 20:58:43.005822	2021-02-10 17:15:44.647408	t
2045	Greta	Jensen	{"title": "Director of Customer Experience"}	1148	2021-02-09 20:59:22.584315	2021-02-10 17:16:00.013274	t
2046	Kyle	Jenke	{"title": "SVP of Global Platform & Business Development"}	1148	2021-02-09 20:59:22.619703	2021-02-10 17:16:15.381928	t
2047	Jon	Burchmore	{"title": "Chief Technology Officer"}	1149	2021-02-09 20:59:53.498362	2021-02-10 17:16:30.744974	t
2048	Rick	Wilson	{"title": "CEO"}	1149	2021-02-09 20:59:53.528434	2021-02-10 17:16:46.107764	t
2049	David	Hubbard	{"title": "CIO"}	1149	2021-02-09 20:59:53.558876	2021-02-10 17:17:01.450895	t
2050	Jen	Hardman	{"title": "Vice President, Human Resources"}	1149	2021-02-09 20:59:53.589278	2021-02-10 17:17:16.816033	t
2051	Richard	Rauscher	{"title": "Executive Vice President"}	1149	2021-02-09 20:59:53.624124	2021-02-10 17:17:32.171315	t
2053	Oscar	Chavez	{"title": "Chief Medical Officer"}	1150	2021-02-09 21:00:45.928526	2021-02-10 17:18:02.892664	t
2054	Shawn	Buckley	{"title": "Owner"}	1150	2021-02-09 21:00:45.961998	2021-02-10 17:18:18.273712	t
2055	Carey	Tischler	{"title": "CEO"}	1150	2021-02-09 21:00:45.997348	2021-02-10 17:18:33.657794	t
2056	John	Stancil	{"title": "CFO"}	1150	2021-02-09 21:00:46.027209	2021-02-10 17:18:49.05235	t
2057	Heath	Nielsen	{"title": "Chief Executive Officer"}	1150	2021-02-09 21:00:46.081598	2021-02-10 17:19:04.753404	t
2058	Austin	Allison	{"title": "Founder/CEO"}	1151	2021-02-09 21:01:20.31582	2021-02-10 17:19:20.355507	t
2059	Alex	Allison	{"title": "Director of Business Development"}	1151	2021-02-09 21:01:20.3463	2021-02-10 17:27:14.361825	t
2060	Chad	Humphrey	{"title": "Director of industry Relations"}	1151	2021-02-09 21:01:20.376092	2021-02-10 17:27:30.081089	t
2062	Al	Wallander	{"title": "CFO"}	1151	2021-02-09 21:01:20.470503	2021-02-10 17:28:01.287174	t
2063	Chris	Chuang	{"title": "Chief Operating Officer"}	1153	2021-02-09 21:02:15.332805	2021-02-10 17:28:17.064273	t
2064	Jeff	Hoffman	{"title": "Chief Financial Officer"}	1153	2021-02-09 21:02:15.362664	2021-02-10 17:28:32.655689	t
2065	Nathan	Owen	{"title": "Co-Founder & Chairman of the Board"}	1154	2021-02-09 21:02:59.729806	2021-02-10 17:28:48.267781	t
2066	Carl	B.	{"title": "Co-Founder and Board Member"}	1154	2021-02-09 21:02:59.762255	2021-02-10 17:29:04.21688	t
2067	Patrick	Deane	{"title": "Chief Financial Officer"}	1154	2021-02-09 21:02:59.792974	2021-02-10 17:29:19.768314	t
2068	Michael	Kelly	{"title": "CTO"}	1154	2021-02-09 21:02:59.822176	2021-02-10 17:29:35.496979	t
2069	Bekim	Protopapa	{"title": "President and CEO"}	1154	2021-02-09 21:02:59.853116	2021-02-10 17:29:51.1097	t
2070	Carol	Volk	{"title": "CMO"}	1154	2021-02-09 21:02:59.883831	2021-02-10 17:30:07.873673	t
2071	Scott	Walsh	{"title": "Senior Implementation Specialist"}	1154	2021-02-09 21:02:59.91484	2021-02-10 17:30:23.590824	t
2072	Ron	Watson	{"title": "Board Observer"}	1154	2021-02-09 21:02:59.981273	2021-02-10 17:30:39.104542	t
2073	Ilya	Semin	{"title": "Founder & Chief Executive Officer"}	1155	2021-02-09 21:03:36.381772	2021-02-10 17:30:54.643217	t
2074	Ron	Selvey	{"title": "Senior Vice President, Marketing"}	1155	2021-02-09 21:03:36.413589	2021-02-10 17:31:10.326886	t
2075	Deepa	Krishnan	{"title": "VP of Product"}	1155	2021-02-09 21:03:36.443891	2021-02-10 17:31:25.874028	t
2076	Lindsay	Melo	{"title": "Account Executive"}	1155	2021-02-09 21:03:36.476713	2021-02-10 17:31:41.390961	t
2077	Jason	Vargas	{"title": "Director of Outbound Sales"}	1155	2021-02-09 21:03:36.506641	2021-02-10 17:31:56.91091	t
2078	Zafar	Khan	{"title": "CEO"}	1156	2021-02-09 21:04:17.350127	2021-02-10 17:32:12.458589	t
2079	Alex	Khan	{"title": "VP Global Services"}	1156	2021-02-09 21:04:17.383224	2021-02-10 17:32:28.50268	t
2080	Christopher	Cooper	{"title": "Co-Founder"}	1157	2021-02-09 21:04:51.717978	2021-02-10 17:32:44.038005	t
2081	Peer	Snoep	{"title": "Founding Partner"}	1157	2021-02-09 21:04:51.749762	2021-02-10 17:32:59.732633	t
2082	Leonardo	Farias	{"title": "Co-Founder"}	1157	2021-02-09 21:04:51.783587	2021-02-10 17:33:15.30003	t
2083	Humberto	Farias	{"title": "Founding Partner"}	1157	2021-02-09 21:04:51.813917	2021-02-10 17:33:31.191414	t
2084	Orly	Michaeli	{"title": "Partnerships Manager"}	1158	2021-02-09 21:05:38.998634	2021-02-10 17:33:46.761885	t
2085	Oliver	Hurst-Hiller	{"title": "Chief Technology Officer & EVP Product"}	1158	2021-02-09 21:05:39.030388	2021-02-10 17:34:02.319763	t
2086	Katie	Bisbee	{"title": "Chief Marketing Officer"}	1158	2021-02-09 21:05:39.06553	2021-02-10 17:34:18.013244	t
2087	Peter	Bloom	{"title": "Chairman"}	1158	2021-02-09 21:05:39.101984	2021-02-10 17:34:33.599537	t
2088	Charles	Best	{"title": "Founder & CEO"}	1158	2021-02-09 21:05:39.137401	2021-02-10 17:34:49.939079	t
2089	Andy	Kaplan	{"title": "Chief Financial Officer"}	1158	2021-02-09 21:05:39.168167	2021-02-10 17:35:08.754599	t
2090	Cesar	Bocanegra	{"title": "Chief Operations Officer"}	1158	2021-02-09 21:05:39.205519	2021-02-10 17:35:24.533674	t
2091	Tim	Sommer	{"title": "Partnerships Director"}	1158	2021-02-09 21:05:39.291327	2021-02-10 17:35:40.077212	t
2092	Matt	Laufer	{"title": "Director of Marketing"}	1159	2021-02-09 21:08:33.598261	2021-02-10 17:35:55.681815	t
2093	Gregg	Heil	{"title": "Founder & CEO"}	1159	2021-02-09 21:08:33.628181	2021-02-10 17:36:11.285055	t
2094	Jesse	Schwartz	{"title": "Director of Sales"}	1159	2021-02-09 21:08:33.658202	2021-02-10 17:36:26.906244	t
2095	Jeff	Malkin	{"title": "President"}	1159	2021-02-09 21:08:33.692468	2021-02-10 17:36:42.570217	t
2096	Brian	Johnson	{"title": "Co-Founder / CEO"}	1160	2021-02-09 21:09:07.967678	2021-02-10 17:36:58.15607	t
2097	Chris	DeRamus	{"title": "Co-Founder / CTO"}	1160	2021-02-09 21:09:07.997779	2021-02-10 17:37:13.672794	t
2098	Peter	Scott	{"title": "COO"}	1160	2021-02-09 21:09:08.028409	2021-02-10 17:37:29.181468	t
2100	Rick	Juneja	{"title": "VP Customer Success"}	1160	2021-02-09 21:09:08.090967	2021-02-10 17:38:00.402963	t
2101	Jeremy	Snyder	{"title": "VP Business Development"}	1160	2021-02-09 21:09:08.120747	2021-02-10 17:38:15.991605	t
2102	Firoze	Lafeer	{"title": "Innovation"}	1160	2021-02-09 21:09:08.151663	2021-02-10 17:38:31.510998	t
2103	Scott	Totman	{"title": "VP Engineering"}	1160	2021-02-09 21:09:08.183581	2021-02-10 17:38:47.049967	t
2104	Venugopal	Jidigam	{"title": "Director, WaveMaker Cloud"}	1162	2021-02-09 21:09:48.296515	2021-02-10 17:39:03.571294	t
2105	Tim	Castree	{"title": "Global Chief Executive Officer"}	1162	2021-02-09 21:09:48.326818	2021-02-10 17:39:19.159512	t
2106	Sharad	Solanki	{"title": "Director of Engineering"}	1162	2021-02-09 21:09:48.356973	2021-02-10 17:39:34.835872	t
2107	Rajesh	Singhal	{"title": "Vice President Sales"}	1162	2021-02-09 21:09:48.387084	2021-02-10 17:39:50.859607	t
2108	Deepak	Anupalli	{"title": "Head of Engineering"}	1162	2021-02-09 21:09:48.418716	2021-02-10 17:40:07.147881	t
2109	Anoop	Balakuntalam	{"title": "Director, Engineering"}	1162	2021-02-09 21:09:48.450031	2021-02-10 17:40:22.884616	t
2110	Vijay	Pullur	{"title": "CEO"}	1162	2021-02-09 21:09:48.479624	2021-02-10 17:40:39.471895	t
2111	Benjamin	Mestrallet	{"title": "CEO and Founder"}	1164	2021-02-09 21:10:36.494126	2021-02-10 17:40:55.00198	t
2112	François	Moron	{"title": "COO"}	1164	2021-02-09 21:10:36.525606	2021-02-10 17:41:10.540529	t
2113	Greg	O'Neill	{"title": "CEI & President"}	1165	2021-02-09 21:11:19.009163	2021-02-10 17:41:26.618404	t
2114	Mike	Hultberg	{"title": "VP, Manufacturing"}	1165	2021-02-09 21:11:19.03913	2021-02-10 17:41:43.933095	t
2117	Frederick	Clark	{"title": "CTO"}	1166	2021-02-09 21:12:03.265599	2021-02-10 17:42:31.399951	t
2118	Bumsoo	Kim	{"title": "Director, Marketing"}	1166	2021-02-09 21:12:03.296684	2021-02-10 17:42:47.000882	t
2119	John	Allen	{"title": "Chief Investment Officer"}	1167	2021-02-09 21:12:50.496643	2021-02-10 17:43:02.525706	t
2120	Rob	Francais	{"title": "Chief Executive Officer & Partner"}	1167	2021-02-09 21:12:50.527401	2021-02-10 17:43:18.045892	t
2121	Marc	Primiani	{"title": "Founder, General Counsel and Principal"}	1167	2021-02-09 21:12:50.557782	2021-02-10 17:43:33.634935	t
2122	Kabir	Singh	{"title": "Co-Founder & Chief Revenue Officer"}	1168	2021-02-09 21:13:41.14593	2021-02-10 17:43:51.814723	t
2123	Valentine	Bondarchuk	{"title": "CRO"}	1169	2021-02-09 21:14:15.845874	2021-02-10 17:44:07.412766	t
2124	Sergey	Korneev	{"title": "VP Business Development"}	1169	2021-02-09 21:14:15.876534	2021-02-10 17:44:23.291436	t
2125	Helen	Volova	{"title": "CIO"}	1169	2021-02-09 21:14:15.909685	2021-02-10 17:44:38.897556	t
2126	Andrew	Stain	{"title": "Business Development Director Russia"}	1169	2021-02-09 21:14:15.938489	2021-02-10 17:44:54.465625	t
2127	Ylianna	Dadashi	{"title": "Co-founder & Chief Branding Officer"}	1173	2021-02-09 21:16:03.776304	2021-02-10 17:45:10.596385	t
2128	Michael	Dadashi	{"title": "Founder, CEO"}	1173	2021-02-09 21:16:03.809901	2021-02-10 17:45:26.093389	t
2129	David	Nachman	{"title": "CEO"}	1174	2021-02-09 21:16:42.29324	2021-02-10 17:45:41.662822	t
2130	Sian	Wang	{"title": "CFO"}	1174	2021-02-09 21:16:42.324794	2021-02-10 17:45:57.443081	t
2131	Scott	Herriman	{"title": "SVP Engineering"}	1174	2021-02-09 21:16:42.355467	2021-02-10 17:46:13.066104	t
2132	Sarah	Bottorff	{"title": "VP Marketing"}	1174	2021-02-09 21:16:42.384705	2021-02-10 17:46:29.472572	t
2133	Brian	Deignan	{"title": "VP Corporate Sales"}	1174	2021-02-09 21:16:42.414994	2021-02-10 17:46:46.34921	t
2134	Marina	de	{"title": "VP Customer Success"}	1174	2021-02-09 21:16:42.444942	2021-02-10 17:47:02.323294	t
2135	Brian	McTeague	{"title": "VP Revenue Operations"}	1174	2021-02-09 21:16:42.474592	2021-02-10 17:47:18.296013	t
2136	Andrea	Nelson	{"title": "VP People & Culture"}	1174	2021-02-09 21:16:42.503974	2021-02-10 17:47:33.992598	t
2137	Greg	Merwin	{"title": "VP of Global Sales"}	1175	2021-02-09 21:17:19.690273	2021-02-10 17:47:50.075874	t
2138	Hannelore	Fineman	{"title": "Founder and Vice President"}	1175	2021-02-09 21:17:19.72228	2021-02-10 17:48:05.952518	t
2139	Matt	Ferry	{"title": "Chief Strategy Officer"}	1175	2021-02-09 21:17:19.754549	2021-02-10 17:48:21.517384	t
2140	Brian	Samelson	{"title": "Founder and CEO"}	1175	2021-02-09 21:17:19.785467	2021-02-10 17:48:37.049999	t
2141	Garrett	C.	{"title": "Sales Operations Architect"}	1176	2021-02-09 21:17:54.723326	2021-02-10 17:48:52.579799	t
2142	Deke	George	{"title": "CEO"}	1176	2021-02-09 21:17:54.754043	2021-02-10 17:49:08.418674	t
2144	Garrett	C.	{"title": "Manager, Sales Operations"}	1176	2021-02-09 21:17:54.821186	2021-02-10 17:49:39.475589	t
2145	Aaron	Shilts	{"title": "President and Chief Operating Officer"}	1176	2021-02-09 21:17:54.864563	2021-02-10 17:49:55.845673	t
2146	Susan	Dub	{"title": "Chief Financial Officer"}	1176	2021-02-09 21:17:54.896947	2021-02-10 17:50:11.892185	t
2147	Charles	Schwartz	{"title": "Founder"}	1177	2021-02-09 21:18:43.523398	2021-02-10 17:50:27.471113	t
2148	Serge	Longin	{"title": "Founder"}	1178	2021-02-09 21:19:31.261788	2021-02-10 17:50:43.100677	t
2149	David	Lewis	{"title": "President / CEO"}	1180	2021-02-09 21:20:52.577671	2021-02-10 17:50:58.635164	t
2150	Alexi	Venneri	{"title": "Founder & CEO"}	1181	2021-02-09 21:21:39.296887	2021-02-10 17:51:14.133647	t
2151	Mike	Berlin	{"title": "VP North America WFO Practice"}	1185	2021-02-09 21:24:10.310383	2021-02-10 17:51:29.794153	t
2152	Matt	Despain	{"title": "Chief Product Officer"}	1185	2021-02-09 21:24:10.340715	2021-02-10 17:51:45.341699	t
2153	Manjit	Sindhar	{"title": "Co-Founder & Chief Executive Officer"}	1186	2021-02-09 21:24:47.174139	2021-02-10 17:52:00.84372	t
2154	Sat	Sindhar	{"title": "Co-Founder & Managing Director"}	1186	2021-02-09 21:24:47.206337	2021-02-10 17:52:16.730025	t
2155	Tom	Leydiker	{"title": "Co-Founder"}	1188	2021-02-09 21:25:26.756115	2021-02-10 17:52:32.344834	t
2156	Jeevan	Padiyar	{"title": "Chief Product Officer"}	1188	2021-02-09 21:25:26.787011	2021-02-10 17:52:47.965631	t
2157	Rachel	Johnson	{"title": "Marketing and Communications Coordinator"}	1189	2021-02-09 21:26:13.576133	2021-02-10 17:53:03.584404	t
2158	Julius	Bogdan	{"title": "Director of Analytics and Data Innovation"}	1189	2021-02-09 21:26:13.609796	2021-02-10 17:53:19.498418	t
2159	Payal	Kohli	{"title": "Heart Institute of Colorado"}	1189	2021-02-09 21:26:13.641377	2021-02-10 18:12:03.245803	t
2160	Marie	Javins	{"title": "Editor-in-Chief"}	1194	2021-02-09 21:27:55.616616	2021-02-10 18:12:18.831321	t
2161	Malcolm	Wheeler-Nicholson	{"title": "Founder"}	1194	2021-02-09 21:27:55.648169	2021-02-10 18:12:34.432325	t
2162	Grant	Morrison	{"title": "Comic Writer and Founder"}	1194	2021-02-09 21:27:55.678461	2021-02-10 18:12:49.988052	t
2163	Paul	Bedi	{"title": "Managing Director"}	1197	2021-02-09 21:29:29.223209	2021-02-10 18:13:06.608334	t
2164	Todd	Rossin	{"title": "Chief Executive Officer"}	1197	2021-02-09 21:29:29.256301	2021-02-10 18:13:23.178984	t
2165	Todd	Rossin	{"title": "Managing Director"}	1197	2021-02-09 21:29:29.28545	2021-02-10 18:13:38.975786	t
2166	Sean	Harris	{"title": "Vice-President of Sales and Marketing"}	1197	2021-02-09 21:29:29.317232	2021-02-10 18:13:54.625348	t
2167	Ken	Harlan	{"title": "Founder & President"}	1199	2021-02-09 21:33:55.166541	2021-02-10 18:14:10.211154	t
2168	Val	Katayev	{"title": "Founder & Managing Partner"}	1199	2021-02-09 21:33:55.198619	2021-02-10 18:14:25.728134	t
2169	Charlotte	Hansen	{"title": "VP, Brand Sales"}	1199	2021-02-09 21:33:55.232618	2021-02-10 18:14:41.327324	t
2170	Israel	Alvarez	{"title": "VP, Engineering"}	1199	2021-02-09 21:33:55.264973	2021-02-10 18:14:56.856084	t
2171	Wendy	McEleney	{"title": "Senior Director, Mobile Operations"}	1199	2021-02-09 21:33:55.298387	2021-02-10 18:15:13.235718	t
2172	Clay	Shipman	{"title": "SVP, Channel Development & Platform Sales"}	1199	2021-02-09 21:33:55.339022	2021-02-10 18:15:28.769358	t
2173	Matt	Sessanta	{"title": "VP, Business Development"}	1199	2021-02-09 21:33:55.370553	2021-02-10 18:15:44.309701	t
2174	Arnold	Katayev	{"title": "Director, Ad Network"}	1199	2021-02-09 21:33:55.413361	2021-02-10 18:16:00.246938	t
2175	Ashutosh	Prasad	{"title": "CEO & Founder"}	1200	2021-02-09 21:34:37.358976	2021-02-10 18:16:15.754082	t
2176	Sandeep	Sivaram	{"title": "VP Strategy & Delivery"}	1200	2021-02-09 21:34:37.392327	2021-02-10 18:16:32.525807	t
2178	Y	R	{"title": "Chief Operating and People Officer"}	1200	2021-02-09 21:34:37.45639	2021-02-10 18:17:04.17814	t
2179	Kevin	Hardy	{"title": "Chief Technology Officer"}	1201	2021-02-09 21:35:18.390166	2021-02-10 18:17:20.137093	t
2180	Michael	Hardy	{"title": "President & CEO"}	1201	2021-02-09 21:35:18.4216	2021-02-10 18:17:36.740033	t
2181	Jeff	Hardy	{"title": "Founder"}	1201	2021-02-09 21:35:18.455888	2021-02-10 18:17:52.285099	t
2182	Penny	Burke	{"title": "Director"}	1202	2021-02-09 21:36:01.383698	2021-02-10 18:18:07.826152	t
2183	Caroline	Wanga	{"title": "Interim Chief Executive Officer"}	1202	2021-02-09 21:36:01.414727	2021-02-10 18:18:23.350355	t
2184	Brian	Cherico	{"title": "Chief Compliance Officer"}	1204	2021-02-09 21:37:18.283361	2021-02-10 18:18:39.811073	t
2185	Stephen	Vogt	{"title": "Founder and CEO"}	1204	2021-02-09 21:37:18.313941	2021-02-10 18:18:55.336283	t
2186	Anurag	Singh	{"title": "President And CEO"}	1205	2021-02-09 21:37:56.23163	2021-02-10 18:19:10.874678	t
2187	TK	Herman	{"title": "CEO, President"}	1208	2021-02-09 21:38:46.9743	2021-02-10 18:19:26.42884	t
2188	Conrad	Ehinger	{"title": "CIO"}	1208	2021-02-09 21:38:47.006721	2021-02-10 18:19:42.879992	t
2189	Amy	Vainieri	{"title": "Senior Designer"}	1212	2021-02-09 21:41:27.774623	2021-02-10 18:19:58.459933	t
2191	Nam	ho	{"title": "Director, West Coast Operations"}	1212	2021-02-09 21:41:27.841554	2021-02-10 18:20:30.317269	t
2192	Kurt	Voelker	{"title": "CTO"}	1212	2021-02-09 21:41:27.873058	2021-02-10 18:20:46.26558	t
2193	Chris	Wolz	{"title": "President & CEO"}	1212	2021-02-09 21:41:27.905117	2021-02-10 18:21:02.212956	t
2194	Jim	Cashel	{"title": "Chairman & Co-founder"}	1212	2021-02-09 21:41:27.937709	2021-02-10 18:21:17.804117	t
2195	Elvis	Morales	{"title": "Developer"}	1212	2021-02-09 21:41:27.967422	2021-02-10 18:21:33.392932	t
2196	Courtney	Clark	{"title": "Managing Director of User Experience"}	1212	2021-02-09 21:41:27.997812	2021-02-10 18:21:48.887117	t
2197	Eric	Thorkilsen	{"title": "CEO"}	1213	2021-02-09 21:42:14.270905	2021-02-10 18:22:04.554893	t
2198	Michael	Gutkowski	{"title": "Chief Digital Officer"}	1213	2021-02-09 21:42:14.302159	2021-02-10 18:22:20.198106	t
2199	Kevin	O'Connor	{"title": "Host"}	1213	2021-02-09 21:42:14.334744	2021-02-10 18:22:35.995218	t
2200	Jeff	Martin	{"title": "Inbound Sales Representative"}	1213	2021-02-09 21:42:14.368472	2021-02-10 18:22:51.629656	t
2201	Sharona	Meushar	{"title": "Head of Marketing"}	1214	2021-02-09 21:42:58.36341	2021-02-10 18:23:07.218667	t
2202	Tal	Jacobson	{"title": "General Manager"}	1214	2021-02-09 21:42:58.393904	2021-02-10 18:23:23.864126	t
2203	William	Dunn	{"title": "Founder & President"}	1215	2021-02-09 21:43:40.455528	2021-02-10 18:23:39.407862	t
2204	David	Lewis	{"title": "CEO"}	1217	2021-02-09 21:45:07.15968	2021-02-10 18:23:55.06622	t
2205	Derrick	Walker	{"title": "President of Operations and Competition"}	1218	2021-02-09 21:45:47.200329	2021-02-10 18:24:10.618949	t
2206	David	Clark	{"title": "Founder/CEO"}	1219	2021-02-09 21:46:27.468087	2021-02-10 18:24:26.537824	t
2207	John	McGee	{"title": "President"}	1220	2021-02-09 21:47:03.927064	2021-02-10 18:24:42.120107	t
2208	Darin	Leonard	{"title": "CEO"}	1222	2021-02-09 21:47:43.441043	2021-02-10 18:24:57.638195	t
2209	Stephanie	Allen	{"title": "Co-Founder"}	1222	2021-02-09 21:47:43.473484	2021-02-10 18:25:13.382316	t
2210	Tina	Kuna	{"title": "Co-Founder"}	1222	2021-02-09 21:47:43.508361	2021-02-10 18:25:28.898705	t
2211	Tony	Lair	{"title": "CEO"}	1225	2021-02-09 21:48:32.820216	2021-02-10 18:25:44.466509	t
2212	Jim	Price	{"title": "President & CEO"}	1229	2021-02-09 21:50:48.84629	2021-02-10 18:26:00.159804	t
2213	Jesse	Waltz	{"title": "Co-Owner"}	1230	2021-02-09 21:51:28.104525	2021-02-10 18:26:15.934573	t
2214	Stella	Waltz	{"title": "Co-Owner"}	1230	2021-02-09 21:51:28.14053	2021-02-10 18:26:31.477171	t
2215	Matt	Malone	{"title": "Owner & CEO"}	1230	2021-02-09 21:51:28.171653	2021-02-10 18:26:47.349388	t
2216	Shaun	Huls	{"title": "Head of Sports Science Performance"}	1232	2021-02-09 21:56:10.929804	2021-02-10 18:27:02.931781	t
2217	Malcolm	Jenkins	{"title": "Athlete"}	1232	2021-02-09 21:56:10.964167	2021-02-10 18:27:18.533229	t
2218	Kate	Bramson	{"title": "Staff Writer"}	1239	2021-02-09 22:01:05.216813	2021-02-10 18:27:34.040731	t
2219	Danny	Govberg	{"title": "President / CEO"}	1241	2021-02-09 22:02:29.667998	2021-02-10 18:27:49.593874	t
2220	David	Kaplan	{"title": "Owner"}	1241	2021-02-09 22:02:29.702291	2021-02-10 18:28:05.715051	t
2221	Andre	Monteil	{"title": "Chairman"}	1242	2021-02-09 22:03:12.993281	2021-02-10 18:28:21.342365	t
2222	Alexander	Romano	{"title": "CRM Manager"}	1244	2021-02-09 22:03:57.175464	2021-02-10 18:28:36.912561	t
2224	Orestes	Baez	{"title": "VP of Sales & General Manager"}	1253	2021-02-09 22:08:47.716294	2021-02-10 18:29:08.369963	t
2225	Vincent	Modarelli	{"title": "Advertising Director"}	1253	2021-02-09 22:08:47.763834	2021-02-10 18:29:23.889745	t
2226	Susan	Schwartzkopf	{"title": "Director of Digital Sales & Strategy"}	1253	2021-02-09 22:08:47.795443	2021-02-10 18:29:39.438715	t
2227	Dave	Neill	{"title": "President & Publisher"}	1253	2021-02-09 22:08:47.826425	2021-02-10 18:29:55.032354	t
2228	James	Gardner	{"title": "VP of Finance"}	1253	2021-02-09 22:08:47.857593	2021-02-10 18:30:13.060345	t
2229	Victoria	Miller	{"title": "Distribution Director"}	1253	2021-02-09 22:08:47.889206	2021-02-10 18:30:28.813751	t
2230	Chris	Wayland	{"title": "President/General Manager"}	1254	2021-02-09 22:09:29.013763	2021-02-10 18:30:44.36404	t
2231	Mallika	Marshall	{"title": "Contributing Medical Reporter"}	1254	2021-02-09 22:09:29.067074	2021-02-10 18:31:00.176841	t
2232	Steve	Collymore	{"title": "Executive Chef"}	1256	2021-02-09 22:10:43.830501	2021-02-10 18:31:15.78579	t
2233	Dhanesh	de	{"title": "Executive Chef"}	1256	2021-02-09 22:10:43.861689	2021-02-10 18:31:31.441739	t
2234	Anil	Yadav	{"title": "Executive Chef on St. Maarten"}	1256	2021-02-09 22:10:43.89373	2021-02-10 18:31:46.990824	t
2235	Allen	H	{"title": "Founder"}	1257	2021-02-09 22:11:20.292054	2021-02-10 18:32:03.712951	t
2236	William	Sims	{"title": "Founder & Managing Principal"}	1258	2021-02-09 22:11:58.191111	2021-02-10 18:32:19.636663	t
2237	David	C.	{"title": "Co-Owner & President"}	1261	2021-02-09 22:14:01.164593	2021-02-10 18:32:35.41316	t
2238	Bill	Gardner	{"title": "Owner"}	1261	2021-02-09 22:14:01.195685	2021-02-10 18:32:51.116051	t
2239	Meg	Downey	{"title": "Executive Editor"}	1266	2021-02-09 22:19:32.943413	2021-02-10 18:33:06.763982	t
2240	Jim	McIngvale	{"title": "Philanthropist & Owner"}	1272	2021-02-09 22:22:28.862726	2021-02-10 18:33:22.32027	t
2242	Manny	Garcia	{"title": "Editor"}	1283	2021-02-09 22:29:45.118735	2021-02-10 18:33:53.455696	t
2243	Wendy	Haller	{"title": "Chief Experience Officer"}	1288	2021-02-09 22:32:49.198331	2021-02-10 18:34:09.083076	t
2244	Mark	van	{"title": "Partner"}	1289	2021-02-09 22:33:25.074366	2021-02-10 18:34:24.62427	t
2245	Peter	Thompson	{"title": "Co-Founder & Chief Technology Officer"}	102	2021-02-09 22:39:50.680963	2021-02-10 18:34:40.222652	t
2246	Dave	Rigotti	{"title": "VP of Marketing"}	102	2021-02-09 22:39:50.714794	2021-02-10 18:34:55.733896	t
2247	Jason	Rasmussen	{"title": "VP of Sales"}	102	2021-02-09 22:39:50.746635	2021-02-10 18:35:11.694709	t
2248	Jenn	Steele	{"title": "VP of Product Marketing"}	102	2021-02-09 22:39:50.783175	2021-02-10 18:35:27.95791	t
2249	Graeme	Truschel	{"title": "Customer Success Manager"}	102	2021-02-09 22:39:50.816389	2021-02-10 18:35:43.537131	t
2250	Mark	Sugarman	{"title": "Board Observer"}	102	2021-02-09 22:39:50.852179	2021-02-10 18:35:59.908531	t
2251	David	Hassell	{"title": "CEO"}	1298	2021-02-09 22:42:04.213427	2021-02-10 18:36:15.41091	t
2252	Nazar	Ivaniv	{"title": "Co-Founder & CTO"}	1298	2021-02-09 22:42:04.245384	2021-02-10 18:36:31.049888	t
2253	Shane	Metcalf	{"title": "Chief Culture Officer"}	1298	2021-02-09 22:42:04.284494	2021-02-10 18:36:46.617985	t
2255	Brad	McGinity	{"title": "Chief Revenue Officer"}	1298	2021-02-09 22:42:04.357996	2021-02-10 18:37:18.324944	t
2256	Hollie	Aghajani	{"title": "Director of Marketing"}	1298	2021-02-09 22:42:04.393356	2021-02-10 18:37:34.255001	t
2257	Stacey	Hurst	{"title": "Chief of Staff"}	1298	2021-02-09 22:42:04.428029	2021-02-10 18:37:49.785305	t
2258	Heidi	Larsen	{"title": "VP of People Operations"}	1298	2021-02-09 22:42:04.462051	2021-02-10 18:38:05.289152	t
2259	Prashant	Shukla	{"title": "Board Observer"}	1298	2021-02-09 22:42:04.496258	2021-02-10 18:52:35.092359	t
2260	Matthew	Hertz	{"title": "CEO"}	1301	2021-02-09 22:42:53.123156	2021-02-10 18:52:50.591758	t
2261	Cody	Young	{"title": "SVP - Data Intelligence Solutions"}	1301	2021-02-09 22:42:53.157063	2021-02-10 18:53:06.585739	t
2262	Garth	Moulton	{"title": "SVP Business Development"}	1301	2021-02-09 22:42:53.190682	2021-02-10 18:53:22.155445	t
2263	Lev	Ferdinskoif	{"title": "CTO"}	1301	2021-02-09 22:42:53.227009	2021-02-10 18:53:38.634353	t
2264	Amie	Coleman	{"title": "Vice President Marketing"}	1301	2021-02-09 22:42:53.258757	2021-02-10 18:53:54.201709	t
2265	Ariel	Harkham	{"title": "VP Strategic Accounts"}	1301	2021-02-09 22:42:53.313731	2021-02-10 18:54:09.710445	t
2266	Eve	Luppert	{"title": "VP Talent"}	1301	2021-02-09 22:42:53.347496	2021-02-10 18:54:25.405977	t
2267	Mirit	Valenci	{"title": "VP Talent"}	1301	2021-02-09 22:42:53.383602	2021-02-10 18:54:40.974541	t
2268	Sergei	Kovalenko	{"title": "Co-founder"}	1302	2021-02-09 22:43:29.387369	2021-02-10 18:54:56.532923	t
2269	Mark	Loranger	{"title": "Co-founder"}	1302	2021-02-09 22:43:29.446404	2021-02-10 18:55:12.197982	t
2270	Olga	Gurchenkova	{"title": "Business Development and Growth"}	1302	2021-02-09 22:43:29.481624	2021-02-10 18:55:27.827317	t
2271	Chris	Hauck	{"title": "Business Development Manager"}	1302	2021-02-09 22:43:29.517439	2021-02-10 18:55:43.438592	t
2272	Anna	Baidachnaya	{"title": "VP of Business and Sales Europe"}	1302	2021-02-09 22:43:29.555112	2021-02-10 18:55:58.999609	t
2273	Chris	Hazard	{"title": "CTO"}	1303	2021-02-09 22:44:11.885903	2021-02-10 18:56:14.482894	t
2274	Michael	Resnick	{"title": "Founder"}	1303	2021-02-09 22:44:11.918084	2021-02-10 18:56:30.036624	t
2275	Brad	Schomber	{"title": "CFO"}	1303	2021-02-09 22:44:11.97848	2021-02-10 18:56:45.62577	t
2276	Mike	Capps	{"title": "CEO"}	1303	2021-02-09 22:44:12.019771	2021-02-10 18:57:01.639871	t
2277	Alex	Pinchev	{"title": "Co-Founder and Chairman"}	1304	2021-02-09 22:45:00.365413	2021-02-10 18:57:17.32637	t
2278	Gabriel	Pinchev	{"title": "CEO"}	1304	2021-02-09 22:45:00.398338	2021-02-10 18:57:32.807244	t
2279	Dirck	T.	{"title": "CEO and Co-founder"}	1305	2021-02-09 22:45:48.350476	2021-02-10 18:57:49.245629	t
2280	John	Mathieu	{"title": "Managing Director"}	1305	2021-02-09 22:45:48.384638	2021-02-10 18:58:05.041871	t
2281	Kelly	Malone	{"title": "Vice President"}	1305	2021-02-09 22:45:48.418907	2021-02-10 18:58:20.60954	t
2282	John	Tomizuka	{"title": "Co-founder"}	1305	2021-02-09 22:45:48.457377	2021-02-10 18:58:36.359721	t
2283	Jason	Luna	{"title": "COO"}	1307	2021-02-09 22:46:40.065155	2021-02-10 18:58:52.1923	t
2284	Nirav	Patel	{"title": "Founder & CEO"}	1307	2021-02-09 22:46:40.098517	2021-02-10 18:59:07.827817	t
2285	Roby	Miller	{"title": "Founder"}	1308	2021-02-09 22:47:16.191612	2021-02-10 18:59:23.355705	t
2286	Mike	Farber	{"title": "General Manager, Boston"}	1311	2021-02-09 22:49:04.981663	2021-02-10 18:59:38.940467	t
2287	Jason	Mandell	{"title": "Partner & Co-Founder"}	1311	2021-02-09 22:49:05.015409	2021-02-10 18:59:54.638646	t
2288	Jesse	Odell	{"title": "Partner & Co-Founder"}	1311	2021-02-09 22:49:05.048536	2021-02-10 19:00:11.100671	t
2290	Brett	Weiner	{"title": "Partner"}	1311	2021-02-09 22:49:05.114634	2021-02-10 19:00:44.067513	t
2291	Daniel	Paul	{"title": "SVP, Finance & Operations"}	1311	2021-02-09 22:49:05.14951	2021-02-10 19:00:59.928264	t
2292	Brian	Omlor	{"title": "Creative Lead"}	1311	2021-02-09 22:49:05.184735	2021-02-10 19:01:15.753952	t
2293	Meghan	Cavanaugh	{"title": "SVP, Talent"}	1311	2021-02-09 22:49:05.220146	2021-02-10 19:01:31.435509	t
2294	George	Eid	{"title": "Founder, Partner"}	1312	2021-02-09 22:49:51.131962	2021-02-10 19:01:46.995218	t
2295	Siddharth	Vanchinathan	{"title": "Founder"}	1314	2021-02-09 22:51:12.114892	2021-02-10 19:02:02.604857	t
2296	Hugo	Giralt	{"title": "Founder"}	1314	2021-02-09 22:51:12.145568	2021-02-10 19:02:18.243561	t
2297	Alberto	Zunzunegui	{"title": "Founder"}	1314	2021-02-09 22:51:12.180637	2021-02-10 19:02:34.13658	t
2298	Natalie	Tarpinian	{"title": "Founder"}	1317	2021-02-09 22:53:42.188643	2021-02-10 19:02:49.659672	t
2299	Ben	McPhee	{"title": "Editor-In-Chief"}	1317	2021-02-09 22:53:42.220299	2021-02-10 19:03:06.443119	t
2300	Mike	Burkinshaw	{"title": "Managing Director & Founder"}	217	2021-02-09 22:54:33.764057	2021-02-10 19:03:22.404736	t
2301	Gregory	Doermann	{"title": "CTO"}	222	2021-02-09 22:55:17.713067	2021-02-10 19:03:37.957099	t
2302	Jacob	Munns	{"title": "CEO and Founder"}	222	2021-02-09 22:55:17.744478	2021-02-10 19:03:53.54718	t
2303	Joel	Goobich	{"title": "Head of Sales & Marketing"}	245	2021-02-09 22:56:03.901244	2021-02-10 19:04:09.355687	t
2304	Kyle	Marron	{"title": "Director of Sales and Partnerships"}	245	2021-02-09 22:56:03.932498	2021-02-10 19:04:24.994965	t
2306	David	Rodas	{"title": "CTO"}	245	2021-02-09 22:56:03.992141	2021-02-10 19:04:56.051866	t
2307	David	Nolan	{"title": "CEO"}	272	2021-02-09 22:56:47.119709	2021-02-10 19:05:13.119348	t
2308	Grady	Kidder	{"title": "Board Observer"}	272	2021-02-09 22:56:47.154604	2021-02-10 19:05:29.41614	t
2309	Joshua	Carter	{"title": "Co-Founder and Chief Executive Officer"}	317	2021-02-09 22:57:33.024571	2021-02-10 19:05:44.960982	t
2310	Brandon	Richardson	{"title": "Co-Founder and Chief Technology Officer"}	317	2021-02-09 22:57:33.058153	2021-02-10 19:06:00.47122	t
2311	Jan	Konjikusic	{"title": "Supply Chain Manager"}	317	2021-02-09 22:57:33.088625	2021-02-10 19:06:16.319284	t
2312	Richard	Long	{"title": "VP/Head of Finance"}	317	2021-02-09 22:57:33.131015	2021-02-10 19:06:32.096115	t
2313	Aaron	Latzke	{"title": "Sr. Mechanical Engineer"}	317	2021-02-09 22:57:33.168906	2021-02-10 19:06:47.873131	t
2314	Bob	Neveu	{"title": "CEO & President"}	326	2021-02-09 22:58:18.554707	2021-02-10 19:07:03.446284	t
2315	Alan	Neveu	{"title": "Co-founder and Chief Technology Officer"}	326	2021-02-09 22:58:18.587062	2021-02-10 19:07:19.020396	t
2316	Ashley	Emery	{"title": "Vice President of Marketing"}	326	2021-02-09 22:58:18.619371	2021-02-10 19:07:34.559031	t
2317	Katherine	Edenbach	{"title": "CFO"}	326	2021-02-09 22:58:18.650638	2021-02-10 19:07:50.067684	t
2318	Jim	Burke	{"title": "Chief Financial Officer"}	336	2021-02-09 22:59:05.742584	2021-02-10 19:08:05.703057	t
2319	Alexandra	Chrisman	{"title": "Chief Marketing Officer"}	336	2021-02-09 22:59:05.773678	2021-02-10 19:08:21.701179	t
2320	Candace	Klein	{"title": "Chief Strategy Officer"}	336	2021-02-09 22:59:05.807066	2021-02-10 19:08:37.216812	t
2321	Russell	McLoughlin	{"title": "CTO, Co-Founder"}	336	2021-02-09 22:59:05.840954	2021-02-10 19:08:52.842022	t
2322	Rudy	Navarro	{"title": "Vice President, Operations"}	336	2021-02-09 22:59:05.871208	2021-02-10 19:09:08.384778	t
2323	Ethan	Senturia	{"title": "CEO, Co-Founder"}	336	2021-02-09 22:59:05.901171	2021-02-10 19:09:23.920742	t
2324	Kay	Giesecke	{"title": "Director, Risk Analytics"}	336	2021-02-09 22:59:05.931468	2021-02-10 19:09:40.170479	t
2325	John	Fox	{"title": "Director, Business Development"}	336	2021-02-09 22:59:05.96287	2021-02-10 19:09:55.754354	t
2326	Michael	Monu	{"title": "CEO, Founder"}	353	2021-02-09 22:59:53.923774	2021-02-10 19:10:11.83023	t
2327	Chris	Cigarran	{"title": "CEO"}	371	2021-02-09 23:00:36.896832	2021-02-10 19:10:27.366894	t
2328	Michael	A.	{"title": "President & Co-Founder"}	406	2021-02-09 23:01:22.943855	2021-02-10 19:10:42.886643	t
2329	David	B.	{"title": "Founder & Chief Technology Officer"}	406	2021-02-09 23:01:22.976127	2021-02-10 19:10:58.623728	t
2330	Scott	Hurst	{"title": "Head of Sales"}	406	2021-02-09 23:01:23.008102	2021-02-10 19:11:14.099757	t
2331	Thomas	Isaacson	{"title": "Legal Counsel"}	406	2021-02-09 23:01:23.037581	2021-02-10 19:11:29.955156	t
2332	Mark	Norton	{"title": "Sales Director"}	406	2021-02-09 23:01:23.071666	2021-02-10 19:11:45.690868	t
2333	Rob	Rueckert	{"title": "Board Observer"}	406	2021-02-09 23:01:23.144398	2021-02-10 19:12:01.264106	t
2334	Jay	Reddy	{"title": "Co-Founder & CEO"}	407	2021-02-09 23:01:58.176101	2021-02-10 19:12:16.853931	t
2336	Karunakar	Goud	{"title": "VP Product Engineering & Customer Implementations"}	407	2021-02-09 23:01:58.243017	2021-02-10 19:12:49.258818	t
2337	Yemil	Martinez	{"title": "Head of Marketing"}	407	2021-02-09 23:01:58.27634	2021-02-10 19:13:05.263432	t
2338	Kirit	Pandit	{"title": "Co-Founder, President & CTO"}	407	2021-02-09 23:01:58.311515	2021-02-10 19:13:20.79563	t
2339	Doug	Huffman	{"title": "Executive Vice President, Head of Sales"}	407	2021-02-09 23:01:58.34251	2021-02-10 19:13:36.372456	t
2340	Justin	G.	{"title": "VP, Professional Services"}	434	2021-02-09 23:02:42.223916	2021-02-10 19:13:51.908831	t
2341	Joe	Davila	{"title": "Vice President Of Business Development"}	434	2021-02-09 23:02:42.254144	2021-02-10 19:14:07.56336	t
2342	Laura	Heffelfinger	{"title": "Director, Consulting Services"}	434	2021-02-09 23:02:42.289217	2021-02-10 19:14:23.132185	t
2343	Tammy	Hawes	{"title": "CEO and Founder"}	434	2021-02-09 23:02:42.321782	2021-02-10 19:14:38.652947	t
2344	Sam	Pardue	{"title": "CEO, Founder"}	448	2021-02-09 23:03:19.557451	2021-02-10 19:14:54.67547	t
2345	David	Eagleman	{"title": "Founder & Chief Scientific Officer"}	461	2021-02-09 23:03:59.229397	2021-02-10 19:15:10.86277	t
2346	Reza	Hosseini	{"title": "Chief Medical Officer"}	461	2021-02-09 23:03:59.261246	2021-02-10 19:15:26.369184	t
2347	Yael	Katz	{"title": "CEO"}	461	2021-02-09 23:03:59.295287	2021-02-10 19:15:41.910673	t
2348	Wendy	Fong	{"title": "COO"}	461	2021-02-09 23:03:59.326643	2021-02-10 19:15:57.502528	t
2349	Jordan	Weinstein	{"title": "Chief Revenue Officer"}	461	2021-02-09 23:03:59.357955	2021-02-10 19:16:13.09081	t
2350	Steve	Kamerman	{"title": "COO"}	472	2021-02-09 23:04:33.367508	2021-02-10 19:16:28.66744	t
2351	Krishna	Guda	{"title": "CEO"}	472	2021-02-09 23:04:33.398719	2021-02-10 19:16:45.461541	t
2352	Luca	Passani	{"title": "CTO"}	472	2021-02-09 23:04:33.428991	2021-02-10 19:17:01.13002	t
2353	Richard	Stuhlsatz	{"title": "Chief Technology Officer"}	488	2021-02-09 23:05:14.956504	2021-02-10 19:17:16.649296	t
2354	Avrom	Feinberg	{"title": "Vice President, Client Services"}	488	2021-02-09 23:05:14.98633	2021-02-10 19:17:32.300243	t
2355	Lawrence	Gallant	{"title": "Vice-President, Quantitative Modeling & Operations Research"}	488	2021-02-09 23:05:15.019508	2021-02-10 19:17:47.84279	t
2356	Eric	Krohner	{"title": "President & CEO"}	488	2021-02-09 23:05:15.051726	2021-02-10 19:18:04.492335	t
2357	Christopher	J.	{"title": "Chief Science Officer"}	488	2021-02-09 23:05:15.082502	2021-02-10 19:18:20.059679	t
2358	Jeffrey	A.	{"title": "Attorney"}	488	2021-02-09 23:05:15.112554	2021-02-10 19:18:35.715768	t
2359	Matthew	Leese	{"title": "Director, Digital Art"}	488	2021-02-09 23:05:15.143941	2021-02-10 19:18:51.503271	t
2360	Joe	Giniel	{"title": "Vice-President of Sales"}	488	2021-02-09 23:05:15.191369	2021-02-10 19:19:07.153618	t
2361	Cynthia	Rubio	{"title": "Founder"}	510	2021-02-09 23:06:01.275101	2021-02-10 19:19:22.660683	t
2362	Ben	Johnson	{"title": "VP Of Technology"}	515	2021-02-09 23:06:40.657733	2021-02-10 19:19:38.589461	t
2363	Paul	Liljenquist	{"title": "President"}	515	2021-02-09 23:06:40.694583	2021-02-10 19:19:54.283657	t
2364	John	Porter	{"title": "Founder, CEO & CSO"}	515	2021-02-09 23:06:40.732078	2021-02-10 19:20:10.637718	t
2365	Joseph	Walent	{"title": "Senior Analyst, Emerging Technologies Advisory Service"}	568	2021-02-09 23:07:37.387528	2021-02-10 19:20:26.18866	t
2367	Tim	Sloane	{"title": "VP, Payments Innovation"}	568	2021-02-09 23:07:37.456342	2021-02-10 19:20:57.224788	t
2368	Jeff	Mason	{"title": "Chief Product Officer"}	569	2021-02-09 23:08:11.908175	2021-02-10 19:21:13.325499	t
2369	Joshua	Faith	{"title": "CEO"}	569	2021-02-09 23:08:11.959379	2021-02-10 19:21:28.925659	t
2370	Lucas	Jans	{"title": "CTO"}	595	2021-02-09 23:08:57.711885	2021-02-10 19:21:45.564571	t
2371	Michael	Jans	{"title": "Executive Chair"}	595	2021-02-09 23:08:57.743224	2021-02-10 19:22:01.755957	t
2372	Joan	Hayden	{"title": "Vice President"}	635	2021-02-09 23:11:31.588207	2021-02-10 19:22:17.323984	t
2373	Matthew	Smith	{"title": "President & CEO"}	635	2021-02-09 23:11:31.619857	2021-02-10 19:22:32.969376	t
2374	Jeff	Stull	{"title": "Founder & CEO"}	648	2021-02-09 23:12:17.101372	2021-02-10 19:22:48.559668	t
2375	Kurt	Lee	{"title": "COO"}	648	2021-02-09 23:12:17.133511	2021-02-10 19:23:04.857005	t
2376	Tom	Currie	{"title": "President"}	648	2021-02-09 23:12:17.16471	2021-02-10 19:23:20.345902	t
2377	Richard	Detrick	{"title": "Founder & CFO"}	648	2021-02-09 23:12:17.196282	2021-02-10 19:23:36.059813	t
2378	Tanner	Bell	{"title": "Co-Founder & President"}	674	2021-02-09 23:13:06.275391	2021-02-10 19:23:51.960229	t
2379	Mike	Palin	{"title": "CEO"}	680	2021-02-09 23:13:41.516867	2021-02-10 19:24:08.589447	t
2380	Steve	Fazio	{"title": "CEO"}	701	2021-02-09 23:14:16.126107	2021-02-10 19:24:24.183824	t
2381	Tina	Hapner	{"title": "Vice President of Marketing"}	727	2021-02-09 23:15:34.854525	2021-02-10 19:24:40.374229	t
2382	Lou	Hughes	{"title": "CEO"}	754	2021-02-09 23:17:02.905691	2021-02-10 19:24:55.944332	t
2383	Kathryn	Hughes	{"title": "SVP & Chief Strategy Officer"}	754	2021-02-09 23:17:02.937347	2021-02-10 19:25:12.076336	t
2384	Julie	Long	{"title": "Senior Account Manager"}	754	2021-02-09 23:17:02.969838	2021-02-10 19:25:27.700172	t
2385	Michael	Long	{"title": "Web Analytics & Search Engine Marketing"}	754	2021-02-09 23:17:03.000921	2021-02-10 19:25:43.198349	t
2386	George	Valentine	{"title": "Senior Designer"}	754	2021-02-09 23:17:03.037976	2021-02-10 19:25:58.727547	t
2387	Darla	Espinosa	{"title": "Senior Director"}	754	2021-02-09 23:17:03.069495	2021-02-10 19:26:14.272464	t
2388	Carolina	Imani	{"title": "Director, Client Services"}	754	2021-02-09 23:17:03.101672	2021-02-10 19:26:29.798284	t
2389	Bao	Nguyen	{"title": "Senior IT Director and Clinical Data Management"}	781	2021-02-09 23:17:46.477328	2021-02-10 19:26:45.362855	t
2390	Tony	McDow	{"title": "CEO, Founder & President"}	911	2021-02-09 23:21:25.082848	2021-02-10 19:27:01.30465	t
2391	Evan	Leonard	{"title": "Partner"}	937	2021-02-09 23:21:56.617003	2021-02-10 19:27:16.784689	t
2392	David	Tan	{"title": "Partner"}	937	2021-02-09 23:21:56.654865	2021-02-10 19:27:32.567239	t
2393	V.	Raymond	{"title": "Chair, CEO, CCO"}	1015	2021-02-09 23:24:03.98996	2021-02-10 19:27:48.216556	t
2394	Bill	Williams	{"title": "Founder & CEO"}	1041	2021-02-09 23:24:50.081158	2021-02-10 19:28:03.752664	t
2395	Fernando	Oliveira	{"title": "Board Advisor"}	1041	2021-02-09 23:24:50.115416	2021-02-10 19:28:19.308897	t
2396	Greg	Irwin	{"title": "Partner & COO"}	1041	2021-02-09 23:24:50.159813	2021-02-10 19:28:34.863596	t
2397	Bill	Williams	{"title": "CEO and Founder"}	1041	2021-02-09 23:24:50.205074	2021-02-10 19:28:51.512661	t
2398	Robert	Noble	{"title": "CEO"}	1067	2021-02-09 23:25:39.982418	2021-02-10 19:29:06.971858	t
2400	Kay	Logsdon	{"title": "Director and Senior Editor"}	1067	2021-02-09 23:25:40.08037	2021-02-10 19:29:38.025857	t
2401	Jeremy	Bloom	{"title": "Co-Founder & Chief Executive Officer"}	1119	2021-02-09 23:27:36.63746	2021-02-10 19:29:53.910048	t
2402	David	Tomizuka	{"title": "CFO"}	1119	2021-02-09 23:27:36.673924	2021-02-10 19:30:10.086007	t
2403	Scott	Vaughan	{"title": "Chief Growth Officer"}	1119	2021-02-09 23:27:36.714256	2021-02-10 19:30:25.695176	t
2404	Jacob	Carter	{"title": "Product Manager"}	1119	2021-02-09 23:27:36.768807	2021-02-10 19:30:41.21928	t
2405	Veronica	Mowchan	{"title": "Director, People"}	1119	2021-02-09 23:27:36.81196	2021-02-10 19:30:56.880135	t
2406	Tom	Click	{"title": "VP Sales"}	1119	2021-02-09 23:27:36.850037	2021-02-10 19:31:12.431543	t
2407	Ron	Baumert	{"title": "Vice President, Customer Success"}	1119	2021-02-09 23:27:36.888975	2021-02-10 19:31:28.591858	t
2408	Jeremiah	Weise	{"title": "Director, Product Management"}	1119	2021-02-09 23:27:36.926001	2021-02-10 19:31:44.060331	t
2409	David	Horowitz	{"title": "Board Observer"}	1119	2021-02-09 23:27:37.021298	2021-02-10 19:31:59.606447	t
2410	Chung	Wu	{"title": "Co-Founder, Engineering"}	1145	2021-02-09 23:28:29.606147	2021-02-10 19:32:16.054839	t
2411	Yang	Zhang	{"title": "Founder"}	1145	2021-02-09 23:28:29.637079	2021-02-10 19:32:31.573455	t
2412	Jacob	Scott	{"title": "Engineer"}	1145	2021-02-09 23:28:29.670075	2021-02-10 19:32:47.458591	t
2413	Nikhil	Balaraman	{"title": "Director, Product Marketing"}	1145	2021-02-09 23:28:29.704369	2021-02-10 19:33:03.645424	t
2414	Nate	Gemberling	{"title": "Director of Sales"}	1145	2021-02-09 23:28:29.753685	2021-02-10 19:33:19.877854	t
2415	David	Nackashi	{"title": "Co-Founder & CEO"}	1171	2021-02-09 23:29:04.533569	2021-02-10 19:33:35.725549	t
2416	John	Damiano	{"title": "CTO & Co-Founder"}	1171	2021-02-09 23:29:04.568693	2021-02-10 19:33:51.296941	t
2417	Tina	Griffiths	{"title": "Controller"}	1171	2021-02-09 23:29:04.610391	2021-02-10 19:34:06.833862	t
2418	Jennifer	McConnell	{"title": "Product Manager"}	1171	2021-02-09 23:29:04.655788	2021-02-10 19:34:22.391488	t
2419	Mark	Holtz	{"title": "Business Intelligence Senior Analyst"}	1196	2021-02-09 23:29:37.068279	2021-02-10 19:34:38.290496	t
2420	Jeff	Maze	{"title": "Director of Business Intelligence"}	1196	2021-02-09 23:29:37.103473	2021-02-10 19:34:53.801049	t
2421	Charles	Livingston	{"title": "Senior Vice President"}	1221	2021-02-09 23:30:22.779942	2021-02-10 19:35:09.353242	t
2422	Philippe	Bourguignon	{"title": "Executive Co-Chairman"}	1221	2021-02-09 23:30:22.813535	2021-02-10 19:35:25.501977	t
2423	Brent	Handler	{"title": "Founder"}	1221	2021-02-09 23:30:22.848976	2021-02-10 19:35:41.287198	t
2424	Brad	Handler	{"title": "Founder"}	1221	2021-02-09 23:30:22.883673	2021-02-10 19:35:56.978257	t
2425	Mark	Crawford	{"title": "Chairman/CEO/Managing Director"}	1246	2021-02-09 23:31:09.767024	2021-02-10 19:36:12.525342	t
2426	Rafael	Parra	{"title": "Scientist"}	115	2021-02-09 23:34:36.316288	2021-02-10 19:36:28.058044	t
2427	Roger	Chabra	{"title": "Team Member"}	115	2021-02-09 23:34:36.352908	2021-02-10 19:36:43.566821	t
2428	Doug	Brackbill	{"title": "CEO"}	128	2021-02-09 23:35:19.33389	2021-02-10 19:36:59.151612	t
1617	Leora	Greenburg	{"title": "Deployment Expert"}	906	2021-02-09 18:40:49.489312	2021-02-10 14:28:44.482721	t
1636	Beth	Jupp	{"title": "Co-Owner And Co-Founder"}	931	2021-02-09 18:53:25.929717	2021-02-10 14:33:46.317839	t
1669	Julie	Clugage	{"title": "Executive Director"}	972	2021-02-09 19:16:49.359959	2021-02-10 14:42:37.236091	t
1679	Jamie	Atchison	{"title": "Director of Application Development"}	976	2021-02-09 19:19:36.70217	2021-02-10 15:13:14.940231	t
1693	Ryan	Leopold	{"title": "Executive VP of Corporate Accounts & Co-Founder"}	990	2021-02-09 19:28:29.25738	2021-02-10 15:16:55.085031	t
1732	Christopher	Bossola	{"title": "Founder, CEO"}	1038	2021-02-09 19:56:14.061097	2021-02-10 15:27:09.24704	t
1742	Paul	Borselli	{"title": "Chief Client Officer"}	1040	2021-02-09 19:57:33.555877	2021-02-10 15:29:46.00869	t
1750	Daniele	Kimes	{"title": "VP Of Business Development"}	1042	2021-02-09 19:58:13.10886	2021-02-10 15:31:51.05711	t
1787	John	Burke	{"title": "Chief Revenue Officer"}	1058	2021-02-09 20:07:32.300451	2021-02-10 15:43:50.716026	t
1802	Simon	Thompson	{"title": "Co-owner"}	1065	2021-02-09 20:12:37.954505	2021-02-10 15:47:47.770071	t
1804	Randall	Clark	{"title": "Chief Operating Officer & Vice President, Finance"}	1068	2021-02-09 20:13:28.505026	2021-02-10 15:48:18.866906	t
1849	Chander	Sudanthi	{"title": "Co-Founder & VP of Engineering"}	1098	2021-02-09 20:31:33.449589	2021-02-10 16:00:09.158885	t
1864	Jonathan	Heiliger	{"title": "Board Observer"}	1102	2021-02-09 20:34:15.333252	2021-02-10 16:04:09.623935	t
1869	Carmit	Tevet-Kuzy	{"title": "Chief Financial Officer"}	1103	2021-02-09 20:35:00.137855	2021-02-10 16:05:28.740885	t
1903	Phil	Tee	{"title": "Co-Founder, Chairman, CEO and Herd Leader"}	1114	2021-02-09 20:40:28.256123	2021-02-10 16:15:59.518552	t
1926	Mark	Edwards	{"title": "Senior Vice Presiden"}	1118	2021-02-09 20:43:10.627414	2021-02-10 16:22:04.487001	t
1938	Kathryn	Minshew	{"title": "Founder & Chief Executive Officer"}	1122	2021-02-09 20:45:18.965137	2021-02-10 16:25:15.060227	t
1977	George	Bilbrey	{"title": "Chief Executive Officer"}	1128	2021-02-09 20:48:27.91877	2021-02-10 16:57:33.508636	t
1990	Wendy	Rogers	{"title": "President and CEO"}	1134	2021-02-09 20:51:48.624324	2021-02-10 17:00:59.394225	t
1999	Scott	Ernst	{"title": "Senior Director of Data Science and Engineering"}	1136	2021-02-09 20:53:00.33377	2021-02-10 17:03:22.113624	t
2039	Lewis	Clemmens	{"title": "Chief Data Scientist & Solution Architect"}	1144	2021-02-09 20:57:54.445911	2021-02-10 17:14:27.830734	t
2052	Nathan	Osborne	{"title": "Chief Operating Officer"}	1149	2021-02-09 20:59:53.660397	2021-02-10 17:17:47.544348	t
2061	Joelle	Senter	{"title": "VP, Customer Ops & Market Development"}	1151	2021-02-09 21:01:20.432818	2021-02-10 17:27:45.635124	t
2099	Christopher	Hertz	{"title": "Chief Revenue Officer"}	1160	2021-02-09 21:09:08.061456	2021-02-10 17:37:44.868854	t
2115	John	J	{"title": "Chief Business Officer"}	1165	2021-02-09 21:11:19.068233	2021-02-10 17:42:00.23837	t
2116	Lan	Chau	{"title": "Director Marketing"}	1166	2021-02-09 21:12:03.234754	2021-02-10 17:42:15.820166	t
2143	Pavan	Gorakavi	{"title": "Senior Vice President of Development"}	1176	2021-02-09 21:17:54.790481	2021-02-10 17:49:23.963339	t
2177	Mitch	Speers	{"title": "Chief Revenue Officer"}	1200	2021-02-09 21:34:37.423669	2021-02-10 18:16:48.405874	t
2190	Russell	Heimlich	{"title": "Senior Developer"}	1212	2021-02-09 21:41:27.808371	2021-02-10 18:20:14.646706	t
2223	Darrell	Lewis	{"title": "Marketing Director"}	1253	2021-02-09 22:08:47.684977	2021-02-10 18:28:52.507341	t
2241	Ken	Rozin	{"title": "Account Executive"}	1275	2021-02-09 22:24:29.084516	2021-02-10 18:33:37.894212	t
2254	Emily	C.	{"title": "Director of Transformational Services"}	1298	2021-02-09 22:42:04.32402	2021-02-10 18:37:02.791195	t
2289	Gavin	Skillman	{"title": "Senior Vice President, New York"}	1311	2021-02-09 22:49:05.082272	2021-02-10 19:00:28.430416	t
2305	Ralph	Pahlmeyer	{"title": "Co-founder, Chief Product Officer"}	245	2021-02-09 22:56:03.961783	2021-02-10 19:04:40.55638	t
2335	Shanthan	Ramasahayam	{"title": "President of VitreosHealth India"}	407	2021-02-09 23:01:58.208523	2021-02-10 19:12:33.06228	t
2366	Robert	Misasi	{"title": "Founder & President & CEO"}	568	2021-02-09 23:07:37.421522	2021-02-10 19:20:41.702958	t
2399	Damion	McDunn	{"title": "Senior Interactive Strategy & Design"}	1067	2021-02-09 23:25:40.037117	2021-02-10 19:29:22.523165	t
2429	David	Cody	{"title": "Director of Business Operations"}	128	2021-02-09 23:35:19.367478	2021-02-10 19:37:14.802661	t
2430	Blair	Cox	{"title": "Financial Controller"}	128	2021-02-09 23:35:19.405008	2021-02-10 19:37:30.529903	t
2431	Alan	Vale	{"title": "Director of Product Management"}	128	2021-02-09 23:35:19.439172	2021-02-10 19:37:46.272348	t
2432	Jonathan	Flamm	{"title": "Director of Engineering"}	128	2021-02-09 23:35:19.473571	2021-02-10 19:38:01.820555	t
2433	Eric	Allais	{"title": "President & CEO"}	134	2021-02-09 23:35:58.328767	2021-02-10 19:38:17.361527	t
2434	John	West	{"title": "Chief Executive Officer"}	1319	2021-02-11 21:25:30.530089	2021-02-12 01:41:16.415549	t
2435	Aaron	Tachibana	{"title": "Chief Financial Officer"}	1319	2021-02-11 21:25:30.563607	2021-02-12 01:41:31.964908	t
2436	Richard	Chen	{"title": "Chief Science Officer"}	1319	2021-02-11 21:25:30.593959	2021-02-12 01:41:47.474943	t
2437	Clinton	Musil	{"title": "Chief Business Officer"}	1319	2021-02-11 21:25:30.626709	2021-02-12 01:42:03.414254	t
2438	Carol	J.	{"title": "Vice President, Finance & Administration"}	1319	2021-02-11 21:25:30.659145	2021-02-12 01:42:19.494749	t
2439	Christian	Haudenschild	{"title": "Senior Director of Genomic Services"}	1319	2021-02-11 21:25:30.688956	2021-02-12 01:42:35.127908	t
2440	Nathan	Mekuz	{"title": "Co-Founder CTO, VP Ad Operations"}	1323	2021-02-11 21:26:28.504862	2021-02-12 01:42:50.661804	t
2441	Joanna	Taccone	{"title": "Marketing Manager"}	1323	2021-02-11 21:26:28.546379	2021-02-12 01:43:06.564946	t
2442	Jeff	Anderson	{"title": "VP of Sales"}	1323	2021-02-11 21:26:28.59409	2021-02-12 01:43:22.093025	t
2443	Tal	Hayek	{"title": "Founder & CEO"}	1323	2021-02-11 21:26:28.639995	2021-02-12 01:43:37.625442	t
2444	Erica	Lorin	{"title": "Director, Strategic Partnerships"}	1323	2021-02-11 21:26:28.685583	2021-02-12 01:43:53.765402	t
2445	Daniel	J.	{"title": "President, Director & Chief Executive Officer"}	1329	2021-02-11 21:27:09.751001	2021-02-12 01:44:09.27363	t
2447	Sharron	Gargosky	{"title": "Chief Clinical and Regulatory"}	1329	2021-02-11 21:27:09.833699	2021-02-12 01:44:40.301854	t
2448	Tu	Diep	{"title": "Executive Director, Clinical Development"}	1329	2021-02-11 21:27:09.865605	2021-02-12 01:44:56.663995	t
2449	Caryn	Peterson	{"title": "Vice President, Regulatory Affairs"}	1329	2021-02-11 21:27:09.897823	2021-02-12 01:45:12.286266	t
2450	Christopher	Twitty	{"title": "Chief Scientific Officer"}	1329	2021-02-11 21:27:09.929472	2021-02-12 01:45:27.820838	t
2451	Jon	Prideaux	{"title": "CEO"}	1332	2021-02-11 21:27:49.992262	2021-02-12 01:45:44.144981	t
2452	Paul	McGuire	{"title": "Director"}	1332	2021-02-11 21:27:50.024725	2021-02-12 01:45:59.66561	t
2453	Daniel	Rimer	{"title": "Director"}	1332	2021-02-11 21:27:50.057482	2021-02-12 01:46:15.163904	t
2454	Mark	Britto	{"title": "Chairman, Founder"}	1332	2021-02-11 21:27:50.090101	2021-02-12 01:46:31.564392	t
2455	Ben	Lyon	{"title": "Team Member"}	1332	2021-02-11 21:27:50.122722	2021-02-12 01:46:47.263059	t
2456	Adam	Lee	{"title": "Chief Product Officer"}	1332	2021-02-11 21:27:50.154136	2021-02-12 01:47:02.814384	t
2457	Damien	Byrne	{"title": "Business Development Director"}	1332	2021-02-11 21:27:50.188024	2021-02-12 01:47:18.358246	t
2458	Keith	Butcher	{"title": "Chief Financial Officer"}	1332	2021-02-11 21:27:50.222039	2021-02-12 01:47:33.91343	t
2459	Randeep	Wilkhu	{"title": "Board Observer"}	1332	2021-02-11 21:27:50.265139	2021-02-12 01:47:50.122667	t
2460	Andrew	Brown	{"title": "Chief Risk Officer"}	1334	2021-02-11 21:28:31.157622	2021-02-12 01:48:05.629077	t
2461	Simon	Adamiyatt	{"title": "Chief Financial Officer"}	1334	2021-02-11 21:28:31.1936	2021-02-12 01:48:21.137579	t
2462	Paul	Hodge	{"title": "CEO"}	1337	2021-02-11 21:29:02.214621	2021-02-12 01:48:36.925261	t
2463	Dan	Stauber	{"title": "Co-Founder"}	1337	2021-02-11 21:29:02.24589	2021-02-12 01:48:52.447021	t
2465	Jonathan	Woo	{"title": "Co-founder , Vice President, Finance and Operations"}	1341	2021-02-11 21:29:40.771858	2021-02-12 01:49:23.600204	t
2466	Paulette	Dillon	{"title": "Senior Vice President of Corporate Development & Co-Founder"}	1341	2021-02-11 21:29:40.804479	2021-02-12 01:49:39.152485	t
2467	Daniel	Emerling	{"title": "Senior Vice President, Research . Co-Founder"}	1341	2021-02-11 21:29:40.835334	2021-02-12 01:49:54.685421	t
2468	Tito	A	{"title": "Chief Strategy Officer, Director, & Founder"}	1341	2021-02-11 21:29:40.86775	2021-02-12 01:50:10.276893	t
2469	Norman	Greenberg	{"title": "Chief Scientific Officer and Senior Vice President"}	1341	2021-02-11 21:29:40.899967	2021-02-12 01:50:25.863056	t
2470	Carolin	Mauch	{"title": "Associate Director Financial Planning & Analysis"}	1343	2021-02-11 21:30:18.828306	2021-02-12 01:50:41.460137	t
2471	Martin	Hofmann	{"title": "Associate Director Immunology"}	1343	2021-02-11 21:30:18.861716	2021-02-12 01:50:57.195611	t
2472	Norbert	Hilf	{"title": "VP Translational Development"}	1343	2021-02-11 21:30:18.895833	2021-02-12 01:51:13.387389	t
2473	Martina	Ott	{"title": "Associate Director Target Validation"}	1343	2021-02-11 21:30:18.935718	2021-02-12 01:51:28.882229	t
2474	Arun	Satelli	{"title": "Associate Director"}	1343	2021-02-11 21:30:18.977111	2021-02-12 01:51:44.441185	t
2475	Steffen	Walter	{"title": "Co-founder and Chief Scientific Officer"}	1343	2021-02-11 21:30:19.020643	2021-02-12 01:52:00.067458	t
2476	Katina	Dorton	{"title": "Chief Financial Officer"}	1343	2021-02-11 21:30:19.061632	2021-02-12 01:52:15.634824	t
2477	Toni	Weinschenk	{"title": "CTO"}	1343	2021-02-11 21:30:19.103521	2021-02-12 01:52:31.154237	t
2478	Carl	P.	{"title": "Chief Scientific Officer"}	1346	2021-02-11 21:30:58.013849	2021-02-12 01:52:46.668934	t
2479	Steven	Bellon	{"title": "VP Drug Discovery"}	1346	2021-02-11 21:30:58.049349	2021-02-12 01:53:02.234436	t
2480	Samuel	Agresta	{"title": "Chief Medical Officer"}	1346	2021-02-11 21:30:58.083097	2021-02-12 01:53:17.769298	t
2481	Cigall	Kadoch	{"title": "Scientific Founder"}	1346	2021-02-11 21:30:58.115469	2021-02-12 01:53:33.930886	t
2482	Adrian	Gottschalk	{"title": "CEO"}	1346	2021-02-11 21:30:58.154858	2021-02-12 01:53:49.472864	t
2483	Allan	Reine	{"title": "Chief Financial Officer"}	1346	2021-02-11 21:30:58.195906	2021-02-12 01:54:05.020552	t
2484	Rajesh	Vashist	{"title": "CEO & Board Director"}	1348	2021-02-11 21:31:47.252936	2021-02-12 01:54:20.56336	t
2485	David	Hsieh	{"title": "VP, Sales, APAC"}	1348	2021-02-11 21:31:47.284892	2021-02-12 01:54:36.120014	t
2486	Mark	Lunsford	{"title": "EVP, Sales"}	1348	2021-02-11 21:31:47.315773	2021-02-12 01:54:52.515777	t
2487	Aaron	Partridge	{"title": "Founder & Chief Scientist"}	1348	2021-02-11 21:31:47.348584	2021-02-12 01:55:08.116648	t
2488	Art	Chadwick	{"title": "Executive Vice President & CFO"}	1348	2021-02-11 21:31:47.380721	2021-02-12 01:55:23.609153	t
2489	Paul	Hagelin	{"title": "Vice President, MEMS Engineering"}	1348	2021-02-11 21:31:47.41057	2021-02-12 01:55:39.183554	t
2490	Markus	Lutz	{"title": "CTO & Executive Vice President"}	1348	2021-02-11 21:31:47.458846	2021-02-12 01:55:54.979106	t
2491	Piyush	Sevalia	{"title": "EVP, Marketing"}	1348	2021-02-11 21:31:47.488708	2021-02-12 01:56:10.650071	t
2492	Irving	L.	{"title": "Founder"}	1350	2021-02-11 21:32:40.196481	2021-02-12 01:56:26.12296	t
2493	Jens-Peter	Volkmer	{"title": "Founder & VP Research & Early Development"}	1350	2021-02-11 21:32:40.231069	2021-02-12 01:56:41.65722	t
2494	Mark	McCamish	{"title": "President and Chief Executive Officer"}	1350	2021-02-11 21:32:40.280821	2021-02-12 01:56:57.249667	t
2495	Norman	Kruse	{"title": "Chief Patent Counsel"}	1350	2021-02-11 21:32:40.319841	2021-02-12 01:57:13.049128	t
2496	Ravi	Majeti	{"title": "Founder"}	1350	2021-02-11 21:32:40.352253	2021-02-12 01:57:28.565588	t
2497	Craig	Gibbs	{"title": "Chief Business Officer"}	1350	2021-02-11 21:32:40.384167	2021-02-12 01:57:44.097209	t
2498	Mark	Chao	{"title": "Co-founder & Medical Director"}	1350	2021-02-11 21:32:40.414196	2021-02-12 01:57:59.610516	t
2499	Chris	Takimoto	{"title": "Chief Medical Officer"}	1350	2021-02-11 21:32:40.444681	2021-02-12 01:58:15.167365	t
2500	Todd	Newton	{"title": "CEO"}	1352	2021-02-11 21:33:13.353502	2021-02-12 01:58:30.66741	t
2501	Stefanie	Cavanaugh	{"title": "CFO"}	1352	2021-02-11 21:33:13.384212	2021-02-12 01:58:46.187443	t
2502	Ming	Yang	{"title": "Director of Research"}	1355	2021-02-11 21:33:49.156375	2021-02-12 01:59:01.900149	t
2503	Christy	Wyskiel	{"title": "Co-Founder"}	1355	2021-02-11 21:33:49.191756	2021-02-12 01:59:17.452479	t
2504	Justin	Hanes	{"title": "Founder & Director"}	1355	2021-02-11 21:33:49.220782	2021-02-12 01:59:33.029263	t
2505	Gerald	Cagle	{"title": "Head of Business Development"}	1355	2021-02-11 21:33:49.252895	2021-02-12 01:59:48.54765	t
2507	Steven	Wolberg	{"title": "Chief Legal Officer and Secretary"}	1358	2021-02-11 21:34:22.4221	2021-02-12 02:00:19.983364	t
2508	Vlad	Sadovskiy	{"title": "President, Merchant Services"}	1358	2021-02-11 21:34:22.455496	2021-02-12 02:00:35.535139	t
2509	James	Caan	{"title": "Director"}	1358	2021-02-11 21:34:22.493258	2021-02-12 02:00:51.309619	t
2510	Jonathan	New	{"title": "Chief Financial Officer"}	1358	2021-02-11 21:34:22.525499	2021-02-12 02:01:06.844701	t
2511	Andrey	Krotov	{"title": "Chief Technology Officer"}	1358	2021-02-11 21:34:22.576642	2021-02-12 02:01:22.479305	t
2512	Akira	Yumiyama	{"title": "Software Engineer"}	1361	2021-02-11 21:35:10.53322	2021-02-12 02:01:38.065292	t
2513	Koichiro	Yoshida	{"title": "Founder & CEO"}	1361	2021-02-11 21:35:10.563967	2021-02-12 02:01:53.59664	t
2514	Mitsuhiro	Kimura	{"title": "Executive Officer"}	1361	2021-02-11 21:35:10.594514	2021-02-12 02:02:09.137478	t
2515	Shinichi	Nomura	{"title": "Director of Development"}	1361	2021-02-11 21:35:10.630226	2021-02-12 02:02:24.629685	t
2516	Shunta	Oka	{"title": "Design Manager"}	1361	2021-02-11 21:35:10.684179	2021-02-12 02:02:40.216823	t
2517	Orui	Koichi	{"title": "Executive officer"}	1361	2021-02-11 21:35:10.715588	2021-02-12 02:02:56.100506	t
2518	Narita	Shuzo	{"title": "Executive Vice President & COO"}	1361	2021-02-11 21:35:10.746631	2021-02-12 02:03:11.608247	t
2519	Takayuki	Kuwae	{"title": "Directors CFO"}	1361	2021-02-11 21:35:10.778839	2021-02-12 02:03:27.388722	t
2520	Zhengyu	Wang	{"title": "Founder & CEO"}	1365	2021-02-11 21:35:48.686691	2021-02-12 02:03:43.602367	t
2521	Doug	W.	{"title": "Vice President of Operations"}	1368	2021-02-11 21:36:27.687247	2021-02-12 02:03:59.148208	t
2522	Michael	Gandy	{"title": "Chief Financial Officer"}	1368	2021-02-11 21:36:27.720162	2021-02-12 02:04:14.651454	t
2523	Philip	Sawyer	{"title": "Chief Executive Officer , President"}	1368	2021-02-11 21:36:27.751193	2021-02-12 02:04:30.385923	t
2525	Paul	O.	{"title": "Vice President of Research and Development"}	1368	2021-02-11 21:36:27.814192	2021-02-12 02:05:01.468359	t
2526	Susan	Martin	{"title": "Vice President of Marketing"}	1368	2021-02-11 21:36:27.845012	2021-02-12 02:05:17.191571	t
2527	Alex	Vayser	{"title": "Founder, Chief Technology Officer"}	1368	2021-02-11 21:36:27.875651	2021-02-12 02:05:33.744995	t
2528	Charles	A.	{"title": "SVP & Chief Scientific Officer"}	1370	2021-02-11 21:37:10.056497	2021-02-12 02:05:49.269075	t
2529	Alexandra	Steinberg	{"title": "Senior Medical Director"}	1370	2021-02-11 21:37:10.090652	2021-02-12 02:06:04.814957	t
2530	Mary	Jean	{"title": "Acting Chief Medical Officer"}	1370	2021-02-11 21:37:10.123763	2021-02-12 02:06:20.371587	t
2531	Ken	Boehm	{"title": "Senior Vice President Human Resources"}	1370	2021-02-11 21:37:10.156005	2021-02-12 02:06:35.941296	t
2532	Jeff	Stebbins	{"title": "Senior Director of Research Operations and Scientific Affairs"}	1370	2021-02-11 21:37:10.213901	2021-02-12 02:06:51.700879	t
2533	Mary	Standen	{"title": "Head of Medical Affairs"}	1370	2021-02-11 21:37:10.252179	2021-02-12 02:07:07.228275	t
2534	Sujal	Shah	{"title": "President and CEO"}	1370	2021-02-11 21:37:10.287674	2021-02-12 02:18:20.423149	t
2535	Klara	Dickinson	{"title": "Chief Regulatory and Compliance Officer"}	1370	2021-02-11 21:37:10.332041	2021-02-12 02:18:35.960867	t
2536	Christian	Zahnd	{"title": "CEO & Board of Directors"}	1375	2021-02-11 21:37:57.833708	2021-02-12 02:18:51.505121	t
2537	Thomas	Schwerzmann	{"title": "VP Human Resources"}	1375	2021-02-11 21:37:57.867041	2021-02-12 02:19:07.071623	t
2538	Andreas	Harstrick	{"title": "Chief Medical Officer"}	1375	2021-02-11 21:37:57.897191	2021-02-12 02:19:22.64325	t
2539	Andreas	Emmenegger	{"title": "CFO & Co-Entrepreneur"}	1375	2021-02-11 21:37:57.928732	2021-02-12 02:19:38.203241	t
2540	Michael	Tobias	{"title": "CSO & Co-Founder"}	1375	2021-02-11 21:37:57.960507	2021-02-12 02:19:53.772875	t
2541	Alexander	Zurcher	{"title": "SVP Development"}	1375	2021-02-11 21:37:57.992013	2021-02-12 02:20:09.310823	t
2542	Julien	Gander	{"title": "General Counsel, VP Legal"}	1375	2021-02-11 21:37:58.022778	2021-02-12 02:20:24.844182	t
2543	Pamela	Trail	{"title": "Chief Scientific Officer"}	1375	2021-02-11 21:37:58.053731	2021-02-12 02:20:40.378	t
2544	Sven	Lingjaerde	{"title": "Board Observer"}	1375	2021-02-11 21:37:58.095874	2021-02-12 02:20:56.197086	t
2545	John	Hunter	{"title": "Site Head and Vice President Antibody R&D"}	1377	2021-02-11 21:38:36.344202	2021-02-12 02:21:12.415472	t
2546	Harry	Zarek	{"title": "CEO"}	1377	2021-02-11 21:38:36.375305	2021-02-12 02:21:27.932633	t
2547	Anat	Cohen-Dayag	{"title": "President & CEO"}	1377	2021-02-11 21:38:36.407186	2021-02-12 02:21:43.42866	t
2548	Shoji	Fukuda	{"title": "Outside Director"}	1379	2021-02-11 21:39:13.268469	2021-02-12 02:21:59.013662	t
2549	Satoru	Ishikawa	{"title": "Marketing Associate"}	1379	2021-02-11 21:39:13.30081	2021-02-12 02:22:14.569425	t
2550	Shigetoshi	Kasuga	{"title": "Director of Development Headquarters"}	1379	2021-02-11 21:39:13.332408	2021-02-12 02:22:30.13255	t
2551	Murata	Masayuki	{"title": "External Part-time Auditor"}	1379	2021-02-11 21:39:13.366379	2021-02-12 02:22:45.627748	t
2552	Nishio	Tomokazu	{"title": "Executive Officer"}	1379	2021-02-11 21:39:13.397956	2021-02-12 02:23:01.136944	t
2553	Masayoshi	Yamamoto	{"title": "Representative Director, CEO and CTO"}	1379	2021-02-11 21:39:13.426507	2021-02-12 02:23:16.701682	t
2554	Naoki	Inoue	{"title": "Director & Executive Officer CFO"}	1379	2021-02-11 21:39:13.458143	2021-02-12 02:23:32.318373	t
2555	Takeshi	Sugai	{"title": "Full-time External Auditor"}	1379	2021-02-11 21:39:13.49022	2021-02-12 02:23:47.791398	t
2556	Sung	Bum-Hong	{"title": "Founder and Executive Director"}	1388	2021-02-11 21:39:57.845523	2021-02-12 02:24:04.625278	t
2557	Justin	Roux	{"title": "Director, Product Marketing and Program Management"}	1390	2021-02-11 21:40:35.362152	2021-02-12 02:24:20.128735	t
2558	Jamal	Labed	{"title": "Co-Founder & COO"}	1390	2021-02-11 21:40:35.393715	2021-02-12 02:24:35.642926	t
2559	Bryon	Thomas	{"title": "VP Worldwide Demand Generation"}	1390	2021-02-11 21:40:35.424652	2021-02-12 02:24:51.250204	t
2560	Sylvain	Gauthier	{"title": "CEO"}	1390	2021-02-11 21:40:35.456213	2021-02-12 02:25:06.982881	t
2561	Haim	Niessenson	{"title": "Founder"}	1394	2021-02-11 21:41:20.690979	2021-02-12 02:25:22.513637	t
2562	William	D.	{"title": "Senior Vice President and Chief Financial Officer"}	1399	2021-02-11 21:42:06.850001	2021-02-12 02:25:38.081331	t
2563	Alicia	J.	{"title": "Vice President, General Counsel"}	1399	2021-02-11 21:42:06.882414	2021-02-12 02:25:53.622918	t
2564	Jill	Henrich	{"title": "Vice President, Regulatory Affairs"}	1399	2021-02-11 21:42:06.912739	2021-02-12 02:26:09.175701	t
2566	Michael	Mulkerrin	{"title": "Vice President, Process Development"}	1399	2021-02-11 21:42:06.977788	2021-02-12 02:26:40.248974	t
2567	Austin	Gurney	{"title": "Senior Vice President, Molecular and Cellular Biology"}	1399	2021-02-11 21:42:07.009854	2021-02-12 02:26:55.8137	t
2568	Angie	Park	{"title": "Sr. Director Immunotherapy"}	1399	2021-02-11 21:42:07.040276	2021-02-12 02:27:11.324548	t
2569	Christopher	Murriel	{"title": "Senior Scientist"}	1399	2021-02-11 21:42:07.073465	2021-02-12 02:27:26.895815	t
2570	Sanjay	Mehta	{"title": "VP Engineering"}	1401	2021-02-11 21:42:52.156854	2021-02-12 02:27:42.581093	t
2571	Kumanan	Yogaratnam	{"title": "Founder and CTO"}	1401	2021-02-11 21:42:52.188524	2021-02-12 02:27:58.966032	t
2572	Carl	Smith	{"title": "CFO"}	1401	2021-02-11 21:42:52.219623	2021-02-12 02:28:14.448454	t
2573	Jaison	Dolvane	{"title": "Founder and CEO"}	1401	2021-02-11 21:42:52.252442	2021-02-12 02:28:29.971787	t
2575	Bart	C.	{"title": "CEO"}	1403	2021-02-11 21:43:25.079242	2021-02-12 02:29:02.150892	t
2576	Leif	Hague	{"title": "Founder"}	1406	2021-02-11 21:43:56.028129	2021-02-12 02:29:17.975308	t
2577	Joel	Gay	{"title": "CFO"}	1406	2021-02-11 21:43:56.060216	2021-02-12 02:29:33.503579	t
2578	Tatsuo	Tai	{"title": "Director and Executive Officer"}	1410	2021-02-11 21:44:37.144455	2021-02-12 02:29:49.034201	t
2579	Junji	Imaoka	{"title": "Director, Executive Officer, Head of Cloud Integration Division"}	1410	2021-02-11 21:44:37.176622	2021-02-12 02:30:04.799395	t
2580	Takashi	Miyata	{"title": "Director, EVP"}	1410	2021-02-11 21:44:37.207692	2021-02-12 02:30:20.868298	t
2581	Hideya	Sato	{"title": "Founder & CEO"}	1410	2021-02-11 21:44:37.239353	2021-02-12 02:30:36.413062	t
2582	Satoshi	Takezawa	{"title": "Board of Director & CTO"}	1410	2021-02-11 21:44:37.270128	2021-02-12 02:30:51.910118	t
2583	Tsukada	Koichiro	{"title": "Director, Executive Officer, Head of CFO Management Division"}	1410	2021-02-11 21:44:37.300824	2021-02-12 02:31:07.44019	t
2584	Tatsuo	Tai	{"title": "Director, Executive Officer West Japan Branch President"}	1410	2021-02-11 21:44:37.333785	2021-02-12 02:31:23.1152	t
2585	Uno	Naoki	{"title": "Outside Director"}	1410	2021-02-11 21:44:37.366748	2021-02-12 02:31:38.667531	t
2586	Benjamin	P.	{"title": "Chief Executive Officer and Chairman of the Board"}	1413	2021-02-11 21:45:23.896802	2021-02-12 02:31:54.185263	t
2587	Mike	Heil	{"title": "President/CEO"}	1414	2021-02-11 21:46:00.826828	2021-02-12 02:32:09.714531	t
2588	Anthony	Atala	{"title": "Co-Founder"}	1416	2021-02-11 21:46:48.277339	2021-02-12 02:32:25.246714	t
2589	Rod	Hafner	{"title": "Senior Vice President Research & Development"}	1418	2021-02-11 21:48:31.901992	2021-02-12 02:32:40.791149	t
2590	David	Hipkiss	{"title": "Chief Business Officer"}	1418	2021-02-11 21:48:31.933606	2021-02-12 02:32:56.323605	t
2591	Steven	Harris	{"title": "Co-Founder & CEO"}	1418	2021-02-11 21:48:31.964888	2021-02-12 02:33:11.806831	t
2592	Linda	Szyper	{"title": "Chief Commercial Officer"}	1418	2021-02-11 21:48:31.995829	2021-02-12 02:33:27.339654	t
2593	Nina	Kataria	{"title": "Vice President Human Resources"}	1418	2021-02-11 21:48:32.026155	2021-02-12 02:33:43.188063	t
2594	Julien	Cotta	{"title": "CFO"}	1418	2021-02-11 21:48:32.056612	2021-02-12 02:33:58.768327	t
2595	Matthew	Frankel	{"title": "General Counsel"}	1418	2021-02-11 21:48:32.086803	2021-02-12 02:34:14.389433	t
2596	S.	K.	{"title": "Chief Financial Officer"}	1419	2021-02-11 21:49:20.335109	2021-02-12 02:34:29.880757	t
2597	Sanjay	Dhingra	{"title": "Chairman/Managing Director"}	1419	2021-02-11 21:49:20.364412	2021-02-12 02:34:45.400508	t
2598	Nishith	Chudasama	{"title": "VP Of Engineering"}	1420	2021-02-11 21:49:51.193087	2021-02-12 02:35:00.956284	t
2599	Jon	Brinton	{"title": "Chief Revenue Officer"}	1420	2021-02-11 21:49:51.222881	2021-02-12 02:35:16.482591	t
2600	Steven	G.	{"title": "Chairman & CEO"}	1420	2021-02-11 21:49:51.25452	2021-02-12 02:35:32.028361	t
2601	Ron	Vincent	{"title": "CFO"}	1420	2021-02-11 21:49:51.286313	2021-02-12 02:35:47.571555	t
2602	Doug	Gaylor	{"title": "President & COO"}	1420	2021-02-11 21:49:51.337932	2021-02-12 02:36:03.068079	t
2603	R	Roderick	{"title": "Executive Vice Chairman"}	1422	2021-02-11 21:50:39.768149	2021-02-12 02:36:18.583148	t
2604	Georgia	S.	{"title": "Executive Chairman"}	1422	2021-02-11 21:50:39.798464	2021-02-12 02:36:34.330081	t
2605	Robin	Hopper	{"title": "President"}	1423	2021-02-11 21:51:24.797772	2021-02-12 02:36:49.845996	t
2606	Jamie	Dinsmore	{"title": "SVP, Global Sales"}	1423	2021-02-11 21:51:24.829043	2021-02-12 02:37:05.468651	t
2607	Reinout	Oussoren	{"title": "Vice President Global Sales"}	1424	2021-02-11 21:52:15.751302	2021-02-12 02:37:21.351996	t
2608	Lawrence	Willey	{"title": "Chief Operating Officer"}	1424	2021-02-11 21:52:15.782325	2021-02-12 02:37:36.87321	t
2609	Ciel	Caldwell	{"title": "Chief Financial Officer"}	1424	2021-02-11 21:52:15.813642	2021-02-12 02:37:52.448702	t
2610	Jonathan	Lynch	{"title": "Chief Technology Officer"}	1424	2021-02-11 21:52:15.844512	2021-02-12 02:38:07.956563	t
2611	Troy	Patton	{"title": "President and CEO"}	1424	2021-02-11 21:52:15.875999	2021-02-12 02:38:23.5151	t
2612	Tim	Healy	{"title": "Team Member"}	1424	2021-02-11 21:52:15.907324	2021-02-12 02:38:39.070156	t
2613	Elliot	Mark	{"title": "Vice President & General Counsel"}	1424	2021-02-11 21:52:15.936809	2021-02-12 02:38:54.621461	t
2614	Yusuke	Tanaka	{"title": "Founder"}	1428	2021-02-11 21:53:18.507135	2021-02-12 02:39:10.12434	t
2615	Minako	Hori	{"title": "Director of Management HQ"}	1429	2021-02-11 21:53:53.936257	2021-02-12 02:39:25.647626	t
2616	Camilo	Lopez	{"title": "VP Business Development"}	1429	2021-02-11 21:53:53.967732	2021-02-12 02:39:41.159348	t
2617	Makoto	Ishii	{"title": "Outside Director"}	1429	2021-02-11 21:53:53.997412	2021-02-12 02:39:56.719548	t
2618	Satoshi	Miki	{"title": "CEO"}	1429	2021-02-11 21:53:54.030799	2021-02-12 02:40:12.982207	t
2619	Shikata	Yoichi	{"title": "External auditor"}	1429	2021-02-11 21:53:54.080983	2021-02-12 02:40:28.514462	t
2620	Hisayoshi	Kobayashi	{"title": "Outside Director"}	1429	2021-02-11 21:53:54.1118	2021-02-12 02:40:44.034471	t
2621	Yuzo	Izutani	{"title": "full-time Auditor"}	1429	2021-02-11 21:53:54.145224	2021-02-12 02:40:59.606069	t
2622	Toshiyuki	Hachisuka	{"title": "Director"}	1429	2021-02-11 21:53:54.177455	2021-02-12 02:41:15.185465	t
2623	Michelle	Wallach	{"title": "COO"}	1430	2021-02-11 21:54:43.160174	2021-02-12 02:41:30.797418	t
2624	Steve	R.	{"title": "CEO"}	1430	2021-02-11 21:54:43.192039	2021-02-12 02:41:46.350898	t
2626	Dave	Briskie	{"title": "President/CFO"}	1430	2021-02-11 21:54:43.253599	2021-02-12 02:42:17.405093	t
2628	Ron	Earnest	{"title": "President & CEO"}	1432	2021-02-11 21:56:09.472963	2021-02-12 02:42:48.414426	t
2629	Mark	Elo	{"title": "Vice President of Marketing"}	1433	2021-02-11 21:56:53.987574	2021-02-12 02:43:03.976298	t
2630	John	Regazzi	{"title": "President and Chief Executive Officer"}	1433	2021-02-11 21:56:54.023743	2021-02-12 02:43:19.528446	t
2631	Fred	Gapasin	{"title": "Vice President of Operations"}	1433	2021-02-11 21:56:54.055205	2021-02-12 02:43:35.07823	t
2632	Mike	Penta	{"title": "Vice President of Sales"}	1433	2021-02-11 21:56:54.087861	2021-02-12 02:43:50.615925	t
2633	Jeffrey	T	{"title": "Chief Technical Officer"}	1433	2021-02-11 21:56:54.119005	2021-02-12 02:44:06.158459	t
2634	Timothy	T.	{"title": "President & CEO"}	1434	2021-02-11 21:57:43.21126	2021-02-12 02:44:21.719042	t
2635	Tim	Semones	{"title": "Chief Operating Officer"}	1435	2021-02-11 21:58:26.086609	2021-02-12 02:44:37.652314	t
2636	Laurie	Lantham	{"title": "CFO and SVP of Finance"}	1435	2021-02-11 21:58:26.127487	2021-02-12 02:44:53.436959	t
2637	Ray	Hatch	{"title": "President / Chief Executive Officer"}	1435	2021-02-11 21:58:26.161471	2021-02-12 02:45:08.967103	t
2638	Virginia	Robbins	{"title": "COO & EVP"}	1437	2021-02-11 21:59:44.071946	2021-02-12 02:45:24.468542	t
2639	Randall	D.	{"title": "CFO & EVP"}	1437	2021-02-11 21:59:44.103599	2021-02-12 02:45:40.047141	t
2640	Terry	A.	{"title": "President & CEO"}	1437	2021-02-11 21:59:44.133917	2021-02-12 02:45:55.534174	t
2641	John	Lindstedt	{"title": "CCO"}	1437	2021-02-11 21:59:44.165706	2021-02-12 02:46:11.462284	t
2642	Jesse	Sutton	{"title": "CEO & Co- Founder, Member of the Board"}	1438	2021-02-11 22:00:28.907336	2021-02-12 02:46:27.064942	t
2643	Michael	Brauser	{"title": "Co-Chairman"}	1438	2021-02-11 22:00:28.936978	2021-02-12 02:46:42.688976	t
2644	Barry	Honig	{"title": "CEO"}	1438	2021-02-11 22:00:28.967103	2021-02-12 02:46:58.249607	t
2645	David	Lenigas	{"title": "Co-Chairman"}	1440	2021-02-11 22:01:48.982954	2021-02-12 02:47:14.04738	t
2646	Mazen	Haddad	{"title": "Co-Chairman & Director"}	1440	2021-02-11 22:01:49.016948	2021-02-12 02:47:29.563904	t
2647	Anthony	Samaha	{"title": "CFO & Director"}	1440	2021-02-11 22:01:49.048066	2021-02-12 02:47:45.135674	t
2648	John	McMullen	{"title": "CEO"}	1440	2021-02-11 22:01:49.079809	2021-02-12 02:48:00.665857	t
2649	Rafi	Hazan	{"title": "Corporate Secretary & Director"}	1440	2021-02-11 22:01:49.109917	2021-02-12 02:48:16.264374	t
2650	Mohammed	Ghafari	{"title": "Director"}	1440	2021-02-11 22:01:49.140259	2021-02-12 02:48:31.791603	t
2651	Feng	Zhou	{"title": "Founder, CEO and Director"}	1442	2021-02-11 22:03:18.865717	2021-02-12 02:48:47.355968	t
2652	Thye	Kim	{"title": "Founder"}	1447	2021-02-11 22:04:51.939687	2021-02-12 02:49:03.375569	t
2653	Teh	Swee	{"title": "Founder"}	1447	2021-02-11 22:04:51.970241	2021-02-12 02:49:18.89313	t
2654	R.M.	(Ric)	{"title": "CEO"}	1448	2021-02-11 22:05:29.812766	2021-02-12 02:49:34.433643	t
2656	Ayad	Abul-Ella	{"title": "CEO"}	1452	2021-02-11 22:07:43.969154	2021-02-12 02:50:06.467564	t
2657	Sabine	Kauper	{"title": "Chief Financial Officer & Board Member"}	1452	2021-02-11 22:07:44.003224	2021-02-12 02:50:22.322433	t
2658	Moto	Arima	{"title": "Software Engineer"}	1454	2021-02-11 22:08:25.878096	2021-02-12 02:50:37.892979	t
2659	Anna	Morozova	{"title": "Web Designer"}	1454	2021-02-11 22:08:25.908851	2021-02-12 02:50:53.454589	t
2660	Rui	Sato	{"title": "Founder & President"}	1454	2021-02-11 22:08:25.939523	2021-02-12 02:51:08.972066	t
2661	Naoko	Fujihara	{"title": "Chief, Business Development Group"}	1454	2021-02-11 22:08:25.971284	2021-02-12 02:51:24.530608	t
2662	Danny	Schoening	{"title": "CEO"}	1455	2021-02-11 22:09:04.438574	2021-02-12 02:51:40.120388	t
2663	Michael	Anthony	{"title": "President & CEO"}	1457	2021-02-11 22:10:25.590861	2021-02-12 02:51:55.649444	t
2664	Nicholas	J.	{"title": "Vp & CFO"}	1457	2021-02-11 22:10:25.622717	2021-02-12 02:52:11.181666	t
2665	George	Ogilvie	{"title": "President & CEO"}	1457	2021-02-11 22:10:25.653543	2021-02-12 02:52:26.716981	t
2666	Robert	P.	{"title": "Founder"}	1461	2021-02-11 22:12:08.367602	2021-02-12 02:52:42.459281	t
2667	Trey	Barrett	{"title": "SVP Bus. Dev."}	1462	2021-02-11 22:12:43.805094	2021-02-12 02:52:57.97776	t
2668	Charles	Morgan	{"title": "Director"}	1462	2021-02-11 22:12:43.837922	2021-02-12 02:53:13.977623	t
2669	Richard	Howe	{"title": "Chairman & CEO"}	1462	2021-02-11 22:12:43.868625	2021-02-12 02:53:29.94218	t
2670	Jeremy	Chrysler	{"title": "SVP, Exchange"}	1462	2021-02-11 22:12:43.899184	2021-02-12 02:53:45.459305	t
2671	Craig	Dillon	{"title": "CTO"}	1462	2021-02-11 22:12:43.933296	2021-02-12 02:54:01.279866	t
2672	Mitch	Tuchman	{"title": "Director"}	1462	2021-02-11 22:12:43.962659	2021-02-12 02:54:16.804107	t
2673	Wally	Ruiz	{"title": "CFO"}	1462	2021-02-11 22:12:43.993084	2021-02-12 02:54:32.376264	t
2674	Joe	Mullaney	{"title": "CEO"}	1463	2021-02-11 22:13:21.338727	2021-02-12 02:54:47.927934	t
2675	Bob	Anthonyson	{"title": "Vice President of Business Development"}	1463	2021-02-11 22:13:21.370658	2021-02-12 02:55:03.396728	t
2676	Saad	Medleg	{"title": "Chairman, Board of Directors"}	1464	2021-02-11 22:13:57.953318	2021-02-12 02:55:20.148194	t
2677	David	Lithwick	{"title": "CTO"}	1464	2021-02-11 22:13:57.984657	2021-02-12 02:55:36.335167	t
2678	Stephen	Lee	{"title": "VP & General Manager, Manufacturing"}	1464	2021-02-11 22:13:58.015227	2021-02-12 02:55:51.853675	t
2679	Clifford	M.	{"title": "President and CEO"}	1464	2021-02-11 22:13:58.047028	2021-02-12 02:56:07.410942	t
2680	Eric	Tardif	{"title": "Partner, Co-Founder & President"}	1466	2021-02-11 22:15:19.824885	2021-02-12 02:56:22.932141	t
2681	Carl	Hull	{"title": "Partner, Co-Founder & CEO"}	1466	2021-02-11 22:15:19.857168	2021-02-12 02:56:38.51177	t
2682	John	Hammock	{"title": "President, CEO"}	1469	2021-02-11 22:17:28.165917	2021-02-12 02:56:54.661222	t
2684	Matthew	Crummack	{"title": "Group Chief Executive Officer"}	1470	2021-02-11 22:18:12.729814	2021-02-12 02:57:26.254118	t
2685	George	Berkowski	{"title": "Chief Product Officer"}	1470	2021-02-11 22:18:12.761133	2021-02-12 02:57:42.339574	t
2686	Kieron	Nolan	{"title": "Director of Group Technology"}	1470	2021-02-11 22:18:12.792021	2021-02-12 02:57:57.860291	t
2687	Nick	Hall	{"title": "Head - Marketing"}	1470	2021-02-11 22:18:12.82335	2021-02-12 02:58:13.367092	t
2688	Pascal	Moyon	{"title": "Customer and Marketing Science"}	1470	2021-02-11 22:18:12.856747	2021-02-12 02:58:28.913737	t
2689	Jackson	Hull	{"title": "Chief Operating and Technology Officer"}	1470	2021-02-11 22:18:12.886234	2021-02-12 02:58:44.699818	t
2691	Markus	J.	{"title": "Chief Business Officer and Treasurer"}	1471	2021-02-11 22:18:43.409711	2021-02-12 02:59:15.863328	t
2693	Thomas	J.	{"title": "President, Chief Executive Officer and Chairman of the Board"}	1471	2021-02-11 22:18:43.472291	2021-02-12 02:59:46.975078	t
2694	R.	Kirk	{"title": "Chairman, Chief Executive Officer & Co-founder"}	1472	2021-02-11 22:19:20.912879	2021-02-12 03:00:03.495209	t
2695	Dave	Singh	{"title": "Founder & Chief Medical Officer"}	1472	2021-02-11 22:19:20.94531	2021-02-12 03:00:19.046256	t
2696	Joseph	Truitt	{"title": "President and Chief Executive Officer"}	1474	2021-02-11 22:20:05.35411	2021-02-12 03:00:35.191811	t
2697	Neil	Cole	{"title": "CEO"}	1475	2021-02-11 22:20:43.899256	2021-02-12 03:00:50.74804	t
2698	Avonda	Nelson	{"title": "Vice President"}	1475	2021-02-11 22:20:43.931949	2021-02-12 03:01:06.227684	t
2699	John	McClain	{"title": "CFO, Finance & Chief Accounting Officer"}	1475	2021-02-11 22:20:43.962877	2021-02-12 03:01:21.748987	t
2700	Richard	T.	{"title": "CFO"}	1476	2021-02-11 22:21:25.37253	2021-02-12 03:01:37.241255	t
2701	Robert	F.brown	{"title": "President, CEO and Director"}	1476	2021-02-11 22:21:25.404222	2021-02-12 03:01:52.772514	t
2702	Lisabeth	Heese	{"title": "Executive Vice President - Issuer and Information Services"}	1478	2021-02-11 22:22:47.037174	2021-02-12 03:02:08.277523	t
2703	Deanna	Peters	{"title": "Team Member"}	1478	2021-02-11 22:22:47.068692	2021-02-12 03:02:23.803726	t
2704	Michael	Modeski	{"title": "President, OTC Link LLC"}	1478	2021-02-11 22:22:47.099022	2021-02-12 03:02:39.354031	t
2705	Jason	Paltrowitz	{"title": "Executive Vice President - Corporate Services"}	1478	2021-02-11 22:22:47.130539	2021-02-12 03:02:54.925273	t
2706	Cromwell	Coulson	{"title": "President, Chief Executive Officer and Director"}	1478	2021-02-11 22:22:47.161811	2021-02-12 03:03:10.436353	t
2707	Alan	Saperstein	{"title": "COO"}	1479	2021-02-11 22:23:22.599948	2021-02-12 03:03:25.970304	t
2708	Randy	Selman	{"title": "CEO"}	1479	2021-02-11 22:23:22.631974	2021-02-12 03:03:42.408307	t
2709	Eyal	Yaakov	{"title": "Co-Founder & Head of Technology"}	1482	2021-02-11 22:26:13.508898	2021-02-12 03:03:58.032695	t
2710	Ben	Garrun	{"title": "Co-Founder & Head of Business"}	1482	2021-02-11 22:26:13.540465	2021-02-12 03:04:13.560929	t
2711	Assi	Itshayek	{"title": "CFO"}	1482	2021-02-11 22:26:13.572139	2021-02-12 03:04:29.15131	t
2712	Apostolos	Zervos	{"title": "Chief Executive Officer"}	1484	2021-02-11 22:27:38.649362	2021-02-12 03:04:44.669745	t
2713	Yiannis	Karalis	{"title": "Head of Program Delivery"}	1484	2021-02-11 22:27:38.681671	2021-02-12 03:05:00.159558	t
2714	Dawid	Wolanski	{"title": "Product Manager"}	1484	2021-02-11 22:27:38.71173	2021-02-12 03:05:16.003842	t
2715	Tatiana	Ostapenko	{"title": "Finance Manager"}	1484	2021-02-11 22:27:38.743407	2021-02-12 03:05:31.507643	t
2716	John	van	{"title": "Co-Founder & Chief Executive Officer"}	1486	2021-02-11 22:29:02.529871	2021-02-12 03:05:47.102188	t
2717	Steven	Bloembergen	{"title": "Co-Founder & Executive Vice-President, Technology"}	1486	2021-02-11 22:29:02.56157	2021-02-12 03:06:02.601609	t
2718	Arvind	Balaji	{"title": "Managing Director"}	1487	2021-02-11 22:29:48.964137	2021-02-12 03:06:18.133959	t
2719	Peter	Pfluger	{"title": "CEO"}	1488	2021-02-11 22:30:35.326798	2021-02-12 03:06:33.677598	t
2720	Jean-Marc	Bally	{"title": "Director"}	1488	2021-02-11 22:30:35.359519	2021-02-12 03:06:49.195973	t
2721	BRA	Mooryati	{"title": "Founder"}	1491	2021-02-11 22:32:43.430886	2021-02-12 03:07:04.767268	t
2722	Tiang	Boon	{"title": "Co-Founder & Joint Managing Director"}	1492	2021-02-11 22:33:23.977279	2021-02-12 03:07:20.247391	t
2723	Lai	Ping	{"title": "Co-Founder, Executive Director, Chairperson of the Options Committee, Executive Director HR"}	1492	2021-02-11 22:33:24.008503	2021-02-12 03:07:35.743089	t
2724	William	R	{"title": "Founder & Vice Chairman of the Board"}	1497	2021-02-11 22:36:08.068646	2021-02-12 03:07:51.30395	t
2725	Aragane	Masashi	{"title": "Corporate Auditor"}	1502	2021-02-11 22:38:55.159137	2021-02-12 03:08:06.833871	t
2726	Yukio	Tsuda	{"title": "Part-time Auditor"}	1502	2021-02-11 22:38:55.191676	2021-02-12 03:08:22.335306	t
2727	Kazuya	Yoshida	{"title": "Director & Promotion Division Manager"}	1502	2021-02-11 22:38:55.225307	2021-02-12 03:08:37.871318	t
2728	Yasutaka	Urakawa	{"title": "President & CEO"}	1502	2021-02-11 22:38:55.257026	2021-02-12 03:08:53.352248	t
2729	Ito	Yayoi	{"title": "Part-time Auditor (External)"}	1502	2021-02-11 22:38:55.288513	2021-02-12 03:09:08.937282	t
2730	Edward	Schneider	{"title": "Co-founder and Chairman"}	1507	2021-02-11 22:42:14.403122	2021-02-12 03:09:24.446632	t
2731	Brian	Sondey	{"title": "Chairman & Chief Executive Officer"}	1507	2021-02-11 22:42:14.434378	2021-02-12 03:09:39.947865	t
2732	John	Burns	{"title": "Chief Financial Officer"}	1507	2021-02-11 22:42:14.464872	2021-02-12 03:09:55.458477	t
2733	Surya	Winata	{"title": "Founder"}	1511	2021-02-11 22:44:08.257606	2021-02-12 03:10:11.559226	t
2734	William	Hon	{"title": "Founder, Managing Director & Chief Executive Officer"}	1512	2021-02-11 22:44:47.284383	2021-02-12 03:10:27.963818	t
2735	Jack	Barrett	{"title": "Founder"}	1514	2021-02-11 22:45:38.167781	2021-02-12 03:10:43.46476	t
2736	Lim	Een	{"title": "Chief Executive Officer"}	1527	2021-02-11 22:54:00.09199	2021-02-12 03:10:58.954329	t
2737	David	Gladstone	{"title": "Chief Executive Officer & Chairman"}	1528	2021-02-11 22:54:44.080804	2021-02-12 03:11:14.455959	t
2738	David	Taylor	{"title": "Founder"}	1534	2021-02-11 22:57:49.721821	2021-02-12 03:11:29.969949	t
2739	Gan	Thiam	{"title": "Chairman & Co-Founder"}	1535	2021-02-11 22:58:21.548649	2021-02-12 03:11:45.61002	t
2740	Raymond	Liu	{"title": "Chairman/Co-Founder"}	1537	2021-02-11 22:59:46.2587	2021-02-12 03:12:01.133818	t
2741	Delon	Kuo	{"title": "Marketer"}	1543	2021-02-11 23:03:26.397357	2021-02-12 03:12:16.642397	t
2742	Kentaro	Watanabe	{"title": "CEO"}	1543	2021-02-11 23:03:26.42732	2021-02-12 03:12:32.463254	t
2743	Masatoshi	Kumagai	{"title": "Founder & Group CEO"}	1543	2021-02-11 23:03:26.45516	2021-02-12 03:12:47.981661	t
2744	Yim	Yuen	{"title": "Co-founder"}	1567	2021-02-11 23:15:47.974071	2021-02-12 03:13:03.52002	t
2745	Fong	See	{"title": "Co-founder"}	1567	2021-02-11 23:15:48.005107	2021-02-12 03:13:19.040388	t
2746	Wong	Yin	{"title": "Co-founder"}	1567	2021-02-11 23:15:48.035334	2021-02-12 03:13:34.582305	t
2748	Yuvraj	Malhotra	{"title": "Board of Directors & Founder"}	1626	2021-02-11 23:54:33.720759	2021-02-12 03:14:05.664775	t
2749	SKM	Mailenandhan	{"title": "Founder"}	1643	2021-02-12 00:01:56.46637	2021-02-12 03:14:21.178842	t
2784	Nathaniel	David	{"title": "Co-Founder & President"}	1328	2021-02-12 00:57:06.34039	2021-02-12 00:57:06.34039	f
2785	DAN	MARQUESS	{"title": "Chief Scientific Officer"}	1328	2021-02-12 00:57:06.396767	2021-02-12 00:57:06.396767	f
2786	JAMIE	DANANBERG	{"title": "Chief Medical Officer"}	1328	2021-02-12 00:57:06.430846	2021-02-12 00:57:06.430846	f
2787	Nathaniel	E.	{"title": "President"}	1328	2021-02-12 00:57:06.463458	2021-02-12 00:57:06.463458	f
2788	Camille	Landis	{"title": "Senior Vice President of Corporate Development"}	1328	2021-02-12 00:57:06.495749	2021-02-12 00:57:06.495749	f
2789	Doug	Rich	{"title": "Senior Vice President of Operations"}	1328	2021-02-12 00:57:06.527779	2021-02-12 00:57:06.527779	f
2790	Lynne	Sullivan	{"title": "Chief Financial Officer"}	1328	2021-02-12 00:57:06.559733	2021-02-12 00:57:06.559733	f
2791	Michael	Mifsud	{"title": "Senior Software Engineer"}	1330	2021-02-12 00:57:40.147253	2021-02-12 00:57:40.147253	f
2792	Paul	Vanzella	{"title": "Founder"}	1330	2021-02-12 00:57:40.179945	2021-02-12 00:57:40.179945	f
2793	Martin	Hosking	{"title": "Non Executive Director"}	1330	2021-02-12 00:57:40.211799	2021-02-12 00:57:40.211799	f
2794	Barry	Newstead	{"title": "Chief Operating Officer"}	1330	2021-02-12 00:57:40.262938	2021-02-12 00:57:40.262938	f
2795	Tom	Adams	{"title": "Engineering Manager - Mobile"}	1330	2021-02-12 00:57:40.295099	2021-02-12 00:57:40.295099	f
2796	Mark	L.	{"title": "Vice Chairman & CFO"}	1336	2021-02-12 00:59:02.16237	2021-02-12 00:59:02.16237	f
2797	Bill	Schenck	{"title": "Co-Founder and Chairman"}	1336	2021-02-12 00:59:02.194008	2021-02-12 00:59:02.194008	f
2798	Brian	Fetterolf	{"title": "President and CEO"}	1336	2021-02-12 00:59:02.223766	2021-02-12 00:59:02.223766	f
2799	Waleed	Hassanein	{"title": "President & CEO"}	1340	2021-02-12 00:59:39.685581	2021-02-12 00:59:39.685581	f
2800	Domenic	Micale	{"title": "Vice President of Finance"}	1340	2021-02-12 00:59:39.717528	2021-02-12 00:59:39.717528	f
2801	Christine	Brauer	{"title": "Vice President, Regulatory Affairs"}	1340	2021-02-12 00:59:39.748388	2021-02-12 00:59:39.748388	f
2802	Tamer	Khayal	{"title": "Vice President of Clinical Development"}	1340	2021-02-12 00:59:39.780629	2021-02-12 00:59:39.780629	f
2803	John	Carey	{"title": "Vice President of Operations"}	1340	2021-02-12 00:59:39.825856	2021-02-12 00:59:39.825856	f
2804	Jacqueline	Sneve	{"title": "Vice President, Healthcare Economics and Reimbursement"}	1340	2021-02-12 00:59:39.857628	2021-02-12 00:59:39.857628	f
2805	Neal	Beswick	{"title": "Vice President of Global Marketing"}	1340	2021-02-12 00:59:39.89019	2021-02-12 00:59:39.89019	f
2806	Michael	O’Hara	{"title": "Senior Director of Quality Assurance"}	1340	2021-02-12 00:59:39.921494	2021-02-12 00:59:39.921494	f
2807	James	Swartz	{"title": "Founder"}	1342	2021-02-12 01:00:18.999927	2021-02-12 01:00:18.999927	f
2808	Brunilda	Shtylla	{"title": "VP Business Development"}	1342	2021-02-12 01:00:19.03219	2021-02-12 01:00:19.03219	f
2809	James	R.	{"title": "Founder & Director"}	1342	2021-02-12 01:00:19.063689	2021-02-12 01:00:19.063689	f
2751	Sari	Dasa	{"title": "Founder"}	1687	2021-02-12 00:29:34.280437	2021-02-12 03:14:52.860452	t
2752	Bonnie	Anderson	{"title": "Chief Executive Officer"}	1320	2021-02-12 00:33:17.552143	2021-02-12 03:15:08.400951	t
2753	Shelly	D.	{"title": "CFO"}	1320	2021-02-12 00:33:17.591071	2021-02-12 03:15:23.971153	t
2755	Mike	Rosenbluth	{"title": "Vice President of Pulmonology"}	1320	2021-02-12 00:33:17.671377	2021-02-12 03:15:55.899288	t
2756	Robert	Monroe	{"title": "VP, Laboratory Operations & Medical Director"}	1320	2021-02-12 00:33:17.711849	2021-02-12 03:16:12.135908	t
2757	Chris	Hall	{"title": "Chief Commercial Officer"}	1320	2021-02-12 00:33:17.753255	2021-02-12 03:16:28.368292	t
2758	Cayce	Denton	{"title": "Board Observer"}	1320	2021-02-12 00:33:17.828123	2021-02-12 03:16:44.048997	t
2759	Sean	McCarthy	{"title": "Chief Executive Officer"}	1324	2021-02-12 00:33:56.72005	2021-02-12 03:16:59.586308	t
2760	Debanjan	Ray	{"title": "VP, Business Development & Alliance Management"}	1324	2021-02-12 00:33:56.766945	2021-02-12 03:17:15.080199	t
2761	Carol	Talkington	{"title": "Sr. Director & Head, Intellectual Property"}	1324	2021-02-12 00:33:56.813816	2021-02-12 03:17:30.594707	t
2762	James	W.	{"title": "Research Fellow"}	1324	2021-02-12 00:33:56.866103	2021-02-12 03:17:46.208976	t
2763	Amy	Peterson	{"title": "Chief Development Officer"}	1324	2021-02-12 00:33:56.918187	2021-02-12 03:18:02.078697	t
2764	Henry	Lowman	{"title": "Chief Scientific Officer"}	1324	2021-02-12 00:33:56.962228	2021-02-12 03:18:17.646023	t
2765	Mark	A.	{"title": "Founding President & Chief Executive Officer"}	1325	2021-02-12 00:54:38.926263	2021-02-12 03:18:33.161507	t
2766	David	L.	{"title": "Co-founder and Chief Scientific Officer"}	1325	2021-02-12 00:54:38.959487	2021-02-12 03:18:48.687823	t
2767	Martin	D.	{"title": "Founder & Scientific Advisory Board Chairman"}	1325	2021-02-12 00:54:38.991605	2021-02-12 03:19:04.159216	t
2768	Ryan	Martins	{"title": "CFO"}	1325	2021-02-12 00:54:39.023363	2021-02-12 03:19:19.681504	t
2769	Luan	M.	{"title": "Senior Vice President Human Resources"}	1325	2021-02-12 00:54:39.054706	2021-02-12 03:19:35.267212	t
2770	Margaret	Horn	{"title": "Chief Operating Officer"}	1325	2021-02-12 00:54:39.08569	2021-02-12 03:19:50.793148	t
2771	Xiaolin	Wang	{"title": "SVP Clinical Development"}	1325	2021-02-12 00:54:39.117639	2021-02-12 03:20:06.752453	t
2772	Steve	Kelsey	{"title": "President of Research and Development"}	1325	2021-02-12 00:54:39.158634	2021-02-12 03:20:22.343018	t
2773	Tim	Stedman	{"title": "CEO"}	1326	2021-02-12 00:55:24.24248	2021-02-12 03:20:37.849099	t
2774	Joseph	Vaillancourt	{"title": "President, Cyclyx"}	1326	2021-02-12 00:55:24.281979	2021-02-12 03:20:53.430936	t
2775	Russell	Main	{"title": "CFO, Cyclyx"}	1326	2021-02-12 00:55:24.317494	2021-02-12 03:21:08.93755	t
2776	William	B.	{"title": "SVP, Strategy and Development"}	1326	2021-02-12 00:55:24.370212	2021-02-12 03:21:24.560986	t
2777	Chris	Faulkner	{"title": "CTO"}	1326	2021-02-12 00:55:24.405828	2021-02-12 03:21:40.509622	t
2778	Mark	Barranco	{"title": "SVP, Engineering and Execution"}	1326	2021-02-12 00:55:24.434974	2021-02-12 03:21:56.029684	t
2779	Matt	Durbin	{"title": "VP, Operations"}	1326	2021-02-12 00:55:24.465743	2021-02-12 03:22:11.592414	t
2780	Kate	Ringier	{"title": "VP, Communications & Government Affairs"}	1326	2021-02-12 00:55:24.495952	2021-02-12 03:22:27.091566	t
2781	Jay	M.	{"title": "Founder & CEO"}	1327	2021-02-12 00:56:14.827819	2021-02-12 03:22:42.59497	t
2782	Richard	A.	{"title": "Chief Financial Officer"}	1327	2021-02-12 00:56:14.860862	2021-02-12 03:22:58.134193	t
2783	ANIRVAN	GHOSH	{"title": "Chief Executive Officer"}	1328	2021-02-12 00:57:06.308046	2021-02-12 03:23:13.895034	t
2810	Henry	Heinsohn	{"title": "Vice President of Development"}	1342	2021-02-12 01:00:19.096282	2021-02-12 01:00:19.096282	f
2811	Aaron	Sato	{"title": "Vice President of Research"}	1342	2021-02-12 01:00:19.128301	2021-02-12 01:00:19.128301	f
2812	Nicki	Vasquez	{"title": "SVP Alliance Management/Portfolio Strategy & Operations"}	1342	2021-02-12 01:00:19.159251	2021-02-12 01:00:19.159251	f
2813	Heidi	Hoffmann	{"title": "Senior Director, Supply Chain and CMC Team Lead"}	1342	2021-02-12 01:00:19.191464	2021-02-12 01:00:19.191464	f
2814	Craig	Berman	{"title": "VP Clinical"}	1342	2021-02-12 01:00:19.227267	2021-02-12 01:00:19.227267	f
2815	Michael	Cooke	{"title": "CSO"}	1344	2021-02-12 01:01:03.402229	2021-02-12 01:01:03.402229	f
2816	David	Scadden	{"title": "Co-Founder"}	1344	2021-02-12 01:01:03.433801	2021-02-12 01:01:03.433801	f
2817	Christina	Isacson	{"title": "VP and Head of Business Development"}	1344	2021-02-12 01:01:03.464832	2021-02-12 01:01:03.464832	f
2818	Jason	Gardner	{"title": "CEO, President & Co-Founder"}	1344	2021-02-12 01:01:03.495776	2021-02-12 01:01:03.495776	f
2819	Bastiano	Sanna	{"title": "COO"}	1344	2021-02-12 01:01:03.528637	2021-02-12 01:01:03.528637	f
2820	Dennis	Urbaniak	{"title": "Executive Vice President Digital Therapeutics"}	1345	2021-02-12 01:01:42.69573	2021-02-12 01:01:42.69573	f
2821	Nikolaj	Sørensen	{"title": "CEO"}	1345	2021-02-12 01:01:42.726148	2021-02-12 01:01:42.726148	f
2822	Carl-Johan	Blomberg	{"title": "CFO"}	1345	2021-02-12 01:01:42.763816	2021-02-12 01:01:42.763816	f
2823	Raymond	Hill	{"title": "Non-Executive Director"}	1345	2021-02-12 01:01:42.802161	2021-02-12 01:01:42.802161	f
2824	Robert	A.	{"title": "President"}	1345	2021-02-12 01:01:42.831951	2021-02-12 01:01:42.831951	f
2825	Lara	S.	{"title": "President and Founder"}	1347	2021-02-12 01:02:17.843038	2021-02-12 01:02:17.843038	f
2826	Daniel	S.	{"title": "Executive Chairman"}	1347	2021-02-12 01:02:17.87474	2021-02-12 01:02:17.87474	f
2827	Saqib	Islam	{"title": "CEO"}	1347	2021-02-12 01:02:17.905132	2021-02-12 01:02:17.905132	f
2828	Crystal	Mercado	{"title": "Director of Human Resources."}	1347	2021-02-12 01:02:17.937216	2021-02-12 01:02:17.937216	f
2829	Badreddin	Edris	{"title": "CBO"}	1347	2021-02-12 01:02:17.967352	2021-02-12 01:02:17.967352	f
2830	Francis	Perier	{"title": "CFO"}	1347	2021-02-12 01:02:17.99801	2021-02-12 01:02:17.99801	f
2831	Jens	Renstrup	{"title": "CMO"}	1347	2021-02-12 01:02:18.02887	2021-02-12 01:02:18.02887	f
2832	Dimitris	Voliotis	{"title": "Senior Vice President, Clinical Development"}	1349	2021-02-12 01:02:50.243762	2021-02-12 01:02:50.243762	f
2833	Silviu	Itescu	{"title": "Chief Executive Officer and Managing Director"}	1351	2021-02-12 01:03:26.300797	2021-02-12 01:03:26.300797	f
2834	Paul	Rennie	{"title": "COO"}	1351	2021-02-12 01:03:26.334622	2021-02-12 01:03:26.334622	f
2835	Jenni	Pilcher	{"title": "CFO"}	1351	2021-02-12 01:03:26.368182	2021-02-12 01:03:26.368182	f
2836	John	Mcmannis	{"title": "Executive Vice President, Manufacturing"}	1351	2021-02-12 01:03:26.399519	2021-02-12 01:03:26.399519	f
2837	Suzanne	Lipe	{"title": "Vice President, Operations"}	1351	2021-02-12 01:03:26.4309	2021-02-12 01:03:26.4309	f
2838	Eric	A.	{"title": "Director"}	1351	2021-02-12 01:03:26.462804	2021-02-12 01:03:26.462804	f
2839	William	Burns	{"title": "Non-Executive Director"}	1351	2021-02-12 01:03:26.493987	2021-02-12 01:03:26.493987	f
2840	Ruchir	Pandya	{"title": "Program Manager"}	1353	2021-02-12 01:04:11.503195	2021-02-12 01:04:11.503195	f
2841	Neeru	Sharma	{"title": "Head of Platform Department"}	1353	2021-02-12 01:04:11.534708	2021-02-12 01:04:11.534708	f
2842	Sachin	Dalal	{"title": "Co-Founder & CEO"}	1353	2021-02-12 01:04:11.567094	2021-02-12 01:04:11.567094	f
2843	Advit	Sahdev	{"title": "Head of Marketing"}	1353	2021-02-12 01:04:11.598366	2021-02-12 01:04:11.598366	f
2844	Ken	Bartizal	{"title": "Chief Development Officer"}	1354	2021-02-12 01:04:44.6175	2021-02-12 01:04:44.6175	f
2845	Jim	Balkovec	{"title": "Senior VP Research"}	1354	2021-02-12 01:04:44.650191	2021-02-12 01:04:44.650191	f
2846	Kevin	Forrest	{"title": "Co-Founder"}	1354	2021-02-12 01:04:44.683869	2021-02-12 01:04:44.683869	f
2847	Paul	Daruwala	{"title": "Chief Commercial Officer"}	1354	2021-02-12 01:04:44.716546	2021-02-12 01:04:44.716546	f
2848	Daniel	Geffken	{"title": "Interim CFO"}	1354	2021-02-12 01:04:44.749194	2021-02-12 01:04:44.749194	f
2849	Dirk	Thye	{"title": "CMO"}	1354	2021-02-12 01:04:44.77904	2021-02-12 01:04:44.77904	f
2850	Jeffrey	Stein	{"title": "CEO"}	1354	2021-02-12 01:04:44.809694	2021-02-12 01:04:44.809694	f
2851	Gerrit	Klaerner	{"title": "Chief Executive Officer & President"}	1356	2021-02-12 01:05:19.850371	2021-02-12 01:05:19.850371	f
2852	Wilhelm	Stahl	{"title": "Chief Technology Officer & SVP Technical Operations"}	1356	2021-02-12 01:05:19.885277	2021-02-12 01:05:19.885277	f
2853	Claire	Lockey	{"title": "Chief Development Officer & Senior Vice President"}	1356	2021-02-12 01:05:19.918922	2021-02-12 01:05:19.918922	f
2854	Geoffrey	Parker	{"title": "Chief Financial Officer & Senior Vice President"}	1356	2021-02-12 01:05:19.950463	2021-02-12 01:05:19.950463	f
2855	Michael	Mydra	{"title": "Vice President, Health Outcomes & Reimbursement"}	1357	2021-02-12 01:06:03.398435	2021-02-12 01:06:03.398435	f
2856	Daniel	Cher	{"title": "Vice President, Clinical Affairs"}	1357	2021-02-12 01:06:03.430552	2021-02-12 01:06:03.430552	f
2857	Laura	Francis	{"title": "Chief Financial Officer"}	1357	2021-02-12 01:06:03.465246	2021-02-12 01:06:03.465246	f
2858	Jason	Cauble	{"title": "Vice President, Sales"}	1357	2021-02-12 01:06:03.499047	2021-02-12 01:06:03.499047	f
2859	Bert	Johnson	{"title": "Vice President, General Counsel and Chief Compliance Officer"}	1357	2021-02-12 01:06:03.530696	2021-02-12 01:06:03.530696	f
2860	Jeffrey	Dunn	{"title": "President and CEO"}	1357	2021-02-12 01:06:03.56399	2021-02-12 01:06:03.56399	f
2861	W.	Carlton	{"title": "Vice President, Medical Affairs"}	1357	2021-02-12 01:06:03.597351	2021-02-12 01:06:03.597351	f
2862	Dan	Murray	{"title": "Chief Operating Officer, Chief Financial Officer"}	1357	2021-02-12 01:06:03.628086	2021-02-12 01:06:03.628086	f
2863	Kurt	Sorschak	{"title": "Chairman of the Board, President & CEO"}	1359	2021-02-12 01:06:39.792407	2021-02-12 01:06:39.792407	f
2864	Louis	Dufour	{"title": "Chief Financial Officer"}	1359	2021-02-12 01:06:39.826041	2021-02-12 01:06:39.826041	f
2865	Peter	Cheng	{"title": "General Manager"}	1359	2021-02-12 01:06:39.862589	2021-02-12 01:06:39.862589	f
2866	Prabhu	Rao	{"title": "Chief Operating Officer"}	1359	2021-02-12 01:06:39.89683	2021-02-12 01:06:39.89683	f
2867	Mondher	Mahjoubi	{"title": "Chief Executive Officer"}	1360	2021-02-12 01:07:17.215559	2021-02-12 01:07:17.215559	f
2868	Joyson	Karakunnel	{"title": "EVP, Chief Medical Officer"}	1360	2021-02-12 01:07:17.247477	2021-02-12 01:07:17.247477	f
2869	Alessandro	Moretta	{"title": "Founder"}	1360	2021-02-12 01:07:17.279114	2021-02-12 01:07:17.279114	f
2870	Marcel	Rozencweig	{"title": "President"}	1360	2021-02-12 01:07:17.312754	2021-02-12 01:07:17.312754	f
2871	Laure-Hélène	Mercier	{"title": "Chief Financial Officer"}	1360	2021-02-12 01:07:17.345332	2021-02-12 01:07:17.345332	f
2872	Eric	Vivier	{"title": "Senior Vice President, Chief Scientific Officer"}	1360	2021-02-12 01:07:17.375246	2021-02-12 01:07:17.375246	f
2873	Marc	Bonneville	{"title": "Founder"}	1360	2021-02-12 01:07:17.405142	2021-02-12 01:07:17.405142	f
2874	Jennifer	Butler	{"title": "Executive Vice President, US - General Manager"}	1360	2021-02-12 01:07:17.43739	2021-02-12 01:07:17.43739	f
2875	Holly	D.	{"title": "Vice President, Enterprise Talent and Organization"}	1362	2021-02-12 01:08:03.073611	2021-02-12 01:08:03.073611	f
2876	Kelly	Blackburn	{"title": "Vice President, Clinical Affairs"}	1362	2021-02-12 01:08:03.108101	2021-02-12 01:08:03.108101	f
2877	Paul	Schimmel	{"title": "Founder"}	1362	2021-02-12 01:08:03.140059	2021-02-12 01:08:03.140059	f
2878	Leslie	Nangle	{"title": "Associate Director, Discovery Biology"}	1362	2021-02-12 01:08:03.189758	2021-02-12 01:08:03.189758	f
2879	William	Rastetter	{"title": "CEO"}	1362	2021-02-12 01:08:03.221423	2021-02-12 01:08:03.221423	f
2880	Ying	J.	{"title": "Director, Protein Sciences"}	1362	2021-02-12 01:08:03.255699	2021-02-12 01:08:03.255699	f
2881	Catharine	Johnson	{"title": "Senior Vice President, Business Development"}	1362	2021-02-12 01:08:03.286739	2021-02-12 01:08:03.286739	f
2882	Andrew	B.	{"title": "Vice President, Product Protection"}	1362	2021-02-12 01:08:03.317787	2021-02-12 01:08:03.317787	f
2883	David	Szymkowski	{"title": "Vice President, Cell Biology"}	1363	2021-02-12 01:08:38.27525	2021-02-12 01:08:38.27525	f
2884	John	Kuch	{"title": "Senior Vice President & Chief Scientific Officer"}	1363	2021-02-12 01:08:38.307751	2021-02-12 01:08:38.307751	f
2885	John	Desjarlais	{"title": "Chief Scientific Officer"}	1363	2021-02-12 01:08:38.341883	2021-02-12 01:08:38.341883	f
2886	Bassil	Dahiyat	{"title": "Founder, President & CEO"}	1363	2021-02-12 01:08:38.374918	2021-02-12 01:08:38.374918	f
2887	Paul	Foster	{"title": "CMO"}	1363	2021-02-12 01:08:38.408696	2021-02-12 01:08:38.408696	f
2888	Edgardo	Baracchini	{"title": "Chief Business Officer"}	1363	2021-02-12 01:08:38.440213	2021-02-12 01:08:38.440213	f
2889	John	R.	{"title": "Vice President, Research"}	1363	2021-02-12 01:08:38.476911	2021-02-12 01:08:38.476911	f
2890	Yoav	Kimchy	{"title": "CTO & President"}	1364	2021-02-12 01:10:26.103119	2021-02-12 01:10:26.103119	f
2891	Anders	Hinsby	{"title": "Chief Executive Officer"}	1366	2021-02-12 01:10:59.658915	2021-02-12 01:10:59.658915	f
2892	Thomas	Kirkegaard	{"title": "Chief Scientific Officer"}	1366	2021-02-12 01:10:59.692262	2021-02-12 01:10:59.692262	f
2893	Paul	Merrigan	{"title": "Chief Commercial Officer"}	1366	2021-02-12 01:10:59.724035	2021-02-12 01:10:59.724035	f
2894	Claus	Sundgreen	{"title": "Medical Director"}	1366	2021-02-12 01:10:59.756375	2021-02-12 01:10:59.756375	f
2895	Kim	Stratton	{"title": "Chief Executive Officer"}	1366	2021-02-12 01:10:59.787566	2021-02-12 01:10:59.787566	f
2896	Thomas	Blaettler	{"title": "Chief Medical Officer"}	1366	2021-02-12 01:10:59.819881	2021-02-12 01:10:59.819881	f
2897	Anders	Fink	{"title": "Chief Financial Officer"}	1366	2021-02-12 01:10:59.852605	2021-02-12 01:10:59.852605	f
2898	Maeve	McKenna	{"title": "SVP Sales and Marketing"}	1367	2021-02-12 01:11:45.578989	2021-02-12 01:11:45.578989	f
2899	Alicia	V.	{"title": "Vice President, Corporate Communications"}	1367	2021-02-12 01:11:45.611407	2021-02-12 01:11:45.611407	f
2900	David	Allmond	{"title": "CCO"}	1369	2021-02-12 01:12:29.091077	2021-02-12 01:12:29.091077	f
2901	Mark	Sumeray	{"title": "CMO"}	1369	2021-02-12 01:12:29.122574	2021-02-12 01:12:29.122574	f
2902	Harry	Stratford	{"title": "Non-Executive Chairman"}	1369	2021-02-12 01:12:29.15792	2021-02-12 01:12:29.15792	f
2903	Rory	Nealon	{"title": "CFO & CCO"}	1369	2021-02-12 01:12:29.189789	2021-02-12 01:12:29.189789	f
2904	Joseph	Wiley	{"title": "Co-Founder and Chief Executive Officer"}	1369	2021-02-12 01:12:29.221029	2021-02-12 01:12:29.221029	f
2905	Kenneth	M.	{"title": "President & Chief Executive Officer, Board of Directors"}	1371	2021-02-12 01:13:17.960234	2021-02-12 01:13:17.960234	f
2906	Stacey	Stevens	{"title": "Senior Vice President of Marketing and Strategy"}	1371	2021-02-12 01:13:17.993706	2021-02-12 01:13:17.993706	f
2907	R.	Scott	{"title": "Chief Financial Officer"}	1371	2021-02-12 01:13:18.025152	2021-02-12 01:13:18.025152	f
2908	Kevin	Burns	{"title": "Executive Vice President, Finance & Chief Financial Officer"}	1371	2021-02-12 01:13:18.060845	2021-02-12 01:13:18.060845	f
2909	Michael	Klein	{"title": "CEO"}	1371	2021-02-12 01:13:18.093518	2021-02-12 01:13:18.093518	f
2910	Jonathan	Go	{"title": "Chief Technology Officer"}	1371	2021-02-12 01:13:18.127795	2021-02-12 01:13:18.127795	f
2911	David	Caron	{"title": "VP CMC and Pharmaceutical Development"}	1373	2021-02-12 01:13:49.384542	2021-02-12 01:13:49.384542	f
2912	Dana	Gelbaum	{"title": "VP of BD and Supply Chain"}	1373	2021-02-12 01:13:49.444203	2021-02-12 01:13:49.444203	f
2913	Asi	Haviv	{"title": "VP of Clinical Development"}	1373	2021-02-12 01:13:49.480509	2021-02-12 01:13:49.480509	f
2914	Shoshie	Katz	{"title": "VP of Quality Assurance & Regulatory Affairs"}	1373	2021-02-12 01:13:49.515578	2021-02-12 01:13:49.515578	f
2915	Chaime	Orlev	{"title": "VP of Finance and Administration"}	1373	2021-02-12 01:13:49.547461	2021-02-12 01:13:49.547461	f
2916	Gary	Patou	{"title": "Head of Clinical"}	1373	2021-02-12 01:13:49.580838	2021-02-12 01:13:49.580838	f
2917	Fredric	Price	{"title": "Executive Chairman"}	1373	2021-02-12 01:13:49.612554	2021-02-12 01:13:49.612554	f
2918	Mark	Fitzpatrick	{"title": "Chief Financial Officer"}	1373	2021-02-12 01:13:49.646131	2021-02-12 01:13:49.646131	f
2919	Mardi	C.	{"title": "CFO"}	1374	2021-02-12 01:14:24.787168	2021-02-12 01:14:24.787168	f
2920	Scott	Garland	{"title": "President & CEO"}	1374	2021-02-12 01:14:24.82163	2021-02-12 01:14:24.82163	f
2921	Rajiv	Patni	{"title": "Chief Medical Officer"}	1374	2021-02-12 01:14:24.854331	2021-02-12 01:14:24.854331	f
2922	Sheldon	Koenig	{"title": "Executive Vice President & Chief Commercial Officer"}	1374	2021-02-12 01:14:24.889107	2021-02-12 01:14:24.889107	f
2923	John	Curnutte	{"title": "Executive Vice President of Research & Development"}	1374	2021-02-12 01:14:24.922229	2021-02-12 01:14:24.922229	f
2924	Glenn	Brame	{"title": "Executive Vice President & Chief Technical Officer"}	1374	2021-02-12 01:14:24.953846	2021-02-12 01:14:24.953846	f
2925	Scot	R.	{"title": "President"}	1378	2021-02-12 01:15:14.316851	2021-02-12 01:15:14.316851	f
2926	Filip	Feller	{"title": "Chief Financial Officer"}	1378	2021-02-12 01:15:14.348874	2021-02-12 01:15:14.348874	f
2927	Edward	Barry	{"title": "Chief Executive Officer"}	1378	2021-02-12 01:15:14.382347	2021-02-12 01:15:14.382347	f
2928	Eric	Suss	{"title": "Human Resources Officer"}	1378	2021-02-12 01:15:14.415978	2021-02-12 01:15:14.415978	f
2929	Kathy	M.	{"title": "Chief Compliance Officer"}	1378	2021-02-12 01:15:14.448361	2021-02-12 01:15:14.448361	f
2930	Nick	Bryan	{"title": "SVP, Sales & Marketing"}	1378	2021-02-12 01:15:14.481061	2021-02-12 01:15:14.481061	f
2931	Debbie	Bestwick	{"title": "CEO & Co-Founder"}	1380	2021-02-12 01:15:58.602369	2021-02-12 01:15:58.602369	f
2932	Rachel-Brooke	Stewart	{"title": "Owner"}	1380	2021-02-12 01:15:58.640147	2021-02-12 01:15:58.640147	f
2933	Kazuki	Hida	{"title": "Directors CFO"}	1381	2021-02-12 01:16:39.322505	2021-02-12 01:16:39.322505	f
2934	Nakaoki	Katsuaki	{"title": "Executive Chairman"}	1381	2021-02-12 01:16:39.356058	2021-02-12 01:16:39.356058	f
2935	Katsu	Kouhou	{"title": "CTO"}	1381	2021-02-12 01:16:39.388252	2021-02-12 01:16:39.388252	f
2936	Toguchi	Taku	{"title": "CEO"}	1381	2021-02-12 01:16:39.420421	2021-02-12 01:16:39.420421	f
2937	Russell	Cox	{"title": "Chief Executive Officer"}	1382	2021-02-12 01:17:18.053363	2021-02-12 01:17:18.053363	f
2938	Shapour	Asslani	{"title": "VP, Quality Control & Quality Assurance"}	1382	2021-02-12 01:17:18.085681	2021-02-12 01:17:18.085681	f
2939	Aron	Stern	{"title": "CFO"}	1382	2021-02-12 01:17:18.117402	2021-02-12 01:17:18.117402	f
2940	Robert	A.	{"title": "Chief Operating Officer, Executive Vice President"}	1382	2021-02-12 01:17:18.147847	2021-02-12 01:17:18.147847	f
2941	Ross	A.	{"title": "Director"}	1382	2021-02-12 01:17:18.180817	2021-02-12 01:17:18.180817	f
2942	Dar	He	{"title": "Vice President, International Operations"}	1382	2021-02-12 01:17:18.213985	2021-02-12 01:17:18.213985	f
2943	Duane	Nash	{"title": "EVP"}	1382	2021-02-12 01:17:18.246128	2021-02-12 01:17:18.246128	f
2944	John	Brotherton	{"title": "VP, Research & Developmen"}	1382	2021-02-12 01:17:18.278063	2021-02-12 01:17:18.278063	f
2945	Dan	Myers	{"title": "Founder & CEO"}	1384	2021-02-12 01:18:06.949255	2021-02-12 01:18:06.949255	f
2946	Dave	Holland	{"title": "Co-Founder, SVP Sales & Marketing"}	1384	2021-02-12 01:18:06.984165	2021-02-12 01:18:06.984165	f
2947	Rick	Eiswirth	{"title": "President & Chief Financial Officer"}	1384	2021-02-12 01:18:07.017753	2021-02-12 01:18:07.017753	f
2948	Ken	Greene	{"title": "Chief Scientific Officer"}	1384	2021-02-12 01:18:07.05071	2021-02-12 01:18:07.05071	f
2949	Samer	Kaba	{"title": "Chief Medical Officer"}	1384	2021-02-12 01:18:07.087404	2021-02-12 01:18:07.087404	f
2950	Phil	Jones	{"title": "CFO"}	1384	2021-02-12 01:18:07.119463	2021-02-12 01:18:07.119463	f
2951	Bryce	Youngren	{"title": "Director"}	1384	2021-02-12 01:18:07.15216	2021-02-12 01:18:07.15216	f
2952	Susan	Caballa	{"title": "Sr. Vice President, Regulatory & Medical Affairs"}	1384	2021-02-12 01:18:07.185846	2021-02-12 01:18:07.185846	f
2953	Kevin	Conley	{"title": "CEO & President"}	1385	2021-02-12 01:18:45.597876	2021-02-12 01:18:45.597876	f
2954	Angelo	Ugge	{"title": "Vice President of Business Development"}	1385	2021-02-12 01:18:45.635984	2021-02-12 01:18:45.635984	f
2955	Sanjeev	Aggarwal	{"title": "Vice President"}	1385	2021-02-12 01:18:45.666081	2021-02-12 01:18:45.666081	f
2956	Pankaj	Bishnoi	{"title": "Director of Applications"}	1385	2021-02-12 01:18:45.697041	2021-02-12 01:18:45.697041	f
2957	Tom	Andre	{"title": "Director Design Engineering"}	1385	2021-02-12 01:18:45.72855	2021-02-12 01:18:45.72855	f
2958	Tom	Andre	{"title": "VP of Engineering"}	1385	2021-02-12 01:18:45.760139	2021-02-12 01:18:45.760139	f
2959	Stefan	Larsson	{"title": "Founder and CEO"}	1386	2021-02-12 01:19:34.874513	2021-02-12 01:19:34.874513	f
2960	Kyriacos	Mitrophanous	{"title": "Chief Scientific Officer"}	1387	2021-02-12 01:20:15.02303	2021-02-12 01:20:15.02303	f
2961	Stuart	Paynter	{"title": "Chief Financial Officer"}	1387	2021-02-12 01:20:15.057568	2021-02-12 01:20:15.057568	f
2962	John	Dawson	{"title": "Chief Executive Officer"}	1387	2021-02-12 01:20:15.089352	2021-02-12 01:20:15.089352	f
2963	Peter	Jones	{"title": "Head of Manufacturing Development"}	1387	2021-02-12 01:20:15.138876	2021-02-12 01:20:15.138876	f
2964	Jason	Slingsby	{"title": "Chief Business Officer"}	1387	2021-02-12 01:20:15.171198	2021-02-12 01:20:15.171198	f
2965	James	Miskin	{"title": "Chief Technical Officer"}	1387	2021-02-12 01:20:15.203134	2021-02-12 01:20:15.203134	f
2966	Lorenzo	Tallarigo	{"title": "Chairman"}	1387	2021-02-12 01:20:15.233633	2021-02-12 01:20:15.233633	f
2967	Helen	Stephenson-Ellis	{"title": "Chief People Officer"}	1387	2021-02-12 01:20:15.264711	2021-02-12 01:20:15.264711	f
2968	Manuel	Litchman	{"title": "President & CEO"}	1389	2021-02-12 01:20:57.871729	2021-02-12 01:20:57.871729	f
2969	David	Horin	{"title": "Interim Chief Financial Officer"}	1389	2021-02-12 01:20:57.903395	2021-02-12 01:20:57.903395	f
2970	Terry	Lee	{"title": "Vice Chairman and Chief Operating Officer"}	1391	2021-02-12 01:21:36.930948	2021-02-12 01:21:36.930948	f
2971	David	J.	{"title": "Chairman and Chief Executive Officer"}	1391	2021-02-12 01:21:36.963207	2021-02-12 01:21:36.963207	f
2972	John	H.	{"title": "Director"}	1391	2021-02-12 01:21:36.995739	2021-02-12 01:21:36.995739	f
2973	David	A.	{"title": "Director/ Executive Vice President"}	1391	2021-02-12 01:21:37.027691	2021-02-12 01:21:37.027691	f
2974	Anthony	W.	{"title": "Director"}	1391	2021-02-12 01:21:37.062535	2021-02-12 01:21:37.062535	f
2975	Michela	A.	{"title": "Director"}	1391	2021-02-12 01:21:37.095	2021-02-12 01:21:37.095	f
2976	Robert	Marcotte	{"title": "President"}	1391	2021-02-12 01:21:37.12745	2021-02-12 01:21:37.12745	f
2977	Robert	Pierce	{"title": "Managing Director"}	1391	2021-02-12 01:21:37.158144	2021-02-12 01:21:37.158144	f
2978	Brad	Pyatt	{"title": "Co-founder,CEO and Chairman"}	1393	2021-02-12 01:22:17.263504	2021-02-12 01:22:17.263504	f
2979	Cory	Gregory	{"title": "Co-founder & EVP of Brand and Social Media"}	1393	2021-02-12 01:22:17.297277	2021-02-12 01:22:17.297277	f
2980	Andrew	Makrides	{"title": "CEO"}	1395	2021-02-12 01:23:08.200547	2021-02-12 01:23:08.200547	f
2981	J.	Robert	{"title": "President"}	1395	2021-02-12 01:23:08.233339	2021-02-12 01:23:08.233339	f
2982	Gary	D.	{"title": "Chief Financial Officer"}	1395	2021-02-12 01:23:08.263943	2021-02-12 01:23:08.263943	f
2983	Racho	Jordanov	{"title": "Co-Founder, President and CEO"}	1396	2021-02-12 01:23:46.636306	2021-02-12 01:23:46.636306	f
2984	Rose	Lin	{"title": "Co-Founder, COO and General Manager"}	1396	2021-02-12 01:23:46.670919	2021-02-12 01:23:46.670919	f
2985	Max	Chan	{"title": "CFO"}	1396	2021-02-12 01:23:46.703505	2021-02-12 01:23:46.703505	f
2986	Simon	Kwong	{"title": "Vice President of PD and CMO"}	1396	2021-02-12 01:23:46.734882	2021-02-12 01:23:46.734882	f
2987	Rong	Chen	{"title": "Chief Medical Officer"}	1396	2021-02-12 01:23:46.766802	2021-02-12 01:23:46.766802	f
2988	Peter	Pang	{"title": "General Manager"}	1396	2021-02-12 01:23:46.800082	2021-02-12 01:23:46.800082	f
2989	Byung-Jun	Song	{"title": "Founder, CEO"}	1397	2021-02-12 01:24:22.824608	2021-02-12 01:24:22.824608	f
2990	David	Mohr	{"title": "General Manager"}	1397	2021-02-12 01:24:22.855549	2021-02-12 01:24:22.855549	f
2991	Kyu	Lee	{"title": "President"}	1397	2021-02-12 01:24:22.887047	2021-02-12 01:24:22.887047	f
2992	Alicia	Yeng	{"title": "General Manager"}	1397	2021-02-12 01:24:22.919902	2021-02-12 01:24:22.919902	f
2993	Sebastien	Clerc	{"title": "Chief Executive Officer"}	1398	2021-02-12 01:25:11.769496	2021-02-12 01:25:11.769496	f
2994	Anne	Borfiga	{"title": "Head of change Management"}	1398	2021-02-12 01:25:11.803411	2021-02-12 01:25:11.803411	f
2995	Patrick	Delbos	{"title": "Director"}	1398	2021-02-12 01:25:11.837328	2021-02-12 01:25:11.837328	f
2996	Marie	Odile	{"title": "CFO"}	1398	2021-02-12 01:25:11.868719	2021-02-12 01:25:11.868719	f
2997	Olivier	Cormarie	{"title": "Financial Engineer Director"}	1398	2021-02-12 01:25:11.901214	2021-02-12 01:25:11.901214	f
2998	Michel	Cremieux	{"title": "Head of Business Development"}	1398	2021-02-12 01:25:11.934966	2021-02-12 01:25:11.934966	f
2999	Ludovic	Fort	{"title": "Operational Director"}	1398	2021-02-12 01:25:11.968566	2021-02-12 01:25:11.968566	f
3000	Bruce	Schanzer	{"title": "CEO, president"}	1400	2021-02-12 01:25:49.964656	2021-02-12 01:25:49.964656	f
3001	Tammy	Zucco	{"title": "Chief Marketing Officer"}	1404	2021-02-12 01:26:34.709337	2021-02-12 01:26:34.709337	f
3002	Harold	Hankel	{"title": "Vice President, Manufacturing"}	1404	2021-02-12 01:26:34.741435	2021-02-12 01:26:34.741435	f
3003	Christopher	Morris	{"title": "Acting CEO"}	1404	2021-02-12 01:26:34.772244	2021-02-12 01:26:34.772244	f
3004	Gerry	West	{"title": "Vice President, Product Development"}	1404	2021-02-12 01:26:34.804542	2021-02-12 01:26:34.804542	f
3005	Randy	Aeberhardt	{"title": "VP Customer Operations"}	1404	2021-02-12 01:26:34.839413	2021-02-12 01:26:34.839413	f
3006	Mike	Julian	{"title": "Vice-President, Sales"}	1404	2021-02-12 01:26:34.875285	2021-02-12 01:26:34.875285	f
3007	Geoffrey	R.	{"title": "Vice President of Marketing"}	1405	2021-02-12 01:27:21.211038	2021-02-12 01:27:21.211038	f
3008	Scott	A.	{"title": "President/CEO"}	1405	2021-02-12 01:27:21.24727	2021-02-12 01:27:21.24727	f
3009	Dale	Messick	{"title": "Chief Financial Officer"}	1405	2021-02-12 01:27:21.282912	2021-02-12 01:27:21.282912	f
3010	James	T.	{"title": "Vice President of Technology Development"}	1405	2021-02-12 01:27:21.316474	2021-02-12 01:27:21.316474	f
3011	Richard	W.	{"title": "Chairman of the Board"}	1405	2021-02-12 01:27:21.350935	2021-02-12 01:27:21.350935	f
3012	Talfourd	H.	{"title": "Vice President and General Counsel"}	1405	2021-02-12 01:27:21.385237	2021-02-12 01:27:21.385237	f
3013	Kiyoyuki	Suzuki	{"title": "Founder, President & CEO"}	1407	2021-02-12 01:27:56.59631	2021-02-12 01:27:56.59631	f
3014	Andrew	R.	{"title": "Chief Financial Officer"}	1408	2021-02-12 01:28:35.275248	2021-02-12 01:28:35.275248	f
3015	Mark	Baum	{"title": "Founder & Chief Executive Officer"}	1408	2021-02-12 01:28:35.308215	2021-02-12 01:28:35.308215	f
3016	Tali	Dinar	{"title": "Chief Financial Officer"}	1409	2021-02-12 01:30:17.99388	2021-02-12 01:30:17.99388	f
3017	David	Lucatz	{"title": "Chief Executive Officer"}	1409	2021-02-12 01:30:18.026015	2021-02-12 01:30:18.026015	f
3018	Heartland	Open	{"title": "Affiliated Company"}	1411	2021-02-12 01:30:57.204263	2021-02-12 01:30:57.204263	f
3019	John	Nicols	{"title": "President & CEO"}	1417	2021-02-12 01:31:47.58853	2021-02-12 01:31:47.58853	f
3020	Aaron	Hammons	{"title": "Director of Business Development, Americas"}	1417	2021-02-12 01:31:47.624719	2021-02-12 01:31:47.624719	f
3021	Michael	Aldridge	{"title": "Senior Vice President Corporate & Strategic Development"}	1417	2021-02-12 01:31:47.664684	2021-02-12 01:31:47.664684	f
3022	David	O'Toole	{"title": "Senior Vice President and Chief Financial Officer"}	1417	2021-02-12 01:31:47.703422	2021-02-12 01:31:47.703422	f
3023	James	Lalonde	{"title": "Senior Vice President, Research & Development"}	1417	2021-02-12 01:31:47.752031	2021-02-12 01:31:47.752031	f
3024	Ivan	Labat	{"title": "Senior Scientist"}	1417	2021-02-12 01:31:47.85683	2021-02-12 01:31:47.85683	f
3025	Douglas	Sheehy	{"title": "Executive Vice President, Chief Administrative Officer, General Counsel, and Secretary"}	1417	2021-02-12 01:31:47.92462	2021-02-12 01:31:47.92462	f
3026	Gordon	Sangster	{"title": "CFO"}	1417	2021-02-12 01:31:47.981582	2021-02-12 01:31:47.981582	f
3027	Sue	Steel	{"title": "HR Director"}	1445	2021-02-12 01:32:25.038237	2021-02-12 01:32:25.038237	f
3028	Rob	Newman	{"title": "Managing Director and CEO"}	1445	2021-02-12 01:32:25.069577	2021-02-12 01:32:25.069577	f
3029	Peter	James	{"title": "Chairman"}	1445	2021-02-12 01:32:25.101987	2021-02-12 01:32:25.101987	f
3030	Shane	Preston	{"title": "Executive Vice President Sales"}	1445	2021-02-12 01:32:25.13655	2021-02-12 01:32:25.13655	f
3031	Andy	Watt	{"title": "Chief Financial Officer"}	1445	2021-02-12 01:32:25.168087	2021-02-12 01:32:25.168087	f
3032	Suneeta	Mall	{"title": "Sr. Data Scientist"}	1445	2021-02-12 01:32:25.20196	2021-02-12 01:32:25.20196	f
3033	Charles	Sherwood	{"title": "President & CEO"}	1473	2021-02-12 01:33:08.748166	2021-02-12 01:33:08.748166	f
3034	Steven	Cyr	{"title": "Vice President of Human Resources"}	1473	2021-02-12 01:33:08.781466	2021-02-12 01:33:08.781466	f
3035	Dana	Alexander	{"title": "Chief Operations Officer"}	1473	2021-02-12 01:33:08.81451	2021-02-12 01:33:08.81451	f
3036	Joe	Darling	{"title": "Chief Executive Officer & President"}	1473	2021-02-12 01:33:08.846806	2021-02-12 01:33:08.846806	f
3037	Cheryl	Blanchard	{"title": "President & CEO"}	1473	2021-02-12 01:33:08.881532	2021-02-12 01:33:08.881532	f
3038	Jean	Bjerke	{"title": "VP - Marketing"}	1473	2021-02-12 01:33:08.91722	2021-02-12 01:33:08.91722	f
3039	Andrew	J.	{"title": "CTO"}	1473	2021-02-12 01:33:08.948668	2021-02-12 01:33:08.948668	f
3040	Edward	Ahn	{"title": "Chief Technology & Strategy Officer"}	1473	2021-02-12 01:33:08.980246	2021-02-12 01:33:08.980246	f
3041	Richard	Fuller	{"title": "Founder & CEO"}	1529	2021-02-12 01:34:42.712123	2021-02-12 01:34:42.712123	f
2446	Sara	Bonstein	{"title": "Chief Financial Officer / Chief Operating Officer"}	1329	2021-02-11 21:27:09.782066	2021-02-12 01:44:24.776471	t
2464	Wayne	Volkmuth	{"title": "Co-founder , Vice President, Informatics and Information Technology"}	1341	2021-02-11 21:29:40.738423	2021-02-12 01:49:08.014614	t
2506	Oleg	Firer	{"title": "Executive Chairman"}	1358	2021-02-11 21:34:22.391968	2021-02-12 02:00:04.131749	t
2524	Brett	Robertson	{"title": "Vice President Corporate Development and General Counsel"}	1368	2021-02-11 21:36:27.782022	2021-02-12 02:04:45.951918	t
2565	Robert	Stagg	{"title": "Vice President, Clinical Research"}	1399	2021-02-11 21:42:06.945526	2021-02-12 02:26:24.703266	t
2574	Steven	A.	{"title": "President, Chief Financial Officer , Treasurer and Secretary"}	1403	2021-02-11 21:43:25.04693	2021-02-12 02:28:46.233138	t
2625	Dr.	Joel	{"title": "Co-Founder"}	1430	2021-02-11 21:54:43.222694	2021-02-12 02:42:01.889972	t
2627	Daniel	R.	{"title": "Chairman & CEO"}	1431	2021-02-11 21:55:19.62999	2021-02-12 02:42:32.90985	t
2655	Barry	Shafran	{"title": "President & CEO"}	1450	2021-02-11 22:06:54.355774	2021-02-12 02:49:49.935555	t
2683	David	Brandenburg	{"title": "Chairman of the Board"}	1469	2021-02-11 22:17:28.197995	2021-02-12 02:57:10.716601	t
2690	Steph	Vickers	{"title": "Head of SEO"}	1470	2021-02-11 22:18:12.917512	2021-02-12 02:59:00.271847	t
2692	Susan	M.	{"title": "Senior Vice President, Finance, Chief Financial Officer and Secretary"}	1471	2021-02-11 22:18:43.44195	2021-02-12 02:59:31.369575	t
2747	Sim	Choo	{"title": "Former Managing Director & CEO"}	1594	2021-02-11 23:30:48.113033	2021-02-12 03:13:50.143226	t
2750	Pramod	Khandelwal	{"title": "Managing Director"}	1669	2021-02-12 00:17:58.501353	2021-02-12 03:14:37.293649	t
2754	Giulia	C.	{"title": "Chief Scientific Officer, SVP Research, Product and Clinical Development"}	1320	2021-02-12 00:33:17.629014	2021-02-12 03:15:40.367113	t
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: leonid
--

COPY public.schema_migrations (version) FROM stdin;
20210205154045
20210205183834
20210205222437
20210207171619
20210208004002
20210208154249
20210211014255
20210211212129
\.


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leonid
--

SELECT pg_catalog.setval('public.companies_id_seq', 1718, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: leonid
--

SELECT pg_catalog.setval('public.contacts_id_seq', 3041, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: leonid
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: companies companies_pkey; Type: CONSTRAINT; Schema: public; Owner: leonid
--

ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: leonid
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: leonid
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_contacts_on_company_id; Type: INDEX; Schema: public; Owner: leonid
--

CREATE INDEX index_contacts_on_company_id ON public.contacts USING btree (company_id);


--
-- PostgreSQL database dump complete
--

