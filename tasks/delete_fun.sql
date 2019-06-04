-- Function: public.del(integer)

-- DROP FUNCTION public.del(integer);

CREATE OR REPLACE FUNCTION public.del(aid_del integer)
  RETURNS void AS
$BODY$delete from proc_res *
where aid = aid_del;
$BODY$
  LANGUAGE sql VOLATILE
  COST 100;
ALTER FUNCTION public.del(integer)
  OWNER TO postgres;
