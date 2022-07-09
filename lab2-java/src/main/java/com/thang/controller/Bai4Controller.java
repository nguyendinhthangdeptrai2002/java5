package com.thang.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Bai4Controller {
    	
	@GetMapping("/productbai4/form2")
	public String show() {
		return "product/form2";
	}
	@ModelAttribute("p")
	public String form(  Model model) {
		
		Product p = new Product();
		p.setName("iphone 30");
		p.setPrice(5000.0);
		model.addAttribute("p",p);
		return "product/form2";
		
	}
	
    @PostMapping("/productbai4/form2/save4")
	public String save( Model model ,Product p){
		model.addAttribute("product",p);
		return "/product/form2";
	}	
 
    @ModelAttribute("pr")
    public List<Product> getItemṣ̣(Model model){  
	return Arrays.asList(new Product("A",500.0), new Product("B",300.0 ));
		 // khong ra duoc so
 }
	    
}
