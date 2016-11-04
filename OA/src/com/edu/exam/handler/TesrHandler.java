package com.edu.exam.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.edu.exam.entity.Users;
import com.edu.exam.service.TestService;

@Controller
@RequestMapping("/demo")
public class TesrHandler {
	@Autowired
	private TestService testService;

	@RequestMapping("/test")
	public String go() {
		System.out.println("s");
		return "student/index";
	}

	@RequestMapping("/test1")
	public String go1(Model model) {
		Users user = testService.selectById(6);
		System.out.println(user);
		model.addAttribute("user", user);
		return "success";
	}

}
