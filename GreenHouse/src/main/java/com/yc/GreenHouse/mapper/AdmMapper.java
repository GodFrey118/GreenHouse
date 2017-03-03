package com.yc.GreenHouse.mapper;

import com.yc.GreenHouse.entity.Adm;
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

}
