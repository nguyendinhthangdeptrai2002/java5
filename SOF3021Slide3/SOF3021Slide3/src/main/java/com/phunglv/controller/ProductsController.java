package com.phunglv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/products/")
public class ProductsController {
	@RequestMapping("form")
	public String index(ModelMap model) {
		return "products";
	}
}

