package com.yc.GreenHouse.web.handler;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

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
		//System.out.println(user);
		session.setAttribute("user", user);
		CommonUser user2 = (CommonUser) session.getAttribute("user");
//		System.out.println(user2.getC_name());
		if(user != null){
			map.put("loginUser", user2);
			map.put("loginUser", user2.getC_name());
			return "redirect:/index.jsp";
		}
		
		map.put("errorMsg", "用户名或密码错误");
		return "forward:/login_user.jsp";
	}
	
	@RequestMapping("/apply")
	public String apply(Store store,ModelMap map,HttpSession session){
		System.out.println(session.getAttribute("user"));
		CommonUser cUser=(CommonUser) session.getAttribute("user");
		store.setC_id(cUser.getC_id());
		System.out.println(store.getC_id());
		System.out.println(store);
		int result = storeService.apply(store);
		if(result >0){
			return "redirect:/apply_success.jsp";
		}
		map.put("errorMsg", "商店注册失败，请重新操作！");
		return "forward:/apply.jsp";
	}
	
	@RequestMapping("/logout")
	@ResponseBody
	public boolean  logout(HttpSession session,SessionStatus sessionStatus){
		CommonUser user2 = (CommonUser) session.getAttribute("user");
		System.out.println(user2);
		if (user2 != null) {
			System.out.println("nihao");
			sessionStatus.setComplete();
			System.out.println("nihao++");
//			session.removeAttribute("c_name");
//			session.invalidate();
			return true;
		}
		return false;
	}
}
