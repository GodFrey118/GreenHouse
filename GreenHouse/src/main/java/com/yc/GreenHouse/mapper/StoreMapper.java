package com.yc.GreenHouse.mapper;

import java.util.List;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Orders;
import com.yc.GreenHouse.entity.Shoping_Cart;
import com.yc.GreenHouse.entity.Store;
import com.yc.GreenHouse.entity.com_money;

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

	int getStore(Object c_id);

	List<String> getGt_name();

	int insertGood(Good good);

	List<Shoping_Cart> selectOrderInfo(Shoping_Cart sCart);

	int insertOrder(Orders orders);

	int updateGoodState(Shoping_Cart sCart);

	com_money selectMoney(Integer c_id);

	int updatetOrder(com_money cMoney);

	int updatetOrderState(com_money cMoney);

	List<Orders> getOrders(Integer c_id);

	Shoping_Cart SelectSCart(Shoping_Cart sCart);
	

}
