col synonym_name for a30
col table_name for a30
col table_owner for a30
col db_link for a20
select owner, synonym_name, table_owner, table_name, db_link from dba_synonyms where synonym_name like upper('%&synonym_name%')
 order by 1, 2;
