select idx.index_name
     , idx.uniqueness
     , col.column_name
     , idx.last_analyzed
     , idx.degree
     , idx.visibility
     , idx.partitioned
     , idx.status
  from dba_indexes idx
 inner join dba_ind_columns col
    on col.table_owner = idx.table_owner
   and col.table_name = idx.table_name
   and col.index_owner = idx.owner
   and col.index_name = idx.index_name
 where idx.owner = upper('&OWNER')
   and idx.table_name = upper('&TABLENAME')
 order by
       idx.index_name
     , col.column_position
;
