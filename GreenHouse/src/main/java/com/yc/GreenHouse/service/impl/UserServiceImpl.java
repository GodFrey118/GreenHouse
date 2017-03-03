package com.yc.GreenHouse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.GreenHouse.entity.Address;
import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.entity.Orders;
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
	@Override
	public int register(CommonUser user) {
		return commonUserMapper.register(user);
	}
	@Override
<<<<<<< HEAD
	public int modifyUserinfo(CommonUser user) {
		return commonUserMapper.modifyUserinfo(user);
	}
	@Override
	public int addPeraddress(Address address) {
		return commonUserMapper.addPeraddress(address);
	}
	@Override
	public List<Address> getAddress(Integer c_id) {
		return commonUserMapper.selecAddress(c_id);
	}
	@Override
	public boolean getDelPeraddress(int a_id) {
		return commonUserMapper.delPeraddress(a_id)>0;
	}
	@Override
	public boolean checkName(CommonUser user) {
		return commonUserMapper.checkName(user) != null;
	}
=======
	public CommonUser getAddr(Integer c_id) {
		return commonUserMapper.selectAddr(c_id);
	}
	@Override
	public boolean insertAddr(Address addr) {
		return commonUserMapper.insertAddr(addr)>0;
	}
	
>>>>>>> branch 'master' of ssh://git@github.com/Godfrey118/GreenHouse.git

}
