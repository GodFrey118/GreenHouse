package com.yc.GreenHouse.service;

import org.springframework.stereotype.Component;

import com.yc.GreenHouse.entity.CommonUser;

@Component("userService")
public interface UserService {
	
	CommonUser login(CommonUser user);

	void resetPassword(String username, String randPassword);

	int register(CommonUser user);
}
