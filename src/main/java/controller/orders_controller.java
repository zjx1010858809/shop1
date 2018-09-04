package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.user;
import service.orders_details_service;
import service.orders_service;
import service.type_service;

@Controller
public class orders_controller {
	@Autowired
	type_service tservice;
	@Autowired
	orders_service oservice;
	@Autowired
	orders_details_service odservice;
	
	@RequestMapping("myorders")
	public void myorders(ModelMap mv,HttpSession session) {
		user u=(user) session.getAttribute("user");
		mv.put("myproduct",odservice.myproduct(u.getId()));
		mv.put("myorders",oservice.selebyuserid(u.getId()));
		mv.put("typelist",tservice.select());
		
	}

}
