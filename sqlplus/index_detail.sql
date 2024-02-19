select col.index_name
     , col.column_name
     , prt.partition_name
     , prt.high_value
     , prt.status
     , prt.num_rows
     , prt.last_analyzed
  from user_ind_columns col
 inner join user_ind_partitions prt
    on prt.index_name = col.index_name
 where col.index_name = upper('&INDEX_NAME')
 order by
       col.index_name
     , col.column_position
     , prt.partition_position
;
