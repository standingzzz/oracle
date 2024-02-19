select owner
     , table_name
     , tablespace_name
     , degree
     , last_analyzed
     , partitioned
     , ini_trans
     , max_trans
  from dba_tables
 where owner = upper('&OWNER')
   and table_name = upper('&TABLENAME')
 order by
       owner
     , table_name
;
