set trimspool on
alter session set nls_date_format='yyyy/mm/dd hh24:mi:ss';
column datetime new_value logfilename for a30
select to_char( sysdate, 'yyyymmdd_hh24miss' ) || '.log' datetime from dual;
spool ./log/&logfilename
