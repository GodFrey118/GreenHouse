package com.yc.GreenHouse.entity;
/*
 * adm_id integer primary key,
	adm_name varchar2(40),
	adm_pwd varchar2(100)
 */
public class Adm {
	private Integer adm_id;
	private String adm_name;
	private String adm_pwd;
	public Adm() {
	}
	public Integer getAdm_id() {
		return adm_id;
	}
	public void setAdm_id(Integer adm_id) {
		this.adm_id = adm_id;
	}
	public String getAdm_name() {
		return adm_name;
	}
	public void setAdm_name(String adm_name) {
		this.adm_name = adm_name;
	}
	public String getAdm_pwd() {
		return adm_pwd;
	}
	public void setAdm_pwd(String adm_pwd) {
		this.adm_pwd = adm_pwd;
	}
	@Override
	public String toString() {
		return "Adm [adm_id=" + adm_id + ", adm_name=" + adm_name
				+ ", adm_pwd=" + adm_pwd + "]";
	}
	public Adm(String adm_name, String adm_pwd) {
		super();
		this.adm_name = adm_name;
		this.adm_pwd = adm_pwd;
	}
}
