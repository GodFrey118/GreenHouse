package com.yc.GreenHouse.web.handler;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.GreenHouse.entity.CommonUser;
import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.Shoping_Cart;
import com.yc.GreenHouse.entity.Store;
import com.yc.GreenHouse.service.StoreService;
@Controller
@RequestMapping("/store")
public class StoreHandler {
	@Autowired
	private StoreService storeService;
	
	@RequestMapping("/storeinfo")
	public String storeInfo(@RequestParam(name="s_id",required=false)int s_id,@RequestParam(name="g_id",required=false)int g_id,HttpSession session){
		Store storeInfo = storeService.getStoreInfo(s_id);
		session.setAttribute("storeInfo", storeInfo);
		int g_id1=g_id;
		System.out.println(storeInfo);
		//return "forward:/index_store.jsp?g_id="+g_id1;
		return "redirect:/goods.jsp?g_id="+g_id1; //重定向
	}
	
	@RequestMapping("/goodinfo")
	@ResponseBody
	public Good goodInfo(@RequestParam(name="g_id",required=false)int g_id,HttpSession session){
		Good goodInfo = storeService.getgoodInfo(g_id);
		session.setAttribute("goodInfo", goodInfo);
		System.out.println(goodInfo);
		return goodInfo;
	}
	
	
	@RequestMapping("/goodssaInfo")
	@ResponseBody
	public List<Good> goodSsaInfo(HttpSession session){
		Good good=(Good) session.getAttribute("goodInfo");
		List<Good> SsaInfo = storeService.getGoodssaInfo(good.getS_id());
		session.setAttribute("SsaInfo", SsaInfo);
		System.out.println(SsaInfo);
		return SsaInfo;
	}
	
	
}
