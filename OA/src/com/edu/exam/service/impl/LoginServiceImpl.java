package com.edu.exam.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.exam.entity.Student;
import com.edu.exam.mapper.LoginMapper;
import com.edu.exam.service.LoginService;
@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginMapper loginMapper;
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	@Override
	public Student login(String username, String password) {
		SqlSession session = sqlSessionFactory.openSession();
		loginMapper = session.getMapper(LoginMapper.class);
		Student student = login(username, password);
		return student;
	}

}
