package service;

import entity.orders_status;

public interface orders_status_service {
	
	public void insert(orders_status os);
	
	public void spay(int dest_status,String date,int orders_id);

}
