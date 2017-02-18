package com.yc.GreenHouse.web.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.entity.Store;
import com.yc.GreenHouse.service.StoreService;
import com.yc.GreenHouse.service.UserService;



@Controller
@RequestMapping("/user")
@SessionAttributes("loginUser")
public class UserHandler {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private StoreService storeService;
	
	@RequestMapping("/login")
	public String login(CommonUser user, ModelMap map){
		user = userService.login(user);
		System.out.println(user+".....");
		if(user != null){
			map.put("loginUser", user);
			return "redirect:/index.jsp";
		}
		map.put("errorMsg", "用户名或密码错误");
		return "forward:/login.jsp";
	}
	
	@RequestMapping("/apply")
	public String apply(Store store, ModelMap map){
		store = storeService.apply(store);
		System.out.println(store+".....");
		return "forward:/apply.jsp";
	}
}
