package com.yc.GreenHouse.entity;

import java.util.List;

/*
 *gt_id integer primary key,
	gt_name varchar2(20)
 */
public class GoodType {
	private Integer gt_id;
	private String gt_name;
	private List<Good> goods;
	
	public List<Good> getGoods() {
		return goods;
	}
	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}
	public Integer getGt_id() {
		return gt_id;
	}
	public void setGt_id(Integer gt_id) {
		this.gt_id = gt_id;
	}
	public String getGt_name() {
		return gt_name;
	}
	public void setGt_name(String gt_name) {
		this.gt_name = gt_name;
	}

	public GoodType() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GoodType(Integer gt_id, String gt_name, List<Good> goods) {
		super();
		this.gt_id = gt_id;
		this.gt_name = gt_name;
		this.goods = goods;
	}
	@Override
	public String toString() {
		return "GoodType [gt_id=" + gt_id + ", gt_name=" + gt_name + ", goods="
				+ goods + "]";
	}
	public GoodType(Integer gt_id, String gt_name) {
		super();
		this.gt_id = gt_id;
		this.gt_name = gt_name;
	}
	
}
