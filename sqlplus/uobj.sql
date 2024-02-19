select object_type
     , object_name
     , object_id
     , created
     , last_ddl_time
     , status
  from dba_objects
 where lower(object_type) not like '%partition%'
   and owner = upper('&owner')
 order by 1, 2
;
