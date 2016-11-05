package com.edu.exam.entity;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;
@Component
@Data
public class Student {
	private int id ;
	private String username ;
	private String passwrod ;
	private String name ;
	private String agender;
	private String natives ;
	private String phone ;
	private String school ;
	private String status;
	private Date enter_time ;
	private String file ;
	private Date birthday ;
	private String type ;
	private Classes classes ;
	public Student(int id, String username, String passwrod, String name, String agender, String natives, String phone,
			String school, String status, Date enter_time, String file, Date birthday, String type, Classes classes) {
		super();
		this.id = id;
		this.username = username;
		this.passwrod = passwrod;
		this.name = name;
		this.agender = agender;
		this.natives = natives;
		this.phone = phone;
		this.school = school;
		this.status = status;
		this.enter_time = enter_time;
		this.file = file;
		this.birthday = birthday;
		this.type = type;
		this.classes = classes;
	}
	public Student() {
		super();
	}
	
	
}
