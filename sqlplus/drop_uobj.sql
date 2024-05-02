set serveroutput on format wrapped
DECLARE

  powner    varchar2(20) := '&owner';

  CURSOR  sycur  IS  select synonym_name from dba_synonyms where owner = powner order by 1;
  CURSOR  tcur  IS  select table_name from dba_tables where owner = powner and table_name not like 'MLOG$%' order by 1;
  CURSOR  mcur  IS  select mview_name from dba_mviews where owner = powner order by 1;
  CURSOR  sqcur  IS  select sequence_name from dba_sequences where sequence_owner = powner order by 1;
  CURSOR  vcur  IS  select view_name from dba_views where owner = powner order by 1;

BEGIN

  FOR  syrec  IN  sycur  LOOP
    DBMS_OUTPUT.PUT_LINE ( 'SYNONYM : ' || powner || '  ' || syrec.synonym_name );
  END  LOOP;

  FOR  trec  IN  tcur  LOOP
    DBMS_OUTPUT.PUT_LINE ( 'TABLE : ' || powner || '  ' || trec.table_name );
  END  LOOP;

  FOR  mrec  IN  mcur  LOOP
    DBMS_OUTPUT.PUT_LINE ( 'MVIEW : ' || powner || '  ' || mrec.mview_name );
  END  LOOP;

  FOR  sqrec  IN  sqcur  LOOP
    DBMS_OUTPUT.PUT_LINE ( 'SEQUENCE : ' || powner || '  ' || sqrec.sequence_name );
  END  LOOP;

  FOR  vrec  IN  vcur  LOOP
    DBMS_OUTPUT.PUT_LINE ( 'VIEW : ' || powner || '  ' || vrec.view_name );
  END  LOOP;

END;
/
