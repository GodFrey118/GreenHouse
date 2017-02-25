package com.yc.GreenHouse.web.handler;

import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.entity.Shoping_Cart;
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
	private JavaMailSender mailSender;
	
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
			return "redirect:/index.jsp?c_id="+user2.getC_id();
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
			sessionStatus.setComplete();
//			session.removeAttribute("c_name");
//			session.invalidate();
			return true;
		}
		return false;
	}
	

	@RequestMapping("/forget")
	public String forget(String username, String email, HttpServletRequest request) {
		LogManager.getLogger().debug("请求UserHandler进行forget的操作....");
		LogManager.getLogger().debug("请求数据username:" + username + ", email:" + email);
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom("studymail_test@163.com");
			helper.setTo(email);
			helper.setSubject("找回密码");
			String hrefStr = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getServletContext().getContextPath() + "/user/getpassword?username=" + username;
			System.out.println(hrefStr);
			helper.setText("<a href='" + hrefStr + "'>找回密码</a><br>如果连接不可用拷贝" + hrefStr + " 到地址栏...", true);
			mailSender.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
			return "redirect:/page/forgetPassword.jsp";
		}

		return "redirect:/page/forgetSuccess.jsp";
	}
	@RequestMapping("/getpassword")
	public String getpassword(String username, HttpSession session) {
		Random rand = new Random();
		String randPassword = rand.nextInt(900000) + 100000 + "";
		//业务处理重置密码
		userService.resetPassword(username, randPassword);
		session.setAttribute("newPassword", randPassword);
		return "redirect:/page/getpasswordSuccess.jsp";
	}

	//购物车
	@RequestMapping("/addCart")
	@ResponseBody

	public boolean AddCart(Shoping_Cart sCart, @RequestParam(name="g_id",required=false)int g_id ,HttpSession session){
		
		CommonUser user2 = (CommonUser) session.getAttribute("user");
		sCart.setC_id(user2.getC_id());
		sCart.setG_id(g_id);
		boolean shopping_Cart = storeService.AddSCart(sCart);
		System.out.println(shopping_Cart);
		return shopping_Cart;
		
	}
	
	@RequestMapping("/cartNum")
	@ResponseBody

	public List<Shoping_Cart> CartNum(HttpSession session){
		CommonUser user2 = (CommonUser) session.getAttribute("user");
		List<Shoping_Cart> cNum = null;
		if (user2!=null) {
			cNum = storeService.getCartNum(user2.getC_id());
			System.out.println(cNum);
		}
		return cNum;
	}
	
	@RequestMapping("/delCartGood")
	@ResponseBody
	public boolean DelCartGood(@RequestParam(name="sc_id",required=false)int sc_id, HttpSession session){
		boolean del = storeService.getDelCartGood(sc_id);
		System.out.println(del);
		return del;
	}
}
