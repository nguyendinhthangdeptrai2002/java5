package com.thang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {
@GetMapping("/product/form")
public String form() {
	return "product/form";	
}

@PostMapping("/product/save")
public String save(Product product , Model model) 
	{
	model.addAttribute("product",product);
	return "product/form";
	
    }
}
  
  
  
