package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.type_dao;
import entity.type;
import service.type_service;

@Service
public class type_serviceImpl implements type_service{
	@Autowired
	type_dao dao;

	public List<type> select() {
		return dao.select();
	}
	
	public type getByid(int id) {
		return dao.getByid(id);
	}

	
}
