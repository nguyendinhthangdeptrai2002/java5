package com.thang.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.thang.Dao.ProductDAO;
import com.thang.entity.Product;
import com.thang.entity.Report;
import com.thang.service.SessionService;


@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	SessionService session;
	
	
	@RequestMapping("/product/search")
	public String search(Model model, 
			@RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		System.out.println(min);
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		//List<Product> items = dao.findByPrice(minPrice, maxPrice);// bai 1 su dung @Query(JPQL)

		List<Product> items = dao.findByPriceBetween(minPrice, maxPrice);
		model.addAttribute("items", items);
		return "product/search";
	}
	//-----------------------------------------
	@RequestMapping("/product/search-and-page")
	public String searchAndPage(Model model, 
			@RequestParam("keywords") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		System.out.println(kw);
		String keywords = kw.orElse(session.get("keywords", ""));
		session.set("keywords", keywords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		//Page<Product> page = dao.findByKeywords("%"+keywords+"%", pageable); bai 2 su dung @Query(JPQL)
		Page<Product> page = dao.findAllByNameLike("%"+keywords+"%", pageable);
		model.addAttribute("page", page);
		return "product/search-page";
		
	}
	
	
	@RequestMapping("/report/inventory-by-category")
	public String inventory(Model model) {
		List<Report> items = dao.getInventoryByCategory();
		model.addAttribute("items", items);
		return "report/inventory-by-category";
	}
}
