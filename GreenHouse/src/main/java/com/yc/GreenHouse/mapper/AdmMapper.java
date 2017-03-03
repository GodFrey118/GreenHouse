package com.yc.GreenHouse.mapper;

import com.yc.GreenHouse.entity.Adm;
<<<<<<< HEAD
import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.GoodType;
import com.yc.GreenHouse.entity.PaginationBean;

public interface AdmMapper {

	Adm admLogin(Adm adm);

	PaginationBean<CommonUser> showUserInfo(PaginationBean<CommonUser> userBean);

	PaginationBean<Good> showGoodInfo(PaginationBean<Good> userBean);

	PaginationBean<GoodType> showGoodType(PaginationBean<GoodType> userBean);

	GoodType checkGoodType(GoodType goodType);

	int addGoodType(GoodType goodType);
=======
import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Orders;
import com.yc.GreenHouse.entity.PaginationBean;
import com.yc.GreenHouse.entity.Store;

public interface AdmMapper {

	Adm admLogin(Adm adm);

	PaginationBean<Good> showGoodInfo(PaginationBean<Good> userBean);

	PaginationBean<Store> showStoreInfo(PaginationBean<Store> userBean);

	int updateStoreState(Store store);

	PaginationBean<Orders> showOrderInfo(PaginationBean<Orders> userBean);
>>>>>>> branch 'master' of ssh://git@github.com/Godfrey118/GreenHouse.git

}
