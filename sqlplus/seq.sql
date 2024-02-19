select sequence_name
     , max_value
     , increment_by
     , cycle_flag
     , order_flag
     , cache_size
     , last_number
  from user_sequences
 where sequence_name = upper('&SEQ_NAME')
;
