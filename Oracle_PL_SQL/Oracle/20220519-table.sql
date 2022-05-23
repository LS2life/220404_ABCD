-- p316
create user tableDB identified by 1234
default tablespace users
temporary tablespace temp;

grant connect,resource,dba to tableDB;

-- sql�� ���̺� ����
-- create table tableName(
-- columnName datatype constraint,
-- columnName datatype constraint,
-- ...
--)
-- ����Ŭ ������ Ÿ��
-- ���� number(p,[s]) p ��ü �ڸ���,s �Ҽ��� ���� �ڸ���
-- binary_double 64bit �ε��Ҽ���(�Ǽ�)
-- ����
-- char[(n)] 1~2000
-- nchar[(n)] �����ڵ� 1~1000, �ѱ�, 2byte ex)nchar(20) 10��->20byte
-- varchar2(n) �������� 1~4000 varchar2(10)->10��,"abc" ->3byte
-- nvarchar2(n) �����ڵ� 1~2000
-- ��¥�� �ð� ����
-- date
-- timestamp
-- ���� ����
-- primary key -��Ű, �⺻Ű
-- ȸ�� ���̺�-ȸ�� ���̵�, �л� ���̺�-�й�, ���� ���̺�-����
-- not null - ������ ������� �ʽ��ϴ�
-- �ߺ� ��� ����
-- �ܷ�Ű
-- �ٸ� ���̺��� ��Ű�� �ڱ� ���̺��� ����
-- ��)usertbl �������̺�, buytbl �ܷ�Ű ���̺�
-- �������̺� PK, Unique
-- Unique ���� ����
-- �ߺ� ��� �Ұ� - �ߺ����� �ʴ� ������ ��
-- null ��� �ִ� ���� ���
-- check ���� ����
-- age number(100) check(age>=0)
-- default ���� ����
-- addr nchar(2) default '����'
-- null ���� ����
-- email nchar(50) null
-- email nchar(50) not null
create table userTBL(
    userID char(8) primary key,
    userName nvarchar2(10) not null,
    birthYear number(4) not null,
    addr nchar(2) not null,
    mobile1 char(3) null,
    mobile2 char(8),
    height number(3),
    mDate DATE
);
--ȸ�� ���� ���̺�
create table buyTBL(
    idNum number(8) primary key,
    --userID char(8) references userTBL(userID),--�ܷ�Ű
    userID char(8) not null,
    prodName nchar(6) not null,
    groupName nchar(4),
    price number(8) not null,
    amount number(3) not null,
    foreign key (userID) references userTBL(userID)
);

insert into userTBL 
values('LSG','�̽±�',1987,'����','011','11111111',182,'2008-8-8');
select * from userTBL;
insert into userTBL 
values('KBS','�����',1979,'����','011','11111111',173,'2012-4-4');
--���̺� ����
drop table buyTBL;
-- idNum primary key ���������� 1�� ++
create sequence idSEQ;
-- idSEQ++
insert into buytbl values(idSEQ.NEXTVAL,'KBS','�ȭ',null,30,2);
insert into buytbl values(idSEQ.NEXTVAL,'KBS','�ȭ','',30,2);
-- ���̺� ����
-- alter table
-- �� �߰�
alter table userTBL
    add homepage varchar(30)
    default 'http://www.naver.com'
    null;
alter table userTBL
    add(homepage nvarchar2(20),
    postNum varchar(5));
-- �� ����
alter table userTBL
    drop column homepage;
-- ���� �̸� ����
alter table userTBL
    rename column userName to uName;
-- ���� ������ ���� ����
alter table userTBL
    modify (addr nvarchar2(10) null);
-- ���� ���� ���� �߰� �� ����
alter table buyTBL
    drop constraint sys_c007053;
alter table userTBL
    drop primary key;
-- p349 ���̺� ���� p350 ������ ����
    
select * from user_constraints
where owner='tableDB' and
table_name='buyTBL';

DROP TABLE buyTbl;
DROP TABLE userTbl;

CREATE TABLE userTBL 
( userID  	CHAR(8),
  userName  	NVARCHAR2(10),
  birthYear 	NUMBER(4),
  addr	  	NCHAR(2),
  mobile1	CHAR(3),
  mobile2	CHAR(8),
  height    	NUMBER(3),
  mDate    	DATE
);
CREATE TABLE buyTBL
(  idNum 	NUMBER(8) PRIMARY KEY,
   userID  	CHAR(8),
   prodName 	NCHAR(6),
   groupName 	NCHAR(4),
   price     	NUMBER(8),
   amount    	NUMBER(3)
);
DROP SEQUENCE idSEQ;
CREATE SEQUENCE idSEQ;

INSERT INTO userTBL VALUES('LSG', '�̽±�', 1987, '����', '011', '1111111', 182, '2008-8-8');
INSERT INTO userTBL VALUES('KBS', '�����', NULL, '�泲', '011', '2222222', 173, '2012-4-4');
INSERT INTO userTBL VALUES('KKH', '���ȣ', 1871, '����', '019', '3333333', 177, '2007-7-7');
INSERT INTO userTBL VALUES('JYP', '������', 1950, '���', '011', '4444444', 166, '2009-4-4');
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'KBS', '�ȭ', NULL   , 30,   2);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL,'KBS', '��Ʈ��', '����', 1000, 1);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL,'JYP', '�����', '����', 200,  1);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL,'BBK', '�����', '����', 200,  5);

-- ȸ�� primary key ����
alter table userTBL
    add constraint pk_usertbl_userid
    primary key (userid);
--���� ���̺� �ܷ�Ű ����
alter table buytbl
    add constraint fk_usertbl_buytbl
    foreign key (userid)
    references usertbl (userid);
delete from buytbl where userid='BBK';
-- �������� �ӽ� ����
alter table buytbl
    disable constraint fk_usertbl_buytbl;
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL,'BBK', '�����', '����', 200,  5);
-- �������� ȸ��
alter table buytbl
    enable novalidate constraint fk_usertbl_buytbl;
insert into usertbl 
values('BBK','�ٺ�Ŵ',1973,'����','010','00000000',176,'2013-5-5');
-- �ٺ�Ŵ�� ȸ�� Ż��
delete from usertbl where userid='BBK';
-- ȸ��Ż�� ��ư->�鿣�� �ڹ� �������̺� ����, ȸ�����̺�
alter table buytbl
drop constraint fk_usertbl_buytbl;
alter table buytbl
    add constraint fk_usertbl_buytbl
    foreign key (userid)
    references usertbl (userid)
    on delete cascade;
-- on delete cascade ������ �ܷ�Ű�� ������ �ִ� ���̺��� �����Ͱ� ���� ����
alter table usertbl
drop column birthyear;
--Į���� ���� �Ǹ鼭 ���� ���ǵ� ��� ����






























