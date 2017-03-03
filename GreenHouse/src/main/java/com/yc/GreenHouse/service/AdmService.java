package com.yc.GreenHouse.service;

import org.springframework.stereotype.Component;

import com.yc.GreenHouse.entity.Adm;
<<<<<<< HEAD
import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.GoodType;
import com.yc.GreenHouse.entity.PaginationBean;

@Component("admService")
public interface AdmService {

	Adm login(Adm adm);

	PaginationBean<Good> listPartGoods(String page, String rows);

	PaginationBean<CommonUser> listUserInfo(String currPage, String pageSize);

	PaginationBean<GoodType> listGoodType(String currPage, String pageSize);

	GoodType checkGoodType(GoodType goodType);

	int addGoodType(GoodType goodType);
=======
import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Orders;
import com.yc.GreenHouse.entity.PaginationBean;
import com.yc.GreenHouse.entity.Store;

@Component("admService")
public interface AdmService {

	Adm login(Adm adm);

	PaginationBean<Good> listPartGoods(String currPage, String pageSize);

	PaginationBean<Store> listPartStores(String currPage, String pageSize);

	boolean storeApply(Store store);

	PaginationBean<Orders> listPartorder(String page, String rows);
>>>>>>> branch 'master' of ssh://git@github.com/Godfrey118/GreenHouse.git

}
