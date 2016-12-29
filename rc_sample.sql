--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: baby_managements; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE baby_managements (
    id integer NOT NULL,
    sku character varying,
    tag character varying,
    product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    baby_no integer
);


ALTER TABLE public.baby_managements OWNER TO postgres;

--
-- Name: baby_managements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE baby_managements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.baby_managements_id_seq OWNER TO postgres;

--
-- Name: baby_managements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE baby_managements_id_seq OWNED BY baby_managements.id;


--
-- Name: base_units; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE base_units (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.base_units OWNER TO postgres;

--
-- Name: base_units_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE base_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_units_id_seq OWNER TO postgres;

--
-- Name: base_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE base_units_id_seq OWNED BY base_units.id;


--
-- Name: business_units; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE business_units (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.business_units OWNER TO postgres;

--
-- Name: business_units_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE business_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.business_units_id_seq OWNER TO postgres;

--
-- Name: business_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE business_units_id_seq OWNED BY business_units.id;


--
-- Name: colors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE colors (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    english_name character varying
);


ALTER TABLE public.colors OWNER TO postgres;

--
-- Name: colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colors_id_seq OWNER TO postgres;

--
-- Name: colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE colors_id_seq OWNED BY colors.id;


--
-- Name: currencies; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE currencies (
    id integer NOT NULL,
    "position" integer,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.currencies OWNER TO postgres;

--
-- Name: currencies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE currencies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.currencies_id_seq OWNER TO postgres;

--
-- Name: currencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE currencies_id_seq OWNED BY currencies.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE images (
    id integer NOT NULL,
    md5 character varying,
    file_size integer,
    filename character varying,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE images_id_seq OWNED BY images.id;


--
-- Name: materials; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE materials (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.materials OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE materials_id_seq OWNED BY materials.id;


--
-- Name: price_managements; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE price_managements (
    id integer NOT NULL,
    level character varying,
    platform character varying,
    product_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    nomember_price numeric,
    member_price numeric,
    warehouse_id integer,
    price_unit_id integer,
    currency_id integer
);


ALTER TABLE public.price_managements OWNER TO postgres;

--
-- Name: price_managements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE price_managements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.price_managements_id_seq OWNER TO postgres;

--
-- Name: price_managements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE price_managements_id_seq OWNED BY price_managements.id;


--
-- Name: price_units; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE price_units (
    id integer NOT NULL,
    "position" integer,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.price_units OWNER TO postgres;

--
-- Name: price_units_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE price_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.price_units_id_seq OWNER TO postgres;

--
-- Name: price_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE price_units_id_seq OWNED BY price_units.id;


--
-- Name: product_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_categories (
    id integer NOT NULL,
    name character varying,
    parent_id integer,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_categories OWNER TO postgres;

--
-- Name: product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_categories_id_seq OWNER TO postgres;

--
-- Name: product_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_categories_id_seq OWNED BY product_categories.id;


--
-- Name: product_category_base_units; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_category_base_units (
    id integer NOT NULL,
    product_category_id integer,
    "position" integer,
    base_unit_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_category_base_units OWNER TO postgres;

--
-- Name: product_category_base_units_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_category_base_units_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_base_units_id_seq OWNER TO postgres;

--
-- Name: product_category_base_units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_category_base_units_id_seq OWNED BY product_category_base_units.id;


--
-- Name: product_category_colors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_category_colors (
    id integer NOT NULL,
    product_category_id integer,
    color_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_category_colors OWNER TO postgres;

--
-- Name: product_category_colors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_category_colors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_colors_id_seq OWNER TO postgres;

--
-- Name: product_category_colors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_category_colors_id_seq OWNED BY product_category_colors.id;


--
-- Name: product_category_materials; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_category_materials (
    id integer NOT NULL,
    material_id integer,
    product_category_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "position" integer
);


ALTER TABLE public.product_category_materials OWNER TO postgres;

--
-- Name: product_category_materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_category_materials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_materials_id_seq OWNER TO postgres;

--
-- Name: product_category_materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_category_materials_id_seq OWNED BY product_category_materials.id;


--
-- Name: product_category_shapes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_category_shapes (
    id integer NOT NULL,
    product_category_id integer,
    "position" integer,
    shape_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_category_shapes OWNER TO postgres;

--
-- Name: product_category_shapes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_category_shapes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_shapes_id_seq OWNER TO postgres;

--
-- Name: product_category_shapes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_category_shapes_id_seq OWNED BY product_category_shapes.id;


--
-- Name: product_category_surface_crafts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_category_surface_crafts (
    id integer NOT NULL,
    product_category_id integer,
    "position" integer,
    surface_craft_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_category_surface_crafts OWNER TO postgres;

--
-- Name: product_category_surface_crafts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_category_surface_crafts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_surface_crafts_id_seq OWNER TO postgres;

--
-- Name: product_category_surface_crafts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_category_surface_crafts_id_seq OWNED BY product_category_surface_crafts.id;


--
-- Name: product_fields; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_fields (
    id integer NOT NULL,
    tabtype character varying,
    field character varying,
    title character varying,
    datetype character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_fields OWNER TO postgres;

--
-- Name: product_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_fields_id_seq OWNER TO postgres;

--
-- Name: product_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_fields_id_seq OWNED BY product_fields.id;


--
-- Name: product_image_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_image_categories (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_image_categories OWNER TO postgres;

--
-- Name: product_image_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_image_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_image_categories_id_seq OWNER TO postgres;

--
-- Name: product_image_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_image_categories_id_seq OWNED BY product_image_categories.id;


--
-- Name: product_images; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_images (
    id integer NOT NULL,
    "position" integer,
    image_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_image_category_id integer,
    sku_id integer,
    product_id integer
);


ALTER TABLE public.product_images OWNER TO postgres;

--
-- Name: product_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_images_id_seq OWNER TO postgres;

--
-- Name: product_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_images_id_seq OWNED BY product_images.id;


--
-- Name: product_managements; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE product_managements (
    id integer NOT NULL,
    sku character varying,
    tag character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_managements OWNER TO postgres;

--
-- Name: product_managements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE product_managements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_managements_id_seq OWNER TO postgres;

--
-- Name: product_managements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE product_managements_id_seq OWNED BY product_managements.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE products (
    id integer NOT NULL,
    product_category_id integer,
    product_no character varying,
    name character varying,
    description text,
    spec character varying,
    brand character varying,
    water_absrp_rate_id integer,
    thickness numeric,
    shape_id integer,
    color_id integer,
    cases_per_pallet integer,
    unit_weight numeric,
    unit_area numeric,
    package_weight numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    surface_craft_id integer,
    base_unit_id integer,
    business_unit_id integer,
    material_id integer,
    packing_unit integer,
    rim_category_id integer,
    root_product_category_id integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: rim_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE rim_categories (
    id integer NOT NULL,
    "position" integer,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.rim_categories OWNER TO postgres;

--
-- Name: rim_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE rim_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rim_categories_id_seq OWNER TO postgres;

--
-- Name: rim_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE rim_categories_id_seq OWNED BY rim_categories.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: searches; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE searches (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.searches OWNER TO postgres;

--
-- Name: searches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE searches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.searches_id_seq OWNER TO postgres;

--
-- Name: searches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE searches_id_seq OWNED BY searches.id;


--
-- Name: shapes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE shapes (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.shapes OWNER TO postgres;

--
-- Name: shapes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE shapes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shapes_id_seq OWNER TO postgres;

--
-- Name: shapes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE shapes_id_seq OWNED BY shapes.id;


--
-- Name: site_skus; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE site_skus (
    id integer NOT NULL,
    site_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id integer,
    selected boolean,
    sku_id integer
);


ALTER TABLE public.site_skus OWNER TO postgres;

--
-- Name: site_skus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE site_skus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_skus_id_seq OWNER TO postgres;

--
-- Name: site_skus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE site_skus_id_seq OWNED BY site_skus.id;


--
-- Name: sites; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sites (
    id integer NOT NULL,
    code character varying,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sites OWNER TO postgres;

--
-- Name: sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sites_id_seq OWNER TO postgres;

--
-- Name: sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sites_id_seq OWNED BY sites.id;


--
-- Name: skus; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE skus (
    id integer NOT NULL,
    product_id integer,
    level character varying,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    face_price numeric,
    price_unit_id integer,
    currency_id integer
);


ALTER TABLE public.skus OWNER TO postgres;

--
-- Name: skus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE skus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skus_id_seq OWNER TO postgres;

--
-- Name: skus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE skus_id_seq OWNED BY skus.id;


--
-- Name: surface_crafts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE surface_crafts (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.surface_crafts OWNER TO postgres;

--
-- Name: surface_crafts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE surface_crafts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.surface_crafts_id_seq OWNER TO postgres;

--
-- Name: surface_crafts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE surface_crafts_id_seq OWNED BY surface_crafts.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    employee_number character varying,
    name character varying,
    mobile character varying,
    password_digest character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    admin boolean DEFAULT false
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: warehouses; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE warehouses (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.warehouses OWNER TO postgres;

--
-- Name: warehouses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE warehouses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warehouses_id_seq OWNER TO postgres;

--
-- Name: warehouses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE warehouses_id_seq OWNED BY warehouses.id;


--
-- Name: water_absrp_rates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE water_absrp_rates (
    id integer NOT NULL,
    name character varying,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.water_absrp_rates OWNER TO postgres;

--
-- Name: water_absrp_rates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE water_absrp_rates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.water_absrp_rates_id_seq OWNER TO postgres;

--
-- Name: water_absrp_rates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE water_absrp_rates_id_seq OWNED BY water_absrp_rates.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY baby_managements ALTER COLUMN id SET DEFAULT nextval('baby_managements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY base_units ALTER COLUMN id SET DEFAULT nextval('base_units_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY business_units ALTER COLUMN id SET DEFAULT nextval('business_units_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY colors ALTER COLUMN id SET DEFAULT nextval('colors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY currencies ALTER COLUMN id SET DEFAULT nextval('currencies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY images ALTER COLUMN id SET DEFAULT nextval('images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY materials ALTER COLUMN id SET DEFAULT nextval('materials_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY price_managements ALTER COLUMN id SET DEFAULT nextval('price_managements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY price_units ALTER COLUMN id SET DEFAULT nextval('price_units_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_categories ALTER COLUMN id SET DEFAULT nextval('product_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_category_base_units ALTER COLUMN id SET DEFAULT nextval('product_category_base_units_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_category_colors ALTER COLUMN id SET DEFAULT nextval('product_category_colors_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_category_materials ALTER COLUMN id SET DEFAULT nextval('product_category_materials_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_category_shapes ALTER COLUMN id SET DEFAULT nextval('product_category_shapes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_category_surface_crafts ALTER COLUMN id SET DEFAULT nextval('product_category_surface_crafts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_fields ALTER COLUMN id SET DEFAULT nextval('product_fields_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_image_categories ALTER COLUMN id SET DEFAULT nextval('product_image_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_images ALTER COLUMN id SET DEFAULT nextval('product_images_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY product_managements ALTER COLUMN id SET DEFAULT nextval('product_managements_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rim_categories ALTER COLUMN id SET DEFAULT nextval('rim_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY searches ALTER COLUMN id SET DEFAULT nextval('searches_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY shapes ALTER COLUMN id SET DEFAULT nextval('shapes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY site_skus ALTER COLUMN id SET DEFAULT nextval('site_skus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sites ALTER COLUMN id SET DEFAULT nextval('sites_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY skus ALTER COLUMN id SET DEFAULT nextval('skus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY surface_crafts ALTER COLUMN id SET DEFAULT nextval('surface_crafts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY warehouses ALTER COLUMN id SET DEFAULT nextval('warehouses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY water_absrp_rates ALTER COLUMN id SET DEFAULT nextval('water_absrp_rates_id_seq'::regclass);


--
-- Data for Name: baby_managements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY baby_managements (id, sku, tag, product_id, created_at, updated_at, baby_no) FROM stdin;
7	DWE-C	\N	237	2016-11-11 03:45:06.861225	2016-11-11 03:47:54.208994	12346
6	DWE-A	\N	237	2016-11-11 03:44:46.290006	2016-11-11 03:50:34.325954	123456
8	DWE-A	\N	237	2016-11-11 03:45:29.267717	2016-11-12 06:42:54.766398	4444
9	DWE-A	\N	237	2016-11-11 03:46:07.627087	2016-11-12 06:43:12.788917	4444
\.


--
-- Name: baby_managements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('baby_managements_id_seq', 9, true);


--
-- Data for Name: base_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY base_units (id, name, "position", created_at, updated_at) FROM stdin;
1	片	1	2016-10-25 08:16:35.852426	2016-10-25 08:16:35.852426
2	条	2	2016-10-25 08:16:35.855227	2016-10-25 08:16:35.855227
3	个	3	2016-10-25 08:16:35.856888	2016-10-25 08:16:35.856888
4	贴	4	2016-11-12 01:20:17.297199	2016-11-12 01:20:17.297199
\.


--
-- Name: base_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('base_units_id_seq', 5, false);


--
-- Data for Name: business_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY business_units (id, name, "position", created_at, updated_at) FROM stdin;
1	箱	1	2016-10-25 08:16:35.866452	2016-10-25 08:16:35.866452
\.


--
-- Name: business_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('business_units_id_seq', 2, false);


--
-- Data for Name: colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY colors (id, name, "position", created_at, updated_at, english_name) FROM stdin;
1	请选择	0	2016-10-18 07:11:30.842462	2016-10-26 09:33:06.769461	White
2	白	1	2016-10-18 07:11:30.844789	2016-10-26 09:33:06.772235	White
3	米黄	2	2016-10-18 07:11:30.846331	2016-10-26 09:33:06.774157	Beige
4	灰	3	2016-10-18 07:11:30.84789	2016-10-26 09:33:06.77592	Grey
5	棕	4	2016-10-18 07:11:30.849431	2016-10-26 09:33:06.777696	Brown
6	黑	5	2016-10-18 07:11:30.851003	2016-10-26 09:33:06.779477	Black
7	黄	6	2016-10-22 02:43:02.81666	2016-10-26 09:33:06.781216	Yellow
8	蓝	7	2016-10-22 02:43:02.81853	2016-10-26 09:33:06.782948	Blue
9	红	8	2016-10-26 09:33:06.784652	2016-10-26 09:33:06.784652	Red
10	其它	9	2016-10-26 09:33:06.786541	2016-10-26 09:33:06.786541	\N
\.


--
-- Name: colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('colors_id_seq', 11, false);


--
-- Data for Name: currencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY currencies (id, "position", name, created_at, updated_at) FROM stdin;
1	1	人民币	2016-11-10 09:52:06.5053	2016-11-10 09:52:06.5053
2	2	美元	2016-11-10 09:52:06.507541	2016-11-10 09:52:06.507541
\.


--
-- Name: currencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('currencies_id_seq', 3, false);


--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY images (id, md5, file_size, filename, image, created_at, updated_at) FROM stdin;
1	6d2c35b68e745041b8d84225ff9e3422	8474482	第九届单位团购节.jpg	6d2c35b68e745041b8d84225ff9e3422	2016-11-07 01:03:32.203668	2016-11-07 01:03:32.203668
2	65c18a15fae5306a60c80f5f7957a637	83480	11.jpg	65c18a15fae5306a60c80f5f7957a637	2016-11-08 08:27:52.591694	2016-11-08 08:27:52.591694
3	c040142f4a07c6ad863348bd0d9c9160	174430	KB-279.png	c040142f4a07c6ad863348bd0d9c9160	2016-11-08 08:27:53.504836	2016-11-08 08:27:53.504836
4	c7010cca30ab88bf346ba8f6c6fe3e34	147307	KB-861.png	c7010cca30ab88bf346ba8f6c6fe3e34	2016-11-08 08:28:33.527306	2016-11-08 08:28:33.527306
5	b625c1c41f2cf8b5027c026eba5e98ee	2967709	22.png	b625c1c41f2cf8b5027c026eba5e98ee	2016-11-10 06:19:49.306855	2016-11-10 06:19:49.306855
6	01658ab8d467aa8b782f17a3ea729def	293146	17D2YPWRCD_}XBN70N1D538.png	01658ab8d467aa8b782f17a3ea729def	2016-11-11 03:47:13.449002	2016-11-11 03:47:13.449002
7	745ca10ce4911eb329e46e7770b524b4	1539849	731990530810222379.png	745ca10ce4911eb329e46e7770b524b4	2016-11-11 03:47:13.786113	2016-11-11 03:47:13.786113
\.


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('images_id_seq', 7, true);


--
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY materials (id, name, "position", created_at, updated_at) FROM stdin;
1	请选择	0	2016-10-25 08:16:35.891497	2016-10-26 09:33:06.795332
2	瓷质	1	2016-10-25 08:16:35.893676	2016-10-26 09:33:06.797338
3	陶质	2	2016-10-26 09:33:06.799108	2016-10-26 09:33:06.799108
4	其它	3	2016-10-26 09:33:06.800911	2016-10-26 09:33:06.800911
5	玻璃	4	2016-11-12 01:20:17.351958	2016-11-12 01:20:17.351958
6	石材	5	2016-11-12 01:20:17.354037	2016-11-12 01:20:17.354037
7	陶瓷	6	2016-11-12 01:20:17.355653	2016-11-12 01:20:17.355653
8	金属	7	2016-11-12 01:20:17.357329	2016-11-12 01:20:17.357329
9	木材	8	2016-11-12 01:20:17.358907	2016-11-12 01:20:17.358907
10	玉石	9	2016-11-12 01:20:17.360591	2016-11-12 01:20:17.360591
11	贝壳	10	2016-11-12 01:20:17.362213	2016-11-12 01:20:17.362213
12	混合	11	2016-11-12 01:20:17.363774	2016-11-12 01:20:17.363774
\.


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('materials_id_seq', 13, false);


--
-- Data for Name: price_managements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY price_managements (id, level, platform, product_id, created_at, updated_at, nomember_price, member_price, warehouse_id, price_unit_id, currency_id) FROM stdin;
10	A	E选材	237	2016-11-11 03:44:46.280807	2016-11-11 03:44:46.280807	50.0	40.0	1	1	1
13	A	E出口	237	2016-11-11 03:46:07.622285	2016-11-11 03:46:24.975206	70.0	60.0	1	2	2
12	A	家居网	237	2016-11-11 03:45:29.263176	2016-11-11 03:46:36.632259	60.0	60.0	4	1	2
11	C	E分销	237	2016-11-11 03:45:06.854037	2016-11-11 03:50:42.506293	60.0	50.0	3	2	2
\.


--
-- Name: price_managements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('price_managements_id_seq', 13, true);


--
-- Data for Name: price_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY price_units (id, "position", name, created_at, updated_at) FROM stdin;
1	1	片	2016-11-10 09:52:06.526416	2016-11-10 09:52:06.526416
2	2	平方米	2016-11-10 09:52:06.528478	2016-11-10 09:52:06.528478
\.


--
-- Name: price_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('price_units_id_seq', 3, false);


--
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_categories (id, name, parent_id, "position", created_at, updated_at) FROM stdin;
2	墙地砖	1	1	2016-10-18 07:11:30.868714	2016-10-18 07:11:30.868714
3	内墙砖	1	2	2016-10-18 07:11:30.87055	2016-10-18 07:11:30.87055
4	外墙砖	1	3	2016-10-18 07:11:30.87229	2016-10-18 07:11:30.87229
5	厚砖	1	4	2016-10-18 07:11:30.874011	2016-10-18 07:11:30.874011
6	陶瓷薄板	1	5	2016-10-18 07:11:30.875715	2016-10-18 07:11:30.875715
8	陶瓷配件	1	7	2016-10-18 07:11:30.879082	2016-10-18 07:11:30.879082
9	抛光砖	2	1	2016-10-18 07:11:30.880762	2016-10-18 07:11:30.880762
10	全抛釉	2	2	2016-10-18 07:11:30.882442	2016-10-18 07:11:30.882442
11	仿古砖	2	3	2016-10-18 07:11:30.884074	2016-10-18 07:11:30.884074
12	大理石	2	4	2016-10-18 07:11:30.885691	2016-10-18 07:11:30.885691
13	微晶石	2	5	2016-10-18 07:11:30.88734	2016-10-18 07:11:30.88734
14	抛晶砖	2	6	2016-10-18 07:11:30.888981	2016-10-18 07:11:30.888981
15	进口砖	2	7	2016-10-18 07:11:30.890613	2016-10-18 07:11:30.890613
16	瓷抛砖	9	1	2016-10-18 07:11:30.892243	2016-10-18 07:11:30.892243
17	3D抛光砖	9	2	2016-10-18 07:11:30.893906	2016-10-18 07:11:30.893906
18	渗花砖	9	3	2016-10-18 07:11:30.895524	2016-10-18 07:11:30.895524
19	金刚石	10	1	2016-10-18 07:11:30.897216	2016-10-18 07:11:30.897216
20	全抛釉(新石纪)	10	2	2016-10-18 07:11:30.898919	2016-10-18 07:11:30.898919
21	仿木	11	1	2016-10-18 07:11:30.900608	2016-10-18 07:11:30.900608
22	仿古	11	2	2016-10-18 07:11:30.902264	2016-10-18 07:11:30.902264
23	仿石	11	3	2016-10-18 07:11:30.903934	2016-10-18 07:11:30.903934
24	仿金属	11	4	2016-10-18 07:11:30.905575	2016-10-18 07:11:30.905575
25	通体大理石	12	1	2016-10-18 07:11:30.907229	2016-10-18 07:11:30.907229
26	全抛大理石	12	2	2016-10-18 07:11:30.90889	2016-10-18 07:11:30.90889
27	柔光大理石	12	3	2016-10-18 07:11:30.910516	2016-10-18 07:11:30.910516
28	瓷片	3	1	2016-10-18 07:11:30.912197	2016-10-18 07:11:30.912197
29	抛光砖瓷片	3	2	2016-10-18 07:11:30.913906	2016-10-18 07:11:30.913906
30	通体外墙砖	4	1	2016-10-18 07:11:30.915526	2016-10-18 07:11:30.915526
31	釉面外墙砖	4	2	2016-10-18 07:11:30.917186	2016-10-18 07:11:30.917186
32	有光面	6	1	2016-10-18 07:11:30.918829	2016-10-18 07:11:30.918829
33	哑光面	6	2	2016-10-18 07:11:30.920538	2016-10-18 07:11:30.920538
34	拼花	8	1	2016-10-18 07:11:30.922224	2016-10-18 07:11:30.922224
35	地花	8	2	2016-10-18 07:11:30.923865	2016-10-18 07:11:30.923865
36	梯级砖	8	3	2016-10-18 07:11:30.925533	2016-10-18 07:11:30.925533
37	波打线	8	4	2016-10-18 07:11:30.927147	2016-10-18 07:11:30.927147
38	花砖	8	5	2016-10-18 07:11:30.928802	2016-10-18 07:11:30.928802
39	瓦筒	8	6	2016-10-18 07:11:30.930447	2016-10-18 07:11:30.930447
40	腰线	8	7	2016-10-18 07:11:30.932092	2016-10-18 07:11:30.932092
1	瓷砖	\N	1	2016-10-18 07:11:30.866539	2016-10-25 08:16:35.907109
7	小型砖	1	6	2016-10-18 07:11:30.877439	2016-10-27 04:21:29.159724
101	马赛克	\N	1	2016-11-11 09:28:21.022176	2016-11-11 09:28:21.022176
102	马赛克	101	1	2016-11-11 09:28:21.024409	2016-11-11 09:28:21.024409
103	装饰线	101	2	2016-11-11 09:28:21.026235	2016-11-11 09:28:21.026235
104	拼图	101	3	2016-11-11 09:28:21.027934	2016-11-11 09:28:21.027934
106	文化石	101	5	2016-11-11 09:28:21.031358	2016-11-11 09:28:21.031358
105	泳池砖	101	4	2016-11-11 09:28:21.029657	2016-11-12 01:20:17.443844
\.


--
-- Name: product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_categories_id_seq', 107, false);


--
-- Data for Name: product_category_base_units; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_category_base_units (id, product_category_id, "position", base_unit_id, created_at, updated_at) FROM stdin;
1	1	1	1	2016-11-12 01:20:17.458523	2016-11-12 01:20:17.458523
2	1	2	2	2016-11-12 01:20:17.461237	2016-11-12 01:20:17.461237
3	1	3	3	2016-11-12 01:20:17.463017	2016-11-12 01:20:17.463017
4	101	1	4	2016-11-12 01:20:17.464785	2016-11-12 01:20:17.464785
5	101	2	2	2016-11-12 01:20:17.466563	2016-11-12 01:20:17.466563
6	101	3	1	2016-11-12 01:20:17.468341	2016-11-12 01:20:17.468341
\.


--
-- Name: product_category_base_units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_category_base_units_id_seq', 7, false);


--
-- Data for Name: product_category_colors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_category_colors (id, product_category_id, color_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: product_category_colors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_category_colors_id_seq', 1, false);


--
-- Data for Name: product_category_materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_category_materials (id, material_id, product_category_id, created_at, updated_at, "position") FROM stdin;
1	2	1	2016-11-12 01:20:17.48046	2016-11-12 01:20:17.48046	1
2	3	1	2016-11-12 01:20:17.483307	2016-11-12 01:20:17.483307	2
3	4	1	2016-11-12 01:20:17.485429	2016-11-12 01:20:17.485429	3
4	5	101	2016-11-12 01:20:17.487413	2016-11-12 01:20:17.487413	1
5	6	101	2016-11-12 01:20:17.489434	2016-11-12 01:20:17.489434	2
6	7	101	2016-11-12 01:20:17.491381	2016-11-12 01:20:17.491381	3
7	8	101	2016-11-12 01:20:17.493283	2016-11-12 01:20:17.493283	4
8	9	101	2016-11-12 01:20:17.495132	2016-11-12 01:20:17.495132	5
9	10	101	2016-11-12 01:20:17.497028	2016-11-12 01:20:17.497028	6
10	11	101	2016-11-12 01:20:17.498888	2016-11-12 01:20:17.498888	7
11	12	101	2016-11-12 01:20:17.500797	2016-11-12 01:20:17.500797	8
12	4	101	2016-11-12 01:20:17.50267	2016-11-12 01:20:17.50267	9
\.


--
-- Name: product_category_materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_category_materials_id_seq', 13, false);


--
-- Data for Name: product_category_shapes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_category_shapes (id, product_category_id, "position", shape_id, created_at, updated_at) FROM stdin;
1	1	1	2	2016-11-12 01:20:17.514464	2016-11-12 01:20:17.514464
2	1	2	3	2016-11-12 01:20:17.517552	2016-11-12 01:20:17.517552
3	1	3	4	2016-11-12 01:20:17.519757	2016-11-12 01:20:17.519757
4	1	4	5	2016-11-12 01:20:17.5218	2016-11-12 01:20:17.5218
5	1	4	6	2016-11-12 01:20:17.52381	2016-11-12 01:20:17.52381
6	101	1	2	2016-11-12 01:20:17.525968	2016-11-12 01:20:17.525968
7	101	2	3	2016-11-12 01:20:17.528412	2016-11-12 01:20:17.528412
8	101	3	4	2016-11-12 01:20:17.547683	2016-11-12 01:20:17.547683
9	101	4	7	2016-11-12 01:20:17.550127	2016-11-12 01:20:17.550127
10	101	5	6	2016-11-12 01:20:17.552167	2016-11-12 01:20:17.552167
\.


--
-- Name: product_category_shapes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_category_shapes_id_seq', 11, false);


--
-- Data for Name: product_category_surface_crafts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_category_surface_crafts (id, product_category_id, "position", surface_craft_id, created_at, updated_at) FROM stdin;
1	1	1	2	2016-11-12 01:20:17.564203	2016-11-12 01:20:17.564203
2	1	2	3	2016-11-12 01:20:17.566952	2016-11-12 01:20:17.566952
3	1	3	4	2016-11-12 01:20:17.568939	2016-11-12 01:20:17.568939
4	1	4	5	2016-11-12 01:20:17.570927	2016-11-12 01:20:17.570927
5	101	1	2	2016-11-12 01:20:17.572881	2016-11-12 01:20:17.572881
6	101	2	3	2016-11-12 01:20:17.57482	2016-11-12 01:20:17.57482
7	101	3	6	2016-11-12 01:20:17.576831	2016-11-12 01:20:17.576831
\.


--
-- Name: product_category_surface_crafts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_category_surface_crafts_id_seq', 8, false);


--
-- Data for Name: product_fields; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_fields (id, tabtype, field, title, datetype, "position", created_at, updated_at) FROM stdin;
1	ceramic	product_category_id	产品品类	integer	1	2016-10-27 04:21:29.208968	2016-10-27 04:21:29.208968
2	ceramic	product_no	产品编号	string	2	2016-10-27 04:21:29.211441	2016-10-27 04:21:29.211441
3	ceramic	name	产品名称	string	3	2016-10-27 04:21:29.213196	2016-10-27 04:21:29.213196
5	ceramic	spec	产品规格	string	5	2016-10-27 04:21:29.21675	2016-10-27 04:21:29.21675
6	ceramic	brand	品牌	string	6	2016-10-27 04:21:29.218504	2016-10-27 04:21:29.218504
8	ceramic	surface_craft_id	表面工艺	integer	8	2016-10-27 04:21:29.221931	2016-10-27 04:21:29.221931
9	ceramic	water_absrp_rate_id	吸水率	integer	9	2016-10-27 04:21:29.223569	2016-10-27 04:21:29.223569
10	ceramic	thickness	厚度(mm)	decimal	10	2016-10-27 04:21:29.225308	2016-10-27 04:21:29.225308
11	ceramic	shape_id	形状	integer	11	2016-10-27 04:21:29.227012	2016-10-27 04:21:29.227012
12	ceramic	color_id	颜色	integer	12	2016-10-27 04:21:29.228758	2016-10-27 04:21:29.228758
13	ceramic	cases_per_pallet	打托数量(箱/托)	integer	13	2016-10-27 04:21:29.230457	2016-10-27 04:21:29.230457
14	ceramic	base_unit_id	基本单位	integer	14	2016-10-27 04:21:29.232177	2016-10-27 04:21:29.232177
15	ceramic	unit_weight	单位重量(kg)	decimal	15	2016-10-27 04:21:29.233872	2016-10-27 04:21:29.233872
16	ceramic	unit_area	单位面积(m*m)	decimal	16	2016-10-27 04:21:29.235525	2016-10-27 04:21:29.235525
17	ceramic	business_unit_id	业务单位	integer	17	2016-10-27 04:21:29.237254	2016-10-27 04:21:29.237254
18	ceramic	packing_unit	包装单位(片/箱)	integer	18	2016-10-27 04:21:29.238948	2016-10-27 04:21:29.238948
19	ceramic	package_weight	包装重量(kg)	decimal	19	2016-10-27 04:21:29.240647	2016-10-27 04:21:29.240647
4	ceramic	description	产品说明	string	4	2016-10-27 04:21:29.214962	2016-10-31 09:40:03.547438
7	ceramic	material_id	材质	integer	7	2016-10-27 04:21:29.220219	2016-10-31 09:40:03.552897
20	mosaic	product_category_id	产品品类	integer	1	2016-10-27 04:21:29.242331	2016-10-31 09:40:03.567777
21	mosaic	product_no	产品编号	string	2	2016-10-27 04:21:29.244047	2016-10-31 09:40:03.571033
22	mosaic	name	产品名称	string	3	2016-10-27 04:21:29.245747	2016-10-31 09:40:03.573047
23	mosaic	description	产品说明	string	4	2016-10-27 04:21:29.247426	2016-10-31 09:40:03.574822
24	mosaic	spec	产品规格	string	5	2016-10-27 04:21:29.249127	2016-10-31 09:40:03.576845
25	mosaic	brand	品牌	string	6	2016-10-27 04:21:29.250825	2016-10-31 09:40:03.578602
26	mosaic	material_id	材质	integer	7	2016-10-27 04:21:29.252558	2016-10-31 09:40:03.580383
27	mosaic	surface_craft_id	表面工艺	integer	8	2016-10-27 04:21:29.254229	2016-10-31 09:40:03.582453
28	mosaic	water_absrp_rate_id	吸水率	integer	9	2016-10-27 04:21:29.255958	2016-10-31 09:40:03.584552
29	mosaic	thickness	厚度(mm)	decimal	10	2016-10-27 04:21:29.257666	2016-10-31 09:40:03.586267
31	mosaic	color_id	颜色	integer	12	2016-10-27 04:21:29.261034	2016-10-31 09:40:03.58972
32	mosaic	cases_per_pallet	打托数量(箱/托)	integer	13	2016-10-27 04:21:29.262713	2016-10-31 09:40:03.591426
33	mosaic	base_unit_id	基本单位	integer	14	2016-10-27 04:21:29.264426	2016-10-31 09:40:03.593161
34	mosaic	unit_weight	单位重量(kg)	decimal	15	2016-10-27 04:21:29.266122	2016-10-31 09:40:03.594866
35	mosaic	unit_area	单位面积(m*m)	decimal	16	2016-10-27 04:21:29.267788	2016-10-31 09:40:03.59662
36	mosaic	business_unit_id	业务单位	integer	17	2016-10-27 04:21:29.269501	2016-10-31 09:40:03.598352
37	mosaic	packing_unit	包装单位(片/箱)	integer	18	2016-10-27 04:21:29.271173	2016-10-31 09:40:03.600125
38	mosaic	package_weight	包装重量(kg)	decimal	19	2016-10-27 04:21:29.272867	2016-10-31 09:40:03.601867
39	bathroom	product_category_id	产品品类	integer	1	2016-10-27 04:21:29.274563	2016-10-31 09:40:03.603594
40	bathroom	product_no	产品编号	string	2	2016-10-27 04:21:29.276236	2016-10-31 09:40:03.605306
41	bathroom	name	产品名称	string	3	2016-10-27 04:21:29.277921	2016-10-31 09:40:03.607013
42	bathroom	description	产品说明	string	4	2016-10-27 04:21:29.279621	2016-10-31 09:40:03.608773
43	bathroom	spec	产品规格	string	5	2016-10-27 04:21:29.281344	2016-10-31 09:40:03.610582
44	bathroom	brand	品牌	string	6	2016-10-27 04:21:29.28302	2016-10-31 09:40:03.612322
45	bathroom	material_id	材质	integer	7	2016-10-27 04:21:29.284717	2016-10-31 09:40:03.614079
46	bathroom	surface_craft_id	表面工艺	integer	8	2016-10-27 04:21:29.286384	2016-10-31 09:40:03.615932
47	bathroom	water_absrp_rate_id	吸水率	integer	9	2016-10-27 04:21:29.28808	2016-10-31 09:40:03.617684
48	bathroom	thickness	厚度(mm)	decimal	10	2016-10-27 04:21:29.289739	2016-10-31 09:40:03.619383
49	bathroom	shape_id	形状	integer	11	2016-10-27 04:21:29.291408	2016-10-31 09:40:03.62116
50	bathroom	color_id	颜色	integer	12	2016-10-27 04:21:29.293079	2016-10-31 09:40:03.622868
51	bathroom	cases_per_pallet	打托数量(箱/托)	integer	13	2016-10-27 04:21:29.294792	2016-10-31 09:40:03.624595
52	bathroom	base_unit_id	基本单位	integer	14	2016-10-27 04:21:29.296481	2016-10-31 09:40:03.62631
53	bathroom	unit_weight	单位重量(kg)	decimal	15	2016-10-27 04:21:29.298162	2016-10-31 09:40:03.628041
54	bathroom	unit_area	单位面积(m*m)	decimal	16	2016-10-27 04:21:29.299813	2016-10-31 09:40:03.629808
55	bathroom	business_unit_id	业务单位	integer	17	2016-10-27 04:21:29.301484	2016-10-31 09:40:03.631564
56	bathroom	packing_unit	包装单位(片/箱)	integer	18	2016-10-27 04:21:29.303159	2016-10-31 09:40:03.633336
57	bathroom	package_weight	包装重量(kg)	decimal	19	2016-10-27 04:21:29.304856	2016-10-31 09:40:03.635049
58	hardware	product_category_id	产品品类	integer	1	2016-10-27 04:21:29.306522	2016-10-31 09:40:03.63681
59	hardware	product_no	产品编号	string	2	2016-10-27 04:21:29.30823	2016-10-31 09:40:03.638519
60	hardware	name	产品名称	string	3	2016-10-27 04:21:29.309932	2016-10-31 09:40:03.640294
61	hardware	description	产品说明	string	4	2016-10-27 04:21:29.311601	2016-10-31 09:40:03.642029
62	hardware	spec	产品规格	string	5	2016-10-27 04:21:29.313281	2016-10-31 09:40:03.643859
63	hardware	brand	品牌	string	6	2016-10-27 04:21:29.314948	2016-10-31 09:40:03.645675
64	hardware	material_id	材质	integer	7	2016-10-27 04:21:29.316662	2016-10-31 09:40:03.647374
65	hardware	surface_craft_id	表面工艺	integer	8	2016-10-27 04:21:29.318306	2016-10-31 09:40:03.649235
66	hardware	water_absrp_rate_id	吸水率	integer	9	2016-10-27 04:21:29.319963	2016-10-31 09:40:03.650949
67	hardware	thickness	厚度(mm)	decimal	10	2016-10-27 04:21:29.321667	2016-10-31 09:40:03.652665
68	hardware	shape_id	形状	integer	11	2016-10-27 04:21:29.323315	2016-10-31 09:40:03.654362
69	hardware	color_id	颜色	integer	12	2016-10-27 04:21:29.325003	2016-10-31 09:40:03.656094
70	hardware	cases_per_pallet	打托数量(箱/托)	integer	13	2016-10-27 04:21:29.326671	2016-10-31 09:40:03.65784
71	hardware	base_unit_id	基本单位	integer	14	2016-10-27 04:21:29.328385	2016-10-31 09:40:03.659544
72	hardware	unit_weight	单位重量(kg)	decimal	15	2016-10-27 04:21:29.330078	2016-10-31 09:40:03.661316
73	hardware	unit_area	单位面积(m*m)	decimal	16	2016-10-27 04:21:29.331755	2016-10-31 09:40:03.663005
74	hardware	business_unit_id	业务单位	integer	17	2016-10-27 04:21:29.333441	2016-10-31 09:40:03.664773
75	hardware	packing_unit	包装单位(片/箱)	integer	18	2016-10-27 04:21:29.335144	2016-10-31 09:40:03.666488
76	hardware	package_weight	包装重量(kg)	decimal	19	2016-10-27 04:21:29.336823	2016-10-31 09:40:03.668206
30	mosaic	shape_id	粒子形状	integer	11	2016-10-27 04:21:29.259339	2016-11-11 09:28:21.07507
\.


--
-- Name: product_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_fields_id_seq', 77, false);


--
-- Data for Name: product_image_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_image_categories (id, name, "position", created_at, updated_at) FROM stdin;
1	商品正面图	1	2016-10-31 09:40:03.678162	2016-11-03 14:08:12.877444
2	主图1	2	2016-10-31 09:40:03.68035	2016-11-03 14:08:12.880731
3	主图2	3	2016-10-31 09:40:03.681937	2016-11-03 14:08:12.882477
4	主图3	4	2016-10-31 09:40:03.683498	2016-11-03 14:08:12.884176
5	主图4	5	2016-10-31 09:40:03.685294	2016-11-03 14:08:12.885857
6	主图5	6	2016-10-31 09:40:03.686926	2016-11-03 14:08:12.887528
7	主图6	7	2016-10-31 09:40:03.688713	2016-11-03 14:08:12.889198
8	主图7	8	2016-10-31 09:40:03.704785	2016-11-11 09:28:21.157397
9	主图8	9	2016-10-31 09:40:03.706393	2016-11-11 09:28:21.159621
10	主图9	10	2016-10-31 09:40:03.707952	2016-11-11 09:28:21.161484
11	主图10	11	2016-10-31 09:40:03.709503	2016-11-11 09:28:21.16329
12	主图11	12	2016-10-31 09:40:03.710988	2016-11-11 09:28:21.165107
13	主图12	13	2016-11-03 14:08:12.898671	2016-11-11 09:28:21.166925
14	主图13	14	2016-11-03 14:08:12.900552	2016-11-11 09:28:21.168737
15	视频	15	2016-11-03 14:08:12.90208	2016-11-11 09:28:21.170485
16	PC产品情景图	16	2016-11-03 14:08:12.903646	2016-11-11 09:28:21.172485
17	PC产品实拍图	17	2016-11-03 14:08:12.905229	2016-11-11 09:28:21.174398
18	PC产品细节图	18	2016-11-08 01:25:39.002106	2016-11-11 09:28:21.176135
19	手机版产品情景图	19	2016-11-11 09:28:21.177854	2016-11-11 09:28:21.177854
20	手机版产品实拍图	20	2016-11-11 09:28:21.179898	2016-11-11 09:28:21.179898
21	手机版产品细节图	21	2016-11-11 09:28:21.181476	2016-11-11 09:28:21.181476
22	产品铺贴图	22	2016-11-11 09:28:21.183001	2016-11-11 09:28:21.183001
23	外贸版PC详情页	23	2016-11-11 09:28:21.184539	2016-11-11 09:28:21.184539
24	外贸版手机详情页	24	2016-11-11 09:28:21.186068	2016-11-11 09:28:21.186068
25	系列图	25	2016-11-11 09:28:21.187583	2016-11-11 09:28:21.187583
\.


--
-- Name: product_image_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_image_categories_id_seq', 26, false);


--
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_images (id, "position", image_id, created_at, updated_at, product_image_category_id, sku_id, product_id) FROM stdin;
13	4	6	2016-11-11 03:47:13.775023	2016-11-11 03:47:13.775023	4	6	\N
14	5	7	2016-11-11 03:47:16.3199	2016-11-11 03:47:16.3199	5	6	\N
12	\N	5	2016-11-10 06:19:54.136973	2016-11-11 03:48:10.761685	18	\N	1
15	8	2	2016-11-11 09:35:16.65994	2016-11-11 09:35:16.65994	8	6	\N
16	24	2	2016-11-11 09:35:16.662536	2016-11-11 09:35:16.662536	24	6	\N
\.


--
-- Name: product_images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_images_id_seq', 16, true);


--
-- Data for Name: product_managements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY product_managements (id, sku, tag, "position", created_at, updated_at) FROM stdin;
\.


--
-- Name: product_managements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('product_managements_id_seq', 1, false);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY products (id, product_category_id, product_no, name, description, spec, brand, water_absrp_rate_id, thickness, shape_id, color_id, cases_per_pallet, unit_weight, unit_area, package_weight, created_at, updated_at, surface_craft_id, base_unit_id, business_unit_id, material_id, packing_unit, rim_category_id, root_product_category_id) FROM stdin;
404	21	KQD612245	里约檀木	主转	120x600	KIKI	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 02:54:15.814547	2016-11-12 02:57:04.090118	2	1	1	2	14	2	1
403	21	KQD612242	里约檀木	主转	120x600	KIKI	2	9.5	3	1	\N	1.5	0.072	21.0	2016-11-12 02:52:52.462176	2016-11-12 02:57:12.386531	2	1	1	2	14	2	1
372	21	QD6123510	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 01:39:26.708707	2016-11-12 01:39:26.708707	2	1	1	2	14	2	1
373	21	QD6123512	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 01:41:03.3794	2016-11-12 01:41:03.3794	2	1	1	2	14	2	1
375	102	LFBN-014A	铝合金马赛克	铝合金马赛克	300x305	科米尼	1	8.0	4	10	72	0.79	0.09	8.7	2016-11-12 01:54:50.061885	2016-11-12 01:54:50.061885	3	4	1	8	11	\N	101
381	21	QD6124074	北原雪杉	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.075	21.0	2016-11-12 02:09:05.382831	2016-11-12 02:09:05.382831	2	1	1	2	14	2	1
382	21	QD6124075	北原雪杉	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.075	21.0	2016-11-12 02:12:50.424142	2016-11-12 02:12:50.424142	2	1	1	2	14	2	1
383	21	D6122030	苍古香楠	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.075	21.0	2016-11-12 02:13:47.265305	2016-11-12 02:13:47.265305	2	1	1	2	14	2	1
384	21	D6122031	苍古香楠	主转	120x600	楼兰	2	9.5	3	4	\N	1.5	0.075	21.0	2016-11-12 02:18:17.689869	2016-11-12 02:18:17.689869	2	1	1	2	14	2	1
390	21	E612200	仿西域胡杨	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 02:43:19.628127	2016-11-12 02:58:24.032984	2	1	1	2	14	2	1
406	21	QD6123375	流涧原木	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.072	21.0	2016-11-12 02:55:53.378713	2016-11-12 02:56:35.686641	2	1	1	2	14	2	1
405	21	KQD612247	里约檀木	主转	120x600	KIKI	2	9.5	3	6	\N	1.5	0.072	21.0	2016-11-12 02:55:07.665404	2016-11-12 02:56:55.673233	2	1	1	2	14	2	1
387	21	E6122034	苍古香楠	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 02:41:04.75827	2016-11-12 02:57:26.510539	2	1	1	2	14	2	1
389	21	E61229	传世檀木	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 02:42:29.654226	2016-11-12 02:57:34.698402	2	1	1	2	14	2	1
391	21	E612060	皇家橡木	主转	120x600	楼兰	2	9.5	3	6	\N	1.5	0.072	21.0	2016-11-12 02:44:11.447617	2016-11-12 02:57:39.941637	2	1	1	2	14	2	1
396	21	E612098	皇庭雪橡	主转	120x600	楼兰	2	\N	3	5	\N	1.5	0.072	21.0	2016-11-12 02:48:05.24048	2016-11-12 02:57:49.257227	2	1	1	2	14	2	1
394	21	D612092	皇庭雪橡	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 02:46:31.783649	2016-11-12 02:57:54.505217	2	1	1	2	14	2	1
395	21	D612093	皇庭雪橡	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 02:47:14.15828	2016-11-12 02:58:00.184994	2	1	1	2	14	2	1
397	21	E612099	皇庭雪橡	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 02:48:52.515875	2016-11-12 02:58:11.952632	2	1	1	2	14	2	1
398	21	D612022	经典柚木	主转	120x600	楼兰	2	9.5	3	4	\N	1.5	0.072	21.0	2016-11-12 02:49:40.92853	2016-11-12 02:58:18.433003	2	1	1	2	14	2	1
393	21	E612068	皇家橡木	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.072	21.0	2016-11-12 02:45:48.064246	2016-11-12 02:58:30.139822	2	1	1	2	14	2	1
392	21	E612062	皇家橡木	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 02:45:00.298113	2016-11-12 02:58:35.966331	2	1	1	2	14	2	1
400	21	E612028	经典柚木	主转	120x600	楼兰	2	9.5	3	1	\N	1.5	0.072	21.0	2016-11-12 02:50:49.614748	2016-11-12 02:58:48.235389	2	1	1	2	14	2	1
388	21	D61222	传世檀木	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 02:41:50.092029	2016-11-12 02:58:55.896359	2	1	1	2	14	2	1
402	21	D612244	绝代风桦	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.072	21.0	2016-11-12 02:52:13.10809	2016-11-12 02:59:04.28814	2	1	1	2	14	2	1
401	21	E612029	经典柚木	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 02:51:34.386524	2016-11-12 02:59:11.981431	2	1	1	2	14	2	1
399	21	E612025	经典柚木	主转	120x600	楼兰	2	9.5	3	1	\N	1.5	0.072	21.0	2016-11-12 02:50:18.167418	2016-11-12 02:59:17.630587	2	1	1	2	14	2	1
386	21	E6122033	苍古香楠	主转	120x600	楼兰	2	9.5	2	3	\N	1.5	0.072	21.0	2016-11-12 02:33:37.469588	2016-11-12 02:59:30.26824	2	1	1	2	14	2	1
385	21	D6122032	苍古香楠	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 02:29:20.441669	2016-11-12 02:59:42.352752	2	1	1	2	14	2	1
376	21	QD6123513	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	4	\N	1.5	0.072	21.0	2016-11-12 02:03:56.438324	2016-11-12 02:59:59.514291	2	1	1	2	14	2	1
378	21	QD6123516	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 02:06:10.238642	2016-11-12 03:00:08.468876	2	1	1	2	14	2	1
379	21	KQD612265	巴拿马古橡	主转	120x600	KIKI	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 02:07:02.928613	2016-11-12 03:00:16.57946	2	1	1	2	14	2	1
374	21	QD6123513	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	4	\N	1.5	0.072	21.0	2016-11-12 01:42:16.31055	2016-11-12 03:00:24.875507	2	1	1	2	14	2	1
377	21	QD6123515	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 02:05:20.173353	2016-11-12 03:00:34.422961	2	1	1	2	14	2	1
380	21	QD6124071	北原雪杉	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 02:07:56.228116	2016-11-12 03:00:51.058943	2	1	1	2	14	2	1
407	21	QD6123378	流涧原木	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 03:02:07.300221	2016-11-12 03:12:48.911521	2	1	1	2	14	2	1
408	21	QD6129082	缅甸金柚	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.072	21.0	2016-11-12 03:17:02.507733	2016-11-12 03:17:02.507733	2	1	1	2	14	2	1
409	21	QD6129086	缅甸金柚	主转	120x600	楼兰	2	9.5	3	1	\N	1.5	0.072	21.0	2016-11-12 03:17:56.507907	2016-11-12 03:17:56.507907	2	1	1	2	14	2	1
410	21	QD6129087	缅甸金柚	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 03:24:37.716554	2016-11-12 03:24:37.716554	2	1	1	2	14	2	1
411	21	TE6122659T	木纹干粒砖	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 03:25:28.589541	2016-11-12 03:25:28.589541	2	1	1	2	14	2	1
412	21	TD6122552	木纹砖	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 03:26:03.550056	2016-11-12 03:26:03.550056	2	1	1	2	14	2	1
413	21	TD6122556	木纹砖	主转	120x600	楼兰	2	9.5	3	1	\N	1.5	0.072	21.0	2016-11-12 03:26:32.96872	2016-11-12 03:26:32.96872	2	1	1	2	14	2	1
414	21	TD6122558	木纹砖	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 03:34:16.307376	2016-11-12 03:34:16.307376	2	1	1	2	14	2	1
415	21	TQD6122821	木纹砖	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 03:42:39.050075	2016-11-12 03:42:39.050075	2	1	1	2	14	2	1
417	21	D612205	西域胡杨	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.072	21.0	2016-11-12 03:43:46.098351	2016-11-12 03:43:46.098351	2	1	1	2	14	2	1
416	21	D612202	西域胡杨	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 03:43:07.874136	2016-11-12 03:44:07.460804	2	1	1	2	14	2	1
418	21	D612208	西域胡杨	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 03:44:36.425869	2016-11-12 03:44:42.238809	2	1	1	2	14	2	1
419	21	E612206	西域胡杨	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 03:45:17.368786	2016-11-12 03:45:17.368786	2	1	1	2	14	2	1
420	21	QD6123621	雅田坚橡	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 03:45:44.487142	2016-11-12 03:45:49.352989	2	1	1	2	14	2	1
50	26	L5D80276	欧亚木纹	主砖	800x800	楼兰	2	11.0	2	10	28	17.0	0.64	51.0	2016-10-28 06:34:10.25332	2016-11-12 01:20:13.296611	3	1	1	2	3	\N	1
421	21	QD6123623	雅田坚橡	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 03:46:20.118358	2016-11-12 03:46:25.712434	2	1	1	2	14	2	1
422	21	QD6123623	雅田坚橡	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 03:46:59.14255	2016-11-12 03:46:59.14255	2	1	1	2	14	2	1
423	21	QD6123625	雅田坚橡	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 03:47:37.130615	2016-11-12 03:47:37.130615	2	1	1	2	14	2	1
424	21	QD6123627	雅田坚橡	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 03:48:44.54194	2016-11-12 03:48:44.54194	2	1	1	2	14	2	1
458	21	D912093	皇庭雪橡	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:52:43.411172	2016-11-12 06:52:43.411172	2	1	1	2	10	2	1
426	21	QD6123482	逸古楠木	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 03:50:24.69611	2016-11-12 03:50:24.69611	2	1	1	2	14	2	1
427	21	QD6123483	逸古楠木	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 03:50:56.687957	2016-11-12 03:50:56.687957	2	1	1	2	14	2	1
428	21	QD6123485	逸古楠木	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.072	21.0	2016-11-12 03:51:39.618455	2016-11-12 03:51:39.618455	2	1	1	2	14	2	1
429	21	QD6123488	逸古楠木	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 03:52:12.44577	2016-11-12 03:52:12.44577	2	1	1	2	14	1	1
430	21	KQD612191	圆舞树海	主转	120x600	KIKI	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 03:52:52.208445	2016-11-12 03:52:52.208445	2	1	1	2	14	2	1
425	21	KQD612153	烟霞木	主转	120x600	KIKI	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 03:49:20.087632	2016-11-12 03:53:01.108969	2	1	1	2	14	2	1
431	21	QD9123510	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 06:25:54.399905	2016-11-12 06:25:54.399905	2	1	1	2	10	2	1
432	21	QD9123510B	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 06:27:18.051248	2016-11-12 06:27:18.051248	2	1	1	2	10	2	1
433	21	QD9123512	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:27:53.934479	2016-11-12 06:27:53.934479	2	1	1	2	10	2	1
434	21	QD9123512B	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:28:47.167007	2016-11-12 06:28:53.018666	2	1	1	2	10	2	1
435	21	QD9123513	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	4	\N	2.45	0.108	24.5	2016-11-12 06:29:43.976235	2016-11-12 06:29:43.976235	2	1	1	2	10	2	1
436	21	QD9123515	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:30:24.605396	2016-11-12 06:30:24.605396	2	1	1	2	10	2	1
437	21	QD9123515B	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:31:04.162432	2016-11-12 06:31:04.162432	2	1	1	2	10	2	1
438	21	QD9123516	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 06:31:51.529234	2016-11-12 06:31:51.529234	2	1	1	2	10	2	1
439	21	QD9123518	巴比伦古橡	主转	120x900	楼兰	2	10.0	3	6	\N	2.45	0.108	24.5	2016-11-12 06:32:43.181938	2016-11-12 06:32:43.181938	2	1	1	2	10	2	1
440	21	QD9124071	北原雪杉	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 06:33:21.40208	2016-11-12 06:33:21.40208	2	1	1	2	10	2	1
441	21	QD9124073	北原雪杉	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:33:58.432924	2016-11-12 06:33:58.432924	2	1	1	2	10	2	1
442	21	D9122031	苍古香楠	主转	120x900	楼兰	2	10.0	3	4	\N	2.45	0.108	24.5	2016-11-12 06:34:42.644302	2016-11-12 06:34:42.644302	2	1	1	2	10	2	1
443	21	D9122032	苍古香楠	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:35:44.970876	2016-11-12 06:35:44.970876	2	1	1	2	10	2	1
444	21	E9122033	苍古香楠	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:36:36.399993	2016-11-12 06:36:36.399993	2	1	1	2	10	2	1
445	21	E9122034	苍古香楠	主转	120x900	楼兰	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 06:37:46.536117	2016-11-12 06:37:46.536117	2	1	1	2	10	2	1
446	21	TD9122342	地板砖	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 06:38:44.746188	2016-11-12 06:38:44.746188	2	1	1	2	10	2	1
447	21	TE9122356	地板砖	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 06:40:00.743365	2016-11-12 06:40:00.743365	2	1	1	2	10	2	1
448	21	TE9122367	地板砖	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 06:40:40.68152	2016-11-12 06:40:40.68152	2	1	1	2	10	2	1
449	21	PD9123502	古苑樱桃	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 06:43:56.621527	2016-11-12 06:43:56.621527	4	1	1	2	10	2	1
450	21	PE9123508	古苑樱桃	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 06:46:11.375711	2016-11-12 06:46:11.375711	4	1	1	2	10	2	1
451	21	PE9123509	古苑樱桃	主转	120x900	楼兰	2	10.0	3	6	\N	2.45	0.108	24.5	2016-11-12 06:47:02.164806	2016-11-12 06:47:02.164806	4	1	1	2	10	2	1
452	21	E912060	皇家橡木	主转	120x900	楼兰	2	10.0	3	6	\N	2.45	0.108	24.5	2016-11-12 06:47:57.53427	2016-11-12 06:47:57.53427	2	1	1	2	10	2	1
453	21	E912062	皇家橡木	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 06:48:35.523812	2016-11-12 06:48:35.523812	2	1	1	2	10	2	1
454	21	E912063	皇家橡木	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 06:50:02.520743	2016-11-12 06:50:02.520743	2	1	1	2	10	2	1
455	21	E912068	皇家橡木	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 06:50:52.170829	2016-11-12 06:50:52.170829	2	1	1	2	10	2	1
456	21	E912069	皇家橡木	主转	120x900	楼兰	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 06:51:40.293191	2016-11-12 06:51:40.293191	2	1	1	2	10	2	1
457	21	D912092	皇庭雪橡	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 06:52:11.697636	2016-11-12 06:52:11.697636	2	1	1	2	10	2	1
459	21	E912098	皇庭雪橡	主转	120x900	楼兰	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 06:53:18.003685	2016-11-12 06:53:18.003685	2	1	1	2	10	2	1
460	21	E912099	皇庭雪橡	主转	120x900	楼兰	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 06:53:49.011988	2016-11-12 06:53:49.011988	2	1	1	2	10	2	1
461	21	E912025	经典柚木	主转	120x900	楼兰	2	10.0	3	4	\N	2.45	0.108	24.5	2016-11-12 06:54:27.637714	2016-11-12 06:54:27.637714	2	1	1	2	10	2	1
462	21	E912029	经典柚木	主转	120x900	楼兰	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 06:55:04.523584	2016-11-12 06:55:04.523584	2	1	1	2	10	2	1
463	21	YMQP912415	镜湖之森.多米尼加	主转	120x900	KIKI	2	10.0	2	3	\N	2.45	0.108	24.5	2016-11-12 07:06:17.497678	2016-11-12 07:07:09.730635	2	1	1	2	10	2	1
464	21	QD9123373	流涧原木	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:07:48.492392	2016-11-12 07:07:48.492392	2	1	1	2	10	2	1
465	21	QD9123374	流涧原木	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:08:23.385532	2016-11-12 07:08:23.385532	2	1	1	2	10	2	1
466	21	QD9123375	流涧原木	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 07:08:57.558945	2016-11-12 07:08:57.558945	2	1	1	2	10	2	1
467	21	QD9123378	流涧原木	主转	120x900	楼兰	2	10.0	2	5	\N	2.45	0.108	24.5	2016-11-12 07:09:34.151624	2016-11-12 07:09:34.151624	2	1	1	2	10	2	1
468	21	TD9122331	木纹砖	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:10:17.198121	2016-11-12 07:10:17.198121	2	1	1	2	10	2	1
469	21	TQD9122432	木纹砖	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:12:14.752296	2016-11-12 07:12:14.752296	2	1	1	2	10	2	1
470	21	TQD9122526	木纹砖	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:12:48.929504	2016-11-12 07:12:48.929504	2	1	1	2	10	2	1
471	21	QD9123772	南美枫木	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:13:19.949085	2016-11-12 07:13:19.949085	2	1	1	2	10	2	1
472	21	QD9123774	南美枫木	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:13:56.7451	2016-11-12 07:13:56.7451	2	1	1	2	10	2	1
473	21	HD9123493	飘香紫檀	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:14:27.583688	2016-11-12 07:14:27.583688	2	1	1	2	10	2	1
474	21	HE9123498	飘香紫檀	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 07:15:01.476007	2016-11-12 07:15:01.476007	2	1	1	2	10	2	1
475	21	HE9123499	飘香紫檀	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 07:15:50.453207	2016-11-12 07:15:50.453207	2	1	1	2	10	2	1
476	21	PD91200	尚品花梨	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 07:25:13.796564	2016-11-12 07:25:17.515233	4	1	1	2	10	2	1
477	21	PD91202	尚品花梨	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:26:00.405166	2016-11-12 07:26:10.762153	4	1	1	2	10	2	1
478	21	PE91204	尚品花梨	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:26:37.757774	2016-11-12 07:26:37.757774	4	1	1	2	10	2	1
479	21	PE91208	尚品花梨	主转	120x900	楼兰	2	10.0	3	1	\N	2.45	0.108	24.5	2016-11-12 07:27:05.890832	2016-11-12 07:27:05.890832	4	1	1	2	10	2	1
480	21	YMQ912425	天荒楠木	主转	120x900	KIKI	2	10.0	3	1	\N	2.45	0.108	24.5	2016-11-12 07:27:42.457351	2016-11-12 07:27:42.457351	2	1	1	2	10	2	1
481	21	QD9124316	万界原木	主转	120x900	楼兰	2	10.0	3	6	\N	2.45	0.108	24.5	2016-11-12 07:28:24.284522	2016-11-12 07:28:24.284522	2	1	1	2	10	2	1
482	21	D912202	西域胡杨	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 07:28:57.378224	2016-11-12 07:28:57.378224	2	1	1	2	10	2	1
483	21	D912205	西域胡杨	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 07:29:30.413686	2016-11-12 07:29:30.413686	2	1	1	2	10	2	1
484	21	D912208	西域胡杨	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:30:02.294846	2016-11-12 07:30:02.294846	2	1	1	2	10	2	1
485	21	E912206	西域胡杨	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:30:37.026298	2016-11-12 07:30:37.026298	2	1	1	2	10	2	1
486	21	PD9122672	新檀木	主转	120x900	楼兰	2	10.0	2	2	\N	2.45	0.108	24.5	2016-11-12 07:31:08.986126	2016-11-12 07:31:08.986126	4	1	1	2	10	2	1
487	21	PD9122675	新檀木	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:31:41.108887	2016-11-12 07:31:41.108887	4	1	1	2	10	2	1
488	21	D615134	雅致胡桃	主砖	150x600	楼兰	6	9.3	3	9	60	1.68	0.09	18.5	2016-11-12 07:34:00.916125	2016-11-12 08:09:36.335968	2	1	1	3	11	2	1
489	21	PE9122678	新檀木	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 07:36:47.817113	2016-11-12 07:36:47.817113	4	1	1	2	10	2	1
490	21	PE9122679	新檀木	主转	120x900	楼兰	2	10.0	2	6	\N	2.45	0.108	24.5	2016-11-12 07:37:30.857412	2016-11-12 07:37:30.857412	4	1	1	2	10	2	1
491	21	QD9123621	雅田坚橡	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 07:38:10.754337	2016-11-12 07:38:10.754337	2	1	1	2	10	2	1
492	21	QD9123623	雅田坚橡	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:38:44.964033	2016-11-12 07:38:44.964033	2	1	1	2	10	2	1
493	21	QD9123624	雅田坚橡	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:39:22.960467	2016-11-12 07:39:22.960467	2	1	1	2	10	2	1
494	21	QD9123625	雅田坚橡	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:39:57.155814	2016-11-12 07:39:57.155814	2	1	1	2	10	2	1
495	21	QD9123627	雅田坚橡	主转	120x900	楼兰	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 07:40:34.498978	2016-11-12 07:40:34.498978	2	1	1	2	10	2	1
497	21	QD9123784	亚马逊原木	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:43:13.493296	2016-11-12 07:43:13.493296	2	1	1	2	10	2	1
496	21	D9123132	雅致胡桃	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 07:42:38.068714	2016-11-12 07:43:21.452309	2	1	1	2	10	2	1
498	21	QD9123786	亚马逊原木	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:43:58.980342	2016-11-12 07:43:58.980342	2	1	1	2	10	2	1
499	21	KQD912158	烟霞木	主转	120x900	KIKI	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 07:44:26.202191	2016-11-12 07:44:34.32199	2	1	1	2	10	2	1
500	21	QD9123482	逸古楠木	主转	120x900	楼兰	2	10.0	3	2	\N	2.45	0.108	24.5	2016-11-12 07:45:12.741588	2016-11-12 07:45:12.741588	2	1	1	2	10	2	1
502	21	QD9123483	逸古楠木	主转	120x900	楼兰	2	10.0	3	3	\N	2.45	0.108	24.5	2016-11-12 07:45:52.250546	2016-11-12 07:45:52.250546	2	1	1	2	10	2	1
501	21	D615135	雅致胡桃	主砖	150x600	楼兰	6	9.3	3	9	60	1.68	0.09	18.5	2016-11-12 07:45:35.580783	2016-11-12 08:13:01.254893	2	1	1	3	11	2	1
146	40	SA9508K1	异形瓷片	腰线	73x600	楼兰	6	9.0	3	10	\N	0.75	0.044	15.0	2016-11-01 08:15:19.674376	2016-11-12 01:20:13.433919	3	1	1	3	20	\N	1
147	40	KSA9508K1	异形瓷片	腰线	73x600	KIKI	6	9.0	3	10	\N	0.75	0.044	15.0	2016-11-01 08:16:55.049758	2016-11-12 01:20:13.435285	3	1	1	3	20	\N	1
148	40	SA9561K1	异形瓷片	腰线	73x600	楼兰	6	9.0	3	10	\N	0.75	0.044	155.0	2016-11-01 08:18:30.148223	2016-11-12 01:20:13.436677	3	1	1	3	20	\N	1
503	21	QD9123485	逸古楠木	主转	120x900	楼兰	2	10.0	3	9	\N	2.45	0.108	24.5	2016-11-12 07:46:22.588168	2016-11-12 07:46:22.588168	2	1	1	2	10	2	1
505	21	QD9123488	逸古楠木	主转	120x900	楼兰	2	10.0	3	5	\N	2.45	0.108	24.5	2016-11-12 07:46:58.690634	2016-11-12 07:46:58.690634	2	1	1	2	10	2	1
506	21	QD9123194	远古旧木	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:47:35.44179	2016-11-12 07:47:35.44179	2	1	1	2	10	2	1
508	21	QD9123195	远古旧木	主转	120x900	楼兰	2	10.0	3	10	\N	2.45	0.108	24.5	2016-11-12 07:48:03.410931	2016-11-12 07:48:03.410931	2	1	1	2	10	2	1
504	21	D615136	雅致胡桃	主砖	150x600	楼兰	6	9.3	3	9	60	1.68	0.09	18.5	2016-11-12 07:46:44.630661	2016-11-12 08:12:44.19519	2	1	1	3	11	2	1
541	21	D615241	绝代风桦	主砖	150x600	楼兰	6	9.36	3	2	60	1.68	0.09	18.5	2016-11-12 08:20:03.274714	2016-11-12 08:20:03.274714	2	1	1	3	11	1	1
510	21	D615022	经典柚木	主转	150x600	楼兰	6	9.5	3	4	60	2.0	0.09	22.0	2016-11-12 07:50:40.583518	2016-11-12 07:59:18.862009	2	1	1	3	11	2	1
512	21	D615092	皇庭雪橡	主转	150x600	楼兰	6	9.5	3	2	60	2.0	0.09	22.0	2016-11-12 07:51:26.018152	2016-11-12 08:00:04.997354	2	1	1	3	11	2	1
519	21	D615233	苍古香楠	主砖	150x600	楼兰	6	9.3	3	3	60	1.68	0.09	18.5	2016-11-12 08:08:57.236426	2016-11-12 08:08:57.236426	2	1	1	3	11	1	1
515	21	D615232	苍古香楠	主砖	150x600	楼兰	6	9.3	3	3	60	1.68	0.09	18.5	2016-11-12 08:06:03.564595	2016-11-12 08:09:05.536389	2	1	1	3	11	1	1
514	21	D615231	苍古香楠	主砖	150x600	楼兰	6	9.3	3	4	60	1.68	0.09	18.5	2016-11-12 08:05:19.085351	2016-11-12 08:09:13.721063	2	1	1	3	11	1	1
513	21	D615229	经典柚木	主砖	150x600	楼兰	6	9.3	3	5	60	1.68	0.09	18.5	2016-11-12 08:04:29.206157	2016-11-12 08:09:21.903692	2	1	1	3	11	1	1
511	21	D615228	经典柚木	主砖	150x600	楼兰	2	9.3	3	4	60	1.68	0.09	18.5	2016-11-12 07:51:22.403999	2016-11-12 08:09:46.557131	2	1	1	3	11	2	1
509	21	D615225	经典柚木	主砖	150x600	楼兰	6	9.3	3	4	60	1.68	0.09	18.5	2016-11-12 07:48:27.03481	2016-11-12 08:10:09.663501	2	1	1	3	11	2	1
507	21	D615222	经典柚木	主砖	150x600	楼兰	6	9.3	3	4	60	1.68	0.09	18.5	2016-11-12 07:47:39.489064	2016-11-12 08:10:35.515558	2	1	1	3	11	2	1
533	21	E61229	传世檀木	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 08:16:08.855681	2016-11-12 08:33:09.36629	2	1	1	2	14	2	1
539	21	D615234	苍古香楠	主砖	150x600	楼兰	6	9.3	3	5	60	1.68	0.09	18.5	2016-11-12 08:19:04.956749	2016-11-12 08:19:04.956749	2	1	1	2	11	1	1
540	20	TD6120605	彩虹玉	主砖	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 08:19:21.631875	2016-11-12 08:19:21.631875	3	1	1	2	14	2	1
542	21	D615242	绝代风桦	主砖	150x600	楼兰	6	9.3	3	3	60	1.68	0.09	18.5	2016-11-12 08:20:58.421033	2016-11-12 08:20:58.421033	2	1	1	3	11	1	1
237	6	DWE	DDDD		DD		1	\N	4	1	\N	\N	\N	\N	2016-11-11 03:43:51.068975	2016-11-12 01:20:13.54241	5	1	1	1	\N	1	1
526	20	HD12127163	意大利木纹	主砖	120x1200	楼兰	2	11.0	3	3	32	1.85	0.144	14.8	2016-11-12 08:12:34.530178	2016-11-12 08:23:56.131692	3	1	1	2	8	2	1
545	21	D61561	传世檀木	主砖	150x600	楼兰	6	9.3	3	9	60	1.68	0.09	18.5	2016-11-12 08:24:35.774636	2016-11-12 08:24:35.774636	2	1	1	3	11	1	1
544	21	D615244	绝代风桦	主砖	150x600	楼兰	6	9.3	3	9	60	1.68	0.09	18.5	2016-11-12 08:22:50.68138	2016-11-12 08:24:43.492825	2	1	1	3	11	1	1
543	21	D615243	绝代风桦	主砖	150x600	楼兰	6	9.3	3	9	60	1.68	0.09	18.5	2016-11-12 08:21:43.088391	2016-11-12 08:24:51.749236	2	1	1	3	11	1	1
546	21	D61562	传世檀木	主砖	150x600	楼兰	6	9.3	3	2	60	1.68	0.09	18.5	2016-11-12 08:25:44.134494	2016-11-12 08:25:44.134494	2	1	1	3	11	1	1
517	21	QD6123512	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 08:07:56.815014	2016-11-12 08:26:44.629445	2	1	1	2	14	2	1
520	21	QD6123515	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 08:09:04.585306	2016-11-12 08:27:09.970421	2	1	1	2	14	2	1
518	21	QD6123513	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	4	\N	1.5	0.072	21.0	2016-11-12 08:08:33.387563	2016-11-12 08:27:44.619592	2	1	1	2	14	2	1
521	21	QD6123516	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 08:09:43.84296	2016-11-12 08:28:24.964899	2	1	1	2	14	2	1
523	21	QD6124071	北原雪杉	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 08:11:00.981169	2016-11-12 08:28:47.656238	2	1	1	2	14	2	1
522	21	KQD612265	巴拿马古橡	主转	120x600	KIKI	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 08:10:20.063924	2016-11-12 08:29:17.072424	2	1	1	2	14	2	1
524	21	QD6124074	北原雪杉	主转	120x600	楼兰	2	9.5	3	1	\N	1.5	0.072	21.0	2016-11-12 08:11:30.855843	2016-11-12 08:29:35.406246	2	1	1	2	14	2	1
525	21	QD6124075	北原雪杉	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.072	21.0	2016-11-12 08:12:10.5779	2016-11-12 08:30:26.398327	2	1	1	2	14	2	1
527	21	D6122030	苍古香楠	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 08:12:42.524651	2016-11-12 08:30:52.149778	2	1	1	2	14	2	1
528	21	D6122031	苍古香楠	主转	120x600	楼兰	2	9.5	3	4	\N	1.5	0.072	21.0	2016-11-12 08:13:20.600603	2016-11-12 08:31:13.043671	2	1	1	2	14	2	1
529	21	D6122032	苍古香楠	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 08:13:52.077813	2016-11-12 08:31:34.807065	2	1	1	2	14	2	1
530	21	E6122033	苍古香楠	主转	120x600	楼兰	2	9.5	3	3	\N	1.5	0.072	21.0	2016-11-12 08:14:29.921259	2016-11-12 08:31:56.737733	2	1	1	2	14	2	1
531	21	E6122034	苍古香楠	主转	120x600	楼兰	2	9.5	3	5	\N	1.5	0.072	21.0	2016-11-12 08:15:06.814725	2016-11-12 08:32:18.818401	2	1	1	2	14	2	1
532	21	D61222	传世檀木	主转	120x600	楼兰	2	9.5	3	10	\N	1.5	0.072	21.0	2016-11-12 08:15:35.159783	2016-11-12 08:32:47.253944	2	1	1	2	14	2	1
534	21	E612200	仿西域胡杨	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 08:16:35.703335	2016-11-12 08:33:27.581641	2	1	1	2	14	2	1
535	21	E612060	皇家橡木	主转	120x600	楼兰	2	9.5	3	6	\N	1.5	0.072	21.0	2016-11-12 08:17:05.521046	2016-11-12 08:33:45.453912	2	1	1	2	14	2	1
536	21	E612062	皇家橡木	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 08:17:38.271911	2016-11-12 08:34:08.166655	2	1	1	2	14	2	1
538	21	D612092	皇庭雪橡	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 08:18:47.351116	2016-11-12 08:35:06.749813	2	1	1	2	14	2	1
516	21	QD6123510	巴比伦古橡	主转	120x600	楼兰	2	9.5	3	2	\N	1.5	0.072	21.0	2016-11-12 08:06:52.662074	2016-11-12 08:25:56.216608	2	1	1	2	14	2	1
547	21	D61563	传世檀木	主砖	150x600	楼兰	6	9.3	3	3	60	1.68	0.09	18.5	2016-11-12 08:26:33.838118	2016-11-12 08:26:39.354368	2	1	1	3	11	1	1
548	20	HD12157163	意大利木纹	主砖	150x1200	楼兰	2	11.0	3	3	\N	4.6	0.18	23.0	2016-11-12 08:26:40.460943	2016-11-12 08:26:40.460943	3	1	1	2	5	2	1
549	21	D61564	传世檀木	主砖	150x600	楼兰	6	9.3	3	10	60	1.68	0.09	18.5	2016-11-12 08:27:30.072549	2016-11-12 08:27:30.072549	2	1	1	3	11	1	1
551	21	D61565	传世檀木	主砖	150x600	楼兰	6	9.3	3	10	60	1.68	0.09	18.5	2016-11-12 08:28:16.57696	2016-11-12 08:28:16.57696	2	1	1	3	11	1	1
552	21	D61567	传世檀木	主砖	150x600	楼兰	6	9.3	3	10	60	1.68	0.09	18.5	2016-11-12 08:29:39.447653	2016-11-12 08:29:39.447653	2	1	1	3	11	1	1
553	20	HDC154002	梦幻莎安娜	主砖	150x150	楼兰	2	9.5	2	3	\N	0.425	0.0225	17.0	2016-11-12 08:30:15.184684	2016-11-12 08:30:15.184684	3	1	1	2	40	2	1
554	21	D61568	传世檀木	主砖	150x600	楼兰	6	9.3	3	9	60	1.68	0.09	18.5	2016-11-12 08:30:37.704885	2016-11-12 08:30:37.704885	2	1	1	3	11	1	1
555	20	HDC15506	黄金甲	主砖	150x150	楼兰	2	9.5	2	3	\N	0.425	0.0225	17.0	2016-11-12 08:32:24.766285	2016-11-12 08:32:24.766285	3	1	1	2	40	2	1
247	37	801533P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:32:43.304872	2016-11-12 01:20:13.554278	3	1	1	2	8	2	1
537	21	E612068	皇家橡木	主转	120x600	楼兰	2	9.5	3	9	\N	1.5	0.072	21.0	2016-11-12 08:18:14.145426	2016-11-12 08:34:38.687655	2	1	1	2	14	2	1
556	21	D615093	皇庭雪橡	主转	150x600	楼兰	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 08:45:14.812758	2016-11-12 08:45:14.812758	2	1	1	2	11	2	1
557	21	D615202	西域胡杨	主转	150x600	楼兰	2	9.5	3	2	60	2.0	0.09	22.0	2016-11-12 08:45:49.012606	2016-11-12 08:45:49.012606	2	1	1	2	11	2	1
558	21	D6152030	苍古香楠	主转	150x600	楼兰	2	9.5	3	2	60	2.0	0.09	22.0	2016-11-12 08:46:20.234916	2016-11-12 08:46:20.234916	2	1	1	2	11	2	1
559	20	HDC157156	戴安娜玫瑰	主砖	150x150	楼兰	2	9.5	2	9	\N	0.425	0.0225	17.0	2016-11-12 08:48:41.918895	2016-11-12 08:48:41.918895	3	1	1	2	40	2	1
560	21	D6152031	苍古香楠	主转	150x600	楼兰	2	9.5	3	4	60	2.0	0.09	22.0	2016-11-12 08:49:18.229599	2016-11-12 08:49:18.229599	2	1	1	2	11	2	1
561	21	D6152032	苍古香楠	主转	150x600	楼兰	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 08:49:46.835534	2016-11-12 08:49:46.835534	2	1	1	2	11	2	1
562	20	HDC154301	雅庭西米	主砖	150x150	楼兰	2	9.5	2	3	\N	0.425	0.0225	17.0	2016-11-12 08:50:05.632961	2016-11-12 08:50:05.632961	3	1	1	2	40	2	1
563	21	D615204	西域胡杨	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 08:50:20.873288	2016-11-12 08:50:20.873288	2	1	1	2	11	2	1
564	21	D615205	西域胡杨	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 08:50:54.368742	2016-11-12 08:50:54.368742	2	1	1	2	11	2	1
565	21	D615208	西域胡杨	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 08:51:23.303358	2016-11-12 08:51:23.303358	2	1	1	2	11	2	1
566	21	D61522	传世檀木	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 08:51:58.519151	2016-11-12 08:52:03.865901	2	1	1	2	11	2	1
567	21	D61524	传世檀木	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 08:52:34.580451	2016-11-12 08:52:34.580451	2	1	1	2	11	2	1
568	21	D61528	传世檀木	主转	150x600	楼兰	2	9.5	3	9	60	2.0	0.09	22.0	2016-11-12 08:53:06.890733	2016-11-12 08:53:06.890733	2	1	1	2	11	2	1
569	21	DC615241	绝代风桦	主转	150x600	楼兰	2	9.5	3	2	60	2.0	0.09	22.0	2016-11-12 08:55:53.450463	2016-11-12 08:55:53.450463	2	1	1	2	11	2	1
570	21	DC615242	绝代风桦	主转	150x600	楼兰	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 08:56:24.466186	2016-11-12 08:56:24.466186	2	1	1	2	11	2	1
571	21	DC615243	绝代风桦	主转	150x600	楼兰	2	9.5	3	9	60	2.0	0.09	22.0	2016-11-12 08:56:54.642697	2016-11-12 08:56:54.642697	2	1	1	2	11	2	1
572	21	DC615244	绝代风桦	主转	150x600	楼兰	2	9.5	2	9	60	2.0	0.09	22.0	2016-11-12 08:57:38.14738	2016-11-12 08:57:38.14738	2	1	1	2	11	2	1
573	21	E615025	经典柚木	主转	150x600	楼兰	2	9.5	3	4	60	2.0	0.09	22.0	2016-11-12 08:58:18.175637	2016-11-12 08:58:18.175637	2	1	1	2	11	2	1
574	21	E615028	经典柚木	主转	150x600	楼兰	2	9.5	3	4	60	2.0	0.09	22.0	2016-11-12 08:58:52.119982	2016-11-12 08:58:52.119982	2	1	1	2	11	2	1
575	21	E615029	经典柚木	主转	150x600	楼兰	2	9.5	2	5	60	2.0	0.09	22.0	2016-11-12 08:59:23.652096	2016-11-12 08:59:23.652096	2	1	1	2	11	2	1
577	21	E615060	皇家橡木	主转	150x600	楼兰	2	9.5	3	6	60	2.0	0.09	22.0	2016-11-12 08:59:53.217364	2016-11-12 08:59:53.217364	2	1	1	2	11	2	1
578	21	E615062	皇家橡木	主转	150x600	楼兰	2	9.5	3	2	60	2.0	0.09	22.0	2016-11-12 09:00:23.944318	2016-11-12 09:00:23.944318	2	1	1	2	11	2	1
581	21	E615063	皇家橡木	主转	150x600	楼兰	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 09:02:03.617752	2016-11-12 09:02:03.617752	2	1	1	2	11	2	1
582	21	D61569	传世檀木	主砖	150x600	楼兰	6	9.3	3	5	60	1.68	0.09	18.5	2016-11-12 09:02:26.425654	2016-11-12 09:02:26.425654	2	1	1	3	11	1	1
583	20	HDC154001	梦幻莎安娜	主砖	150x150	楼兰	2	9.5	2	3	\N	0.425	0.0225	17.0	2016-11-12 09:02:32.622639	2016-11-12 09:02:32.622639	3	1	1	2	40	2	1
584	21	E615068	皇家橡木	主转	150x600	楼兰	2	9.5	3	9	60	2.0	0.09	22.0	2016-11-12 09:02:37.974145	2016-11-12 09:02:37.974145	2	1	1	2	11	2	1
585	21	E615069	皇家橡木	主转	150x600	楼兰	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:03:07.75281	2016-11-12 09:03:07.75281	2	1	1	2	11	2	1
586	21	D61592	皇庭雪橡	主砖	150x600	楼兰	6	9.3	3	2	60	1.68	0.09	18.5	2016-11-12 09:03:11.881475	2016-11-12 09:03:11.881475	2	1	1	3	11	1	1
587	21	E615098	皇庭雪橡	主转	150x600	楼兰	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:03:41.471467	2016-11-12 09:03:41.471467	2	1	1	2	11	2	1
588	21	D61593	皇庭雪橡	主砖	150x600	楼兰	6	9.3	3	3	60	1.68	0.09	18.5	2016-11-12 09:03:57.853499	2016-11-12 09:03:57.853499	2	1	1	3	11	1	1
589	21	E615099	皇庭雪橡	主转	150x600	楼兰	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:04:10.719664	2016-11-12 09:04:10.719664	2	1	1	2	11	2	1
590	21	E615200	西域胡杨	主转	150x600	楼兰	2	9.5	3	2	60	2.0	0.09	22.0	2016-11-12 09:04:48.834233	2016-11-12 09:04:48.834233	2	1	1	2	11	2	1
591	22	D61598	皇庭雪橡	主砖	150x600	楼兰	6	9.3	3	5	60	1.68	0.09	18.5	2016-11-12 09:05:01.09886	2016-11-12 09:05:01.09886	2	1	1	3	11	1	1
592	21	E6152033	苍古香楠	主转	150x600	楼兰	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 09:05:16.447325	2016-11-12 09:05:16.447325	2	1	1	2	11	2	1
593	21	E6152034	苍古香楠	主转	150x600	楼兰	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:05:45.799578	2016-11-12 09:05:45.799578	2	1	1	2	11	2	1
594	21	E615205	西域胡杨	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:06:18.225904	2016-11-12 09:06:18.225904	2	1	1	2	11	2	1
595	21	D61599	皇庭雪橡	主砖	150x600	楼兰	6	9.3	3	5	60	1.68	0.09	18.5	2016-11-12 09:06:19.698743	2016-11-12 09:06:19.698743	2	1	1	3	11	1	1
596	21	E615206	西域胡杨	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:06:50.597294	2016-11-12 09:06:50.597294	2	1	1	2	11	2	1
597	21	E61569	传世檀木	主砖	150x600	楼兰	6	9.3	3	5	60	1.68	0.09	18.5	2016-11-12 09:07:07.33188	2016-11-12 09:07:07.33188	2	1	1	3	11	1	1
598	21	E61528	传世檀木	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:07:26.471544	2016-11-12 09:07:26.471544	2	1	1	2	11	2	1
599	21	E61529	传世檀木	主转	150x600	楼兰	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:10:10.408301	2016-11-12 09:10:10.408301	2	1	1	2	11	2	1
600	21	KQD615201	月影香枝	主砖	150x600	KIKI	6	9.3	3	3	60	1.68	0.09	18.5	2016-11-12 09:10:20.929121	2016-11-12 09:10:20.929121	2	1	1	3	11	1	1
601	21	KQDC615153	烟霞木	主转	150x600	KIKI	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 09:11:42.217635	2016-11-12 09:11:42.217635	2	1	1	2	11	2	1
602	21	KQD615203	月影香枝	主砖	150x600	KIKI	6	9.3	3	4	60	1.68	0.09	18.5	2016-11-12 09:12:13.687046	2016-11-12 09:12:13.687046	2	1	1	3	11	1	1
603	21	KQDC615155	烟霞木	主转	150x600	KIKI	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 09:12:14.333319	2016-11-12 09:12:18.701656	2	1	1	2	11	2	1
604	20	HDC154005	梦幻莎安娜	主砖	150x150	楼兰	2	9.5	2	3	\N	0.425	0.0225	17.0	2016-11-12 09:12:56.310463	2016-11-12 09:12:56.310463	3	1	1	2	40	2	1
605	21	KQD615207	月影香枝	主砖	150x600	KIKI	6	9.3	3	10	60	1.68	0.09	18.5	2016-11-12 09:13:04.92702	2016-11-12 09:13:04.92702	2	1	1	3	11	1	1
606	21	KQDC615158	烟霞木	主转	150x600	KIKI	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:13:27.922613	2016-11-12 09:13:27.922613	2	1	1	2	11	2	1
607	21	KQD615208	月影香枝	主砖	150x600	KIKI	6	9.3	3	10	60	1.68	0.09	18.5	2016-11-12 09:13:56.417857	2016-11-12 09:13:56.417857	2	1	1	3	11	1	1
19	26	L5D80091	西班牙米黄	主砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-28 02:04:53.822513	2016-11-12 01:20:13.230419	3	1	1	2	3	\N	1
22	26	L5D96010	索芙特	主砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-28 02:09:22.598008	2016-11-12 01:20:13.236082	3	1	1	2	3	\N	1
3	7	20161026001	200	200	200		2	2.0	2	2	2	2.0	2.0	2.0	2016-10-26 09:37:24.283943	2016-11-12 01:20:13.237507	2	1	1	2	2	\N	1
18	26	L5D80132	精品劳伦特黑	色砖	800x800	楼兰	2	11.0	2	6	24	17.0	0.64	50.0	2016-10-28 01:55:09.318314	2016-11-12 01:20:13.238882	3	1	1	2	3	\N	1
32	25	L5D80193	美姬塔米黄	主砖	800x800	楼兰	2	11.0	2	3	24	17.0	0.64	50.0	2016-10-28 03:21:52.048605	2016-11-12 01:20:13.240303	3	1	1	2	3	\N	1
41	9	W5D6051	布拉提	主砖	600x600	楼兰	2	9.5	2	2	40	7.5	0.36	30.0	2016-10-28 04:01:21.801414	2016-11-12 01:20:13.241668	3	1	1	2	4	\N	1
13	26	L5D80081	索菲特金	主砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-27 09:05:20.640795	2016-11-12 01:20:13.243065	3	1	1	2	3	\N	1
12	26	L5D80071	侏罗纪米黄	主砖	800x800	楼兰	2	11.0	2	3	24	17.0	0.64	50.0	2016-10-27 09:01:48.62158	2016-11-12 01:20:13.244432	3	1	1	2	3	\N	1
11	26	L5D80063	雪花白	主砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-27 08:59:38.323983	2016-11-12 01:20:13.24578	3	1	1	2	3	\N	1
10	26	L5D80059	极品阿曼米黄	主砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-27 08:58:41.850268	2016-11-12 01:20:13.247131	3	1	1	2	3	\N	1
9	26	L5D80045	顶级莎安娜	主砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-27 08:55:40.47814	2016-11-12 01:20:13.248476	3	1	1	2	3	\N	1
8	26	L5D80038	帕斯高灰	主砖	800x800	楼兰	2	11.0	2	4	24	17.0	0.64	50.0	2016-10-27 08:23:16.778038	2016-11-12 01:20:13.249817	3	1	1	2	3	\N	1
7	26	L5D80010	索芙特	主砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-27 07:57:43.705511	2016-11-12 01:20:13.251125	3	1	1	2	3	\N	1
4	26	L5D80006	新卡布奇诺	主砖	800x800	楼兰	2	11.0	2	10	24	16.8	0.64	50.0	2016-10-27 01:26:48.47268	2016-11-12 01:20:13.252444	3	1	1	2	3	\N	1
2	26	L5D80025	云灰石	主砖	800x800	楼兰	1	11.0	1	3	24	17.0	0.64	51.0	2016-10-26 07:47:26.021897	2016-11-12 01:20:13.25376	3	1	1	1	\N	\N	1
340	21	D1165	传世檀木	主砖	112x458	楼兰	2	\N	3	10	\N	0.95	0.051	19.0	2016-11-11 09:35:29.176673	2016-11-12 01:20:13.679006	2	1	1	2	20	2	1
341	21	KQLD20208	月影香枝	主砖	200x1000	KIKI	6	11.3	3	10	60	4.42	0.2	26.5	2016-11-11 09:36:18.143415	2016-11-12 01:20:13.680341	2	1	1	3	6	1	1
14	26	L5D80095	景泰蓝	色砖	800x800	楼兰	2	11.0	2	8	24	17.0	0.64	50.0	2016-10-27 09:09:56.217843	2016-11-12 01:20:13.255082	3	1	1	2	3	\N	1
15	26	L5D80104	新深啡网	色砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-27 09:13:22.479219	2016-11-12 01:20:13.256517	3	1	1	2	3	\N	1
16	26	L5D80116	罗马红洞石	色砖	800x800	楼兰	2	11.0	2	9	24	17.0	0.64	50.0	2016-10-27 09:20:19.100735	2016-11-12 01:20:13.257869	3	1	1	2	3	\N	1
17	26	L5D80128	法国流金	色砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-27 09:25:56.658671	2016-11-12 01:20:13.259189	3	1	1	2	3	\N	1
40	9	W5D8055	布拉提	主砖	800x800	楼兰	2	9.5	2	7	28	15.0	0.64	45.0	2016-10-28 03:59:21.837931	2016-11-12 01:20:13.260534	3	1	1	2	3	\N	1
29	26	L5D96095	景泰蓝	色砖	600x900	楼兰	2	11.0	3	8	24	17.0	0.54	50.0	2016-10-28 02:36:24.530194	2016-11-12 01:20:13.261851	3	1	1	2	3	\N	1
28	26	L5D96081	索菲特金	主砖	600x900	楼兰	2	11.0	3	10	24	17.0	0.54	50.0	2016-10-28 02:33:51.540409	2016-11-12 01:20:13.26316	3	1	1	2	3	\N	1
27	26	L5D96063	雪花白	主砖\r\n	600x900	楼兰	2	11.0	3	2	24	17.0	0.54	50.0	2016-10-28 02:29:41.824775	2016-11-12 01:20:13.264537	3	1	1	2	3	\N	1
26	26	L5D96059	极品阿曼米黄	主砖	600x900		2	11.0	3	3	24	17.0	0.54	50.0	2016-10-28 02:21:04.936999	2016-11-12 01:20:13.265858	3	1	1	2	3	\N	1
23	26	L5D96025	云灰石	主砖	600x900	楼兰	2	11.0	3	4	24	17.0	0.54	50.0	2016-10-28 02:10:28.541767	2016-11-12 01:20:13.267185	3	1	1	2	3	\N	1
25	26	L5D96045	顶级莎安娜	主砖	600x900	楼兰	2	11.0	3	10	24	17.0	0.54	50.0	2016-10-28 02:15:33.889149	2016-11-12 01:20:13.268522	3	1	1	2	3	\N	1
20	26	L5D96091	西班米黄	主砖	600x900	主砖	2	11.0	3	3	24	17.0	0.54	50.0	2016-10-28 02:06:32.269975	2016-11-12 01:20:13.269829	3	1	1	2	3	\N	1
21	26	L5D96006	新卡布奇诺	主砖	600x900	楼兰	2	11.0	3	10	24	17.0	0.54	50.0	2016-10-28 02:07:57.560099	2016-11-12 01:20:13.271165	3	1	1	2	3	\N	1
24	26	L5D96038	帕斯高灰	主砖	600x900	楼兰	2	11.0	3	4	24	17.0	0.54	50.0	2016-10-28 02:12:32.898302	2016-11-12 01:20:13.272488	3	1	1	2	3	\N	1
30	26	L5D96128	法国流金	色砖	600x900	楼兰	2	11.0	3	10	24	17.0	0.54	50.0	2016-10-28 03:10:19.850191	2016-11-12 01:20:13.273805	3	1	1	2	3	\N	1
31	26	L5D96132	精品劳伦特黑	色砖	600x900	楼兰	2	11.0	3	6	24	17.0	0.54	50.0	2016-10-28 03:11:26.497068	2016-11-12 01:20:13.275113	3	1	1	2	3	\N	1
43	25	L5D80223	奥斯汀	主砖	800x800	楼兰	2	11.0	2	10	24	17.0	0.64	50.0	2016-10-28 06:07:44.066645	2016-11-12 01:20:13.276475	3	1	1	2	3	\N	1
34	25	L5D80202	新博都米黄	主砖	800x800	楼兰	2	11.0	2	3	28	17.0	0.64	50.0	2016-10-28 03:36:24.746972	2016-11-12 01:20:13.277779	3	1	1	2	3	\N	1
38	25	L5D80212	闪电米黄	主砖	800x800	楼兰	2	11.0	2	3	28	17.0	0.64	50.0	2016-10-28 03:49:11.928631	2016-11-12 01:20:13.279108	3	1	1	2	3	\N	1
35	9	W3C8035	聚晶微粉	主砖	800x800	楼兰	2	9.5	2	7	28	15.3	0.64	46.0	2016-10-28 03:41:05.119702	2016-11-12 01:20:13.28045	3	1	1	2	3	\N	1
39	9	W5D8051	布拉提	主砖	800x800	楼兰	2	9.5	2	2	28	15.0	0.64	45.0	2016-10-28 03:50:30.017911	2016-11-12 01:20:13.281768	3	1	1	2	3	\N	1
45	25	L5D80233	黄洞石	主砖	800x800	楼兰	2	11.0	2	7	28	17.0	0.64	50.0	2016-10-28 06:17:50.489199	2016-11-12 01:20:13.283244	3	1	1	2	3	\N	1
36	9	W3C6031	聚晶微粉	主砖	600x600	楼兰	2	9.5	2	2	40	7.5	0.36	30.0	2016-10-28 03:45:44.274668	2016-11-12 01:20:13.28466	3	1	1	2	4	\N	1
33	9	W3C8031	聚晶微粉	主砖	800x800	楼兰	2	10.0	2	2	28	15.3	0.64	46.0	2016-10-28 03:27:25.526496	2016-11-12 01:20:13.28597	3	1	1	2	3	\N	1
42	9	W5D6055	布拉提	主砖	600x600	楼兰	2	9.5	2	7	40	7.5	0.36	30.0	2016-10-28 06:07:12.200456	2016-11-12 01:20:13.287303	3	1	1	2	4	\N	1
44	9	K8P02	郁金香	主砖	800x800	楼兰	2	9.5	2	2	28	15.3	0.64	46.0	2016-10-28 06:10:51.674026	2016-11-12 01:20:13.288671	3	1	1	2	3	\N	1
37	9	W3C6035	聚晶微粉	主砖	600x600	楼兰	2	9.5	2	7	40	7.5	0.36	30.0	2016-10-28 03:48:23.594232	2016-11-12 01:20:13.289972	3	1	1	2	4	\N	1
46	9	K8P03	郁金香	主砖	800x800	楼兰	2	9.5	2	7	28	15.5	0.64	46.0	2016-10-28 06:20:26.186387	2016-11-12 01:20:13.291284	3	1	1	2	3	\N	1
47	26	L5D80242	新罗马玉	主砖	800x800	楼兰	2	11.0	2	10	28	17.0	0.64	50.0	2016-10-28 06:20:37.930478	2016-11-12 01:20:13.292639	3	1	1	2	3	\N	1
49	26	L5D80262	贝花米黄	主砖	800x800	楼兰	2	11.0	2	3	24	17.0	0.64	50.0	2016-10-28 06:27:14.273745	2016-11-12 01:20:13.293946	3	1	1	2	3	\N	1
48	26	L5D80253	香奈金		800x800	楼兰	2	11.0	2	10	28	17.0	0.64	50.0	2016-10-28 06:23:51.174345	2016-11-12 01:20:13.295254	3	1	1	2	3	\N	1
51	9	W3B8006	亚马逊	主砖	800x800	楼兰	2	9.5	2	2	28	15.0	0.64	45.0	2016-10-28 06:40:30.818229	2016-11-12 01:20:13.297964	3	1	1	2	3	\N	1
52	26	L5D80283	沉香浅黄	主砖	800x800	楼兰	2	11.0	2	7	28	17.0	0.64	50.0	2016-10-28 06:41:54.343476	2016-11-12 01:20:13.299274	3	1	1	2	3	\N	1
53	26	L5D80295	新宝石蓝	主砖	800x800	楼兰	2	11.0	2	8	28	17.0	0.64	50.0	2016-10-28 06:49:14.725911	2016-11-12 01:20:13.300609	3	1	1	2	3	\N	1
54	26	L5D80309	沉香深黄	主砖	800x800	楼兰	2	11.0	2	7	28	17.0	11.0	50.0	2016-10-28 06:50:59.519378	2016-11-12 01:20:13.30196	3	1	1	2	3	\N	1
56	9	W3B8009	亚马逊	主砖	800x800	楼兰	2	9.5	2	7	28	15.0	0.64	45.0	2016-10-28 07:19:29.733996	2016-11-12 01:20:13.303284	3	1	1	1	3	\N	1
79	28	KLC63043	澳岩流砂	主砖	300x600	KIKI	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-28 09:18:06.610341	2016-11-12 01:20:13.304627	3	1	1	3	8	\N	1
57	9	GL8881	欧罗莎	主砖	800x800	楼兰	2	9.5	2	2	28	15.0	0.64	45.0	2016-10-28 07:21:58.064395	2016-11-12 01:20:13.305931	3	1	1	2	3	\N	1
58	9	GL8882	欧罗莎	主砖	800x800	楼兰	2	9.5	2	7	28	15.0	0.64	45.0	2016-10-28 07:23:34.105664	2016-11-12 01:20:13.307283	3	1	1	2	3	\N	1
59	9	W6E8011	流行前线	主砖	800x800	楼兰	2	9.5	2	2	28	15.3	0.64	46.0	2016-10-28 07:24:46.651256	2016-11-12 01:20:13.308624	3	1	1	2	3	\N	1
60	9	W6E8013	流行前线	主砖	800x800	楼兰	2	9.5	2	7	28	15.3	0.64	46.0	2016-10-28 07:25:49.939483	2016-11-12 01:20:13.309944	3	1	1	2	3	\N	1
61	9	W6E6011	流行前线	主砖	600x600	楼兰	2	9.5	2	2	40	7.5	0.36	30.0	2016-10-28 07:27:06.218188	2016-11-12 01:20:13.311261	3	1	1	2	4	\N	1
62	9	W6E6013	流行前线	主砖	600x600	楼兰	2	9.5	2	7	28	7.5	0.36	30.0	2016-10-28 07:28:00.624963	2016-11-12 01:20:13.312595	3	1	1	2	4	\N	1
63	9	W5D8045	布拉提	主砖	800x800	楼兰	2	9.5	2	10	28	15.3	0.64	46.0	2016-10-28 07:29:32.624941	2016-11-12 01:20:13.313937	3	1	1	2	3	\N	1
64	9	W5D8046	布拉提	主砖	800x800	楼兰	2	9.5	2	9	28	15.3	0.64	46.0	2016-10-28 07:30:36.538913	2016-11-12 01:20:13.315246	3	1	1	2	3	\N	1
65	9	W3D8049	聚晶微粉	主砖	800x800	楼兰	2	9.5	2	6	28	15.3	0.64	46.0	2016-10-28 07:31:35.748155	2016-11-12 01:20:13.316563	3	1	1	2	3	\N	1
66	17	W3B8011	阿盖尔灰	主砖	800x800	楼兰	2	10.0	2	10	28	16.0	0.64	48.0	2016-10-28 07:50:10.157018	2016-11-12 01:20:13.317905	3	1	1	2	3	\N	1
67	17	W3B8012	西米阳光	主砖	800x800	楼兰	2	10.0	2	10	28	16.0	0.64	48.0	2016-10-28 07:51:24.528149	2016-11-12 01:20:13.319204	3	1	1	2	3	\N	1
68	17	W3B8013	英皇玉品	主砖	800x800	楼兰	2	10.0	2	10	28	16.0	0.64	48.0	2016-10-28 07:52:16.66303	2016-11-12 01:20:13.320619	3	1	1	2	3	\N	1
69	17	W3B8015	飞黄腾达	主砖	800x800	楼兰	2	10.0	2	10	28	16.0	0.64	48.0	2016-10-28 07:53:11.145604	2016-11-12 01:20:13.321948	3	1	1	2	3	\N	1
70	16	W3D8021	水云间	主砖	800x800	楼兰	2	11.0	2	10	28	16.67	0.64	50.0	2016-10-28 07:55:18.090948	2016-11-12 01:20:13.323259	3	1	1	2	3	\N	1
71	17	W3D8083	米黄维纳斯金	主砖	800x800	楼兰	2	11.0	2	10	28	16.67	0.64	50.0	2016-10-28 07:56:51.710981	2016-11-12 01:20:13.324616	3	1	1	2	3	\N	1
73	16	W3D8052	灰冰玉	主砖	800x800	楼兰	2	11.0	2	10	28	16.67	0.64	50.0	2016-10-28 07:57:46.566383	2016-11-12 01:20:13.325934	3	1	1	2	3	\N	1
74	17	W3D8043	意大利洞石	主砖	800x800	楼兰	2	11.0	2	10	28	16.67	0.64	50.0	2016-10-28 07:58:45.099441	2016-11-12 01:20:13.327249	3	1	1	2	3	\N	1
75	17	W3D8065	闪电灰	主砖	800x800	楼兰	2	11.0	2	10	28	16.67	0.64	50.0	2016-10-28 07:59:34.029764	2016-11-12 01:20:13.328573	3	1	1	2	3	\N	1
76	16	W3D8073	伯爵米黄	主砖	800x800	楼兰	2	11.0	2	10	28	16.67	0.64	50.0	2016-10-28 08:00:43.723497	2016-11-12 01:20:13.329916	3	1	1	2	3	\N	1
85	20	QHD807833	凌云石	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 02:56:39.32139	2016-11-12 01:20:13.331218	3	1	1	2	3	\N	1
72	28	KLC63047	丝路时光	主砖	300x600	KIKI	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-28 07:57:30.130896	2016-11-12 01:20:13.332559	3	1	1	3	8	\N	1
77	20	QHD807732	雪域白玉	主砖	800x800	楼兰	2	10.5	2	10	28	16.67	0.64	50.0	2016-10-28 08:30:30.649182	2016-11-12 01:20:13.333897	3	1	1	2	3	\N	1
80	20	8732	羊脂玉	主砖	800x800	楼兰	2	10.5	2	2	28	16.67	0.64	50.0	2016-10-29 02:37:21.837744	2016-11-12 01:20:13.335214	3	1	1	2	3	\N	1
81	20	8742	黄龙玉	主砖	800x800	楼兰	2	10.5	2	7	28	16.67	0.64	50.0	2016-10-29 02:50:03.987663	2016-11-12 01:20:13.336571	3	1	1	2	3	\N	1
82	20	QHD807742	金盏黄玉	主砖	800x800	楼兰	2	10.5	2	7	28	16.67	0.64	50.0	2016-10-29 02:51:03.229471	2016-11-12 01:20:13.337881	3	1	1	2	3	\N	1
83	20	QHD807842	玉皇石	主砖	800x800	楼兰	2	10.5	2	7	28	16.67	0.64	50.0	2016-10-29 02:52:27.456733	2016-11-12 01:20:13.339318	3	1	1	2	3	\N	1
84	20	8A1	新黄玉	主砖	800x800	楼兰	2	10.5	2	7	28	16.67	0.64	50.0	2016-10-29 02:55:30.157404	2016-11-12 01:20:13.340688	3	1	1	2	3	\N	1
86	20	QHD807803	喜马拉雅	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 02:57:38.011789	2016-11-12 01:20:13.341995	3	1	1	2	3	\N	1
87	20	QHD807792	索契灰木	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 02:58:30.78733	2016-11-12 01:20:13.343294	3	1	1	2	3	\N	1
88	20	8KY25190	灰木石光	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:00:05.379099	2016-11-12 01:20:13.34465	3	1	1	2	3	\N	1
89	20	QHD807912	云海石	主砖	800x800	楼兰	2	10.5	2	1	28	16.33	0.64	49.0	2016-10-29 03:01:42.650939	2016-11-12 01:20:13.345972	3	1	1	2	3	\N	1
90	20	QHD807923	巴拉米黄	主砖	800x800	楼兰	2	10.5	2	1	28	16.33	0.64	49.0	2016-10-29 03:06:02.019836	2016-11-12 01:20:13.347277	3	1	1	2	3	\N	1
91	20	QHD807933	黄珊瑚	主砖	800x800	楼兰	2	10.5	2	1	28	16.33	0.64	49.0	2016-10-29 03:06:57.201467	2016-11-12 01:20:13.348623	3	1	1	2	3	\N	1
92	20	QHD807857	祥云石	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:08:07.265805	2016-11-12 01:20:13.349932	3	1	1	2	3	\N	1
93	20	QHD807861	雅丝黑金	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:10:52.108862	2016-11-12 01:20:13.351244	3	1	1	2	3	\N	1
94	20	QHD807877	深紫罗红	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:11:50.149546	2016-11-12 01:20:13.352586	3	1	1	2	3	\N	1
95	20	QHD807886	黑银龙	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:13:06.589282	2016-11-12 01:20:13.353887	3	1	1	2	3	\N	1
96	20	QHD807893	一网情深	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:15:49.295157	2016-11-12 01:20:13.355206	3	1	1	2	3	\N	1
78	28	ULC63043	天籁之音	主砖	300x600	楼兰	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-28 09:15:46.703061	2016-11-12 01:20:13.356544	3	1	1	3	8	\N	1
97	20	QHD807909	金龙	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:16:37.259436	2016-11-12 01:20:13.357857	3	1	1	2	3	\N	1
98	20	L3D80143	落日余晖	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:17:35.515192	2016-11-12 01:20:13.359214	3	1	1	2	3	\N	1
99	20	L3D80152	金丝冰川玉	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:18:26.588307	2016-11-12 01:20:13.360567	3	1	1	2	3	\N	1
100	20	L3D80162	皇室冰花玉	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:19:08.021112	2016-11-12 01:20:13.361872	3	1	1	2	3	\N	1
101	20	L3D80173	金线米黄	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:20:17.377753	2016-11-12 01:20:13.3632	3	1	1	2	3	\N	1
102	20	L3D80182	雪花金冰	主砖	800x800	楼兰	2	10.5	2	1	28	16.67	0.64	50.0	2016-10-29 03:21:20.628333	2016-11-12 01:20:13.364544	3	1	1	2	3	\N	1
103	28	ULC63051	云海黄玉	主砖	300x600	楼兰	6	9.0	3	7	60	3.4	0.18	27.0	2016-10-31 08:59:36.727849	2016-11-12 01:20:13.36588	3	1	1	3	8	\N	1
105	28	ULC63054	思路冰纷	主砖	300x600	楼兰	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:05:58.99597	2016-11-12 01:20:13.36719	3	1	1	3	8	\N	1
107	28	SA9569	异形瓷片	主砖	300x600	楼兰	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:10:49.477806	2016-11-12 01:20:13.368544	3	1	1	3	8	\N	1
109	28	ULC63057	冰岩玉品	主砖	300x600	楼兰	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:15:40.917148	2016-11-12 01:20:13.36985	3	1	1	3	8	\N	1
111	28	SA9508	异形瓷片	主砖	300x600	楼兰	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:18:06.042479	2016-11-12 01:20:13.371178	3	1	1	3	8	\N	1
113	28	SA9561	异形瓷片	主砖	300x600	楼兰	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:21:26.7774	2016-11-12 01:20:13.372514	3	1	1	3	8	\N	1
55	28	ULC63047	时光森林	主砖	800x800	楼兰	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-28 07:06:26.34383	2016-11-12 01:20:13.373838	3	1	1	3	8	\N	1
112	28	KSA9508	异形瓷片	主砖	300x600	KIKI	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:19:33.547147	2016-11-12 01:20:13.375173	3	1	1	3	8	\N	1
110	28	KLC63057	白玫情岩	主砖	300x600	KIKI	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:16:52.116701	2016-11-12 01:20:13.376502	3	1	1	3	8	\N	1
108	28	KSA9569	异形瓷片	主砖	300x600	KIKI	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:14:34.84133	2016-11-12 01:20:13.377905	3	1	1	3	8	\N	1
104	28	KLC63051	玉皇仙子	主砖	300x600	KIKI	6	\N	3	10	60	3.4	0.18	27.0	2016-10-31 09:03:08.590326	2016-11-12 01:20:13.379266	3	1	1	3	8	\N	1
106	28	KLC63054	冰纷传奇	主砖	300x600	KIKI	6	9.0	3	10	60	3.4	0.18	27.0	2016-10-31 09:09:33.082487	2016-11-12 01:20:13.380595	3	1	1	3	8	\N	1
133	37	801502G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:31:33.896296	2016-11-12 01:20:13.381918	3	1	1	2	11	\N	1
115	37	801525G1	转角	转角\r\n	150*150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:11:16.042537	2016-11-12 01:20:13.383332	3	1	1	2	11	\N	1
116	37	81588G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:12:38.512291	2016-11-12 01:20:13.384663	3	1	1	2	11	\N	1
117	37	801527G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:17:52.234834	2016-11-12 01:20:13.386014	3	1	1	2	11	\N	1
118	37	81597G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:18:58.995856	2016-11-12 01:20:13.387318	3	1	1	2	11	\N	1
119	37	801583G1	转角	转角	150x150	楼兰	2	12.5	1	1	\N	0.73	0.0225	15.0	2016-11-01 01:19:50.753951	2016-11-12 01:20:13.388635	3	1	1	2	11	\N	1
120	37	81587G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:20:45.604493	2016-11-12 01:20:13.38997	3	1	1	2	11	\N	1
121	37	81581G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:21:33.216171	2016-11-12 01:20:13.391271	3	1	1	2	11	\N	1
122	37	81591G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:22:29.8404	2016-11-12 01:20:13.392632	3	1	1	2	11	\N	1
123	37	801503G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:23:27.888181	2016-11-12 01:20:13.393935	3	1	1	2	11	\N	1
124	37	801504G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:24:18.76002	2016-11-12 01:20:13.395268	3	1	1	2	11	\N	1
125	37	8108G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:25:05.26615	2016-11-12 01:20:13.396595	3	1	1	2	11	\N	1
126	37	8034G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:26:34.429856	2016-11-12 01:20:13.397899	3	1	1	2	11	\N	1
127	37	801519G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:27:21.088265	2016-11-12 01:20:13.399233	3	1	1	2	11	\N	1
128	37	801514G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:28:07.294479	2016-11-12 01:20:13.400565	3	1	1	2	11	\N	1
129	37	801510G1	转角	转角	150x150	楼兰	2	\N	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:28:46.746604	2016-11-12 01:20:13.401902	3	1	1	2	11	\N	1
130	37	801526G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:29:30.570177	2016-11-12 01:20:13.403241	3	1	1	2	11	\N	1
131	37	801508G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:30:11.155319	2016-11-12 01:20:13.404572	3	1	1	2	11	\N	1
132	37	801520G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:30:51.377395	2016-11-12 01:20:13.405906	3	1	1	2	11	\N	1
134	37	801501G1	转角	转角	150x150	楼兰	2	\N	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:32:18.387565	2016-11-12 01:20:13.40725	3	1	1	2	11	\N	1
135	37	801533G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:33:09.626839	2016-11-12 01:20:13.408572	3	1	1	2	11	\N	1
136	37	801512G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:33:51.149433	2016-11-12 01:20:13.409875	3	1	1	2	11	\N	1
137	37	801505G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:34:30.499871	2016-11-12 01:20:13.411255	3	1	1	2	11	\N	1
138	37	801562G1	转角	转角	150x150	楼兰	2	12.5	2	1	\N	0.73	0.0225	15.0	2016-11-01 01:35:37.214391	2016-11-12 01:20:13.412681	3	1	1	2	11	\N	1
139	28	SA9522	异形瓷片	主砖	300x600	楼兰	6	9.0	3	10	60	3.4	0.18	27.0	2016-11-01 03:18:11.032094	2016-11-12 01:20:13.414102	3	1	1	3	8	\N	1
140	28	KSA9522	异形瓷片	主砖	300x600	KIKI	6	9.0	3	10	60	3.4	0.18	27.0	2016-11-01 03:19:23.875472	2016-11-12 01:20:13.415569	3	1	1	3	8	\N	1
143	40	KSA9569K1	异形瓷片	腰线	73*600	KIKI	6	9.0	3	10	\N	0.75	0.44	15.0	2016-11-01 03:51:36.526241	2016-11-12 01:20:13.428575	3	1	1	3	20	\N	1
142	40	KLC63043K1	澳岩流砂	腰线	300x600	KIKI	6	9.0	3	10	60	0.75	0.044	15.0	2016-11-01 03:21:25.128411	2016-11-12 01:20:13.429982	3	1	1	3	20	\N	1
141	40	ULC63043K1	天籁之音	腰线	300x600	楼兰	6	9.0	3	10	60	0.75	0.044	15.0	2016-11-01 03:20:17.660193	2016-11-12 01:20:13.431309	3	1	1	3	20	\N	1
145	40	KSA9569K1	异形瓷片	腰线	73x600	KIKI	6	9.0	3	10	\N	0.75	0.044	15.0	2016-11-01 08:14:07.450398	2016-11-12 01:20:13.432616	3	1	1	3	20	\N	1
149	40	KSA9561K1	异形瓷片	腰线	73x600	楼兰	6	9.0	3	10	\N	0.75	0.044	15.0	2016-11-01 08:20:07.264705	2016-11-12 01:20:13.438009	3	1	1	3	20	\N	1
188	21	QL915136	雅致胡桃	主砖	150x900	楼兰	5	9.5	3	9	48	2.75	0.135	22.0	2016-11-10 07:30:28.708732	2016-11-12 01:20:13.439317	2	1	1	4	8	1	1
152	38	ULC63043Y2	天籁之音	中花	300x600	楼兰	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 08:28:25.500156	2016-11-12 01:20:13.440703	2	1	1	3	8	\N	1
153	38	KLC63043Y2	澳岩流砂	中花	300x600	KIKI	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 08:51:02.722134	2016-11-12 01:20:13.442015	2	1	1	3	8	\N	1
154	38	ULC63051Y2	云海黄玉	中花	300x600	楼兰	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 08:52:21.834235	2016-11-12 01:20:13.44333	2	1	1	3	8	\N	1
150	38	ULC63047Y2	时光森林	中花	300x600	楼兰	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 08:22:39.642278	2016-11-12 01:20:13.44465	2	1	1	3	8	\N	1
151	38	KLC63047Y2	丝路时光	中花	300x600	KIKI	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 08:24:27.283525	2016-11-12 01:20:13.445985	2	1	1	3	8	\N	1
155	38	KLC63051Y2	玉皇仙子	中花	300x600	KIKI	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 08:55:20.09531	2016-11-12 01:20:13.447295	2	1	1	3	8	\N	1
156	38	ULC63054Y2	思路冰纷	中花	300x600	楼兰	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 08:56:30.687845	2016-11-12 01:20:13.448612	2	1	1	3	8	\N	1
157	38	KLC63054Y2	冰纷传奇	中花	300x600	KIKI	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 08:58:03.629933	2016-11-12 01:20:13.449925	2	1	1	3	8	\N	1
158	38	SA9569Y2	异形瓷片	中花	300x600	楼兰	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 09:04:45.49304	2016-11-12 01:20:13.451225	2	1	1	3	8	\N	1
159	38	KSA9569Y2	异形瓷片	中花	300x600	KIKI	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 09:05:41.93295	2016-11-12 01:20:13.452559	2	1	1	3	8	\N	1
160	38	SA9508Y2	异形瓷片	中花	300x600	楼兰	6	\N	3	10	\N	3.4	0.18	27.0	2016-11-01 09:07:43.360121	2016-11-12 01:20:13.45388	2	1	1	3	8	\N	1
161	38	KSA9508Y2	异形瓷片	中花	300x600	KIKI	6	99.0	3	10	\N	3.4	0.18	27.0	2016-11-01 09:08:43.228517	2016-11-12 01:20:13.455196	2	1	1	3	8	\N	1
162	38	SA9561Y2	异形瓷片	中花	300x600	楼兰	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 09:12:42.291167	2016-11-12 01:20:13.456518	2	1	1	3	8	\N	1
163	38	KSA9561Y2	异形瓷片	中花	300x600	KIKI	6	\N	3	10	\N	3.4	0.18	27.0	2016-11-01 09:13:28.39394	2016-11-12 01:20:13.457865	2	1	1	3	8	\N	1
164	38	ULC63057Y2	 冰岩玉品 	中花	300x600	楼兰	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 09:14:23.258578	2016-11-12 01:20:13.459186	2	1	1	3	8	\N	1
165	38	KLC63057Y2	白玫情岩	中花	300x600	KIKI	6	9.0	3	10	\N	3.4	0.18	27.0	2016-11-01 09:19:55.967172	2016-11-12 01:20:13.460524	2	1	1	3	8	\N	1
166	28	ULC84012	 青灰秀黛	主砖	400x800	楼兰	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:23:27.069639	2016-11-12 01:20:13.461847	3	1	1	3	5	\N	1
167	28	KLC84012	 青龙洞	主砖	400x800	KIKI	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:24:29.33801	2016-11-12 01:20:13.463224	3	1	1	3	5	\N	1
168	28	ULC84013	云舒霞卷	主砖	400x800	楼兰	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:26:57.560882	2016-11-12 01:20:13.464569	3	1	1	3	5	\N	1
169	28	KLC84013	罗曼玉	主砖	400x800	KIKI	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:27:50.144775	2016-11-12 01:20:13.465894	3	1	1	3	5	\N	1
170	28	ULC84016	赤霞凌烟	主砖	400x800	楼兰	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:29:04.175075	2016-11-12 01:20:13.467183	3	1	1	3	5	\N	1
171	28	KLC84016	雅纹石	主砖	400x800	KIKI	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:29:59.559054	2016-11-12 01:20:13.468517	3	1	1	3	5	\N	1
172	28	ULC84018	玉绢黄纱	主砖	400x800	楼兰	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:30:43.207739	2016-11-12 01:20:13.469833	3	1	1	3	5	\N	1
173	28	KLC84018	碧丝玉	主砖	400x800	KIKI	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:31:47.396737	2016-11-12 01:20:13.471134	3	1	1	3	5	\N	1
174	28	ULC84019	  溪砂金缕	主砖	400x800	楼兰	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:32:31.54655	2016-11-12 01:20:13.472467	3	1	1	3	5	\N	1
175	28	KLC84019	金溪砂	主砖	400x800	KIKI	6	9.0	3	10	\N	5.6	0.32	28.0	2016-11-01 09:33:19.401898	2016-11-12 01:20:13.473789	3	1	1	3	5	\N	1
187	21	QL915134	雅致胡桃	主砖	150x900	楼兰	5	9.5	3	9	48	2.75	0.135	22.0	2016-11-10 07:23:49.310352	2016-11-12 01:20:13.475113	2	1	1	4	8	\N	1
189	21	QL915153	云霞木	主砖	150x900	楼兰	5	9.5	3	3	48	2.75	0.135	22.0	2016-11-10 07:31:46.313463	2016-11-12 01:20:13.476494	2	1	1	4	8	\N	1
190	21	QL915244	绝代枫桦	主砖	150x900	楼兰	5	9.5	3	9	48	2.75	0.135	22.0	2016-11-10 07:32:58.082325	2016-11-12 01:20:13.477823	2	1	1	4	8	\N	1
191	21	QL9154412	情醉木香	主砖	150x900	楼兰	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-10 07:35:39.294648	2016-11-12 01:20:13.479134	2	1	1	4	8	\N	1
186	21	QL915092	皇庭雪橡	主砖	150x900	楼兰	5	9.5	3	2	48	2.75	0.135	22.0	2016-11-10 07:16:50.846561	2016-11-12 01:20:13.480478	2	1	1	3	8	1	1
193	21	D1215202	西域胡杨	主砖	150x1200	楼兰	2	11.0	3	2	48	4.6	0.18	23.0	2016-11-11 01:59:28.755181	2016-11-12 01:20:13.481803	2	1	1	2	5	2	1
194	21	D1215203	西域胡杨	主砖	150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 02:00:56.384966	2016-11-12 01:20:13.483107	2	1	1	2	5	2	1
195	21	D1215205	西域胡杨	主砖	150x1200	楼兰	2	11.0	3	9	48	4.6	0.18	23.0	2016-11-11 02:02:06.802988	2016-11-12 01:20:13.484501	2	1	1	2	5	2	1
196	21	D1215208	西域胡杨	主砖	150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 02:03:36.213647	2016-11-12 01:20:13.48582	2	1	1	2	5	2	1
197	21	E1215060	皇家橡木	主砖	150x1200	楼兰	2	11.0	3	6	48	4.6	0.18	23.0	2016-11-11 02:04:54.153264	2016-11-12 01:20:13.487132	2	1	1	2	5	2	1
198	21	E1215062	皇家橡木	主砖	150x1200	楼兰	2	11.0	3	2	48	4.6	0.18	23.0	2016-11-11 02:08:14.710328	2016-11-12 01:20:13.488484	2	1	1	2	5	2	1
199	21	E1215063	皇家橡木	主砖	150x1200	楼兰	2	11.0	3	3	48	4.6	0.18	23.0	2016-11-11 02:09:17.774869	2016-11-12 01:20:13.489807	2	1	1	2	5	2	1
200	21	E1215068	皇家橡木	主砖	150x1200	楼兰	2	11.0	3	9	48	4.6	0.18	23.0	2016-11-11 02:10:23.840616	2016-11-12 01:20:13.491103	2	1	1	2	5	2	1
202	21	E1215069	皇家橡木	主砖	150x1200	楼兰	2	11.0	3	5	48	4.6	0.18	23.0	2016-11-11 02:38:56.006466	2016-11-12 01:20:13.492462	1	1	1	2	5	2	1
203	21	E1215205	西域胡杨	主砖	150x1200	楼兰	2	11.0	3	9	11	4.6	0.18	23.0	2016-11-11 02:40:07.86358	2016-11-12 01:20:13.493802	2	1	1	2	5	2	1
236	29	CESHI003	DD	5	DD	DD	3	5.0	1	2	5	55.0	5.0	5.0	2016-11-11 03:43:09.847054	2016-11-12 01:20:13.496	5	1	1	4	5	\N	1
204	21	E1215206	西域胡杨	主砖	150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 02:42:40.551775	2016-11-12 01:20:13.497358	2	1	1	2	5	2	1
205	21	E1215209	西域胡杨	主砖	150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 02:44:27.197393	2016-11-12 01:20:13.498652	2	1	1	2	5	2	1
206	21	QD12153194	远古旧木	主砖	150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 02:45:49.305358	2016-11-12 01:20:13.499959	2	1	1	2	5	2	1
201	37	801525P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 02:27:53.378284	2016-11-12 01:20:13.501302	1	1	1	2	8	2	1
207	21	QD12153195	远古旧木	主砖	150x1200	楼兰	2	11.0	3	10	11	4.6	0.18	23.0	2016-11-11 02:47:37.316995	2016-11-12 01:20:13.502598	2	1	1	2	5	2	1
208	21	QD12153196	远古旧木	主砖	150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 02:49:17.552147	2016-11-12 01:20:13.503913	2	1	1	2	5	2	1
209	21	QD12153484	逸古楠木	主砖	150x1200	楼兰	2	11.0	3	3	48	4.6	0.18	23.0	2016-11-11 02:50:33.353545	2016-11-12 01:20:13.50528	2	1	1	2	5	2	1
210	21	QD12153485	逸古楠木	主砖	150x1200	楼兰	2	11.0	3	9	48	4.6	0.18	23.0	2016-11-11 02:52:23.931807	2016-11-12 01:20:13.506587	2	1	1	2	5	\N	1
211	21	QD12153488	逸古楠木	主砖	150x1200	楼兰	2	11.0	3	5	11	4.6	0.18	23.0	2016-11-11 02:54:53.226863	2016-11-12 01:20:13.507906	2	1	1	2	5	2	1
212	21	QD12153510	巴比伦古橡	主砖	150x1200	楼兰	2	11.0	3	2	48	4.6	0.18	23.0	2016-11-11 03:02:56.699225	2016-11-12 01:20:13.509255	2	1	1	2	5	2	1
213	21	QD12153512	巴比伦古橡	主砖	150x1200	楼兰	2	11.0	3	3	48	4.6	0.18	23.0	2016-11-11 03:04:31.885754	2016-11-12 01:20:13.510562	2	1	1	2	5	2	1
214	21	QD12153513	巴比伦古橡	主砖	150x1200	楼兰	2	11.0	3	4	48	4.6	0.18	23.0	2016-11-11 03:05:31.531468	2016-11-12 01:20:13.511878	2	1	1	2	5	2	1
215	37	81588P1	波打线	波打线	800x150	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:06:31.107372	2016-11-12 01:20:13.513221	3	1	1	2	\N	2	1
216	37	801527P1	拨打线	拨打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:07:46.482899	2016-11-12 01:20:13.514526	3	1	1	2	8	2	1
217	37	81597P1	拨打线	拨打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:09:57.03557	2016-11-12 01:20:13.515856	3	1	1	2	8	2	1
218	21	QD12153515	巴比伦古橡		150x1200	楼兰	2	11.0	3	3	48	4.6	0.18	23.0	2016-11-11 03:10:09.980667	2016-11-12 01:20:13.517226	2	1	1	2	5	2	1
219	21	QD12153516	巴比伦古橡	主砖	150x1200	楼兰	2	11.0	3	5	48	4.6	0.18	23.0	2016-11-11 03:15:07.842915	2016-11-12 01:20:13.518525	2	1	1	2	5	2	1
220	21	QD12153517	巴比伦古橡	主砖	150x1200	楼兰	2	11.0	3	4	48	4.6	0.18	23.0	2016-11-11 03:19:29.050205	2016-11-12 01:20:13.519855	2	1	1	2	5	2	1
221	21	QD12153627	雅田坚橡	主砖	150x1200	楼兰	2	11.0	3	5	48	4.6	0.18	23.0	2016-11-11 03:21:10.80776	2016-11-12 01:20:13.521187	2	1	1	2	5	2	1
222	21	QD12153784	亚马逊原木		150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 03:23:27.672319	2016-11-12 01:20:13.522484	2	1	1	2	5	2	1
223	21	QD12153785	亚马逊原木	主砖	150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 03:25:05.735553	2016-11-12 01:20:13.523881	2	1	1	2	5	2	1
224	21	QD12153786	亚马逊原木	主砖	150x1200	楼兰	2	11.0	3	10	11	4.6	0.18	23.0	2016-11-11 03:26:06.197124	2016-11-12 01:20:13.525223	2	1	1	2	5	2	1
225	21	QD12154071	北原雪杉	主砖	150x1200	楼兰	2	11.0	3	2	48	4.6	0.18	23.0	2016-11-11 03:27:09.931184	2016-11-12 01:20:13.526535	2	1	1	2	5	2	1
226	37	801583P1	拨打线	拨打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:27:59.474214	2016-11-12 01:20:13.527845	3	1	1	2	8	2	1
227	21	QD12154074	北原雪杉	主砖	150x1200	楼兰	2	11.0	3	2	48	4.6	0.18	23.0	2016-11-11 03:28:11.043848	2016-11-12 01:20:13.529183	2	1	1	2	5	2	1
228	21	TQD12153212	木纹砖	主砖	150x1200	楼兰	2	11.0	3	10	48	4.6	0.18	23.0	2016-11-11 03:29:08.439394	2016-11-12 01:20:13.530492	2	1	1	2	5	2	1
229	37	81587P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:29:10.455491	2016-11-12 01:20:13.531805	3	1	1	2	8	2	1
230	21	YMQ1215422	天荒楠木	主砖	150x1200	楼兰	2	11.0	3	3	48	4.6	0.18	23.0	2016-11-11 03:30:02.603375	2016-11-12 01:20:13.533151	2	1	1	2	5	2	1
231	37	81581P1	拨打线	拨打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:30:11.440808	2016-11-12 01:20:13.534442	3	1	1	2	8	2	1
232	37	81591P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:31:43.550509	2016-11-12 01:20:13.535753	3	1	1	2	8	2	1
233	37	801503P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:33:54.160487	2016-11-12 01:20:13.537151	3	1	1	2	8	2	1
234	37	801504P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:35:19.088092	2016-11-12 01:20:13.538455	3	1	1	2	8	2	1
235	37	8108P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 03:36:20.557865	2016-11-12 01:20:13.539769	3	1	1	2	8	2	1
241	37	801510P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:25:41.352297	2016-11-12 01:20:13.541099	3	1	1	2	8	2	1
238	37	8034P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:19:32.54014	2016-11-12 01:20:13.543703	3	1	1	2	8	2	1
239	37	801519P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:21:01.041413	2016-11-12 01:20:13.545029	3	1	1	2	8	2	1
240	37	801514P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:22:52.495508	2016-11-12 01:20:13.546356	3	1	1	2	8	2	1
242	37	801526P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:26:40.932937	2016-11-12 01:20:13.547672	3	1	1	2	8	2	1
243	37	801508P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:27:54.211415	2016-11-12 01:20:13.548996	3	1	1	2	8	2	1
244	37	801520P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:28:54.631647	2016-11-12 01:20:13.550325	3	1	1	2	8	2	1
245	37	801502P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:30:37.521456	2016-11-12 01:20:13.551644	3	1	1	2	8	2	1
246	37	801501P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:31:30.110294	2016-11-12 01:20:13.552971	3	1	1	2	8	2	1
248	37	801512P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:36:09.656005	2016-11-12 01:20:13.555627	3	1	1	2	8	2	1
249	37	801505P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:37:15.493272	2016-11-12 01:20:13.556968	3	1	1	2	8	2	1
250	37	801562P1	波打线	波打线	150x800	楼兰	2	12.5	3	10	\N	3.38	0.12	27.0	2016-11-11 07:39:18.65176	2016-11-12 01:20:13.558274	3	1	1	2	8	2	1
251	37	HT817223	大理石线条	线条	100x800	楼兰	2	\N	3	10	\N	3.0	0.08	18.0	2016-11-11 07:59:05.073358	2016-11-12 01:20:13.559614	3	1	1	2	6	2	1
252	37	HT817229	大理石线条	线条	100x800	楼兰	2	\N	3	10	\N	3.0	0.08	18.0	2016-11-11 08:00:02.191187	2016-11-12 01:20:13.560946	3	1	1	2	6	2	1
253	37	HT813357	大理石线条	线条	100x800	楼兰	2	\N	3	10	\N	3.0	0.08	18.0	2016-11-11 08:01:32.426016	2016-11-12 01:20:13.562268	3	1	1	2	6	2	1
254	37	HT81768	大理石线条	线条	100x800	楼兰	2	\N	3	10	\N	3.0	0.08	18.0	2016-11-11 08:03:02.404567	2016-11-12 01:20:13.563583	3	1	1	2	6	2	1
255	37	HT817572	大理石线条	线条	100x800	楼兰	2	\N	3	10	\N	6.0	0.08	18.0	2016-11-11 08:04:11.058874	2016-11-12 01:20:13.5649	3	1	1	2	6	2	1
256	21	D1210208	西域胡杨	主砖	100x1200	楼兰	2	12.5	3	10	\N	3.31	0.12	26.5	2016-11-11 08:06:18.084763	2016-11-12 01:20:13.566212	2	1	1	2	8	2	1
257	21	QD12103516	巴比伦古橡	主砖	100x1200	楼兰	2	12.5	3	5	\N	3.31	0.12	26.5	2016-11-11 08:07:57.556478	2016-11-12 01:20:13.567544	2	1	1	2	8	2	1
258	21	QD6103515	巴比伦古橡	主砖	100x600	楼兰	2	9.5	3	3	\N	1.32	0.06	22.5	2016-11-11 08:11:17.454762	2016-11-12 01:20:13.568885	2	1	1	2	17	2	1
259	21	QD6103516	巴比伦古橡	主砖	100x600	楼兰	2	9.5	3	5	\N	1.32	0.06	22.5	2016-11-11 08:12:44.232618	2016-11-12 01:20:13.570268	2	1	1	2	17	2	1
260	21	D6102031	苍古香楠	主砖	100x600	楼兰	2	9.5	3	4	\N	1.32	0.06	22.5	2016-11-11 08:13:55.291227	2016-11-12 01:20:13.571566	2	1	1	2	17	2	1
261	21	D6102032	苍古香楠	主砖	100x600	楼兰	2	9.5	1	3	\N	1.32	0.06	22.5	2016-11-11 08:15:01.685823	2016-11-12 01:20:13.572916	2	1	1	1	17	2	1
262	21	E6102033	苍古香楠	主砖	100x600	楼兰	2	9.5	3	3	\N	1.32	0.06	22.5	2016-11-11 08:15:58.707784	2016-11-12 01:20:13.574238	2	1	1	2	17	2	1
263	21	E6102034	苍古香楠	主砖	100x600	楼兰	2	9.5	3	5	\N	1.32	0.06	22.5	2016-11-11 08:18:11.222202	2016-11-12 01:20:13.575556	2	1	1	2	17	2	1
265	21	E61029	传世檀木	主砖	100x600	楼兰	2	9.5	3	5	\N	1.32	0.06	22.5	2016-11-11 08:19:49.866327	2016-11-12 01:20:13.57693	2	1	1	2	17	2	1
268	21	TD610605	仿皇家橡木	主砖	100x600	楼兰	2	9.5	3	10	\N	1.32	0.06	22.5	2016-11-11 08:22:14.116229	2016-11-12 01:20:13.578355	2	1	1	2	17	2	1
269	21	QL9154423	风雅白蜡	主砖	150x800	楼兰	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-11 08:22:58.78379	2016-11-12 01:20:13.57967	3	1	1	2	8	1	1
270	21	E610060	皇家橡木	主砖	100x600	楼兰	2	9.5	1	6	\N	1.32	0.06	22.5	2016-11-11 08:23:16.619746	2016-11-12 01:20:13.581041	2	1	1	2	17	2	1
271	21	E610062	皇家橡木	主砖	100x600	楼兰	2	9.5	3	2	\N	1.32	0.06	22.5	2016-11-11 08:24:08.168275	2016-11-12 01:20:13.58238	1	1	1	2	17	2	1
273	21	E610069	皇家橡木	主砖	100x600	楼兰	2	9.5	3	5	\N	1.32	0.06	22.5	2016-11-11 08:25:04.319178	2016-11-12 01:20:13.583682	2	1	1	2	17	2	1
274	21	QL9154433C	四叶草	主砖	150x900	楼兰	5	9.5	3	4	48	2.75	0.135	22.0	2016-11-11 08:25:31.650725	2016-11-12 01:20:13.585028	2	1	1	4	8	1	1
272	21	QL9154432C	四叶草	主砖	150x900	楼兰	5	9.5	3	4	48	2.75	0.135	22.0	2016-11-11 08:24:45.809836	2016-11-12 01:20:13.58644	2	1	1	4	8	1	1
276	21	D610093	皇庭雪橡	主砖	100x600	楼兰	2	9.5	3	3	\N	1.32	0.0	22.5	2016-11-11 08:27:28.376663	2016-11-12 01:20:13.587742	2	1	1	2	17	2	1
277	21	E610099	皇庭雪橡	主砖	100x600	楼兰	2	9.5	3	5	\N	1.32	0.06	22.5	2016-11-11 08:28:30.110213	2016-11-12 01:20:13.589102	2	1	1	2	17	2	1
279	21	D610022	经典柚木	主砖	100x600	楼兰	2	9.5	1	4	\N	1.32	0.06	22.5	2016-11-11 08:29:55.691679	2016-11-12 01:20:13.590418	2	1	1	2	17	2	1
281	21	E610025	经典柚木	主砖	100x600	楼兰	2	9.5	1	4	\N	1.32	0.06	22.5	2016-11-11 08:31:01.865612	2016-11-12 01:20:13.591757	2	1	1	2	17	2	1
284	21	QD9103510	巴比伦古橡	主砖	100x900	楼兰	2	10.0	3	2	\N	2.1	0.09	23.0	2016-11-11 08:35:14.81593	2016-11-12 01:20:13.593104	2	1	1	2	11	2	1
285	21	QD9103512	巴比伦古橡	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 08:38:27.22433	2016-11-12 01:20:13.594427	2	1	1	2	11	2	1
286	21	QD9103513	巴比伦古橡	主砖	100x900	楼兰	2	10.0	3	4	\N	2.1	0.09	23.0	2016-11-11 08:39:35.371473	2016-11-12 01:20:13.595796	2	1	1	2	11	2	1
287	21	QD9103515	巴比伦古橡	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 08:40:51.233956	2016-11-12 01:20:13.597163	2	1	1	2	11	2	1
288	21	QD9103516	巴比伦古橡	主砖	100x900	楼兰	2	10.0	3	5	\N	2.1	0.09	23.0	2016-11-11 08:42:10.408914	2016-11-12 01:20:13.598492	2	1	1	2	11	2	1
289	21	D9102031	苍古香楠	主砖	100x900	楼兰	2	10.0	3	4	\N	2.1	0.09	23.0	2016-11-11 08:43:31.413532	2016-11-12 01:20:13.599783	2	1	1	2	11	2	1
283	21	TD6102556	木纹砖	主砖	100x600	楼兰	2	9.5	3	10	\N	1.32	0.06	22.5	2016-11-11 08:31:55.727292	2016-11-12 01:20:13.601151	2	1	1	4	17	2	1
282	21	YML915355	印加樱桃	主砖	150x900	玛奇朵	5	9.5	3	9	48	2.75	0.135	22.0	2016-11-11 08:31:45.921377	2016-11-12 01:20:13.602489	2	1	1	4	8	1	1
291	21	D9102032	苍古香楠	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 08:47:13.386115	2016-11-12 01:20:13.603791	1	1	1	2	11	2	1
292	21	E9102034	苍古香楠	主砖	100x900	楼兰	2	10.0	3	5	\N	2.1	0.09	23.0	2016-11-11 08:50:19.549842	2016-11-12 01:20:13.605146	2	1	1	2	11	2	1
290	21	YML915357	印加樱桃	主砖	150x900	玛奇朵	5	9.5	3	5	48	2.75	0.135	22.0	2016-11-11 08:46:06.490059	2016-11-12 01:20:13.606478	2	1	1	4	8	1	1
293	21	E91029	传世檀木	主砖	100x900	楼兰	2	10.0	3	5	\N	2.1	0.09	23.0	2016-11-11 08:54:04.614189	2016-11-12 01:20:13.607797	2	1	1	2	11	2	1
280	21	TQL9153207	木纹砖	主砖	150x900	楼兰	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-11 08:30:46.327306	2016-11-12 01:20:13.609124	2	1	1	4	8	1	1
278	21	TQL9152463	木纹砖	主砖	150x900	楼兰	5	9.5	3	4	48	2.75	0.135	22.0	2016-11-11 08:29:11.881036	2016-11-12 01:20:13.610455	2	1	1	4	8	1	1
267	21	QL9154417	情醉木香	主砖	150x900	楼兰	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-11 08:21:50.589092	2016-11-12 01:20:13.611779	2	1	1	4	8	1	1
266	21	QL9154415	情醉木香	主砖	150x900	楼兰	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-11 08:20:42.124561	2016-11-12 01:20:13.613135	2	1	1	4	8	1	1
264	21	QL9154413	情醉木香	主砖	150x900	楼兰	5	9.5	2	3	48	2.75	0.135	22.0	2016-11-11 08:18:35.071882	2016-11-12 01:20:13.614448	2	1	1	4	\N	1	1
294	21	E910060	皇家橡木	主砖	100x900	楼兰	2	10.0	1	6	\N	2.1	0.09	23.0	2016-11-11 08:55:16.302158	2016-11-12 01:20:13.615786	2	1	1	2	11	2	1
295	21	E910062	皇家橡木	主砖	100x900	楼兰	2	10.0	3	2	\N	2.1	0.09	23.0	2016-11-11 08:56:14.947265	2016-11-12 01:20:13.61719	2	1	1	2	11	2	1
296	21	E910063	皇家橡木	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 08:57:39.014273	2016-11-12 01:20:13.618523	2	1	1	2	11	2	1
275	21	TQL915091	皇庭雪橡	主砖	150x900	楼兰	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-11 08:26:25.36166	2016-11-12 01:20:13.619801	2	1	1	4	8	1	1
297	21	E910068	皇家橡木	主砖	100x900	楼兰	2	10.0	3	9	\N	2.1	0.09	23.0	2016-11-11 09:00:30.869426	2016-11-12 01:20:13.621123	2	1	1	2	11	2	1
298	21	E910069	皇家橡木	主砖	100x900	楼兰	2	10.0	3	5	\N	2.1	0.09	23.0	2016-11-11 09:01:30.605615	2016-11-12 01:20:13.622407	2	1	1	2	11	2	1
300	21	E910029	经典柚木	主砖	100x900	楼兰	2	10.0	3	5	\N	2.1	0.09	23.0	2016-11-11 09:02:50.672734	2016-11-12 01:20:13.623709	2	1	1	1	11	2	1
299	21	YML915712	冰河原木	主砖	150x900	玛奇朵	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-11 09:02:41.486489	2016-11-12 01:20:13.625064	2	1	1	4	8	1	1
301	21	QD9103373	流涧原木	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 09:03:48.161995	2016-11-12 01:20:13.626398	2	1	1	2	11	2	1
302	21	YML915713	冰河原木	主砖	150x900	玛奇朵	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-11 09:03:51.042179	2016-11-12 01:20:13.627693	2	1	1	4	8	1	1
303	21	YML915715	冰河原木	主砖	150x900	玛奇朵	5	9.5	3	10	48	2.75	0.135	22.0	2016-11-11 09:05:18.049217	2016-11-12 01:20:13.629036	2	1	1	4	8	1	1
304	21	QD9103378	流涧原木	主砖	100x900	楼兰	2	10.0	3	5	\N	2.1	0.09	23.0	2016-11-11 09:05:35.07662	2016-11-12 01:20:13.630352	2	1	1	2	11	2	1
305	21	HD9103493	飘香紫檀	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 09:06:21.78742	2016-11-12 01:20:13.631653	2	1	1	2	11	2	1
306	21	KQLD20153	烟霞木	主砖	200x1000	KIKI	6	11.3	3	3	60	4.42	0.2	26.5	2016-11-11 09:06:46.353932	2016-11-12 01:20:13.632989	2	1	1	3	6	1	1
307	21	PE91004	尚品花梨	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 09:07:14.620044	2016-11-12 01:20:13.634293	4	1	1	2	11	2	1
308	21	KQLD20155	烟霞木	主砖	200x1000	KIKI	6	11.3	3	3	60	4.42	0.2	26.5	2016-11-11 09:07:58.617707	2016-11-12 01:20:13.635602	2	1	1	3	6	1	1
309	21	YMQ910463	田园桃木	主砖	100x900	玛奇朵	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 09:08:08.666401	2016-11-12 01:20:13.637005	2	1	1	2	11	2	1
310	21	PD9102675	新檀木	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 09:08:57.01533	2016-11-12 01:20:13.638334	4	1	1	2	11	2	1
311	21	KQLD20158	烟霞木	主砖	200x1000	KIKI	6	11.3	3	5	60	4.42	0.2	26.5	2016-11-11 09:09:04.711818	2016-11-12 01:20:13.639643	2	1	1	3	6	1	1
312	21	PE9102678	新檀木	主砖	100x900	楼兰	2	10.0	3	9	\N	2.1	0.09	23.0	2016-11-11 09:10:01.184116	2016-11-12 01:20:13.640981	4	1	1	2	11	2	1
313	21	KQLD20164	书香古橡	主砖	200x1000	KIKI	6	11.3	3	4	60	4.42	0.2	26.5	2016-11-11 09:10:11.206751	2016-11-12 01:20:13.642307	2	1	1	3	6	1	1
314	21	QD9103625	雅庭坚橡	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 09:10:59.698243	2016-11-12 01:20:13.643619	2	1	1	2	11	2	1
315	21	KQLD20165	书香古橡	主砖	200x1000	KIKI	5	11.3	3	3	60	4.42	0.2	26.5	2016-11-11 09:11:38.645696	2016-11-12 01:20:13.644967	2	1	1	3	6	1	1
316	21	QD9103627	雅庭坚橡	主砖	100x900	楼兰	2	10.0	3	5	\N	2.1	0.09	23.0	2016-11-11 09:11:49.991398	2016-11-12 01:20:13.646346	2	1	1	2	11	2	1
317	21	E9103134	雅致胡桃	主砖	100x900	楼兰	2	10.0	3	9	\N	2.1	0.09	23.0	2016-11-11 09:12:44.33751	2016-11-12 01:20:13.647671	2	1	1	2	11	2	1
318	21	KQLD20166	书香古橡	主砖	200x1000	KIKI	6	11.3	3	4	60	4.42	0.2	26.55	2016-11-11 09:13:18.493964	2016-11-12 01:20:13.649039	2	1	1	3	6	1	1
319	21	E9103136	雅致胡桃	主砖	100x900	楼兰	2	10.0	3	9	\N	2.1	0.09	23.0	2016-11-11 09:13:33.063635	2016-11-12 01:20:13.650351	2	1	1	2	11	2	1
320	21	KQLD20167	书香古橡	主砖	200x1000	KIKI	6	11.3	3	5	60	4.42	0.2	26.5	2016-11-11 09:14:35.547076	2016-11-12 01:20:13.652136	2	1	1	3	6	1	1
321	21	QD9103482	逸古楠木	主砖	100x900	楼兰	2	10.0	3	2	\N	2.1	0.09	23.0	2016-11-11 09:15:25.380303	2016-11-12 01:20:13.653453	2	1	1	2	11	2	1
322	21	QD9103483	逸古楠木	主砖	100x900	楼兰	2	10.0	3	3	\N	2.1	0.09	23.0	2016-11-11 09:16:27.836258	2016-11-12 01:20:13.654763	2	1	1	2	11	2	1
323	21	QD9103485	逸古楠木	主砖	100x900	楼兰	2	10.0	3	9	\N	2.1	0.09	23.0	2016-11-11 09:18:24.417785	2016-11-12 01:20:13.656154	2	1	1	2	11	2	1
324	21	QD9103488	逸古楠木	主砖	100x900	楼兰	2	10.0	3	5	\N	2.1	0.09	23.0	2016-11-11 09:19:07.869557	2016-11-12 01:20:13.657587	2	1	1	2	11	2	1
325	21	QD9103195	远古旧木	主砖	100x900	楼兰	2	10.0	3	10	\N	2.1	0.09	23.0	2016-11-11 09:20:03.041756	2016-11-12 01:20:13.658956	2	1	1	2	11	2	1
327	21	KQLD20183	云海黄杨	主砖	200x1000	KIKI	6	11.3	3	5	60	4.42	0.02	26.5	2016-11-11 09:24:10.930353	2016-11-12 01:20:13.660363	2	1	1	3	6	1	1
326	21	E110062	皇家橡木	主砖	110x450	楼兰	2	\N	3	2	\N	1.05	0.0495	21.0	2016-11-11 09:22:13.137308	2016-11-12 01:20:13.661685	2	1	1	2	20	2	1
328	21	E4511062	皇家橡木	主砖	110x450	楼兰	2	\N	1	2	\N	1.0	0.0495	20.0	2016-11-11 09:24:13.610422	2016-11-12 01:20:13.662987	2	1	1	2	20	2	1
329	21	KQLD20185	云海黄杨	主砖	200x1000	KIKI	6	11.3	1	3	60	4.42	0.2	26.5	2016-11-11 09:25:46.245723	2016-11-12 01:20:13.664359	2	1	1	3	6	1	1
330	21	KQLD20186	云海黄杨	主砖	200x1000	KIKI	6	11.3	3	9	60	4.42	0.2	26.5	2016-11-11 09:26:52.407481	2016-11-12 01:20:13.665687	2	1	1	3	6	1	1
331	21	KQLD20191	圆舞树海	主砖	200x1000	KIKI	6	11.3	3	2	60	4.42	0.2	26.5	2016-11-11 09:27:55.029727	2016-11-12 01:20:13.667022	2	1	1	3	6	1	1
332	21	KQLD20193	圆舞树海	主砖	200x1000	KIKI	6	11.3	3	4	60	4.42	0.2	26.5	2016-11-11 09:28:57.220864	2016-11-12 01:20:13.668358	2	1	1	3	6	1	1
333	21	KQLD20195	圆舞树海	主砖	200x1000	KIKI	6	11.3	3	3	60	4.42	0.2	26.5	2016-11-11 09:30:20.096252	2016-11-12 01:20:13.669698	2	1	1	3	6	1	1
334	21	KQLD20197	圆舞树海	主砖	200x1000	KIKU	6	11.3	3	5	60	4.42	0.2	26.5	2016-11-11 09:32:10.241598	2016-11-12 01:20:13.671006	5	1	1	3	6	1	1
335	21	KQLD20203	月影香枝	主砖	200x1000	KIKI	6	11.3	3	4	60	4.42	0.2	26.5	2016-11-11 09:33:19.345985	2016-11-12 01:20:13.67236	2	1	1	3	6	1	1
336	21	D1156	传世檀木	主砖	112x458	楼兰	2	\N	3	10	\N	0.95	0.051	19.0	2016-11-11 09:33:20.845519	2016-11-12 01:20:13.673685	2	1	1	2	20	2	1
337	21	KQLD20205	月影香枝	主砖	200x1000	KIKI	6	11.3	3	10	60	4.42	0.2	26.5	2016-11-11 09:34:13.73669	2016-11-12 01:20:13.675005	2	1	1	3	6	1	1
338	21	D1164	传世檀木	主砖	112x458	楼兰	2	\N	3	10	\N	0.95	0.051	19.0	2016-11-11 09:34:23.682671	2016-11-12 01:20:13.676385	2	1	1	2	20	2	1
339	21	KQLD20207	月影香枝	主砖	200x1000	KIKI	6	11.3	3	2	60	4.42	0.2	26.5	2016-11-11 09:35:11.246044	2016-11-12 01:20:13.677691	2	1	1	3	6	1	1
342	21	D1167	传世檀木	主砖	112x458	楼兰	2	10.0	3	10	\N	0.95	0.051	19.0	2016-11-11 09:36:21.190088	2016-11-12 01:20:13.681661	2	1	1	2	20	2	1
343	21	D1168	传世檀木	主砖	112x458	楼兰	2	\N	3	9	\N	0.95	0.051	19.0	2016-11-11 09:37:40.12453	2016-11-12 01:20:13.682951	2	1	1	2	20	2	1
344	21	KQLD20592	墨香铃木	主砖	200x1000	KIKI	6	11.3	3	2	60	4.42	0.2	26.5	2016-11-11 09:38:41.949553	2016-11-12 01:20:13.684274	2	1	1	3	6	1	1
345	21	D1169	传世檀木	主砖	112x458	楼兰	2	\N	3	5	\N	0.95	0.051	19.0	2016-11-11 09:38:48.238695	2016-11-12 01:20:13.685591	2	1	1	2	20	2	1
346	21	KQLD20593	墨香铃木	主砖	200x1000	KIKI	6	11.3	3	2	60	4.42	0.2	26.5	2016-11-11 09:40:13.06865	2016-11-12 01:20:13.687095	2	1	1	3	6	1	1
347	21	KQLD20595	墨香铃木	主砖	200x1000	KIKI	6	11.3	3	2	60	4.42	11.3	26.5	2016-11-11 09:41:10.606384	2016-11-12 01:20:13.688446	2	1	1	3	6	1	1
348	21	KQLD20597	墨香铃木	主砖	200x1000	KIKI	6	11.3	3	2	60	4.42	0.2	26.5	2016-11-11 09:42:53.899216	2016-11-12 01:20:13.689776	2	1	1	3	6	1	1
349	21	D1212202	西域胡杨	主砖	120x1200	楼兰	2	\N	3	2	\N	4.0	0.144	32.0	2016-11-11 09:45:33.795153	2016-11-12 01:20:13.691108	2	1	1	2	8	2	1
350	21	D1212203	西域胡杨	主砖	120x1200	楼兰	2	\N	3	10	\N	4.0	0.144	32.0	2016-11-11 09:47:19.215678	2016-11-12 01:20:13.692471	2	1	1	2	8	2	1
351	21	KVLD20033	龙舌兰木	主砖	200x1000	KIKI	6	11.3	3	10	60	4.42	0.2	26.5	2016-11-11 09:47:45.794425	2016-11-12 01:20:13.693783	2	1	1	3	6	1	1
352	21	D1212208	西域胡杨	主砖	120x1200	楼兰	2	\N	3	10	\N	4.0	0.144	32.0	2016-11-11 09:48:08.630301	2016-11-12 01:20:13.695117	2	1	1	2	8	2	1
353	21	KVLD20035	龙舌兰木	主砖	200x1000	KIKI	6	11.3	3	10	60	4.42	0.2	26.5	2016-11-11 09:48:48.068974	2016-11-12 01:20:13.696483	2	1	1	3	6	1	1
354	21	E1212060	皇家橡木	主砖	120x1200	楼兰	2	\N	3	6	\N	4.0	0.144	32.0	2016-11-11 09:48:56.936677	2016-11-12 01:20:13.697795	2	1	1	2	8	2	1
355	21	LA2000	尚品花梨	主砖	200x1000	楼兰	6	11.3	3	10	60	4.42	0.2	26.5	2016-11-11 09:49:54.67502	2016-11-12 01:20:13.699121	2	1	1	3	6	1	1
356	21	LA2002	尚品花梨	主砖	200x1000	楼兰	6	11.3	3	2	60	4.42	0.2	26.5	2016-11-11 09:50:49.416541	2016-11-12 01:20:13.700479	2	1	1	3	6	1	1
357	21	E1212062	皇家橡木	主砖	120x1200	楼兰	2	\N	3	2	\N	4.0	0.144	32.0	2016-11-11 09:51:10.929328	2016-11-12 01:20:13.701819	2	1	1	2	8	2	1
358	21	E1212063	皇家橡木	主砖	120x1200	楼兰	2	\N	3	3	\N	4.0	0.144	32.0	2016-11-11 09:52:38.708029	2016-11-12 01:20:13.703118	2	1	1	2	8	2	1
359	21	E1212069	皇家橡木	主砖	120x1200	楼兰	2	\N	3	5	\N	4.0	0.144	32.0	2016-11-11 09:53:28.050769	2016-11-12 01:20:13.704473	2	1	1	2	8	2	1
360	21	QD12123510	巴比伦古橡	主砖	120x1200	楼兰	2	\N	3	2	\N	4.0	0.144	32.0	2016-11-11 09:54:34.4596	2016-11-12 01:20:13.705802	2	1	1	2	8	2	1
361	21	LA2004	尚品花梨	主砖	200x1000	楼兰	6	11.3	3	10	60	4.42	0.2	26.5	2016-11-11 09:55:18.878763	2016-11-12 01:20:13.707107	2	1	1	3	6	1	1
362	21	QD12123512	巴比伦古橡	主砖	120x1200	楼兰	2	\N	3	3	\N	4.0	0.144	32.0	2016-11-11 09:55:24.118253	2016-11-12 01:20:13.708466	2	1	1	2	8	2	1
363	21	LA2008	尚品花梨	主砖	200x1000	楼兰	6	11.3	3	6	600	4.42	0.2	26.5	2016-11-11 09:56:14.245673	2016-11-12 01:20:13.709794	2	1	1	3	6	1	1
364	21	LA20134	雅致胡桃	主砖	200x1000	楼兰	6	11.3	3	9	60	4.42	0.2	26.55	2016-11-11 09:57:17.888814	2016-11-12 01:20:13.711142	2	1	1	3	6	1	1
365	21	QD12123513	巴比伦古橡	主砖	120x1200	楼兰	2	\N	3	4	\N	4.0	0.144	32.0	2016-11-11 09:57:40.564239	2016-11-12 01:20:13.712504	2	1	1	2	8	2	1
366	21	LA20136	雅致胡桃	主砖	200x1000	楼兰	6	11.3	3	9	60	4.42	0.2	26.5	2016-11-11 09:58:36.942715	2016-11-12 01:20:13.713839	2	1	1	3	6	1	1
367	21	QD12123515	巴比伦古橡	主砖	120x1200	楼兰	2	\N	3	3	\N	4.0	0.144	32.0	2016-11-11 09:58:51.781886	2016-11-12 01:20:13.715156	2	1	1	2	8	2	1
368	21	LA20202	西域胡杨	主砖	200x1000	楼兰	6	11.3	3	2	60	4.42	0.2	26.5	2016-11-11 09:59:27.626668	2016-11-12 01:20:13.716493	2	1	1	3	6	1	1
369	21	QD12123516	巴比伦古橡	主砖	120x1200	楼兰	2	\N	3	5	\N	4.0	0.144	32.0	2016-11-11 09:59:47.101753	2016-11-12 01:20:13.717825	2	1	1	2	8	2	1
370	21	LB20232	苍古香楠	主砖	200x1000	楼兰	6	11.3	3	3	60	4.42	0.2	26.5	2016-11-11 10:00:17.479145	2016-11-12 01:20:13.719112	2	1	1	3	6	1	1
608	21	KQDC615191	圆舞树海	主转	150x600	KIKI	2	9.5	3	2	60	2.0	0.09	22.0	2016-11-12 09:13:57.498565	2016-11-12 09:13:57.498565	2	1	1	2	11	2	1
609	20	HDC157122	法国米黄	主砖	150x150	楼兰	2	9.5	2	3	\N	0.425	0.0225	17.0	2016-11-12 09:14:39.482052	2016-11-12 09:14:39.482052	3	1	1	2	40	2	1
610	21	KQDC615193	圆舞树海	主转	150x600	KIKI	2	9.5	3	4	60	2.0	0.09	22.0	2016-11-12 09:14:39.854324	2016-11-12 09:14:39.854324	2	1	1	2	11	2	1
611	21	KQD615592	墨香铃木	主砖	150x600	KIKI	6	9.3	3	2	60	1.68	0.09	18.5	2016-11-12 09:15:05.514654	2016-11-12 09:15:05.514654	2	1	1	3	11	1	1
612	21	KQDC615195	圆舞树海	主转	150x600	KIKI	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 09:15:09.041351	2016-11-12 09:15:09.041351	2	1	1	2	11	2	1
613	21	KQDC615197	圆舞树海	主转	150x600	KIKI	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:15:38.700154	2016-11-12 09:15:38.700154	2	1	1	2	11	2	1
614	21	KQDC615242	里约檀木	主转	150x600	KIKI	2	9.5	3	2	60	2.0	0.09	22.0	2016-11-12 09:16:09.146014	2016-11-12 09:16:09.146014	2	1	1	2	11	2	1
615	21	KQDC615243	里约檀木	主转	150x600	KIKI	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 09:16:33.040943	2016-11-12 09:16:33.040943	2	1	1	2	11	2	1
616	21	KQD615595	墨香铃木	主砖	150x600	KIKI	6	9.3	3	2	60	1.68	0.09	18.5	2016-11-12 09:16:45.737634	2016-11-12 09:16:45.737634	2	1	1	3	11	1	1
617	21	KQDC615245	里约檀木	主转	150x600	KIKI	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:17:00.356625	2016-11-12 09:17:00.356625	2	1	1	2	11	2	1
618	21	KQDC615247	里约檀木	主转	150x600	KIKI	2	9.5	3	6	60	2.0	0.09	22.0	2016-11-12 09:17:28.558005	2016-11-12 09:17:28.558005	2	1	1	2	11	2	1
619	21	KQD615597	墨香铃木	主砖	150x600	KIKI	6	9.3	3	2	60	1.68	0.09	18.5	2016-11-12 09:17:37.273053	2016-11-12 09:17:37.273053	2	1	1	3	11	1	1
620	20	HDC15502	黄金甲	主砖	150x150	楼兰	2	9.5	2	3	\N	0.425	0.0225	17.0	2016-11-12 09:17:54.42433	2016-11-12 09:17:54.42433	3	1	1	2	40	2	1
621	21	KQDC615267	巴拿马古橡	主转	150x600	KIKI	2	9.5	3	4	60	2.0	0.09	22.0	2016-11-12 09:18:07.67054	2016-11-12 09:18:07.67054	2	1	1	2	11	2	1
579	20	HD15502P5	黄金甲配件	配件	150x150	楼兰	2	9.5	2	3	\N	0.85	0.0225	17.0	2016-11-12 09:00:42.628184	2016-11-12 09:18:17.909256	3	1	1	2	20	2	1
622	21	QD6153627	雅田坚橡	主砖	150x600	楼兰	6	9.3	3	5	60	1.68	0.09	18.5	2016-11-12 09:18:35.894857	2016-11-12 09:18:35.894857	2	1	1	3	11	1	1
623	21	KQDC615592	墨香铃木	主转	150x600	KIKI	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:18:46.880453	2016-11-12 09:18:46.880453	2	1	1	2	11	2	1
624	21	KQDC615593	墨香铃木	主转	150x600	KIKI	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:19:16.574892	2016-11-12 09:19:16.574892	2	1	1	2	11	2	1
625	20	DC15506	黄金甲	主砖	150x150	楼兰	2	9.5	2	3	\N	0.425	0.0225	17.0	2016-11-12 09:19:30.03023	2016-11-12 09:19:30.03023	3	1	1	2	40	2	1
626	21	QD6154012	林海红杉	主砖	150x600	楼兰	6	9.3	3	2	60	1.68	0.09	18.5	2016-11-12 09:19:36.384762	2016-11-12 09:19:36.384762	2	1	1	3	11	1	1
627	21	KQDC615597	墨香铃木	主转	150x600	KIKI	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:19:42.713314	2016-11-12 09:19:42.713314	2	1	1	2	11	2	1
628	21	QDC6153194	远古旧木	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:20:21.124876	2016-11-12 09:20:21.124876	2	1	1	2	11	2	1
629	21	QD6154014	林海红杉	主砖	150x600	楼兰	6	9.3	3	3	60	1.68	0.09	18.5	2016-11-12 09:20:29.803164	2016-11-12 09:20:29.803164	2	1	1	3	11	1	1
630	21	QD6154015	林海红杉	主砖	150x600	楼兰	6	9.3	3	3	60	1.68	0.09	18.5	2016-11-12 09:21:19.306238	2016-11-12 09:21:19.306238	2	1	1	3	11	1	1
631	21	QDC6153195	远古旧木	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:21:26.127465	2016-11-12 09:21:26.127465	2	1	1	2	11	2	1
632	21	QDC6153196	远古旧木	主转	150x600	楼兰	2	9.5	3	10	60	2.0	0.09	22.0	2016-11-12 09:22:01.888749	2016-11-12 09:22:01.888749	2	1	1	2	11	1	1
633	21	QD6154315	万界原木	主砖	150x600	楼兰	6	9.3	3	4	60	1.68	0.09	18.5	2016-11-12 09:22:10.3113	2016-11-12 09:22:10.3113	2	1	1	3	11	1	1
634	20	HD6157213	灰木纹	主砖	150x600	楼兰	2	9.3	3	4	\N	1.682	0.09	18.5	2016-11-12 09:22:11.09574	2016-11-12 09:22:11.09574	3	1	1	2	11	2	1
635	21	QDC6153373	流涧原木	主转	150x600	楼兰	2	9.5	3	3	60	2.0	0.09	22.0	2016-11-12 09:22:28.032714	2016-11-12 09:22:28.032714	2	1	1	2	11	2	1
636	21	QDC6153375	流涧原木	主转	150x600	楼兰	2	9.5	3	9	60	2.0	0.09	22.0	2016-11-12 09:22:52.784629	2016-11-12 09:22:52.784629	2	1	1	2	11	2	1
638	21	QD6154432C	四叶草	主砖	150x600	楼兰	6	9.3	3	4	60	1.68	0.09	18.5	2016-11-12 09:23:07.386717	2016-11-12 09:23:07.386717	2	1	1	3	11	1	1
639	21	QDC6153378	流涧原木	主转	150x600	楼兰	2	9.5	3	5	60	2.0	0.09	22.0	2016-11-12 09:23:19.15037	2016-11-12 09:23:19.15037	2	1	1	2	11	2	1
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('products_id_seq', 639, true);


--
-- Data for Name: rim_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY rim_categories (id, "position", name, created_at, updated_at) FROM stdin;
1	1	原装边	2016-11-10 09:52:06.722665	2016-11-10 09:52:06.722665
2	2	精装边	2016-11-10 09:52:06.724826	2016-11-10 09:52:06.724826
\.


--
-- Name: rim_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('rim_categories_id_seq', 3, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20161012172359
20161012191342
20161012191458
20161012191715
20161015141158
20161017141334
20161017142251
20161017142401
20161017142422
20161018014819
20161019012020
20161022022553
20161021093503
20161022015458
20161022022021
20161022025745
20161025034100
20161025034506
20161025035156
20161025041233
20161025051814
20161025055305
20161027005300
20161027010709
20161028031041
20161028031052
20161028032502
20161028051359
20161028062129
20161028062517
20161028063155
20161028080908
20161028081128
20161028085107
20161028092230
20161029061720
20161029072421
20161029074945
20161031031931
20161031035955
20161031040428
20161031101644
20161101032128
20161101092313
20161102024615
20161102063248
20161103073205
20161103074717
20161103131719
20161103132056
20161110025326
20161110030030
20161110030523
20161110030742
20161110031705
20161110031715
20161110075309
20161110075733
20161110095136
20161111034214
20161111034450
20161111080418
20161111085137
20161111092104
20161111093111
20161111102140
20161111111608
\.


--
-- Data for Name: searches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY searches (id, created_at, updated_at) FROM stdin;
\.


--
-- Name: searches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('searches_id_seq', 1, false);


--
-- Data for Name: shapes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY shapes (id, name, "position", created_at, updated_at) FROM stdin;
1	请选择	0	2016-10-18 07:11:30.940404	2016-10-26 09:33:06.86539
2	正方形	1	2016-10-18 07:11:30.942352	2016-10-26 09:33:06.867498
3	长方形	2	2016-10-18 07:11:30.943884	2016-10-26 09:33:06.869286
4	六角形	3	2016-10-18 07:11:30.945448	2016-10-26 09:33:06.871038
5	菱形	4	2016-10-18 07:11:30.946975	2016-10-26 09:33:06.872835
6	其他	5	2016-10-26 09:33:06.874591	2016-10-26 09:33:06.874591
7	圆形	6	2016-11-12 01:20:17.733299	2016-11-12 01:20:17.733299
\.


--
-- Name: shapes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('shapes_id_seq', 8, false);


--
-- Data for Name: site_skus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY site_skus (id, site_id, created_at, updated_at, product_id, selected, sku_id) FROM stdin;
\.


--
-- Name: site_skus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('site_skus_id_seq', 3, true);


--
-- Data for Name: sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sites (id, code, name, created_at, updated_at) FROM stdin;
1	51exc	E选材	2016-11-03 14:08:12.940773	2016-11-03 14:08:12.940773
2	ezz168	E找砖	2016-11-03 14:08:12.942951	2016-11-03 14:08:12.942951
3	97efx	E分销	2016-11-03 14:08:12.944594	2016-11-03 14:08:12.944594
4	51ecg	E采购	2016-11-03 14:08:12.946174	2016-11-03 14:08:12.946174
5	51ezg	E直供	2016-11-03 14:08:12.947798	2016-11-03 14:08:12.947798
6		E出口	2016-11-03 14:08:12.949525	2016-11-03 14:08:12.949525
7	llhome	家居网	2016-11-03 14:08:12.951111	2016-11-03 14:08:12.951111
8	chinahomeb2b	chinahome	2016-11-03 14:08:12.95271	2016-11-03 14:08:12.95271
9	lolatiles	lolatiles	2016-11-03 14:08:12.954328	2016-11-03 14:08:12.954328
\.


--
-- Name: sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sites_id_seq', 10, false);


--
-- Data for Name: skus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY skus (id, product_id, level, name, created_at, updated_at, face_price, price_unit_id, currency_id) FROM stdin;
6	237	A	DWE	2016-11-11 03:44:46.286694	2016-11-11 03:44:46.286694	\N	\N	\N
7	237	C	DWE	2016-11-11 03:45:06.858667	2016-11-11 03:45:06.858667	\N	\N	\N
\.


--
-- Name: skus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('skus_id_seq', 7, true);


--
-- Data for Name: surface_crafts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY surface_crafts (id, name, "position", created_at, updated_at) FROM stdin;
1	请选择	0	2016-10-25 08:16:35.970883	2016-10-26 09:33:06.884158
2	哑面	1	2016-10-25 08:16:35.973121	2016-10-26 09:33:06.886251
3	光面	2	2016-10-26 09:33:06.888074	2016-10-26 09:33:06.888074
4	半抛	3	2016-10-26 09:33:06.88988	2016-11-11 03:34:07.814936
5	其它	4	2016-11-11 03:34:07.817573	2016-11-11 03:34:07.817573
6	混合	5	2016-11-12 01:20:17.767539	2016-11-12 01:20:17.767539
\.


--
-- Name: surface_crafts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('surface_crafts_id_seq', 7, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, employee_number, name, mobile, password_digest, created_at, updated_at, admin) FROM stdin;
1	ethan	ethan zhang	\N	$2a$10$p3Y9AN8P4MxtBQXuaxRaauK0FxgtZ1uJhGdNq6Soe.lL.2t1kOf1a	2016-10-18 14:13:28.101888	2016-10-18 14:51:14.111533	f
2	9900575	willy		$2a$10$l5LJhhE6cVBN3dVXcdjdx.FGjwDdiSjYHD6C6NorK.SJSWn1M2j42	2016-10-19 01:18:21.308761	2016-10-19 01:18:21.308761	f
4	qinwei	123456	qinwei	$2a$10$jTciDTndGFpsjiZemqgrzOIPNE81oA9TA6IpX/msI8MACnzVV2BVu	2016-10-19 03:43:59.805068	2016-10-19 03:43:59.805068	f
6	admin	admin	\N	$2a$10$ADjfKkuiwEWMkY2z8wlXq.PGtf/1IKWT6uha4zJUJfcUr2u9hefsK	2016-10-21 02:35:32.053641	2016-10-21 02:35:32.053641	t
7	0200001	李旺		$2a$10$0wNwvyQ3uUN6hEhXIq56UeLoOlqIn7ih1G9p.G6wAJL9tgM2lFzki	2016-10-26 07:26:15.151097	2016-10-26 07:26:15.151097	f
8	0100014	黃志福		$2a$10$BIdkI44RIUr6FMbRo0iDnuD.RGdwjGSMQ9bUcgrzaf3/e6qkIyQNO	2016-10-26 07:27:27.205841	2016-10-26 07:27:27.205841	f
9	0100067	林观平		$2a$10$PvPXv7da3RbvFFMOfam3peyM7Uzkq91BPt67yfYCeW2wu1dhjrRGm	2016-10-26 07:28:39.918646	2016-10-26 07:28:39.918646	f
10	0100273	欧柱		$2a$10$vh550Gns60ZmdauLGcE/w.8u0q50M0AB9Ov8BBVYNmltYJVgV0nYa	2016-10-26 07:31:38.892813	2016-10-26 07:31:38.892813	f
11	0100274	吴泽生		$2a$10$XmOAujWdM6Hp4qqctOVm.uVmo23DG6h9EFFME5TWmVxv8zCaEtad2	2016-10-26 07:32:39.190743	2016-10-26 07:32:39.190743	f
12	0200361	吴世宇		$2a$10$EbflIHpGKT4qauRSmlbadOd7.sl36AFVeffRrGpQqF5vf94AVTXWi	2016-10-26 07:34:35.797896	2016-10-26 07:34:35.797896	f
14	0200564	谢顺沛		$2a$10$M/pmlSYJFkjwmHHIqWuTdOs74e.NDQYpi5F2SuapZ6OKEc40zDdeq	2016-10-26 07:36:50.842683	2016-10-26 07:36:50.842683	f
13	0200546	林旭彬		$2a$10$lUnrEwOsSqVesEk.ALwhK.ZA/GlelvttaFAwFUdIQSg98kr/5v4Wm	2016-10-26 07:35:38.893161	2016-10-26 07:37:24.567118	f
15	0200565	谭淑弟		$2a$10$T3fKjriZUVbe8BSvTdloAOsFpY2bA9ipx53gFypLi5Dqeq4COVllC	2016-10-26 07:38:38.632383	2016-10-26 07:38:38.632383	f
16	9900595	wu	18824898742	$2a$10$hFAs94XvEEkFP1sXi6Ty9usYhbN2iwHP2CFf6PU26bcP1.ZRH4A7.	2016-11-07 00:53:04.583248	2016-11-07 00:53:04.583248	f
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 17, false);


--
-- Data for Name: warehouses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY warehouses (id, name, "position", created_at, updated_at) FROM stdin;
1	佛山	1	2016-10-31 09:40:03.757328	2016-10-31 09:40:03.757328
2	深圳	2	2016-10-31 09:40:03.759517	2016-10-31 09:40:03.759517
3	重庆	3	2016-10-31 09:40:03.761069	2016-10-31 09:40:03.761069
4	成都	4	2016-10-31 09:40:03.762664	2016-10-31 09:40:03.762664
5	天津	5	2016-10-31 09:40:03.764222	2016-10-31 09:40:03.764222
6	武汉	6	2016-10-31 09:40:03.765766	2016-10-31 09:40:03.765766
7	上沙	7	2016-10-31 09:40:03.767265	2016-10-31 09:40:03.767265
8	南京	8	2016-10-31 09:40:03.768785	2016-10-31 09:40:03.768785
9	杭州	9	2016-10-31 09:40:03.770278	2016-10-31 09:40:03.770278
10	南宁	10	2016-10-31 09:40:03.771747	2016-10-31 09:40:03.771747
11	福州	11	2016-10-31 09:40:03.773264	2016-10-31 09:40:03.773264
12	海南	12	2016-10-31 09:40:03.774763	2016-10-31 09:40:03.774763
13	江阴	13	2016-10-31 09:40:03.776279	2016-10-31 09:40:03.776279
\.


--
-- Name: warehouses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('warehouses_id_seq', 14, false);


--
-- Data for Name: water_absrp_rates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY water_absrp_rates (id, name, "position", created_at, updated_at) FROM stdin;
1	请选择	0	2016-10-18 07:11:30.9549	2016-10-26 09:33:06.907409
2	0.5以下	1	2016-10-18 07:11:30.956885	2016-10-26 09:33:06.909469
3	0.5 ~ 3.0	2	2016-10-18 07:11:30.958424	2016-10-26 09:33:06.911211
4	3.0 ~ 6.0	3	2016-10-18 07:11:30.959936	2016-10-26 09:33:06.912928
5	6.0 ~ 10.0	4	2016-10-18 07:11:30.961505	2016-10-26 09:33:06.914688
6	10.0以上	5	2016-10-26 09:33:06.916423	2016-10-26 09:33:06.916423
\.


--
-- Name: water_absrp_rates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('water_absrp_rates_id_seq', 7, false);


--
-- Name: baby_managements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY baby_managements
    ADD CONSTRAINT baby_managements_pkey PRIMARY KEY (id);


--
-- Name: base_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY base_units
    ADD CONSTRAINT base_units_pkey PRIMARY KEY (id);


--
-- Name: business_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY business_units
    ADD CONSTRAINT business_units_pkey PRIMARY KEY (id);


--
-- Name: colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY colors
    ADD CONSTRAINT colors_pkey PRIMARY KEY (id);


--
-- Name: currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY currencies
    ADD CONSTRAINT currencies_pkey PRIMARY KEY (id);


--
-- Name: images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- Name: price_managements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY price_managements
    ADD CONSTRAINT price_managements_pkey PRIMARY KEY (id);


--
-- Name: price_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY price_units
    ADD CONSTRAINT price_units_pkey PRIMARY KEY (id);


--
-- Name: product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);


--
-- Name: product_category_base_units_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_category_base_units
    ADD CONSTRAINT product_category_base_units_pkey PRIMARY KEY (id);


--
-- Name: product_category_colors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_category_colors
    ADD CONSTRAINT product_category_colors_pkey PRIMARY KEY (id);


--
-- Name: product_category_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_category_materials
    ADD CONSTRAINT product_category_materials_pkey PRIMARY KEY (id);


--
-- Name: product_category_shapes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_category_shapes
    ADD CONSTRAINT product_category_shapes_pkey PRIMARY KEY (id);


--
-- Name: product_category_surface_crafts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_category_surface_crafts
    ADD CONSTRAINT product_category_surface_crafts_pkey PRIMARY KEY (id);


--
-- Name: product_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_fields
    ADD CONSTRAINT product_fields_pkey PRIMARY KEY (id);


--
-- Name: product_image_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_image_categories
    ADD CONSTRAINT product_image_categories_pkey PRIMARY KEY (id);


--
-- Name: product_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);


--
-- Name: product_managements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY product_managements
    ADD CONSTRAINT product_managements_pkey PRIMARY KEY (id);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: rim_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY rim_categories
    ADD CONSTRAINT rim_categories_pkey PRIMARY KEY (id);


--
-- Name: searches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY searches
    ADD CONSTRAINT searches_pkey PRIMARY KEY (id);


--
-- Name: shapes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY shapes
    ADD CONSTRAINT shapes_pkey PRIMARY KEY (id);


--
-- Name: site_skus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY site_skus
    ADD CONSTRAINT site_skus_pkey PRIMARY KEY (id);


--
-- Name: sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sites
    ADD CONSTRAINT sites_pkey PRIMARY KEY (id);


--
-- Name: skus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY skus
    ADD CONSTRAINT skus_pkey PRIMARY KEY (id);


--
-- Name: surface_crafts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY surface_crafts
    ADD CONSTRAINT surface_crafts_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: warehouses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (id);


--
-- Name: water_absrp_rates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY water_absrp_rates
    ADD CONSTRAINT water_absrp_rates_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

