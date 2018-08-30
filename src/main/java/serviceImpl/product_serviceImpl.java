package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.product_dao;
import entity.product;
import service.product_service;
@Service
public class product_serviceImpl implements product_service {
	@Autowired
	product_dao dao;

	public List<product> selectall() {
		return dao.selectall();
	}

	public product selectbyid(int id) {
		return dao.selectbyid(id);
	}

	public List<product> selectbytype(int id) {
		return dao.selectbytype(id);
	}

}
