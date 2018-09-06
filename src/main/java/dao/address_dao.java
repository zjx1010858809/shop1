package dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import entity.address;

@Repository
public interface address_dao {
	
	@Select("select * from address where user_id=#{user_id}")
	public List<address> select(int user_id);
	
	@Insert("insert into address (user_id,zone,addr,name,tel,status) values(#{user_id},#{zone},#{addr},#{name},#{tel},#{status})")
	public int addaddr(address ad);
	
	@Select("select * from address where id=#{id}")
	public address selectbyid(int id);
	
	@Update("update address set zone=#{zone},addr=#{addr},name=#{name},tel=#{tel} where id=#{id}")
	public void editaddr(address ad);
	
	@Delete("delete from address where id=#{id}")
	public void deladdr(int id);
}
