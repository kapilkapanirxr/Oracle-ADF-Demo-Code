drop table employee_catalog;
create table employee_catalog (
employee_id  varchar2(5),
employee_name  varchar2(20));

drop table rank_catalog;
create table rank_catalog (
rank_id varchar2(2),
rank_description varchar2(20)
);

drop table employee_rank;
create table employee_rank(
sno number, 
rank_id varchar2(2),
employee_id varchar2(5));

insert into employee_catalog values('NX001', 'James Stein');
insert into employee_catalog values('NX002', 'John Smith');
insert into employee_catalog values('NX003', 'Harry Twan');
insert into employee_catalog values('NX004', 'Mark Robin');
insert into employee_catalog values('NX005', 'Andrew Hudson');
insert into employee_catalog values('NX006', 'Mary Smith');
insert into employee_catalog values('NX007', 'David Smith');
insert into employee_catalog values('NX008', 'William Taylor');

insert into rank_catalog values('1',' -> Excellent' );
insert into rank_catalog values('2',' -> Very Good' );
insert into rank_catalog values('3',' -> Good' );
insert into rank_catalog values('4',' -> Average' );
insert into rank_catalog values('5',' -> Below Average' );
insert into rank_catalog values('6',' -> Bad' );
insert into rank_catalog values('7',' -> Very Bad' );
insert into rank_catalog values('8',' -> Worst' );

drop sequence rank_seq;
CREATE SEQUENCE rank_seq
 START WITH     1000
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
 
 