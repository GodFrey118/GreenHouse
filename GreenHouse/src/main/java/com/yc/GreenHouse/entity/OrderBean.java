package com.yc.GreenHouse.entity;

import java.util.Date;

/*<id property="o_id" column="o_id"/>
<result property="o_amount" column="o_amount"/>
<result property="o_sum" column="o_sum"/>
<result property="o_ordertime" column="o_ordertime"/>
<result property="o_state" column="o_state"/>
<result property="s_name" column="s_name" />
<result property="s_company" column="s_company" /> 
<result property="s_tel" column="s_tel" />		  
<result property="g_name" column="g_name" />
<result property="g_price" column="g_price" />  
<result property="g_type" column="g_type" />*/
public class OrderBean {
	private Integer o_id;
	private Date o_ordertime;
	private String c_name;
	private String c_tel;
	private String s_name;
	private String s_company;
	private String s_tel;
	private String g_name;
	private double g_price;
	private Integer o_amount;
	private double o_sum;
	private String g_type;
	private String o_state;
	public Integer getO_id() {
		return o_id;
	}
	public void setO_id(Integer o_id) {
		this.o_id = o_id;
	}
	public Date getO_ordertime() {
		return o_ordertime;
	}
	public void setO_ordertime(Date o_ordertime) {
		this.o_ordertime = o_ordertime;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_tel() {
		return c_tel;
	}
	public void setC_tel(String c_tel) {
		this.c_tel = c_tel;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_company() {
		return s_company;
	}
	public void setS_company(String s_company) {
		this.s_company = s_company;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public double getG_price() {
		return g_price;
	}
	public void setG_price(double g_price) {
		this.g_price = g_price;
	}
	public Integer getO_amount() {
		return o_amount;
	}
	public void setO_amount(Integer o_amount) {
		this.o_amount = o_amount;
	}
	public double getO_sum() {
		return o_sum;
	}
	public void setO_sum(double o_sum) {
		this.o_sum = o_sum;
	}
	public String getG_type() {
		return g_type;
	}
	public void setG_type(String g_type) {
		this.g_type = g_type;
	}
	public String getO_state() {
		return o_state;
	}
	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	@Override
	public String toString() {
		return "OrderBean [o_id=" + o_id + ", o_ordertime=" + o_ordertime
				+ ", c_name=" + c_name + ", c_tel=" + c_tel + ", s_name="
				+ s_name + ", s_company=" + s_company + ", s_tel=" + s_tel
				+ ", g_name=" + g_name + ", g_price=" + g_price + ", o_amount="
				+ o_amount + ", o_sum=" + o_sum + ", g_type=" + g_type
				+ ", o_state=" + o_state + "]";
	}
	public OrderBean(Integer o_id, Date o_ordertime, String c_name,
			String c_tel, String s_name, String s_company, String s_tel,
			String g_name, double g_price, Integer o_amount, double o_sum,
			String g_type, String o_state) {
		super();
		this.o_id = o_id;
		this.o_ordertime = o_ordertime;
		this.c_name = c_name;
		this.c_tel = c_tel;
		this.s_name = s_name;
		this.s_company = s_company;
		this.s_tel = s_tel;
		this.g_name = g_name;
		this.g_price = g_price;
		this.o_amount = o_amount;
		this.o_sum = o_sum;
		this.g_type = g_type;
		this.o_state = o_state;
	}
	public OrderBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
