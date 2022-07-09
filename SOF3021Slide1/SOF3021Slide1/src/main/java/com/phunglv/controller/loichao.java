package com.phunglv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class loichao {
	@RequestMapping("index")
	public String index(Model model) {
		String hihi = "Nguyễn Đình Thắng ps18368";
		model.addAttribute("message",hihi);
		return "index";
	}
}
