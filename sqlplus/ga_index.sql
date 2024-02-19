begin
    dbms_stats.gather_index_stats(
        ownname    => '&OWNER'
      , indname    => '&INDEXNAME'
    );
end;
/
