set echo off
set linesize 32767
set pagesize 0
set feedback off
set trimspool on
set timing on
set term off
set verify off
spool spool_test_lines32767.log
select /*+ full(t) */ * from tab_p_test t;
spool off
exit;
