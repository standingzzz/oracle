select s.sid
     , s.serial#
     , s.username
     , s.osuser
     , s.status
     , substrb(s.machine, 1, 30) machine
     , to_char(s.logon_time, 'yyyy/mm/dd hh24:mi:ss') logon
     , s.last_call_et
     , substrb(q.sql_text, 1, 20) sql_text
     , substrb(s.event, 1, 30) event
  from v$session s
  left join v$sql q
    on s.sql_id = q.sql_id
 where not s.schemaname = 'SYS'
 order by
       status
     , s.username
;
