 package dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import entity.type;

@Repository
public interface type_dao {
	@Select("select * from type")
	public List<type> select();
	
	@Select("select * from type where id=#{id}")
	public type getByid(int id);

}
