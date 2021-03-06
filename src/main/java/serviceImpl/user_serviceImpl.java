package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.user_dao;
import entity.product;
import entity.shopcar;
import entity.user;
import service.user_service;

@Service
public class user_serviceImpl implements user_service{
	@Autowired
	user_dao dao;

	public user login(user u) {
		return dao.login(u);
	}

	public List<shopcar> myshopcar(int id) {
		return dao.myshopcar(id);
	}

	public void incar(shopcar sh) {
		dao.incar(sh);
	}

	public int outcar(int id) {
		return dao.outcar(id);
	}

	public int changercount(shopcar sh) {
		return dao.changercount(sh);
	}

	public int register(user u) {
		return dao.register(u);
	}
	
	public void delshopcar(int id) {
		dao.delshopcar(id);
	}

	
	
}
