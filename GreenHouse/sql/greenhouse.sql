7drop table CommonUser 3
3drop table Store 4
8drop table Good 5
9drop table GoodType 1
1drop table Shopping_Cart 6
4drop table StoreType 2
2drop table Orders 7
5drop table Address 8
6drop table Comments 9


--普通用户：用户编号，用户名，密码，电话，邮箱，性别，生日，qq，居住地
create table CommonUser(
	c_id integer primary key,
	c_name varchar2(40) not null,
	c_sex varchar2(20),
	c_birthday date,
	c_pwd varchar2(100),
	c_tel varchar2(40),
	c_email varchar2(40),
	c_qq varchar2(20),
	c_addr varchar2(100)
)

select * from COMMONUSER
insert into CommonUser values(seq_CommonUser.nextval,'你好',null,null,null,'aaaaa','12312312312',null,null,null)
create sequence seq_CommonUser start with 1000;
insert into CommonUser values(seq_CommonUser.nextval,'郭帆','男',to_date('1996-08-06','yyyy-MM-dd'),'aaaaa','13207349871','825311573@qq.com','825311573','湖南省益阳市沅江县')
--管理员：编号，姓名，密码
create table Adm(
	adm_id integer primary key,
	adm_name varchar2(40),
	adm_pwd varchar2(100)
)
select * from adm
create sequence seq_Adm start with 1000;
insert into Adm values(seq_Adm.nextval,'admin','aaaaa');
--店铺：店铺编号，店铺类型编号，用户编号，店主姓名，身份证号，店铺名称，公司名称，所在地区，详细地址，邮政编码，电话，证件照，营业执照，服务保障，状态
create table Store(
	s_id integer primary key,
	st_id integer references StoreType(st_id),
	c_id integer references CommonUser(c_id),
	s_ownerName varchar2(40),
	s_ID_card varchar2(100),
	s_name varchar2(50),
	s_company varchar2(100),
	s_area varchar2(20),
	s_detail_Addr varchar2(150),
	s_post varchar2(20),
	s_tel varchar2(40),
	s_ID_pic varchar2(150),
	s_licence_pic varchar2(150),
	s_service varchar2(100),
	s_state varchar2(20)
)
select * from storeType
insert into storeType values()
update store set s_state='未通过' where s_id=1100
alter table store modify s_ID_pic varchar2(150)
alter table store rename column s_ID_pic to name_tmp;
alter table store add s_state varchar2(20);s
alter table store drop column name_tmp;
commit
drop table Store;
select  s_id from Store;
select * from STORE
delete from Store where s_id=1023
create sequence seq_Store start with 1000;
insert into Store values(seq_Store.nextval,1002,1002,'郭帆','430981199608061134','佳客来','帆式有限公司','湖南省衡阳市','珠晖区衡花路18号','413117','13207349871',null,null,'七天包退换','已通过');
insert into Store values(seq_Store.nextval,1020,1002,'郭帆','430981199608061134','佳客来','帆式有限公司','8732','益阳市','413117','13207349871',null,null,null,'未通过');

--商品：商品编号，商店编号，名称，类型编号，商品相片，价格，库存量，状态
create table Good(
	g_id integer primary key,
	s_id integer references Store(s_id),g_state
	g_name varchar2(40),
	gt_id integer references GoodType(gt_id),
	g_pic varchar2(150),
	g_price float,
	g_stock number(5),
	g_type varchar2(50),
	g_state varchar2(20)
)
update Good set g_price=5  where g_id=1000
alter table good add g_type varchar2(50);
alter table good add g_state varchar2(20);
select * from Good;

select count(1) total,ceil(count(1) / 10) totalPage,10 pageSize, 2 currPage from Good 
select * from (select m.*,rownum rn from (select * from good order by 1 desc) m where rownum <= 1 * 10) where rn ＞ (1-1) * 10 
delete GOOD
drop table Good
drop sequence seq_Good
create sequence seq_Good start with 1000;
insert into Good values(seq_Good.nextval,1100,'丽山耕 雪莲果',1021,null,3.00,1000,'水果','上架');
insert into Good values(seq_Good.nextval,1100,'丽山耕 板栗',1021,null,3.00,1000,'南北干活','上架');
insert into Good values(seq_Good.nextval,1100,'丽山耕 杂粮黑米',1021,null,3.00,1000,'杂粮主食','上架');
insert into Good values(seq_Good.nextval,1100,'丽山耕 原味牛肉干',1024,null,3.00,1000,'肉干/肉脯','上架');
insert into Good values(seq_Good.nextval,1100,'丽山耕 铁观音茶叶',1023,null,3.00,1002,'绿茶','上架');
insert into Good values(seq_Good.nextval,1100,'丽山耕 葡萄酒',1025,null,3.00,1002,'葡萄酒','上架');
--商品类型：类型编号，类型名
create table GoodType(
	gt_id integer primary key,
	gt_name varchar2(20)
)

insert into GoodType values(seq_GoodType.nextval,'海鲜')
select gt_name from GoodType
drop table GoodType
select * from GoodType;
delete GoodType where gt_id=1005
drop sequence seq_GoodType
create sequence seq_GoodType start with 1000;
insert into GoodType values(seq_GoodType.nextval,'生鲜食品');
insert into GoodType values(seq_GoodType.nextval,'油粮干货');
insert into GoodType values(seq_GoodType.nextval,'茶叶冲饮');
insert into GoodType values(seq_GoodType.nextval,'休闲食品');
insert into GoodType values(seq_GoodType.nextval,'酒水饮料');
insert into GoodType values(seq_GoodType.nextval,'山山百货');
insert into GoodType values(seq_GoodType.nextval,'山山优选');
select * from good g inner join goodType gt on g.gt_id=gt.gt_id where g_state = '上架' 

--购物车表：id， 商品ID，用户id，
create table Shopping_Cart(
     sc_id integer primary key,
     g_id integer,
     c_id integer,
     sc_goodNum integer,
     sc_g_buy_state varchar2(50),
     sc_g_payment varchar2(50)  
     
)
alter table Shopping_Cart add sc_state varchar2(50) default 0 增加数字字段，长整型，缺省值为0
update Shopping_Cart set sc_g_buy_state='已购买' where c_id=1000 and g_id = 1000;
select * from Shopping_Cart
drop table Shopping_Cart 
delete Shopping_Cart where sc_id in (1230,1229,1232,1231)
drop sequence seq_Cart
create sequence seq_Cart start with 1000;
ALTER TABLE Shopping_Cart modify(sc_state number(5));
update Shopping_Cart set sc_state=1;
insert into Shopping_Cart values(seq_Cart.nextval,1000,1000,1,'未购买','未付款','1');

--店铺类型：店铺类型编号，类型名
create table StoreType(
	st_id integer primary key,
	st_name varchar2(20)
)
select * from StoreType;
create sequence seq_StoreType start with 1000;
insert into StoreType values(seq_StoreType.nextval,'专卖店')
insert into StoreType values(seq_StoreType.nextval,'旗舰店')
delete from StoreType where st_id=1001
--订单：订单编号，用户编号，店铺编号，商品编号，数量，金额，下单时间，状态
create table Orders(
	o_id integer primary key,
	c_id integer references CommonUser(c_id),
	s_id integer references Store(s_id),
	g_id integer references Good(g_id),
	o_amount number(5),
	o_sum float,
	o_ordertime date,
	o_state varchar2(20)
)
select * from
		(select m.*,rownum rn from 
		(select * from Orders o left join store s on s.s_id= o.s_id left join good g on o.g_id=g.g_id order by 1 desc) m where rownum <=1 * 3) where rn > 0

drop table Orders;
select * from Orders;
create sequence seq_Orders start with 1000;
delete orders where o_id>1260 and o_id<1290;
insert into Orders values(seq_Orders.nextval,1000,1022,1001,10,30.00,sysdate,'未付款')
--地址：地址编号，用户编号，收货人姓名，地区，街道，邮编，手机号码
create table Address(
	a_id integer primary key,
	c_id integer references CommonUser(c_id),
	a_receiver varchar2(40),
	a_area varchar2(20),
	a_street varchar2(100),
	a_post varchar2(20),
	a_tel varchar2(40)
)
select * from Address;
create sequence seq_Address start with 1000;
insert into Address values(seq_Address.nextval,1002,'郭帆','湖南省衡阳市','珠晖区衡花路18号','413117','13207349871')
select * from CommonUser c inner join Address a on c.c_id = a.c_id 

--评论：编号，用户编号，商品编号，评论内容
create table Comments(
	co_id integer primary key,
	c_id integer references CommonUser(c_id),
	g_id integer references Good(g_id),
	co_content varchar2(200)
)
select * from Comments;
create sequence seq_Comments start with 1000;
insert into Comments values(seq_Comments.nextval,1002,1001,'很好吃!');

--通知：通知编号，主题，通知内容
create table Notice(
	n_id integer primary key,
	n_topic varchar2(50),
	n_content varchar2(300)
)
select * from Notice;
create sequence seq_Notice start with 1000;
insert into Notice values(seq_Notice.nextval,'好消息','大量新鲜水果正在待售!')


create table COM_MONEY(
   cm_id integer primary key,
   c_id integer,
   money number(30)
)
select * from COM_MONEY;
create sequence seq_money start with 1000;
alter table COM_MONEY modify money default 0.00;
insert into COM_MONEY values(seq_money.nextval,1020,8000.00)
insert into COM_MONEY values(seq_money.nextval,1000,8000.00)
