package com.yc.GreenHouse.mapper;

import com.yc.GreenHouse.entity.Adm;
import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.PaginationBean;
import com.yc.GreenHouse.entity.Orders;
import com.yc.GreenHouse.entity.Store;

public interface AdmMapper {

	Adm admLogin(Adm adm);

	PaginationBean<Good> showGoodInfo(PaginationBean<Good> userBean);

	PaginationBean<Store> showStoreInfo(PaginationBean<Store> userBean);

	int updateStoreState(Store store);

	PaginationBean<Orders> showOrderInfo(PaginationBean<Orders> userBean);

}
