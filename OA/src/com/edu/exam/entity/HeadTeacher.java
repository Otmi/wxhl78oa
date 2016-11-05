package com.edu.exam.entity;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component
@Data
public class HeadTeacher {

	private int id ;
	private String name ;
	private Type type ;
	private Date entry_time ;
	private String work_experience ;
	private String status ;
	
}
