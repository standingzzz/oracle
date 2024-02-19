col sql_full_text for a1000
set long 35535
select sql_fulltext
  from v$sql
 where sqlid = '&sqlid'
;
