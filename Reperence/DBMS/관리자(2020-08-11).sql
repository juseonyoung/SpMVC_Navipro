-- 여기는 관리자 화면입니다.

CREATE TABLESPACE myFirstTeam
DATAFILE 'C:/bizwork/oracle_dbms/myFirstTeam.dbf'
SIZE 1M AUTOEXTEND ON NEXT 500K;

CREATE USER teamproject  IDENTIFIED BY teamproject
DEFAULT TABLESPACE myFirstTeam;

GRANT CONNECT TO teamproject;

GRANT DBA TO teamproject;


