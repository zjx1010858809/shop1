package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import service.product_service;
import service.type_service;

@Controller
public class product_controller {
	
	@Autowired
	product_service service;
	@Autowired
	type_service tservice;
	
	@RequestMapping("product_index")
	public String selectall(ModelMap mv) {
		mv.put("productlist",service.selectall());
		mv.put("typelist",tservice.select());
		return "index";
	}
	
	@RequestMapping("product_single")
	public String selectbyid(Integer id,ModelMap mv) {
		mv.put("typelist",tservice.select());
		mv.put("single",service.selectbyid(id));
		return "single";
	}

}
