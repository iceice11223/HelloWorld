package com.liaobin.test;

import java.util.List;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.liaobin.pojo.Staff;
import com.liaobin.service.StaffService;

public class StaffTest {
	private StaffService staffService;

	@Test
	public void find() {
		Integer page = 1;
		Integer rows = 5;
		String sort = "sal";
		String order = "DESC";
		Integer pageno = (page - 1) * rows;
		Integer pagesize = page * rows;
		List<Staff> staffs = staffService.find(pageno, pagesize, sort, order);
		for (Staff s : staffs) {
			System.out.println(s.getEname() + " " + s.getDname());
		}
	}

	@Before
	public void init() {
		@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		staffService = ctx.getBean("staffService", StaffService.class);
	}
}
