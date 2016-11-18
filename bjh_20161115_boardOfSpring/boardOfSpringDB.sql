create database testDB;

use testDB;

create table member (
	userid varchar(50) not null,
    userpw varchar(50) not null,
    username varchar(50) not null,
    email varchar(100),
    regdate timestamp default now(),
    updatedate timestamp default now(),
    primary key(userid)
    
);

select * from member;

create table tbl_board (
	bno int not null auto_increment,
    title varchar(200) not null,
    content text,
    writer varchar(50) not null,
    regdate timestamp not null default now(),
    viewcnt int default 0,
    primary key (bno)
);

select * from tbl_board;
drop table tbl_board;

insert into tbl_board (title, content, writer) values ('새글', '새글', '변');
insert into tbl_board (title, content, writer) (select title, content, writer from tbl_board);


select * from tbl_board
		where bno > 0 
		order by bno desc, regdate desc
		limit 3, 10;