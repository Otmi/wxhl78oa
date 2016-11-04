package com.edu.exam.entity;

import java.util.Date;

import lombok.Data;
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
	private Classes classes ;
	private Date birthday ;
	private Type type ;
	
	
}
