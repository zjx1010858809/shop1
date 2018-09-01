package serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.orders_status_dao;
import entity.orders_details;
import entity.orders_status;
import service.orders_status_service;

@Service
public class orders_status_serviceImpl implements orders_status_service {
	@Autowired
	orders_status_dao sdao;

	public void insert(orders_status os) {
		sdao.insert(os);
	}

	public void spay(int dest_status, String date, int orders_id) {
		sdao.spay(dest_status, date, orders_id);
	}
}
