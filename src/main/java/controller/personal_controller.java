package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import service.type_service;

@Controller
public class personal_controller {
	@Autowired
	type_service tservice;
	
	@RequestMapping("personal")
	public void index(ModelMap mv) {
		mv.put("typelist",tservice.select());
	}

}
