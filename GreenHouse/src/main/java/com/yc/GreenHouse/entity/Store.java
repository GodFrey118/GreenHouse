package com.yc.GreenHouse.entity;
/*
 *	s_id integer primary key,
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
	s_ID_pic blob,
	s_licence_pic blob,
	s_service varchar2(100),
	s_state varchar2(20)
 */
public class Store {
	private Integer s_id;
	private Integer st_id;
	private Integer c_id;
	private String s_ownerName;
	private String s_ID_card;
	private String s_name;
	private String s_company;
	private String s_area;
	private String s_detail_Addr;
	private String s_post;
	private String s_tel;
	private String s_ID_pic;
	private String s_licence_pic;
	private String s_service;
	private String s_state;
	
	public Store() {
	}

	public Integer getS_id() {
		return s_id;
	}

	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}

	public Integer getSt_id() {
		return st_id;
	}

	public void setSt_id(Integer st_id) {
		this.st_id = st_id;
	}

	public String getS_ownerName() {
		return s_ownerName;
	}

	public void setS_ownerName(String s_ownerName) {
		this.s_ownerName = s_ownerName;
	}

	public String getS_ID_card() {
		return s_ID_card;
	}

	public void setS_ID_card(String s_ID_card) {
		this.s_ID_card = s_ID_card;
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

	public String getS_area() {
		return s_area;
	}

	public void setS_area(String s_area) {
		this.s_area = s_area;
	}

	public String getS_detail_Addr() {
		return s_detail_Addr;
	}

	public void setS_detail_Addr(String s_detail_Addr) {
		this.s_detail_Addr = s_detail_Addr;
	}

	public String getS_post() {
		return s_post;
	}

	public void setS_post(String s_post) {
		this.s_post = s_post;
	}

	public String getS_tel() {
		return s_tel;
	}

	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}

	public String getS_ID_pic() {
		return s_ID_pic;
	}

	public void setS_ID_pic(String s_ID_pic) {
		this.s_ID_pic = s_ID_pic;
	}

	public String getS_licence_pic() {
		return s_licence_pic;
	}

	public void setS_licence_pic(String s_licence_pic) {
		this.s_licence_pic = s_licence_pic;
	}

	public String getS_service() {
		return s_service;
	}

	public void setS_service(String s_service) {
		this.s_service = s_service;
	}

	public String getS_state() {
		return s_state;
	}

	public void setS_state(String s_state) {
		this.s_state = s_state;
	}

	public Integer getC_id() {
		return c_id;
	}

	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}

	@Override
	public String toString() {
		return "Store [s_id=" + s_id + ", st_id=" + st_id + ", c_id=" + c_id
				+ ", s_ownerName=" + s_ownerName + ", s_ID_card=" + s_ID_card
				+ ", s_name=" + s_name + ", s_company=" + s_company
				+ ", s_area=" + s_area + ", s_detail_Addr=" + s_detail_Addr
				+ ", s_post=" + s_post + ", s_tel=" + s_tel + ", s_ID_pic="
				+ s_ID_pic + ", s_licence_pic=" + s_licence_pic
				+ ", s_service=" + s_service + ", s_state=" + s_state + "]";
	}

	public Store(Integer s_id, Integer st_id, Integer c_id, String s_ownerName,
			String s_ID_card, String s_name, String s_company, String s_area,
			String s_detail_Addr, String s_post, String s_tel, String s_ID_pic,
			String s_licence_pic, String s_service, String s_state) {
		this.s_id = s_id;
		this.st_id = st_id;
		this.c_id = c_id;
		this.s_ownerName = s_ownerName;
		this.s_ID_card = s_ID_card;
		this.s_name = s_name;
		this.s_company = s_company;
		this.s_area = s_area;
		this.s_detail_Addr = s_detail_Addr;
		this.s_post = s_post;
		this.s_tel = s_tel;
		this.s_ID_pic = s_ID_pic;
		this.s_licence_pic = s_licence_pic;
		this.s_service = s_service;
		this.s_state = s_state;
	}
}
