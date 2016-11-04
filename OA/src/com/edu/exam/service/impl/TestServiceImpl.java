package com.edu.exam.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.exam.entity.Users;
import com.edu.exam.mapper.TestMapper;
import com.edu.exam.service.TestService;

@Service
public class TestServiceImpl implements TestService {
	@Autowired
	private TestMapper testMapper;
	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	@Override
	public Users selectById(int i) {
		SqlSession session = sqlSessionFactory.openSession();
		TestMapper mapper = session.getMapper(TestMapper.class);
		Users user = mapper.getUserById(i);
		// TODO Auto-generated method stub
		return user;
	}

}
