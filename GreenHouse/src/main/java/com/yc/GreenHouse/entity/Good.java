package com.yc.GreenHouse.entity;
/*
 *g_id integer primary key,
	g_name varchar2(40),
	gt_id integer references GoodType(gt_id),
	g_pic blob,
	g_price float,
	g_stock number(5),
	g_state varchar2(20)
 */
public class Good {
	private Integer g_id;
	private Integer s_id;
	private String g_name;
	private Integer gt_id;
	private String g_pic;
	private double g_price;
	private String g_stock;
	private String g_type;
	private String g_state;
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public Integer getS_id() {
		return s_id;
	}
	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public Integer getGt_id() {
		return gt_id;
	}
	public void setGt_id(Integer gt_id) {
		this.gt_id = gt_id;
	}
	public String getG_pic() {
		return g_pic;
	}
	public void setG_pic(String g_pic) {
		this.g_pic = g_pic;
	}
	public double getG_price() {
		return g_price;
	}
	public void setG_price(double g_price) {
		this.g_price = g_price;
	}
	public String getG_stock() {
		return g_stock;
	}
	public void setG_stock(String g_stock) {
		this.g_stock = g_stock;
	}
	public String getG_type() {
		return g_type;
	}
	public void setG_type(String g_type) {
		this.g_type = g_type;
	}
	public String getG_state() {
		return g_state;
	}
	public void setG_state(String g_state) {
		this.g_state = g_state;
	}
	public Good(Integer g_id, Integer s_id, String g_name, Integer gt_id,
			String g_pic, double g_price, String g_stock, String g_type,
			String g_state) {
		super();
		this.g_id = g_id;
		this.s_id = s_id;
		this.g_name = g_name;
		this.gt_id = gt_id;
		this.g_pic = g_pic;
		this.g_price = g_price;
		this.g_stock = g_stock;
		this.g_type = g_type;
		this.g_state = g_state;
	}
	public Good() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Good [g_id=" + g_id + ", s_id=" + s_id + ", g_name=" + g_name
				+ ", gt_id=" + gt_id + ", g_pic=" + g_pic + ", g_price="
				+ g_price + ", g_stock=" + g_stock + ", g_type=" + g_type
				+ ", g_state=" + g_state + "]";
	}
}
