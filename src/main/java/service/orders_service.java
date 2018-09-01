package service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import entity.shopcar;
import entity.user;

public interface orders_service {
	
	public boolean orderss(ArrayList<shopcar> shopcar,user u,HttpSession session);
	
	public int selectbycode(String code);
	
	public int supdate(int status);

}
