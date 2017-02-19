package com.yc.GreenHouse.web.handler;

<<<<<<< HEAD
=======
import java.util.regex.Matcher;
import java.util.regex.Pattern;

>>>>>>> 5a8bacdf6299c91974e2053bda0d9224b85c4d77
import javax.servlet.http.HttpSession;

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
	public String login(CommonUser user, ModelMap map,HttpSession session){
		String string=user.getC_name();
		Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");  
		Matcher m = p.matcher(string);  
		if (m.matches()) {
			user.setC_tel(string);
			user.setC_name(null);
		}
		
		String regex = "\\w+(\\.\\w)*@\\w+(\\.\\w{2,3}){1,3}";
		if (string.matches(regex)) {
			user.setC_email(string);
			//System.out.println(user.getC_email()+"....");
			user.setC_name(null);
		}
		user = userService.login(user);
		
		session.setAttribute("user", user);
		CommonUser user2 = (CommonUser) session.getAttribute("user");
		System.out.println(user2.getC_name());
		if(user != null){
			map.put("loginUser", user);
			return "redirect:/index.jsp";
		}
		
		map.put("errorMsg", "用户名或密码错误");
		return "forward:/login_user.jsp";
	}
	
	@RequestMapping("/apply")
	public String apply(Store store, HttpSession session,ModelMap map){
		store = storeService.apply(store);
		System.out.println(store+".....");
		if(store != null){
			//map.put("loginUser", user);
			return "redirect:/apply_success.jsp";
		}
		map.put("errorMsg", "该用户已存在,请重新命名!");
		return "forward:/apply.jsp";
	}
}
