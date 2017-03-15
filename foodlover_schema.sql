--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.0
-- Dumped by pg_dump version 9.6.0

-- Started on 2017-01-15 08:15:51

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2257 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 187 (class 1259 OID 16871)
-- Name: account_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16844)
-- Name: accounts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE accounts (
    account_id integer DEFAULT nextval('account_id_seq'::regclass) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying,
    role_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    updated_date timestamp without time zone DEFAULT now() NOT NULL,
    status boolean DEFAULT true NOT NULL,
    provider character varying NOT NULL,
    uid character varying(255),
    token character varying(255),
    name character varying(255),
    image_url character varying(255)
);


--
-- TOC entry 2258 (class 0 OID 0)
-- Dependencies: 185
-- Name: TABLE accounts; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE accounts IS 'Tài khoản người dùng';


--
-- TOC entry 2259 (class 0 OID 0)
-- Dependencies: 185
-- Name: COLUMN accounts.status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN accounts.status IS 'true: active
false: block';


--
-- TOC entry 202 (class 1259 OID 17625)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 192 (class 1259 OID 16938)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 190 (class 1259 OID 16907)
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE categories (
    category_id integer DEFAULT nextval('category_id_seq'::regclass) NOT NULL,
    name character varying(150) NOT NULL,
    parent_id integer NOT NULL,
    sort_order integer NOT NULL
);


--
-- TOC entry 2260 (class 0 OID 0)
-- Dependencies: 190
-- Name: TABLE categories; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE categories IS 'Phân loại món ăn';


--
-- TOC entry 204 (class 1259 OID 17854)
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE ckeditor_assets (
    id integer NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    type character varying(30),
    width integer,
    height integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- TOC entry 203 (class 1259 OID 17852)
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2261 (class 0 OID 0)
-- Dependencies: 203
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE ckeditor_assets_id_seq OWNED BY ckeditor_assets.id;


--
-- TOC entry 193 (class 1259 OID 16941)
-- Name: food_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE food_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 191 (class 1259 OID 16914)
-- Name: foods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE foods (
    food_id integer DEFAULT nextval('food_id_seq'::regclass) NOT NULL,
    name character varying(250) NOT NULL,
    price numeric NOT NULL,
    summary text,
    feature text,
    detail text,
    promote_price numeric,
    stock_qty integer DEFAULT 1 NOT NULL,
    category_id integer NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    updated_date timestamp without time zone DEFAULT now(),
    image_url_1 character varying(250),
    image_url_2 character varying(250),
    image_url_3 character varying(250),
    status boolean NOT NULL,
    user_id integer NOT NULL,
    url character varying NOT NULL
);


--
-- TOC entry 2262 (class 0 OID 0)
-- Dependencies: 191
-- Name: TABLE foods; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE foods IS 'Món ăn';


--
-- TOC entry 206 (class 1259 OID 17902)
-- Name: income_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE income_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 205 (class 1259 OID 17892)
-- Name: incomes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE incomes (
    income_id integer DEFAULT nextval('income_id_seq'::regclass) NOT NULL,
    user_id integer NOT NULL,
    amount numeric,
    created_date timestamp without time zone DEFAULT now(),
    updated_date timestamp without time zone DEFAULT now()
);


--
-- TOC entry 2263 (class 0 OID 0)
-- Dependencies: 205
-- Name: TABLE incomes; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE incomes IS 'Khoản thu của thành viên';


--
-- TOC entry 198 (class 1259 OID 16979)
-- Name: invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE invoice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 195 (class 1259 OID 16948)
-- Name: invoices; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE invoices (
    invoice_id integer DEFAULT nextval('invoice_id_seq'::regclass) NOT NULL,
    transaction_id integer NOT NULL,
    food_id integer NOT NULL,
    quantity integer NOT NULL,
    amount numeric(20,0) NOT NULL,
    status boolean NOT NULL,
    user_id integer NOT NULL,
    created_date date DEFAULT now() NOT NULL
);


--
-- TOC entry 2264 (class 0 OID 0)
-- Dependencies: 195
-- Name: TABLE invoices; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE invoices IS 'Hóa đơn thanh toán';


--
-- TOC entry 2265 (class 0 OID 0)
-- Dependencies: 195
-- Name: COLUMN invoices.status; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN invoices.status IS 'true: đơn hàng đã gửi đến khách hàng
false: đơn hàng chưa được gửi đến khách hàng';


--
-- TOC entry 188 (class 1259 OID 16877)
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 186 (class 1259 OID 16849)
-- Name: roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE roles (
    role_id integer DEFAULT nextval('role_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    description text
);


--
-- TOC entry 2266 (class 0 OID 0)
-- Dependencies: 186
-- Name: TABLE roles; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE roles IS 'Quyền truy cập của tài khoản';


--
-- TOC entry 201 (class 1259 OID 17617)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 17467)
-- Name: slider_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE slider_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 199 (class 1259 OID 17459)
-- Name: sliders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE sliders (
    slider_id integer DEFAULT nextval('slider_id_seq'::regclass) NOT NULL,
    image_url character varying(255) NOT NULL,
    content text,
    "order" integer,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    updated_date timestamp without time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 2267 (class 0 OID 0)
-- Dependencies: 199
-- Name: TABLE sliders; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE sliders IS 'Slider trang chủ';


--
-- TOC entry 197 (class 1259 OID 16976)
-- Name: transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 196 (class 1259 OID 16965)
-- Name: transactions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE transactions (
    transaction_id integer DEFAULT nextval('transaction_id_seq'::regclass) NOT NULL,
    customer_name character varying(150) NOT NULL,
    customer_email character varying(255) NOT NULL,
    customer_phone character varying(20) NOT NULL,
    customer_address character varying(255) NOT NULL,
    amount numeric(20,0) NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    status boolean NOT NULL,
    payment_method character varying(50) NOT NULL,
    quantity integer NOT NULL,
    customer_city character varying(150) NOT NULL
);


--
-- TOC entry 2268 (class 0 OID 0)
-- Dependencies: 196
-- Name: TABLE transactions; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE transactions IS 'Thông tin phiên giao dịch';


--
-- TOC entry 194 (class 1259 OID 16944)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 189 (class 1259 OID 16892)
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE users (
    user_id integer DEFAULT nextval('user_id_seq'::regclass) NOT NULL,
    fullname character varying NOT NULL,
    gender boolean,
    date_of_birth date,
    address character varying(255),
    city character varying(100),
    phone_number character varying(20),
    updated_date timestamp without time zone DEFAULT now(),
    email character varying(255) NOT NULL
);


--
-- TOC entry 2269 (class 0 OID 0)
-- Dependencies: 189
-- Name: TABLE users; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE users IS 'Thông tin chi tiết của người dùng';


--
-- TOC entry 2092 (class 2604 OID 17857)
-- Name: ckeditor_assets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('ckeditor_assets_id_seq'::regclass);


--
-- TOC entry 2097 (class 2606 OID 16876)
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (account_id);


--
-- TOC entry 2121 (class 2606 OID 17632)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2107 (class 2606 OID 16932)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 2109 (class 2606 OID 16913)
-- Name: categories category_unq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT category_unq UNIQUE (name);


--
-- TOC entry 2123 (class 2606 OID 17862)
-- Name: ckeditor_assets ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- TOC entry 2111 (class 2606 OID 16921)
-- Name: foods food_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY foods
    ADD CONSTRAINT food_pkey PRIMARY KEY (food_id);


--
-- TOC entry 2126 (class 2606 OID 17899)
-- Name: incomes incomes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY incomes
    ADD CONSTRAINT incomes_pkey PRIMARY KEY (income_id);


--
-- TOC entry 2113 (class 2606 OID 16975)
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (invoice_id);


--
-- TOC entry 2099 (class 2606 OID 16882)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (role_id);


--
-- TOC entry 2101 (class 2606 OID 16891)
-- Name: roles roles_unq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_unq UNIQUE (name);


--
-- TOC entry 2119 (class 2606 OID 17624)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 2117 (class 2606 OID 17474)
-- Name: sliders sliders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY sliders
    ADD CONSTRAINT sliders_pkey PRIMARY KEY (slider_id);


--
-- TOC entry 2115 (class 2606 OID 16972)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (transaction_id);


--
-- TOC entry 2103 (class 2606 OID 16896)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2105 (class 2606 OID 17565)
-- Name: users users_unq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_unq UNIQUE (email);


--
-- TOC entry 2124 (class 1259 OID 17863)
-- Name: index_ckeditor_assets_on_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ckeditor_assets_on_type ON ckeditor_assets USING btree (type);


--
-- TOC entry 2127 (class 2606 OID 17575)
-- Name: accounts accounts_roles_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_roles_fkey FOREIGN KEY (role_id) REFERENCES roles(role_id);


--
-- TOC entry 2128 (class 2606 OID 17581)
-- Name: accounts accounts_users_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT accounts_users_fkey FOREIGN KEY (email) REFERENCES users(email);


--
-- TOC entry 2129 (class 2606 OID 16956)
-- Name: foods food_categories_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY foods
    ADD CONSTRAINT food_categories_fkey FOREIGN KEY (category_id) REFERENCES categories(category_id);


--
-- TOC entry 2130 (class 2606 OID 17421)
-- Name: foods food_users_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY foods
    ADD CONSTRAINT food_users_fkey FOREIGN KEY (user_id) REFERENCES users(user_id);


--
-- TOC entry 2132 (class 2606 OID 16999)
-- Name: invoices invoices_food_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY invoices
    ADD CONSTRAINT invoices_food_fkey FOREIGN KEY (food_id) REFERENCES foods(food_id);


--
-- TOC entry 2131 (class 2606 OID 16994)
-- Name: invoices invoices_transactions_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY invoices
    ADD CONSTRAINT invoices_transactions_fkey FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id);


--
-- TOC entry 2133 (class 2606 OID 17587)
-- Name: invoices invoices_users_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY invoices
    ADD CONSTRAINT invoices_users_fkey FOREIGN KEY (user_id) REFERENCES users(user_id);


-- Completed on 2017-01-15 08:15:53

--
-- PostgreSQL database dump complete
--

