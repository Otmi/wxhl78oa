package com.edu.exam.test;

import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.edu.exam.entity.Student;
import com.edu.exam.mapper.StudentMapper;

@ContextConfiguration("/application.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class StudentTest {
	@Autowired
	private StudentMapper studnetMapper;
	
	/*private SqlSession session ;
	@Before
	public void init(){
		   ApplicationContext act=new ClassPathXmlApplicationContext("application.xml");
		   SqlSessionFactory sqlSessionFactory = act.getBean(SqlSessionFactory.class);
		   System.out.println("sqlSessionFactory:"+sqlSessionFactory);
		   session=sqlSessionFactory.openSession(true);//默认是手动提交,设置成true会自动提交
	}
	@After
	public void destroy(){
		System.out.println("session:"+session);
		session.close();
	}*/
	@Test
	public void test1(){
		System.out.println("進入測試");
		List<Student> list = studnetMapper.getAll();
		System.out.println(Arrays.asList(list));
	}
}
