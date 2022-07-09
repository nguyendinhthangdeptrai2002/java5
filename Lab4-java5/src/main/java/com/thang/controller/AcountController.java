package com.thang.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thang.bean.CookieService;
import com.thang.bean.ParamService;
import com.thang.bean.SessionService;

@Controller
public class AcountController {
   
	@GetMapping("/account/login1")
	public String login1() {
		return "/account/login";		
	}

	@PostMapping("/account/login")
	public String login2(Model model) {
		String un =paramService.getString("username","");
		String pw =paramService.getString("password","");
		boolean rm = paramService.getBoolean("remember",false);
		model.addAttribute("us",un);
		if(un.equals("poly") && pw.equals("123")) {
			
			model.addAttribute("message","dang nhap thanh cong");
//		    sessionService.set("username",un);
		
		}
		else {
			model.addAttribute("message","dang nhap khong thanh cong");
		}
		if(rm==true) {
			cookieService.add("user", un, 10);
			model.addAttribute("user",un);
		}
		else {
			cookieService.remove("user");
		}
		return "/account/login";
		
	}
	
	
	@Autowired
	CookieService cookieService;
	
	@Autowired
	ParamService paramService;
	@Autowired
	SessionService sessionService;
	
}
