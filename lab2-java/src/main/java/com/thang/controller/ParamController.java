package com.thang.controller;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ParamController {
   @RequestMapping("/param/form")
public String form() {
	return "form";
	
}
   
   @RequestMapping("/param/save/{x}")
   public String save(@PathVariable(value="x") String x, @RequestParam ("y") String y,ModelMap model) {
	  model.addAttribute("y",y);
	  model.addAttribute("x",x);
	    
	   
	   return "form";
   }
}
