package com.yc.GreenHouse.mapper;

import java.util.List;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.ShopingCart;
import com.yc.GreenHouse.entity.Store;

public interface StoreMapper {

	int applyStore(Store store);

	Store selectStoreInfo(int s_id);
	
	Good selectgoodInfo(int g_id);

	List<Good> selectGoodssaInfo(int s_id);

	int indsertCart(ShopingCart sCart);

	List<ShopingCart> selectCartNum(Integer c_id);

	ShopingCart selectSCartGood(ShopingCart sCart);

	int updateScartNum(ShopingCart sc);

}
