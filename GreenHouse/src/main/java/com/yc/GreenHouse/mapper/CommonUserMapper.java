package com.yc.GreenHouse.mapper;

import java.util.List;

import com.yc.GreenHouse.entity.Address;
import com.yc.GreenHouse.entity.CommonUser;

public interface CommonUserMapper {
	CommonUser getcommonUser(CommonUser user);

	void updateUser(CommonUser user);

	int register(CommonUser user);

	int modifyUserinfo(CommonUser user);

	int addPeraddress(Address address);

	List<Address> selecAddress(Integer c_id);

	int delPeraddress(int a_id);

	CommonUser checkName(CommonUser user);

}
