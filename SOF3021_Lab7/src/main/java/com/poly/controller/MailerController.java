package com.poly.controller;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poly.service.MailerService;



@Controller
public class MailerController {
	@Autowired
	MailerService mailer;

	@ResponseBody
	@RequestMapping("/mailer/demo1")
	public String demo1(Model model) {
		try {
			mailer.send("nguyendinhthang23082002@gmail.com", "hehe", "Hello");			
			return "Mail của bạn sẽ được gửi đi!";
		} catch (MessagingException e) {
			return e.getMessage();
		}
	}
	
	@ResponseBody
	@RequestMapping("/mailer/demo2")
	public String demo2(Model model) {		
			mailer.queue("nguyendinhthang23082002@gmail.com", "hehe1", "Hello");
			mailer.queue("thangndps18368@fpt.edu.vn", "hehe2", "Hello");
			return "Mail của bạn sẽ được gửi đi!";		
	}
}

