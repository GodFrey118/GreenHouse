package com.yc.GreenHouse.mapper;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Store;

public interface StoreMapper {

	int applyStore(Store store);

	Store selectStoreInfo(int s_id);
	
	Good selectgoodInfo(int g_id);

}
