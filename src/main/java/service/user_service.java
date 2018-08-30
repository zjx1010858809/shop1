package service;

import java.util.List;

import entity.shopcar;
import entity.user;

public interface user_service {
	
	public user login(user u);
	
	public List<shopcar> myshopcar(int id);
	
	public void incar(shopcar sh);
	
	public int outcar(int id);
	
	public int changercount(shopcar sh);
	
	public int register(user u);
	
	public int pselect(int id);
	
	public void delshopcar(int id);

}
