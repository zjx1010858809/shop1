package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
}
