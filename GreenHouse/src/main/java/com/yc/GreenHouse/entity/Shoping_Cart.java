package com.yc.GreenHouse.entity;

import java.util.List;
/*
 * create table Shopping_Cart(
     sc_id integer primary key,
     g_id integer,
     c_id integer,
     sc_goodNum integer,
     sc_g_buy_state varchar2(50),
     sc_g_payment varchar2(50)
)
*/
public class Shoping_Cart {
	private Integer sc_id;
	private Integer g_id;
    private Integer c_id;
	private Integer sc_goodNum;
	private String sc_g_buy_state;
	private String sc_g_payment;
	
	private List<Good> goods;
	private List<CommonUser> commonUsers;
	public Integer getSc_id() {
		return sc_id;
	}
	public void setSc_id(Integer sc_id) {
		this.sc_id = sc_id;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}
	public Integer getSc_goodNum() {
		return sc_goodNum;
	}
	public void setSc_goodNum(Integer sc_goodNum) {
		this.sc_goodNum = sc_goodNum;
	}
	public String getSc_g_buy_state() {
		return sc_g_buy_state;
	}
	public void setSc_g_buy_state(String sc_g_buy_state) {
		this.sc_g_buy_state = sc_g_buy_state;
	}
	public String getSc_g_payment() {
		return sc_g_payment;
	}
	public void setSc_g_payment(String sc_g_payment) {
		this.sc_g_payment = sc_g_payment;
	}
	public List<Good> getGoods() {
		return goods;
	}
	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}
	public List<CommonUser> getCommonUsers() {
		return commonUsers;
	}
	public void setCommonUsers(List<CommonUser> commonUsers) {
		this.commonUsers = commonUsers;
	}
	@Override
	public String toString() {
		return "Shoping_Cart [sc_id=" + sc_id + ", g_id=" + g_id + ", c_id="
				+ c_id + ", sc_goodNum=" + sc_goodNum + ", sc_g_buy_state="
				+ sc_g_buy_state + ", sc_g_payment=" + sc_g_payment
				+ ", goods=" + goods + ", commonUsers=" + commonUsers + "]";
	}
	public Shoping_Cart(Integer sc_id, Integer g_id, Integer c_id,
			Integer sc_goodNum, String sc_g_buy_state, String sc_g_payment,
			List<Good> goods, List<CommonUser> commonUsers) {
		super();
		this.sc_id = sc_id;
		this.g_id = g_id;
		this.c_id = c_id;
		this.sc_goodNum = sc_goodNum;
		this.sc_g_buy_state = sc_g_buy_state;
		this.sc_g_payment = sc_g_payment;
		this.goods = goods;
		this.commonUsers = commonUsers;
	}
	public Shoping_Cart() {
		super();
		
	}
	
}
