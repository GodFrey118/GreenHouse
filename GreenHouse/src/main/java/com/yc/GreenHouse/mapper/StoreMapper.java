package com.yc.GreenHouse.mapper;

import com.yc.GreenHouse.entity.Store;

public interface StoreMapper {

	Store applyStore(Store store);

	Store selectStoreInfo(int s_id);

}
