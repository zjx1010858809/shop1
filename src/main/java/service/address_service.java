package service;

import java.util.List;

import entity.address;

public interface address_service {
	
	public List<address> select(int user_id);
}
