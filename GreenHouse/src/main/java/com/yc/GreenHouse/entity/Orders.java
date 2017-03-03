package com.yc.GreenHouse.entity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/*
 *o_id integer primary key,
	c_id integer references CommonUser(c_id),
	s_id integer references Store(s_id),
	g_id integer references Good(g_id),
	o_amount number(5),
	o_sum float,
	o_ordertime date
 */
public class Orders {
	private Integer o_id;
	private Integer c_id;
	private Integer s_id;
	private Integer g_id;
	private Integer o_amount;
	private float o_sum;
	private String o_ordertime;
	private String o_state;
	private List<Store> stores;
	private List<Good> goods;
	
	public Orders(Integer o_id, Integer c_id, Integer s_id, Integer g_id,
			Integer o_amount, float o_sum, String o_ordertime, String o_state,
			List<Store> stores, List<Good> goods) {
		super();
		this.o_id = o_id;
		this.c_id = c_id;
		this.s_id = s_id;
		this.g_id = g_id;
		this.o_amount = o_amount;
		this.o_sum = o_sum;
		this.o_ordertime = o_ordertime;
		this.o_state = o_state;
		this.stores = stores;
		this.goods = goods;
	}

	public List<Store> getStores() {
		return stores;
	}
	public void setStores(List<Store> stores) {
		this.stores = stores;
	}
	public List<Good> getGoods() {
		return goods;
	}
	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}
	public String getO_state() {
		return o_state;
	}
	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	public Integer getO_id() {
		return o_id;
	}
	public void setO_id(Integer o_id) {
		this.o_id = o_id;
	}
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}
	public Integer getS_id() {
		return s_id;
	}
	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public Integer getO_amount() {
		return o_amount;
	}
	public void setO_amount(Integer o_amount) {
		this.o_amount = o_amount;
	}
	public float getO_sum() {
		return o_sum;
	}
	public void setO_sum(float o_sum) {
		this.o_sum = o_sum;
	}
	public String getDate() {
		return o_ordertime;
	}
	public void setDate(Date o_ordertime) {
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		this.o_ordertime = formatter.format(o_ordertime);
		
	}
	@Override
	public String toString() {
		return "Orders [o_id=" + o_id + ", c_id=" + c_id + ", s_id=" + s_id
				+ ", g_id=" + g_id + ", o_amount=" + o_amount + ", o_sum="
				+ o_sum + ", o_ordertime=" + o_ordertime + ", o_state=" + o_state
				+ ", stores=" + stores + ", goods=" + goods + "]";
	}
	
	
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
