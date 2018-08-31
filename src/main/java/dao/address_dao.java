package dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.address;

@Repository
public interface address_dao {
	
	@Select("select * from address where user_id=#{user_id}")
	public List<address> select(int user_id);
}
