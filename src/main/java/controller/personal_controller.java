package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.user;
import service.type_service;

@Controller
public class personal_controller {
	@Autowired
	type_service tservice;
	
	@RequestMapping("personal")
	public void index(ModelMap mv,HttpSession session) {
		user u=(user) session.getAttribute("user");
		
		mv.put("typelist",tservice.select());
		mv.put("user",u);
	}

}
