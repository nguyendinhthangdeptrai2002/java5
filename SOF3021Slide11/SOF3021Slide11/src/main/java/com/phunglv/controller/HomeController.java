package com.phunglv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@RequestMapping(value = { "/", "/index.php" }, method = RequestMethod.GET)
    public String index(Model model) {
        String message = "Hello Spring Boot + JSP+hhihi";
        model.addAttribute("message", message);       
        return "index";
        
    }
}
