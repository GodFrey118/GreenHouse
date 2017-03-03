package com.yc.GreenHouse.service;

import org.springframework.stereotype.Component;

import com.yc.GreenHouse.entity.Adm;
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

}
