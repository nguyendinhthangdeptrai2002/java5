package com.thang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.thang.ultis.DB;
@Controller
public class ItemController {
    
	@RequestMapping("/item/shop")
	public String list(Model model) {
		model.addAttribute("items", DB.items.values());
		return "item/shop";
	}
}
