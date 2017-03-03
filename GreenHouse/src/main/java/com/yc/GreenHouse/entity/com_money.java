package com.yc.GreenHouse.entity;

public class com_money {
	private Integer cm_id;
	private Integer c_id;
	private Double money;
	@Override
	public String toString() {
		return "com_money [cm_id=" + cm_id + ", c_id=" + c_id + ", money="
				+ money + "]";
	}
	public com_money(Integer cm_id, Integer c_id, Double money) {
		super();
		this.cm_id = cm_id;
		this.c_id = c_id;
		this.money = money;
	}
	public Integer getCm_id() {
		return cm_id;
	}
	public void setCm_id(Integer cm_id) {
		this.cm_id = cm_id;
	}
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public com_money() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
