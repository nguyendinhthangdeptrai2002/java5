package com.thang.controller;

import java.awt.Dialog.ModalExclusionType;
import java.util.List;
import java.util.Locale.Category;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thang.DAO.CategoryDAO;

@Controller
public class CategoryController {
	@Autowired
	CategoryDAO dao;

	
	@RequestMapping("/category/index")
	public String index(Model model) {
		com.thang.entity.Category item = new com.thang.entity.Category();
		model.addAttribute("item", item);
		List<com.thang.entity.Category> items = dao.findAll();
		model.addAttribute("items", items);
		return "category/index";
	}

@RequestMapping("/category/edit/{id}")
public String edit(Model model, @PathVariable("id") String id) {
	com.thang.entity.Category item = dao.findById(id).get();
	model.addAttribute("item", item);
	List<com.thang.entity.Category> items = dao.findAll();
	model.addAttribute("items", items);
	return "category/index";
}

@RequestMapping("/category/create")
public String create(com.thang.entity.Category item) {
	dao.save(item);
	return "redirect:/category/index";
}

@RequestMapping("/category/update")
public String update(com.thang.entity.Category item) {
	dao.save(item);
	return "redirect:/category/edit/" + item.getId();
}

@RequestMapping("/category/delete/{id}")
public String create(@PathVariable("id") String id) {
	dao.deleteById(id);
	return "redirect:/category/index";
}

}
