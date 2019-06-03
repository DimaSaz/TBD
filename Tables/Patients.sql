-- Table: public.patients

-- DROP TABLE public.patients;

CREATE TABLE public.patients
(
  pid integer NOT NULL,
  psn character(120) NOT NULL,
  pfn character(120) NOT NULL,
  ptn character(120) NOT NULL,
  pdof date NOT NULL,
  pcategory integer,
  CONSTRAINT pfkey PRIMARY KEY (pid),
  CONSTRAINT category FOREIGN KEY (pcategory)
      REFERENCES public.sale (scategory) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.patients
  OWNER TO postgres;
