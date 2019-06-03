-- Function: public."check"()

-- DROP FUNCTION public."check"();

CREATE OR REPLACE FUNCTION public."check"()
  RETURNS trigger AS
$BODY$ BEGIN
        IF NEW.aid < 10000 THEN
            RAISE EXCEPTION 'Boundary aid cant be < 10000';
        END IF;
        
        IF NEW.did < 1000 THEN
            RAISE EXCEPTION 'boundary did cant be < 1000';
        END IF;

	IF NEW.pid < 100 THEN
	    RAISE EXCEPTION 'boundary pid cant be < 100';
	END IF;

	IF NEW.price < 0 THEN
	    RAISE EXCEPTION 'price cant be negative';
	END IF;
	
        RETURN NEW;
    END;$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public."check"()
  OWNER TO postgres;
