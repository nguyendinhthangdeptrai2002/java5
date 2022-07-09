package com.ps18329.contoller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ps18329.bean.CookieService;
import com.ps18329.bean.ParamService;
import com.ps18329.bean.SessionService;

@Controller
public class AccountController {
	@GetMapping("/account/login")
	public String login1() {
		return "/account/login";
	}

	@PostMapping("/account/login")
	public String login2(Model model) {
		String un = paramService.getString("username", "");
		String pw = paramService.getString("password", "");
		boolean rm = paramService.getBoolean("remember", false);
		if(un.equals("ps18329") && pw.equals("123")) {
			sessionService.set("username", un);
			if(rm == true) {
				cookieService.add("user", un, 10);
				model.addAttribute("message", "Tài khoản đã được lưu!");
				model.addAttribute("username", un);
			}else {
				cookieService.remove("user");
				model.addAttribute("username", "");
				model.addAttribute("message", "Tài khoản không được lưu!");
				
			}
		}else {
			model.addAttribute("message", "Đăng nhập thất bại!");
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
