-- ��(view) ���� �뵵�� �ַ� ���� ���̺� ���� ����
select * from usertbl;

create view v_usertbl
as select userid,username,addr from usertbl;

select * from v_usertbl;
-- view ���� ���ȼ��� ����
-- ������ ������ �ܼ�ȭ ��ų�� �ִ�
select u.userid,u.username,b.prodname,u.addr,u.mobile1||u.mobile2,
b.price,b.amount
from usertbl u
inner join buytbl b
on u.userid=b.userid;

create or replace view v_userbuytbl
as select u.userid,u.username,b.prodname,u.addr,
u.mobile1||u.mobile2 as "����ó",
b.price,b.amount
from usertbl u
inner join buytbl b
on u.userid=b.userid;
select * from v_userbuytbl;
select * from v_userbuytbl
where username='�����';
select username,prodname from v_userbuytbl;

create or replace view v_userbuytbl
as
select u.userid as "����ھ��̵�",
u.username as "�̸�,
b.prodname as "��ǰ �̸�",
u.addr as "�ּ�"
from usertbl u
inner join buytbl b
on u.userid=b.userid;






