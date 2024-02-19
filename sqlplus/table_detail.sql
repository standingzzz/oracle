select pt.partition_name
     , pt.high_value
     , (select key.column_name
          from user_part_key_columns key
         where key.name = pt.table_name
           and rownum = 1) key_column_name
     , pt.last_analyzed
     , pt.num_rows
     , pt.compression
  from user_tab_partitions pt
 where pt.table_name = upper('&TABLE_NAME')
 order by
       pt.partition_position
;
