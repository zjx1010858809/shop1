package serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.collect_dao;
import entity.collect;
import service.collect_service;
@Service
public class collect_serviceImpl implements collect_service {
	@Autowired
	collect_dao cdao;

	public int insert(collect o) {
		return cdao.insert(o);
	}

	

}
