package com.yc.GreenHouse.mapper;


import com.yc.GreenHouse.entity.Address;
import com.yc.GreenHouse.entity.CommonUser;

public interface CommonUserMapper {
	CommonUser getcommonUser(CommonUser user);

	void updateUser(CommonUser user);

	int register(CommonUser user);

	CommonUser selectAddr(Integer c_id);

	int insertAddr(Address addr);
}
