create or replace view v_userbuytbl
as
select u.userid as "����ھ��̵�",
u.username as "�̸�",
b.prodname as "��ǰ �̸�",
u.addr as "�ּ�"
from usertbl u
inner join buytbl b
on u.userid=b.userid;