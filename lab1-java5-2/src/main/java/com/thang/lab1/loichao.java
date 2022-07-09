package com.thang.lab1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class loichao {
	@RequestMapping("/index")
	public String index(Model model) {
		String message = "toi la thang";
		model.addAttribute("message",message);
		return "index";
	}
	@RequestMapping("/ok")
	public String show() {
		return "user/login";
	}
	
	
}
