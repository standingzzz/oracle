set term off
set head off
col current_schema new_value current_schema
col host new_value host
col instance_name new_value instance_name
select sys_context('userenv', 'CURRENT_SCHEMA') current_schema
     , sys_context('userenv', 'HOST') host
     , sys_context('userenv', 'INSTANCE_NAME') instance_name
  from dual
;
set sqlpromt '&current_schema@&instance_name(&host)>'
set head on
@nlsdate
set term on
