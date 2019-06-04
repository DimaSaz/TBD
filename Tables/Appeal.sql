-- Table: public.appeal

-- DROP TABLE public.appeal;

CREATE TABLE public.appeal
(
  aid integer NOT NULL,
  did integer NOT NULL,
  pid integer NOT NULL,
  adate date NOT NULL,
  diagnosis character(200) NOT NULL,
  price integer NOT NULL,
  CONSTRAINT aid PRIMARY KEY (aid),
  CONSTRAINT appeal_did_fkey FOREIGN KEY (did)
      REFERENCES public.doctors (did) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT appeal_pid_fkey FOREIGN KEY (pid)
      REFERENCES public.patients (pid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT aid_lim UNIQUE (aid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.appeal
  OWNER TO postgres;

-- Trigger: check_a on public.appeal

-- DROP TRIGGER check_a ON public.appeal;

CREATE TRIGGER check_a
  BEFORE INSERT
  ON public.appeal
  FOR EACH ROW
  EXECUTE PROCEDURE public."check"();
