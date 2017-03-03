package com.yc.GreenHouse.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.GreenHouse.entity.Adm;
<<<<<<< HEAD
import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.GoodType;
import com.yc.GreenHouse.entity.PaginationBean;
import com.yc.GreenHouse.mapper.AdmMapper;
import com.yc.GreenHouse.service.AdmService;

@Service("admService")
public class AdmServiceImpl implements AdmService {

	@Autowired
	private AdmMapper admMapper;
	@Override
	public Adm login(Adm adm) {
		return admMapper.admLogin(adm);
	}
	@Override
	public PaginationBean<Good> listPartGoods(String pageSize, String currPage) {
		PaginationBean<Good> userBean=new PaginationBean<Good>();
		if (currPage != null) {
			userBean.setCurrPage(Integer.parseInt(currPage));
		}
		if (pageSize != null) {
			userBean.setPageSize(Integer.parseInt(pageSize));
		}
		return admMapper.showGoodInfo(userBean);
	}
	
	@Override
	public PaginationBean<CommonUser> listUserInfo(String currPage, String pageSize) {
		PaginationBean<CommonUser> userBean=new PaginationBean<CommonUser>();
		if (currPage != null) {
			userBean.setCurrPage(Integer.parseInt(currPage));
		}
		if (pageSize != null) {
			userBean.setPageSize(Integer.parseInt(pageSize));
		}
		return admMapper.showUserInfo(userBean);
	}
	@Override
	public PaginationBean<GoodType> listGoodType(String currPage, String pageSize) {
		PaginationBean<GoodType> userBean=new PaginationBean<GoodType>();
		if (currPage != null) {
			userBean.setCurrPage(Integer.parseInt(currPage));
		}
		if (pageSize != null) {
			userBean.setPageSize(Integer.parseInt(pageSize));
		}
		return admMapper.showGoodType(userBean);
	}
	@Override
	public GoodType checkGoodType(GoodType goodType) {
		return admMapper.checkGoodType(goodType);
	}
	@Override
	public int addGoodType(GoodType goodType) {
		return admMapper.addGoodType(goodType);
=======
import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Orders;
import com.yc.GreenHouse.entity.PaginationBean;
import com.yc.GreenHouse.entity.Store;
import com.yc.GreenHouse.mapper.AdmMapper;
import com.yc.GreenHouse.service.AdmService;

@Service("admService")
public class AdmServiceImpl implements AdmService {

	@Autowired
	private AdmMapper admMapper;
	@Override
	public Adm login(Adm adm) {
		return admMapper.admLogin(adm);
	}
	@Override
	public PaginationBean<Good> listPartGoods(String currPage,String pageSize) {
		PaginationBean<Good> userBean = new PaginationBean<Good>();
		if (currPage != null) {
			userBean.setCurrPage(Integer.parseInt(currPage));
		}
		
		if (pageSize != null) {
			userBean.setPageSize(Integer.parseInt(pageSize));
			
		}
		return admMapper.showGoodInfo(userBean);
	}
	@Override
	public PaginationBean<Store> listPartStores(String currPage, String pageSize) {
		PaginationBean<Store> userBean = new PaginationBean<Store>();
		if (currPage != null) {
			userBean.setCurrPage(Integer.parseInt(currPage));
		}
		
		if (pageSize != null) {
			userBean.setPageSize(Integer.parseInt(pageSize));
			
		}
		return admMapper.showStoreInfo(userBean);
	}
	@Override
	public boolean storeApply(Store store) {
		return admMapper.updateStoreState(store)>0;
	}
	@Override
	public PaginationBean<Orders> listPartorder(String currPage, String pageSize) {
		PaginationBean<Orders> userBean = new PaginationBean<Orders>();
		if (currPage != null) {
			userBean.setCurrPage(Integer.parseInt(currPage));
		}
		
		if (pageSize != null) {
			userBean.setPageSize(Integer.parseInt(pageSize));
			
		}
		return admMapper.showOrderInfo(userBean);
>>>>>>> branch 'master' of ssh://git@github.com/Godfrey118/GreenHouse.git
	}

}
