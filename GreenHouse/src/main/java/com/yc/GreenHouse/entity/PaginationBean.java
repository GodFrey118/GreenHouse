package com.yc.GreenHouse.entity;

import java.util.List;
/**
 * 通用分页bean
 * @author 忽尔今夏
 *
 * @param <T>
 */
public class PaginationBean<T> {
	@Override
	public String toString() {
		return "PaginationBean [currPage=" + currPage + ", pageSize=" + pageSize + ", total=" + total + ", totalPage="
				+ totalPage + "\n rows=" + rows + "]";
	}
		//请求参数
		private Integer currPage=1;//当前页
		private Integer pageSize=10;//每页的数据条数
		
		//响应数据
		private Integer total;//数据的总条数
		private Integer totalPage;//总页数
		private List<T> rows;//当前页的数据
	
	public Integer getCurrPage() {
		return currPage;
	}
	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getRows() {
		return rows;
	}
	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	
	
	
}
