CREATE TABLESPACE teamTS
DATAFILE 'C:/bizwork/oracle_dbms/teamTS.dbf'
SIZE 1M AUTOEXTEND ON NEXT 500K;

DROP USER teamproject CASCADE;

CREATE USER teamproject IDENTIFIED BY teamproject
DEFAULT TABLESPACE teamTS;


GRANT DBA TO teamproject;