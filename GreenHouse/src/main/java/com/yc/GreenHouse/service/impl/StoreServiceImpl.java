package com.yc.GreenHouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Orders;
import com.yc.GreenHouse.entity.Shoping_Cart;
import com.yc.GreenHouse.entity.Store;
import com.yc.GreenHouse.entity.com_money;
import com.yc.GreenHouse.mapper.StoreMapper;
import com.yc.GreenHouse.service.StoreService;


@Service("storeService")
public class StoreServiceImpl implements StoreService{

	@Autowired
	private StoreMapper storeMapper;
	@Override
	public int apply(Store store) {
		return storeMapper.applyStore(store);
	}
	@Override
	public Store getStoreInfo(int s_id) {
		return storeMapper.selectStoreInfo(s_id);
	}
	@Override
	public Good getgoodInfo(int g_id) {
		return storeMapper.selectgoodInfo(g_id);
	}
	@Override
	public List<Good> getGoodssaInfo(int s_id) {
		return storeMapper.selectGoodssaInfo(s_id);
	}
	@Override

	public boolean AddSCart(Shoping_Cart sCart) {
		Shoping_Cart sc = storeMapper.selectSCartGood(sCart);
		if (sc!=null) {
			sc.setSc_goodNum(sc.getSc_goodNum()+1);
			sc.setC_id(sCart.getC_id());
			return storeMapper.updateScartNum(sc)>0;
		}else{
			return storeMapper.indsertCart(sCart)>0;

		}
	
	}
	@Override
	public List<Shoping_Cart> getCartNum(Integer c_id) {
		return storeMapper.selectCartNum(c_id);
	}
	@Override
	public boolean getDelCartGood(int sc_id) {
		return storeMapper.DeleteCartGood(sc_id)>0;
	}
	@Override
	public boolean getDelCartGood(Shoping_Cart sCart) {
		return storeMapper.updateScartNum(sCart)>0;
	}
	
	public int getS_id(Object c_id) {
		return storeMapper.getStore(c_id);

	}
	@Override
	public List<String> selectGt_name() {
		return storeMapper.getGt_name();
	}
	@Override
	public int insertGood(Good good) {
		return storeMapper.insertGood(good);
	}

	@Override
	public List<Shoping_Cart> getOrderInfo(Shoping_Cart sCart) {
		return storeMapper.selectOrderInfo(sCart);
	}
	@Override
	public boolean insertOrder(Orders orders) {
		return storeMapper.insertOrder(orders)>0;
	}
	@Override
	public boolean updateGoodState(Shoping_Cart sCart) {
		return storeMapper.updateGoodState(sCart)>0;
	}
	@Override
	public com_money selectMoney(Integer c_id) {
		return storeMapper.selectMoney(c_id);
	}
	@Override
	public boolean updatetOrder(com_money cMoney) {
		return storeMapper.updatetOrder(cMoney)>0;
	}
	@Override
	public boolean updatetOrderState(com_money cMoney) {
		return storeMapper.updatetOrderState(cMoney)>0;
	}
	@Override
	public List<Orders> getOrders(Integer c_id) {
		return storeMapper.getOrders(c_id);
	}
	@Override
	public Shoping_Cart SelectSCart(Shoping_Cart sCart) {
		return storeMapper.SelectSCart(sCart);
	}
	
}
