package com.yc.GreenHouse.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.yc.GreenHouse.entity.Address;
import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.entity.Orders;

@Component("userService")
public interface UserService {
	
	CommonUser login(CommonUser user);

	void resetPassword(String username, String randPassword);

	int register(CommonUser user);

	CommonUser getAddr(Integer c_id);

	boolean insertAddr(Address addr);

	
}
