select owner
     , object_name
     , object_type
     , created
     , last_ddl_time
     , status
  from dba_objects
 where lower(object_type) not like '%partition%'
   and object_name like upper('%&OBJECT_NAME%')
 order by
       owner
     , object_type
     , object_name
;
