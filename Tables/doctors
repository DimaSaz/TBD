-- Table: public.doctors

-- DROP TABLE public.doctors;

CREATE TABLE public.doctors
(
  did integer NOT NULL,
  dsn character(120) NOT NULL,
  dfn character(120) NOT NULL,
  dtn character(120) NOT NULL,
  dspec character(120) NOT NULL,
  dcat integer NOT NULL,
  cprice integer,
  CONSTRAINT dfkey PRIMARY KEY (did),
  CONSTRAINT did_lim UNIQUE (did)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.doctors
  OWNER TO postgres;
