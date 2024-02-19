select username, account_status, lock_date, expiry_date, created, profile, default_tablespace
  from dba_users
 where username not in ('XDB', 'SYS', 'SYSTEM', 'OUTLN', 'DBSNMP')
   and username not like '%SYS%'
   and default_tablespace not in ('SYSAUX', 'EXAMPLE')
 order by
       username
;

