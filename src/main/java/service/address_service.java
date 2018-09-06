package service;

import java.util.List;

import entity.address;

public interface address_service {
	
	public List<address> select(int user_id);
	public int addaddr(address ad);
	public address selectbyid(int id);
	public void editaddr(address ad);
	public void deladdr(int id);
}
