
---------------------------------
-- Set variables
---------------------------------
SET db_name = 'DEMO_RBAC';
SET schema_name = 'MAIN';
SET myuser_name = 'ADMIN';


use role sysadmin;
drop database if exists IDENTIFIER($db_name);
create database IDENTIFIER($db_name);
use database IDENTIFIER($db_name);
GRANT USAGE ON DATABASE IDENTIFIER($db_name) TO ROLE USERADMIN;

 


drop schema if exists IDENTIFIER($schema_name);
create schema IDENTIFIER($schema_name);
use schema IDENTIFIER($schema_name);

-- Create Roles for IEA Team
use role useradmin;
create role if not exists IEA_DEMO_RBAC_usg;
create role if not exists IEA_DEMO_RBAC_MAIN_usg;
create role if not exists IEA_DEMO_RBAC_MAIN_ro;
create role if not exists IEA_DEMO_RBAC_MAIN_rw;
create role if not exists IEA_DEMO_RBAC_MAIN_cr;
create role if not exists IEA_DEMO_RBAC_MAIN_own;


-- Grant use on Database
use role securityadmin;
grant usage on database IDENTIFIER($db_name) to role IEA_DEMO_RBAC_usg;

-- Grant use on Schema
use role securityadmin;
grant usage on schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_usg;


 
-- Grant Read Only Access
use role securityadmin;
grant role IEA_DEMO_RBAC_usg  to role IEA_DEMO_RBAC_MAIN_ro;
grant role IEA_DEMO_RBAC_MAIN_usg to role IEA_DEMO_RBAC_MAIN_ro;
grant select on all tables in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant select on future tables in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant select on all views in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant select on future views in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant usage,  read on all stages in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant usage,  read on future stages in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant usage on all file formats in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant usage on future file formats in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant select on all streams in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant select on future streams in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant usage on all functions in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;
grant usage on future functions in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_ro;

-- Grant Read Write Access
use role securityadmin;
grant role IEA_DEMO_RBAC_usg to role IEA_DEMO_RBAC_MAIN_rw;
grant role IEA_DEMO_RBAC_MAIN_usg to role IEA_DEMO_RBAC_MAIN_rw;
grant insert,  update,  delete,  truncate,  references on all tables in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant insert,  update,  delete,  truncate,  references on future tables in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant read,  write on all stages in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant read,  write on future stages in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant usage on all sequences in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant usage on future sequences in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant usage on all procedures in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant usage on future procedures in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant monitor,  operate on all tasks in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;
grant monitor,  operate on future tasks in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_rw;


-- Grant Create Access
use role securityadmin;
grant role IEA_DEMO_RBAC_usg to role IEA_DEMO_RBAC_MAIN_cr;
grant role IEA_DEMO_RBAC_MAIN_usg to role IEA_DEMO_RBAC_MAIN_cr;
grant all on schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_cr;

-- Grant Ownership Access
use role securityadmin;
grant role IEA_DEMO_RBAC_usg to role IEA_DEMO_RBAC_MAIN_own;
grant role IEA_DEMO_RBAC_MAIN_usg to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all tables in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future tables in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all external tables in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future external tables in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all views in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future views in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all materialized views in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future materialized views in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all stages in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future stages in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all file formats in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future file formats in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all streams in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future streams in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all procedures in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future procedures in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all functions in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future functions in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on all sequences in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;
grant ownership on future sequences in schema DEMO_RBAC.MAIN to role IEA_DEMO_RBAC_MAIN_own;


---------------------------------
-- Grant roles to my user = Admin
---------------------------------
use role securityadmin; 
grant role  IEA_DEMO_RBAC_usg to user IDENTIFIER($myuser_name);    
grant role  IEA_DEMO_RBAC_MAIN_usg to user IDENTIFIER($myuser_name);
grant role  IEA_DEMO_RBAC_MAIN_ro to user IDENTIFIER($myuser_name);
grant role  IEA_DEMO_RBAC_MAIN_rw to user IDENTIFIER($myuser_name);
grant role  IEA_DEMO_RBAC_MAIN_cr to user IDENTIFIER($myuser_name);
grant role  IEA_DEMO_RBAC_MAIN_own to user IDENTIFIER($myuser_name);




----------------------------------
--  Create a table and insert data
----------------------------------
use role IEA_DEMO_RBAC_MAIN_cr; 
use database IDENTIFIER($db_name);
use schema IDENTIFIER($schema_name);

create or replace TABLE STUDENTS_ID (
	STUDENT_NAME VARCHAR,
    STUDENT_ID NUMBER(38,0)
	
);


----------------------------------
--  Insert Records
----------------------------------
use role IEA_DEMO_RBAC_MAIN_rw;  
INSERT INTO STUDENTS_ID (STUDENT_NAME, STUDENT_ID) VALUES ('Bob Johnson', 2);
INSERT INTO STUDENTS_ID (STUDENT_NAME, STUDENT_ID) VALUES ('Charlie Brown', 3);
INSERT INTO STUDENTS_ID (STUDENT_NAME, STUDENT_ID) VALUES ('Diana Prince', 4);
INSERT INTO STUDENTS_ID (STUDENT_NAME, STUDENT_ID) VALUES ('Ethan Hunt', 5);


----------------------------------
--  See Table Details
----------------------------------

describe table students_id;
show tables;




---------------------
-- Cleanup - Reset
---------------------


use role sysadmin;
drop database if exists IDENTIFIER($db_name);

use role useradmin;
drop role IEA_DEMO_RBAC_usg;
drop role IEA_DEMO_RBAC_MAIN_usg;
drop role  IEA_DEMO_RBAC_MAIN_ro;
drop role  IEA_DEMO_RBAC_MAIN_rw;
drop role  IEA_DEMO_RBAC_MAIN_cr;
drop role  IEA_DEMO_RBAC_MAIN_own;







