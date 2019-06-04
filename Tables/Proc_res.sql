-- Table: public.proc_res

-- DROP TABLE public.proc_res;

CREATE TABLE public.proc_res
(
  grafit integer,
  mp integer,
  operation integer,
  injection integer,
  tablet integer,
  res_price integer,
  aid integer NOT NULL,
  CONSTRAINT fkey PRIMARY KEY (aid),
  CONSTRAINT aid_aid FOREIGN KEY (aid)
      REFERENCES public.appeal (aid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.proc_res
  OWNER TO postgres;

