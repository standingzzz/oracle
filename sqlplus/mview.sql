select owner, mview_name, master_link, last_refresh_type, to_char(last_refresh_date, 'yyyy/mm/dd hh24:mi:ss') last_refresh_date, compile_state
  from dba_mviews
 where mview_name = '&mview_name'
;
