package serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.collect_dao;
import entity.collect;
import entity.product;
import service.collect_service;
@Service
public class collect_serviceImpl implements collect_service {
	@Autowired
	collect_dao cdao;

	public int insert(collect o) {
		return cdao.insert(o);
	}

	public List<product> select(int user_id) {
		return cdao.select(user_id);
	}

	public int delcollect(int cid) {
		return cdao.delcollect(cid);
	}

	

}
