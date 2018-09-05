package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import entity.address;
import entity.user;
import service.address_service;
import service.orders_details_service;
import service.orders_service;
import service.type_service;
import util.JsonUtil;

@Controller
public class address_controller {
	@Autowired
	type_service tservice;
	@Autowired
	address_service aservice;
	
	@RequestMapping("myaddress")
	public String myorders(ModelMap mv,HttpSession session) {
		user u=(user) session.getAttribute("user");
		mv.put("myaddress",aservice.select(u.getId()));
		mv.put("typelist",tservice.select());
		return "address";
	}
	
	@RequestMapping("aadd")
	public @ResponseBody JsonUtil addaddr(address ad ,HttpSession session) {
		user u=(user) session.getAttribute("user");
		ad.setUser_id(u.getId());
		aservice.addaddr(ad);
		return new JsonUtil(1, "");
	}
	
	@RequestMapping("aedit")
	public String editaddr(ModelMap mv,Integer id) {
		mv.put("address",aservice.selectbyid(id));
		return "addaddr";
	}
	@RequestMapping("aupdate")
	public @ResponseBody JsonUtil aupdate(address ad) {
		aservice.editaddr(ad);
		return new JsonUtil(1, "");
	}
	

}
