select t.* from v$sql s, table(dbms_xplain.display_cursor(s.sql_id, s.child_number)) t where s.sql_id = '&sqlid';
