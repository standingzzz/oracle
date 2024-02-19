begin
    dbms_stats.gather_table_stats(
        ownname    => '&OWNER'
      , tabname    => '&TABNAME'
      , cascade    => TRUE
    );
end;
/
