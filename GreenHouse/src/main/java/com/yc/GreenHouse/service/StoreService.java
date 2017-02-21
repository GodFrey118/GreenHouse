package com.yc.GreenHouse.service;

import org.springframework.stereotype.Component;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Store;
@Component("storeService")
public interface StoreService {

	int apply(Store store);

	Store getStoreInfo(int s_id);

	Good getgoodInfo(int g_id);

}
