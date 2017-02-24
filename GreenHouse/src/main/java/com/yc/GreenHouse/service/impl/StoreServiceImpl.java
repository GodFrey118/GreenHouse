package com.yc.GreenHouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.ShopingCart;
import com.yc.GreenHouse.entity.Store;
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
	public boolean AddSCart(ShopingCart sCart) {
		ShopingCart sc = storeMapper.selectSCartGood(sCart);
		if (sc!=null) {
			sc.setSc_goodNum(sc.getSc_goodNum()+1);
			sc.setC_id(sCart.getC_id());
			return storeMapper.updateScartNum(sc)>0;
		}else{
			return storeMapper.indsertCart(sCart)>0;
		}
		
	}
	@Override
	public List<ShopingCart> getCartNum(Integer c_id) {
		return storeMapper.selectCartNum(c_id);
	}
}
