select object_type
     , object_name
     , object_id
     , created
     , last_ddl_time
     , status
  from user_objects
 where lower(object_type) not like '%partition%'
 order by 1, 2
;
