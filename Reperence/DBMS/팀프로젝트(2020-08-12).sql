-- 여기는 팀프로젝트 화면입니다.

-- 회원정보 테이블 생성
CREATE TABLE tbl_member(
    m_seq	NUMBER		PRIMARY KEY,
    m_email	VARCHAR2(125)	NOT NULL	UNIQUE,	
    m_tel	VARCHAR2(13)	NOT NULL	UNIQUE,
    m_id	VARCHAR2(125)	NOT NULL	UNIQUE,
    m_pw	VARCHAR2(125)	NOT NULL	

);
DROP TABLE tbl_member;
DESC tbl_member;

-- 1씩 증가하는 seq 생성
CREATE SEQUENCE seq_test
START WITH 1
INCREMENT BY 1;

-- 회원가입 정보 등록
INSERT INTO tbl_member(m_seq, m_email, m_tel, m_id, m_pw)
VALUES (seq_test.NEXTVAL, 'seog@gmail.com', '010-1111-1111','seog','seog');

-- 회원가입 정보 등록
INSERT INTO tbl_member(m_seq, m_email, m_tel, m_id, m_pw)
VALUES (seq_test.NEXTVAL, 'sal@gmail.com', '010-2222-2222','sal','sal');

-- 회원가입 정보 등록
INSERT INTO tbl_member(m_seq, m_email, m_tel, m_id, m_pw)
VALUES (seq_test.NEXTVAL, 'woo@gmail.com', '010-3333-3333','woo','woo');

-- 회원가입 정보 등록
INSERT INTO tbl_member(m_seq, m_email, m_tel, m_id, m_pw)
VALUES (seq_test.NEXTVAL, 'young@gmail.com', '010-4444-4444','young','young');



-- 주의! insert시 하나의 값이라도 잘못되면
SELECT * FROM tbl_member;
