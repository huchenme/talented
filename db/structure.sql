--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE active_admin_comments (
    id integer NOT NULL,
    resource_id character varying(255) NOT NULL,
    resource_type character varying(255) NOT NULL,
    author_id integer,
    author_type character varying(255),
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    namespace character varying(255)
);


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE active_admin_comments_id_seq OWNED BY active_admin_comments.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE admin_users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE admin_users_id_seq OWNED BY admin_users.id;


--
-- Name: availabilities; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE availabilities (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: availabilities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE availabilities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: availabilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE availabilities_id_seq OWNED BY availabilities.id;


--
-- Name: business_types; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE business_types (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: business_types_developers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE business_types_developers (
    developer_id integer,
    business_type_id integer
);


--
-- Name: business_types_employers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE business_types_employers (
    employer_id integer,
    business_type_id integer
);


--
-- Name: business_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE business_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: business_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE business_types_id_seq OWNED BY business_types.id;


--
-- Name: compensations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE compensations (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: compensations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE compensations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: compensations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE compensations_id_seq OWNED BY compensations.id;


--
-- Name: developers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE developers (
    id integer NOT NULL,
    relocate boolean,
    "position" character varying(255),
    location character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    company character varying(255),
    work_permit_id integer,
    compensation_id integer,
    availability_id integer,
    goal text,
    linkedin character varying(255),
    github character varying(255)
);


--
-- Name: developers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE developers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: developers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE developers_id_seq OWNED BY developers.id;


--
-- Name: developers_position_types; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE developers_position_types (
    developer_id integer,
    position_type_id integer
);


--
-- Name: developers_team_sizes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE developers_team_sizes (
    developer_id integer,
    team_size_id integer
);


--
-- Name: developers_tech_skills; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE developers_tech_skills (
    developer_id integer,
    tech_skill_id integer
);


--
-- Name: employers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE employers (
    id integer NOT NULL,
    company_name character varying(255),
    website character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    other_contact character varying(255),
    location character varying(255),
    description text,
    vision text,
    team_size_id integer
);


--
-- Name: employers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE employers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE employers_id_seq OWNED BY employers.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jobs (
    id integer NOT NULL,
    employer_id integer,
    title character varying(255),
    description text,
    responsibility text,
    requirement text,
    compensation_id integer,
    ideal_candidate text,
    availability_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE jobs_id_seq OWNED BY jobs.id;


--
-- Name: jobs_position_types; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jobs_position_types (
    job_id integer,
    position_type_id integer
);


--
-- Name: jobs_tech_skills; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jobs_tech_skills (
    job_id integer,
    tech_skill_id integer
);


--
-- Name: position_types; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE position_types (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: position_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE position_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: position_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE position_types_id_seq OWNED BY position_types.id;


--
-- Name: rails_admin_histories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE rails_admin_histories (
    id integer NOT NULL,
    message text,
    username character varying(255),
    item integer,
    "table" character varying(255),
    month smallint,
    year bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: rails_admin_histories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE rails_admin_histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rails_admin_histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE rails_admin_histories_id_seq OWNED BY rails_admin_histories.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: team_sizes; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE team_sizes (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: team_sizes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE team_sizes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: team_sizes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE team_sizes_id_seq OWNED BY team_sizes.id;


--
-- Name: tech_skills; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE tech_skills (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: tech_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE tech_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tech_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE tech_skills_id_seq OWNED BY tech_skills.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    crypted_password character varying(255),
    salt character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    remember_me_token character varying(255) DEFAULT NULL::character varying,
    remember_me_token_expires_at timestamp without time zone,
    reset_password_token character varying(255) DEFAULT NULL::character varying,
    reset_password_token_expires_at timestamp without time zone,
    reset_password_email_sent_at timestamp without time zone,
    last_login_at timestamp without time zone,
    last_logout_at timestamp without time zone,
    last_activity_at timestamp without time zone,
    last_login_from_ip_address character varying(255) DEFAULT NULL::character varying,
    profile_id integer,
    profile_type character varying(255),
    firstname character varying(255),
    lastname character varying(255)
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: work_permits; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE work_permits (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: work_permits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE work_permits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: work_permits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE work_permits_id_seq OWNED BY work_permits.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY active_admin_comments ALTER COLUMN id SET DEFAULT nextval('active_admin_comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY admin_users ALTER COLUMN id SET DEFAULT nextval('admin_users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY availabilities ALTER COLUMN id SET DEFAULT nextval('availabilities_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY business_types ALTER COLUMN id SET DEFAULT nextval('business_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY compensations ALTER COLUMN id SET DEFAULT nextval('compensations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY developers ALTER COLUMN id SET DEFAULT nextval('developers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY employers ALTER COLUMN id SET DEFAULT nextval('employers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY jobs ALTER COLUMN id SET DEFAULT nextval('jobs_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY position_types ALTER COLUMN id SET DEFAULT nextval('position_types_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY rails_admin_histories ALTER COLUMN id SET DEFAULT nextval('rails_admin_histories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY team_sizes ALTER COLUMN id SET DEFAULT nextval('team_sizes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY tech_skills ALTER COLUMN id SET DEFAULT nextval('tech_skills_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY work_permits ALTER COLUMN id SET DEFAULT nextval('work_permits_id_seq'::regclass);


--
-- Name: admin_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY active_admin_comments
    ADD CONSTRAINT admin_notes_pkey PRIMARY KEY (id);


--
-- Name: admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: availabilities_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY availabilities
    ADD CONSTRAINT availabilities_pkey PRIMARY KEY (id);


--
-- Name: business_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY business_types
    ADD CONSTRAINT business_types_pkey PRIMARY KEY (id);


--
-- Name: compensations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY compensations
    ADD CONSTRAINT compensations_pkey PRIMARY KEY (id);


--
-- Name: developers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY developers
    ADD CONSTRAINT developers_pkey PRIMARY KEY (id);


--
-- Name: employers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY employers
    ADD CONSTRAINT employers_pkey PRIMARY KEY (id);


--
-- Name: jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: position_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY position_types
    ADD CONSTRAINT position_types_pkey PRIMARY KEY (id);


--
-- Name: rails_admin_histories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY rails_admin_histories
    ADD CONSTRAINT rails_admin_histories_pkey PRIMARY KEY (id);


--
-- Name: team_sizes_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY team_sizes
    ADD CONSTRAINT team_sizes_pkey PRIMARY KEY (id);


--
-- Name: tech_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY tech_skills
    ADD CONSTRAINT tech_skills_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: work_permits_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY work_permits
    ADD CONSTRAINT work_permits_pkey PRIMARY KEY (id);


--
-- Name: developers_business_types_index; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX developers_business_types_index ON business_types_developers USING btree (developer_id, business_type_id);


--
-- Name: developers_position_types_index; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX developers_position_types_index ON developers_position_types USING btree (developer_id, position_type_id);


--
-- Name: developers_team_sizes_index; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX developers_team_sizes_index ON developers_team_sizes USING btree (developer_id, team_size_id);


--
-- Name: developers_tech_skills_index; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX developers_tech_skills_index ON developers_tech_skills USING btree (developer_id, tech_skill_id);


--
-- Name: employers_business_types_index; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX employers_business_types_index ON business_types_employers USING btree (employer_id, business_type_id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_active_admin_comments_on_namespace ON active_admin_comments USING btree (namespace);


--
-- Name: index_admin_notes_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_admin_notes_on_resource_type_and_resource_id ON active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_email ON admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON admin_users USING btree (reset_password_token);


--
-- Name: index_developers_on_availablity_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_developers_on_availablity_id ON developers USING btree (availability_id);


--
-- Name: index_developers_on_compensation_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_developers_on_compensation_id ON developers USING btree (compensation_id);


--
-- Name: index_developers_on_work_permit_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_developers_on_work_permit_id ON developers USING btree (work_permit_id);


--
-- Name: index_employers_on_team_size_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_employers_on_team_size_id ON employers USING btree (team_size_id);


--
-- Name: index_jobs_on_availability_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_jobs_on_availability_id ON jobs USING btree (availability_id);


--
-- Name: index_jobs_on_compensation_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_jobs_on_compensation_id ON jobs USING btree (compensation_id);


--
-- Name: index_jobs_on_employer_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_jobs_on_employer_id ON jobs USING btree (employer_id);


--
-- Name: index_rails_admin_histories; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_rails_admin_histories ON rails_admin_histories USING btree (item, "table", month, year);


--
-- Name: index_users_on_last_logout_at_and_last_activity_at; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_users_on_last_logout_at_and_last_activity_at ON users USING btree (last_logout_at, last_activity_at);


--
-- Name: index_users_on_profile_id_and_profile_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_users_on_profile_id_and_profile_type ON users USING btree (profile_id, profile_type);


--
-- Name: index_users_on_remember_me_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_users_on_remember_me_token ON users USING btree (remember_me_token);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: jobs_position_types_index; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX jobs_position_types_index ON jobs_position_types USING btree (job_id, position_type_id);


--
-- Name: jobs_tech_skills_index; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX jobs_tech_skills_index ON jobs_tech_skills USING btree (job_id, tech_skill_id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user",public;

INSERT INTO schema_migrations (version) VALUES ('20130804064831');

INSERT INTO schema_migrations (version) VALUES ('20130807042508');

INSERT INTO schema_migrations (version) VALUES ('20130807094455');

INSERT INTO schema_migrations (version) VALUES ('20130810114628');

INSERT INTO schema_migrations (version) VALUES ('20130810120439');

INSERT INTO schema_migrations (version) VALUES ('20130810120440');

INSERT INTO schema_migrations (version) VALUES ('20130810120441');

INSERT INTO schema_migrations (version) VALUES ('20130810130503');

INSERT INTO schema_migrations (version) VALUES ('20130811053420');

INSERT INTO schema_migrations (version) VALUES ('20130811055734');

INSERT INTO schema_migrations (version) VALUES ('20130811055751');

INSERT INTO schema_migrations (version) VALUES ('20130811105936');

INSERT INTO schema_migrations (version) VALUES ('20130811105952');

INSERT INTO schema_migrations (version) VALUES ('20130811110012');

INSERT INTO schema_migrations (version) VALUES ('20130811110058');

INSERT INTO schema_migrations (version) VALUES ('20130811110113');

INSERT INTO schema_migrations (version) VALUES ('20130811110228');

INSERT INTO schema_migrations (version) VALUES ('20130812135938');

INSERT INTO schema_migrations (version) VALUES ('20130812141440');

INSERT INTO schema_migrations (version) VALUES ('20130812162305');

INSERT INTO schema_migrations (version) VALUES ('20130812163140');

INSERT INTO schema_migrations (version) VALUES ('20130814131213');

INSERT INTO schema_migrations (version) VALUES ('20130814142211');

INSERT INTO schema_migrations (version) VALUES ('20130826142643');

INSERT INTO schema_migrations (version) VALUES ('20130826142649');

INSERT INTO schema_migrations (version) VALUES ('20130826142650');