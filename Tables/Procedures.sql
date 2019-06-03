-- Table: public.procedures

-- DROP TABLE public.procedures;

CREATE TABLE public.procedures
(
  procname character(120) NOT NULL,
  procprice integer,
  CONSTRAINT procfkey PRIMARY KEY (procname)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.procedures
  OWNER TO postgres;
