package com.edu.exam.handler;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/studentpaper")
public class StudentPaperHandler {
	@RequestMapping("/exam")
	public String intexamjsp() {
		return "student/examItem";

	}
}
