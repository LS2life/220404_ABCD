select * from tab;

select * from userTBL;
select * from buytbl;

select * from usertbl where username='�̽±�';

--1970�� ���Ŀ� ��� ������ 182�̻� ���̵�� �̸� ��ȸ
select userid,username 
from usertbl 
where birthyear >=1970
and height>=182;

-- 1970�⵵ ���� ����߰ų� ������ 182�̻� ���̵�� �̸�
select userid,username from usertbl 
where birthyear>=1970 or height>=182;

-- Ű�� 180~183�� ���
select * from usertbl where height>=180 and height<=183;
-- between
select * from usertbl where height between 180 and 183;
-- in('���ڿ�','���ڿ�')
-- �泲,����,��� addr='�泲' or addr='����'
select * from usertbl where addr in('�泲','����','���');

-- like 1.i like java 2. you looks like tired ~�� ����ϴ�
-- �达�� ã�´�
--%->������ �͵� �ȴ�
-- _->������ ���µ� �ѱ��ڸ�
-- ����, ����
select * from usertbl where username like '��%';
--���� �̸��� ã�´�
select * from usertbl where username like '_����';



















