-- Table: public.sale

-- DROP TABLE public.sale;

CREATE TABLE public.sale
(
  scategory integer NOT NULL,
  spercent integer,
  CONSTRAINT sfkey PRIMARY KEY (scategory),
  CONSTRAINT scategory_lim UNIQUE (scategory)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.sale
  OWNER TO postgres;
