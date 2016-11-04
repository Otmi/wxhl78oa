package com.edu.exam.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentHandler {
	
	@RequestMapping("/showPersonal")
	public String personal(){
		
		return "student/index";
	}
	@RequestMapping("/showExam")
	public String historialExam() {
		
		
		return "student/historical";
	}
	
}
