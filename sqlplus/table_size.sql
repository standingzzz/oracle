select tablespace_name
     , owner
     , segment_name
     , segment_type
     , round(sum(bytes)/1024/1024, 1) "used[MB]"
  from dba_extents
 where segment_name = upper('&TABLENAME')
   and segment_type in ('TABLE', 'TABLE PARTITION', 'TABLE SUBPARTITION')
 group by
       tablespace_name
     , owner
     , segment_name
     , segment_type
 order by
       1, 2, 3, 4
;
