package com.liaobin.service;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.liaobin.dao.StaffMapper;
import com.liaobin.pojo.Staff;

@Service("staffService")
public class StaffService {
	
	@Resource(name = "staffMapper")
	private StaffMapper staffMapper;

	public List<Staff> find(@Param("pageno") Integer pageno, 
			@Param("pagesize") Integer pagesize,
			@Param("sort") String sort, 
			@Param("order") String order) {
		return staffMapper.find(pageno, pagesize, sort, order);
	}
}
