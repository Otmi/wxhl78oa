package com.edu.exam.mapper;

import com.edu.exam.entity.Student;

public interface LoginMapper {

	public Student validateStudent(String username,String password);
}
