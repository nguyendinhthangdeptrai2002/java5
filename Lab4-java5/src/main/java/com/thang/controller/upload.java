package com.thang.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.thang.bean.ParamService;

@Controller
public class upload {
	@Autowired
	ServletContext app;
	@Autowired
	ParamService paramService;
	@RequestMapping("form")
		public String index(Model model) {
		return "upload/form";
	}

	@RequestMapping("/upload/upload")
	public String upload(Model model, @RequestParam("image")MultipartFile image) {
		String filename = image.getOriginalFilename();
		File file = new File(app.getRealPath("/images/"+filename));
		if(image.isEmpty()) {
			model.addAttribute("message","vui long chon file");
			
		}
		else {
			paramService.save(image,"/images/");
			model.addAttribute("message","luu file thanh cong");
			model.addAttribute("name",image.getOriginalFilename());
			model.addAttribute("type", image.getContentType());
			model.addAttribute("size", image.getSize());
			return "upload/success";
		}
		return "upload/form";
		
		
	}
}
