--�並 ����
drop view v_usertbl;

select * from user_views;

create or replace view v_usertbl
as select userid,username,addr from usertbl;

update v_usertbl set addr='�λ�' where userid='JKW';
select * from v_usertbl;

insert into v_usertbl(userid,username,addr)
values('KBM','�躴��','�溹');
create or replace view v_usertbl
as select userid,username,addr from usertbl
with read only;
create or replace view v_sum
as
select userid,sum(price*amount) as "Total"
from buytbl group by userid;
select * from v_sum order by userid desc;
-- ���� �Ұ� �� 1. �����Լ� 2. join 3. distinct,group by, having
create or replace view v_height177
as
select * from usertbl where height>=177;
select * from v_height177;
delete from v_height177 where height<177;

insert into v_height177 
values('KBM4','�躴��',1977,'���','010','55555555',158,'2019-01-01');

create or replace view v_height177
as
select * from usertbl where height>=177
with check option;
select * from v_height177;
--244p
-- dml-


