--users information table
drop table users;
create table users(
 user_id varchar2(20) primary key,
 user_pwd varchar2(30) not null,
 user_name varchar2(20) not null,
 user_phone varchar2(11) not null,
 user_address1 varchar2(50) not null,
 user_address2 varchar2(50) not null,
 user_email varchar2(50) not null,
 user_joindate date default sysdate,
 user_level number
);

--product information table
drop table product;
create table product(
 product_id varchar2(20) primary key,
 product_name varchar2(100) not null,
 product_desc varchar2(2000),
 product_category number not null,
 product_color varchar2(20),
 product_size varchar2(20),
 product_img1 varchar2(100) not null,
 product_img2 varchar2(100),
 product_img3 varchar2(100),
 product_price number not null
);

--order table
drop table order_detail;
create table order_detail(
 order_num varchar(20) not null,
 user_id varchar2(20) not null,
 product_id varchar2(20) not null,
 product_name varchar2(100) not null,
 option1 varchar2(20),
 option2 varchar2(20),
 price number not null,
 count number default 1,
 user_name varchar2(8),
 user_address1 varchar2(50) not null,
 user_address2 varchar2(50) not null,
 user_phone varchar2(11) not null,
 orderdate date default sysdate,
 status varchar2(10)
);

--product review table
drop table product_review;
create table product_review(
 review_num number primary key,
 product_id varchar2(20) not null,
 user_id varchar2(20) not null,
 content varchar2(2000) not null,
 point number,
 file1 varchar2(100)
);


--product_question table
drop table product_quest;
create table product_quest(
 product_quest_num number primary key,
 product_id varchar2(20) not null,
 pwd number(5) not null,
 title varchar2(100) not null,
 content varchar2(2000) not null
);

--product_questin reply table
drop table product_quest_rep;
create table product_quest_rep(
 product_id varchar2(2) not null,
 product_quest_num number,
 content varchar2(2000) not null
);

--zzimList table
drop table zzim;
create table zzim(
 user_id varchar2(20) not null,
 zzim_num number not null,
 product_id varchar2(20) not null,
 option1 varchar2(20),
 option2 varchar2(20),
 price number not null,
 count number,
 img1 varchar2(100)
);

--question write table
drop table question;
create table question(
 question_num number primary key,
 user_id varchar2(20) not null,
 title varchar2(100) not null,
 content varchar2(2000) not null,
 file1 varchar2(100)
);

--question_reply table
drop table question_reply;
create table question_reply(
 question_num number not null,
 title varchar2(100) not null,
 content varchar2(2000) not null,
 file1 varchar2(100)
);



commit;

