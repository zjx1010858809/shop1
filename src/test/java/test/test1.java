package test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import service.user_service;

public class test1 extends BaseTest{
@Autowired
user_service ss;
	
	@Test
	public void sss() {
		int a111=ss.pselect(2);
		System.out.println(a111);
	}
}
