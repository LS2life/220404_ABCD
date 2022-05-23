-- ������ ���� insert��
-- insert into ���̺�(��1,��2,...)values(��1,��2,..)
select * from usertbl;
-- ���̸� ����
insert into usertbl 
values('JSY','���ҿ�',1998,'����','010','12345678',157,'2022-05-18');
-- ���̸� �߰�
insert into usertbl(username,userid,birthyear,addr,height,mdate)
values('�ۼ���','SSH',1997,'�泲',164,'2022-05-18');
-- ������ ����:update
-- update ���̺� �̸� set ��1=��1, ��2=��2...where ����;
insert into usertbl 
values('NHC','��ȫö',1979,'����','010','12345678',180,'2022-05-18');
insert into usertbl 
values('NHC1','��ȫö',1979,'����','010','12345678',180,'2022-05-18');
insert into usertbl 
values('NHC2','��ȫö',1979,'����','010','12345678',180,'2022-05-18');
-- �̸��� Ű ����
update usertbl
set username='��ȫö',height=180
where userid='NHC';
select * from usertbl;
-- Į��(column) ��ü�� ����
update usertbl
set mobile1='010';
update usertbl
set username='��ȫö'
where username='��ȫĥ';
select * from usertbl;
-- ������ ����:delete
-- delete from ���̺��̸� where ����;
delete from usertbl where userid='NHC1';
delete from usertbl where username='��ȫö';
delete from usertbl where username='��ȫö' and rownum<=2;
select * from usertbl;
-- ���� (join)
select * from usertbl;
select * from buytbl;
select * from buytbl
inner join usertbl on buytbl.userid = usertbl.userid;
-- select <�����> from <ù��°���̺�>
-- inner join <�ι�°���̺�> on <���ε� ����>
-- where �˻�����
-- bbk ���� �ֹ� ���
select * from buytbl b
inner join usertbl u on b.userid=u.userid
where b.userid='BBK';
-- 32��° �ֹ� �ù� �߼� �ֹ���, �ֹ�������ȭ��ȣ, �ּ�, ��ǰ�̸�, ����, ����
select u.username,u.mobile1||u.mobile2,u.addr,b.prodname,b.amount,b.price 
from buytbl b inner join usertbl u on b.userid=u.userid
where b.idnum>'25';

select * from stdtbl;
select * from clubtbl;
select * from stdclubtbl;
-- �л��̸�,����,������ ���Ƹ�,���Ƹ� ȣ��
select s.stdname,s.addr,sc.clubname,c.roomno
from stdtbl s
inner join stdclubtbl sc on s.stdname=sc.stdname
inner join clubtbl c on sc.clubname=c.clubname
order by s.stdname;
-- outer join
-- ��ü ȸ���� ������ ���� �ֹ� ������ ������ �;� �ȴ�
-- select <�� ���> from <ù��° ���̺�(Left ���̺�)
-- <left|right|full> outer join <�ι�° ���̺�(right ���̺�)>
-- on <���ε� ����>
-- where �˻�����;
select *
from usertbl u
left outer join buytbl b
on u.userid=b.userid
order by u.userid;
select *
from buytbl b
right outer join usertbl u
on u.userid=b.userid
order by u.userid;
select *
from buytbl b
full outer join usertbl u
on u.userid=b.userid
order by u.userid;

select *
from stdtbl s
left outer join stdclubtbl sc
on s.stdname=sc.stdname
left outer join clubtbl c
on sc.clubname=c.clubname;
















