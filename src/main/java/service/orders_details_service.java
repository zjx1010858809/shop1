package service;

import java.util.List;

import entity.orders_details;

public interface orders_details_service {
	
	public void insert(orders_details d);
	
	public List<orders_details> myorders(int user_id);

}
