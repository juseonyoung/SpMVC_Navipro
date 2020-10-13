-- 여기는 teamproject


DROP TABLE tbl_member;

CREATE TABLE tbl_member(
username	VARCHAR2(30)		PRIMARY KEY,
password	nVARCHAR2(255)	NOT NULL,	
m_email	VARCHAR2(125)	NOT NULL,	
ENABLED	CHAR(1)	DEFAULT'0',	
AccountNonExpired	CHAR(1),		
AccountNonLocked	CHAR(1),		
CredentialsNonExpired	CHAR(1)
);

SELECT * FROM tbl_member;

CREATE TABLE tbl_authority(
seq	NUMBER		PRIMARY KEY,
M_USERID	VARCHAR2(30)	NOT NULL,	
M_ROLE	VARCHAR2(30)	NOT NULL
);

SELECT * FROM tbl_authority;