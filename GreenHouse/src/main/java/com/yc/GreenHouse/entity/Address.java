package com.yc.GreenHouse.entity;

import java.util.List;

/*
 *a_id integer primary key,
	c_id integer references CommonUser(c_id),
	a_receiver varchar2(40),
	a_area varchar2(20),
	a_street varchar2(100),
	a_post varchar2(20),
	a_tel varchar2(40)
 */
public class Address {
	private Integer a_id;
	private Integer c_id;
	private String a_receiver;
	private String a_area;
	private String a_street;
	private String a_post;
	private String a_tel;
	public Integer getA_id() {
		return a_id;
	}
	public void setA_id(Integer a_id) {
		this.a_id = a_id;
	}
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}
	public String getA_receiver() {
		return a_receiver;
	}
	public void setA_receiver(String a_receiver) {
		this.a_receiver = a_receiver;
	}
	public String getA_area() {
		return a_area;
	}
	public void setA_area(String a_area) {
		this.a_area = a_area;
	}
	public String getA_street() {
		return a_street;
	}
	public void setA_street(String a_street) {
		this.a_street = a_street;
	}
	public String getA_post() {
		return a_post;
	}
	public void setA_post(String a_post) {
		this.a_post = a_post;
	}
	public String getA_tel() {
		return a_tel;
	}
	public void setA_tel(String a_tel) {
		this.a_tel = a_tel;
	}
	@Override
	public String toString() {
		return "Address [a_id=" + a_id + ", c_id=" + c_id + ", a_receiver="
				+ a_receiver + ", a_area=" + a_area + ", a_street=" + a_street
				+ ", a_post=" + a_post + ", a_tel=" + a_tel + "]";
	}
	public Address(Integer a_id, Integer c_id, String a_receiver,
			String a_area, String a_street, String a_post, String a_tel) {
		super();
		this.a_id = a_id;
		this.c_id = c_id;
		this.a_receiver = a_receiver;
		this.a_area = a_area;
		this.a_street = a_street;
		this.a_post = a_post;
		this.a_tel = a_tel;
	}
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
