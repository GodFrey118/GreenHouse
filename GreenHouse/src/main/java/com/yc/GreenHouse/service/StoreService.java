package com.yc.GreenHouse.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Orders;
import com.yc.GreenHouse.entity.GoodType;
import com.yc.GreenHouse.entity.Shoping_Cart;
import com.yc.GreenHouse.entity.Store;
import com.yc.GreenHouse.entity.com_money;
@Component("storeService")
public interface StoreService {

	int apply(Store store);

	Store getStoreInfo(int s_id);

	Good getgoodInfo(int g_id);

	List<Good> getGoodssaInfo(int s_id);

	boolean AddSCart(Shoping_Cart sCart);

	List<Shoping_Cart> getCartNum(Integer c_id);

	boolean getDelCartGood(int sc_id);

	boolean getDelCartGood(Shoping_Cart sCart);

	int getS_id(Object c_id);

	List<GoodType> selectGt_name();

	int insertGood(Good good);

	List<Shoping_Cart> getOrderInfo(Shoping_Cart sCart);

	boolean insertOrder(Orders orders);

	boolean updateGoodState(Shoping_Cart sCart);

	boolean updatetOrder(com_money cMoney);

	com_money selectMoney(Integer c_id);

	boolean updatetOrderState(com_money cMoney);

	List<Orders> getOrders(Integer c_id);

	Shoping_Cart SelectSCart(Shoping_Cart sCart);

}
