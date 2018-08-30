package serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.orders_dao;
import entity.orders;
import service.orders_service;
@Service
public class orders_serviceImpl implements orders_service {
	@Autowired
	orders_dao dao;

	public int insert(orders o) {
		return dao.insert(o);
	}

	

}
