select owner, view_name, text, text_length, read_only from dba_views
 where view_name = '&view_name'
;
