package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.address_dao;
import entity.address;
import service.address_service;
@Service
public class address_serviceImpl implements address_service {
	@Autowired
	address_dao adao;

	public List<address> select(int user_id) {
		return adao.select(user_id);
	}

	@Transactional
	public int addaddr(address ad) {
		return adao.addaddr(ad);
	}

	public address selectbyid(int id) {
		return adao.selectbyid(id);
	}

	public void editaddr(address ad) {
		adao.editaddr(ad);
	}

	public void deladdr(int id) {
		adao.deladdr(id);
	}
	
}
