package com.yc.GreenHouse.mapper;

<<<<<<< HEAD
import java.util.List;
=======
>>>>>>> branch 'master' of ssh://git@github.com/Godfrey118/GreenHouse.git

import com.yc.GreenHouse.entity.Address;
import com.yc.GreenHouse.entity.CommonUser;

public interface CommonUserMapper {
	CommonUser getcommonUser(CommonUser user);

	void updateUser(CommonUser user);

	int register(CommonUser user);

<<<<<<< HEAD
	int modifyUserinfo(CommonUser user);

	int addPeraddress(Address address);

	List<Address> selecAddress(Integer c_id);

	int delPeraddress(int a_id);

	CommonUser checkName(CommonUser user);

=======
	CommonUser selectAddr(Integer c_id);

	int insertAddr(Address addr);
>>>>>>> branch 'master' of ssh://git@github.com/Godfrey118/GreenHouse.git
}
