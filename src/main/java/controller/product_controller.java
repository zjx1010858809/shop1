package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import service.product_service;
import service.type_service;
import util.SearchInfo;

@Controller
public class product_controller {
	
	@Autowired
	product_service service;
	@Autowired
	type_service tservice;
	
	@RequestMapping("product_index")
	public String selectall(SearchInfo info,ModelMap mv) {
		mv.put("txt",info.getTxt());
		mv.put("productlist",service.selectall(info));
		mv.put("typelist",tservice.select());
		return "index";
	}
	
	@RequestMapping("product_single")
	public String selectbyid(SearchInfo info,Integer id,ModelMap mv) {
		mv.put("typelist",tservice.select());
		mv.put("productlist",service.selectall(info));
		mv.put("single",service.selectbyid(id));
		return "single";
	}
	
	@RequestMapping("product_type")
	public String selectbytype(SearchInfo info,Integer id,ModelMap mv) {
		mv.put("producttypelist",service.selectbytype(id));
		mv.put("typename",tservice.getByid(id));
		mv.put("productlist",service.selectall(info));
		mv.put("typelist",tservice.select());
		return "type";
	}
	

}
