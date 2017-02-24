package com.yc.GreenHouse.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.mapper.CommonUserMapper;
import com.yc.GreenHouse.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private CommonUserMapper commonUserMapper;
	@Override
	public CommonUser login(CommonUser commonUser) {
		//commonUser.setC_pwd(Encrypt.md5AndSha(commonUser.getC_pwd()));
		return commonUserMapper.getcommonUser(commonUser);
	}
	@Override
	public void resetPassword(String username, String randPassword) {
		CommonUser user = new CommonUser(username, randPassword);
		commonUserMapper.updateUser(user);
	}

}
