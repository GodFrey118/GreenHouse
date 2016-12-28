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
--店铺：店铺编号，店铺类型编号，店主姓名，身份证号，店铺名称，公司名称，所在地区，详细地址，邮政编码，电话，证件照，营业执照，服务保障
create table Store(
	s_id integer primary key,
	st_id integer references StoreType(st_id),
	s_ownerName varchar2(40),
	s_ID_card varchar2(100),
	s_name varchar2(50),
	s_company varchar2(100),
	s_area varchar2(20),
	s_detail_Addr varchar2(150),
	s_post varchar2(20),
	s_tel varchar2(40),
	s_ID_pic blob,
	s_licence_pic blob,
	s_service varchar2(100)
)
--商品：商品编号，名称，类型编号，商品相片，价格，库存量，状态
create table Good(
	g_id integer primary key,
	g_name varchar2(40),
	gt_id integer references GoodType(gt_id),
	g_pic blob,
	g_price float,
	g_stock number(5),
	g_state varchar2(20)
)
--商品类型：类型编号，类型名
create table GoodType(
	gt_id integer primary key,
	gt_name varchar2(20)
)
--店铺类型：店铺类型编号，类型名
create table StoreType(
	st_id integer primary key,
	st_name varchar2(20)
)
--订单：订单编号，用户编号，店铺编号，商品编号，数量，金额，下单时间
create table Orders(
	o_id integer primary key,
	c_id integer references CommonUser(c_id),
	s_id integer references Store(s_id),
	g_id integer references Good(g_id),
	o_amount number(5),
	o_sum float,
	o_ordertime date
)
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
