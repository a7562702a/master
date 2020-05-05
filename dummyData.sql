--Product dummy
insert into product values('101a00001','베이직 셔츠','하나쯤 가지고 있어야 할 베이직한 반팔 셔츠!<p>시원한 재질로 미리 여름 대비하세요 :-) <p>', 101, '베이지,블랙,네이비', 'S,M,L', 'resources/images/101a00001_1.jpg', 'resources/images/101a00001_2.jpg', 'resources/images/101a00001_2.jpg', 29000);
insert into product values('102b00001', '감각적 티셔츠', '하나쯤 가지고 있어야 할 베이직한 반팔 셔츠!<p>시원한 재질로 미리 여름 대비하세요 :-) <p>', 102, '네이비', 'M,L', 'resources/images/102b00001_1.jpg', 'resources/images/102b00001_2.jpg', 'resources/images/102b00001_2.jpg', 29000);
insert into product values('201c00001', '와이드 슬릿 슬랙스', '아직도 와이드 슬릿 슬랙스가 없다고?!<p>하나 장만하고 인싸되자 :-) <p>', 201, '블랙','S,M,L', 'resources/images/201c00001_1.jpg', 'resources/images/201c00001_1.jpg', 'resources/images/201c00001_1.jpg', 27500);
insert into product values('202c00001', '블랙데님', '아직도 블랙 데님이 없다고?!<p>하나 장만하고 인싸되자 :-) <p>', 202, '블랙','S,M,L', 'resources/images/201c00001_1.jpg', 'resources/images/201c00001_1.jpg', 'resources/images/201c00001_1.jpg', 35000);
insert into product values('301d00001', '가을 체크재킷', '아직도 체크재킷이 없다고?!<p>하나 장만하고 인싸되자 :-) <p>', 301, '브라운,네이비','S,M,L', 'resources/images/301d00001_1.jpg', 'resources/images/301d00001_1.jpg', 'resources/images/301d00001_1.jpg', 69000);
insert into product values('302d00001', '모두의 블루종 JK', '아직도 블루종이 없다고?!<p>하나 장만하고 인싸되자 :-) <p>', 302, '블랙,카키,브라운','S,M,L', 'resources/images/302d00001_1.jpg', 'resources/images/302d00001_1.jpg', 'resources/images/302d00001_1.jpg', 59000);
insert into product values('401e00001', '기본에코백', '에코백 없는 사람은 있어도 하나만 있는 사람은 없다! <p>다다익선 일러스트 프린트 에코백 :-) <p>', 401, '네이비,아이보리','기본', 'resources/images/401e00001_1.jpg', 'resources/images/401e00001_1.jpg', 'resources/images/401e00001_1.jpg', 9000);
insert into product values('402e00001', '킹콩 에나멜슬리퍼', '밋밋한 슬리퍼는 가라! 대세는 킹콩이다! <p>힙한 에나멜 슬리퍼 하나 장만하세요 :-) <p>', 401, '레드,오렌지,그린', '240,250,260,270', 'resources/images/402e00001_1.jpg', 'resources/images/402e00001_1.jpg', 'resources/images/402e00001_1.jpg', 19000);

commit;

--오더 더미데이터
insert into order_detail values (opk_num_seq.nextval,'aaaa00001','aaaa','302d00001','모두의 블루종JK','resources/images/302d00001_1.jpg','블랙','M',59000,1, 'tester','seoul','seoul2','01011223344',sysdate,'A');
insert into order_detail values (opk_num_seq.nextval,'aaaa00001','aaaa','101a00001','베이직 셔츠', 'resources/images/101a00001_1.jpg','베이지','S',29000,1,'tester','seoul','seoul2','01011223344', sysdate,'A');
insert into order_detail values (opk_num_seq.nextval,'aa00002','aaaa','102b00001', '감각적 티셔츠','resources/images/102b00001_1.jpg','네이비','L',29000,2,'tester','seoul','seoul2','01011223344',sysdate,'B');
insert into order_detail values (opk_num_seq.nextval,'aaaa00002','aaaa','101a00001','베이직 셔츠','resources/images/101a00001_1.jpg','베이지','S',29000,1,'tester','seoul','seoul2','01011223344', sysdate,'A');


insert into order_detail values (4,'aaaa4','aaaa','402e00001', '킹콩 에나멜슬리퍼','resources/images/402e00001_1.jpg','오렌지','240',19000,1,'tester','seoul','seoul2','01011223344',sysdate,'D');
insert into order_detail values (5,'ab34','aa34','302d00001','모두의 블루종 JK','resources/images/302d00001_1.jpg','블랙','M',59000,1,'client','seoul','seoul2','01012345678',sysdate,'C');
insert into order_detail values (6,'aa34','aa34','102b00001','감각적 티셔츠','resources/images/102b00001_1.jpg','네이비','M',29000,1,'client','seoul','seoul2','01012345678',sysdate,'A');
  
commit;

-- 찜리스트 더미데이터
   insert into zzim values ('aaaa',1,'101a00001','베이지','S',29000,1,'resources/images/101a00001_1.jpg');
   insert into zzim values ('aaaa',2,'102b00001','네이비','L',29000,1,'resources/images/102b00001_1.jpg');
   insert into zzim values ('aaaa',3,'201c00001','블랙','S',27500,2,'resources/images/201c00001_1.jpg');
   insert into zzim values ('aaaa',4,'202c00001','블랙','S',35000,1,'resources/images/201c00001_1.jpg');
   insert into zzim values ('aaaa',5,'301d00001','브라운','M',69000,1,'resources/images/301d00001_1.jpg');
   insert into zzim values ('aaaa',6,'302d00001','카키','L',59000,2,'resources/images/302d00001_1.jpg');
   insert into zzim values ('aaaa',7,'101a00001','블랙','S',29000,1,'resources/images/101a00001_1.jpg');
   insert into zzim values ('aaaa',8,'401e00001','아이보리','S',9000,1,'resources/images/401e00001_1.jpg');
   insert into zzim values ('aaaa',9,'302d00001','네이비','L',59000,1,'resources/images/302d00001_1.jpg');
   insert into zzim values ('ab34',10,'101a00001','베이지','S',29000,1,'resources/images/101a00001_1.jpg');

commit;


--users dummy
insert into users values( 'aaaa','1234','tester','01011223344','seoul','seoul2','test@shopping.com',SYSDATE,1);
insert into users values( 'ab34','1234','client','01012345678','seoul','seoul2','test@shopping.com',SYSDATE,1);
insert into users values( 'admin.master','1234','admin','01077777777','seoul','seoul2','admin@shopping.com',SYSDATE,1);

commit;



--상품리뷰 더미1

insert into product_review values(1234,'1234','blue','so good',3,null);

commit;
