package com.yc.GreenHouse.mapper;

import java.util.List;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Shoping_Cart;
import com.yc.GreenHouse.entity.Store;

public interface StoreMapper {

	int applyStore(Store store);

	Store selectStoreInfo(int s_id);
	
	Good selectgoodInfo(int g_id);

	List<Good> selectGoodssaInfo(int s_id);


	int indsertCart(Shoping_Cart sCart);

	List<Shoping_Cart> selectCartNum(Integer c_id);

	Shoping_Cart selectSCartGood(Shoping_Cart sCart);

	int updateScartNum(Shoping_Cart sc);

	int DeleteCartGood(int sc_id);

	int getStore(int c_id);

}
