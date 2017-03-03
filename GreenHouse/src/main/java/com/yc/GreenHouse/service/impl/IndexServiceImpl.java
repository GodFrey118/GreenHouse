package com.yc.GreenHouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.GoodType;
import com.yc.GreenHouse.entity.Shoping_Cart;
import com.yc.GreenHouse.mapper.IndexMapper;
import com.yc.GreenHouse.service.IndexService;
@Service("indexService")
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexMapper indexMapper;

	@Override
	public List<GoodType> getAllGoods() {
		
		return indexMapper.selectAllGoods();
	}

	@Override
	public List<GoodType> getAllGoodTypes() {
		return indexMapper.selectAllGoodTypes();
	}
/*
	@Override
	public List<Shoping_Cart> shopping_CartGood() {
		return indexMapper.selectCartGood();
	}
*/

	
}
