package com.yc.GreenHouse.web.handler;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.GreenHouse.entity.Good;
import com.yc.GreenHouse.entity.GoodType;
import com.yc.GreenHouse.entity.Shoping_Cart;
import com.yc.GreenHouse.service.IndexService;

@Controller
@RequestMapping("/index")
public class IndexHandler {
	@Autowired
	private IndexService indexService;
	
	@RequestMapping("/good")
	@ResponseBody
	public List<GoodType> Goods(HttpSession session){
		List<GoodType> goods = indexService.getAllGoods();
		System.out.println(goods);
		return goods;
		
		
	}
	
	@RequestMapping("/goodtype")
	@ResponseBody
	public List<GoodType> goodtype(HttpSession session){
		List<GoodType> goodtypes = indexService.getAllGoodTypes();
		session.setAttribute("goodtypes", goodtypes);
		System.out.println(goodtypes);
		return goodtypes;
	}

}
