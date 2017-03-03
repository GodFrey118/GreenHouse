package com.yc.GreenHouse.service;

import java.util.List;

import com.yc.GreenHouse.entity.GoodType;
import com.yc.GreenHouse.entity.Shoping_Cart;

public interface IndexService {

	List<GoodType> getAllGoods();

	List<GoodType> getAllGoodTypes();

	//List<Shoping_Cart> shopping_CartGood();

}
