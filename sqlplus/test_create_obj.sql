create table tbl_test
(
  id    number(10)  not null
, str   varchar2(256)
, chk   char(1)
)
partition by hash (id)
partitions 4
;

alter table tbl_test add constraints idx_tbl_test_pk primary key (id)
;

create index idx_tbl_test_01 on tbl_test (str, chk)
;

create sequence seq_tbl_test_id start with 1 increment by 1 maxvalue 9999999999 minvalue 1 nocache nocycle
;

insert into tbl_test values (seq_tbl_test_id.nextval, 'test1', '0')
;
insert into tbl_test values (seq_tbl_test_id.nextval, 'test2', '1')
;

commit
;

create materialized view log on tbl_test with primary key
;

create or replace view v_tbl_test
as select * from tbl_test
;

create synonym s_v_tbl_test for v_tbl_test
;

create materialized view mv_tbl_test
as select * from s_v_tbl_test
;


