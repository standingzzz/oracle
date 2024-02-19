select se.tablespace_name
     , round(se.bytes, 2) "datasize(MB)"
     , round(df.bytes, 2) "datafilesize(MB)"
     , round(df.maxbytes, 2) "datafilemaxsize(MB)"
     , round((se.bytes/df.maxbytes)*100, 2) "used(%)"
  from (select tablespace_name,sum(bytes)/1024/1024 bytes from dba_segments group by tablespace_name) se
     , (select tablespace_name,sum(bytes)/1024/1024 bytes, sum(maxbytes)/1024/1024 maxbytes from dba_data_files where maxbytes!=0 group by tablespace_name) df
 where se.tablespace_name = df.tablespace_name
 order by se.tablespace_name
;
