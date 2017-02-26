package com.yc.GreenHouse.mapper;

import java.util.List;

import com.yc.GreenHouse.entity.GoodType;
import com.yc.GreenHouse.entity.Shoping_Cart;

public interface IndexMapper {

	List<GoodType> selectAllGoods();

	List<GoodType> selectAllGoodTypes();

	//List<Shoping_Cart> selectCartGood();

}
