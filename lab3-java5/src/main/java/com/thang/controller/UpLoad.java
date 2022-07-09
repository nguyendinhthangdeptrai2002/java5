package com.thang.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
@RequestMapping("/upload/")
public class UpLoad {
@Autowired
ServletContext app;
@RequestMapping("form")
	public String index(Model model) {
	return "upload/form";
}

@RequestMapping("upload")
public String upload(Model model, @RequestParam("image")MultipartFile image) {
	 if(image.isEmpty()) {
		 model.addAttribute("message","vui long chon file");
	 }
	 else {
		 try {
			String filename = image.getOriginalFilename();
			File file = new File(app.getRealPath("/images/"+filename));
			image.transferTo(file);
			model.addAttribute("name",image.getOriginalFilename());
			model.addAttribute("type", image.getContentType());
			model.addAttribute("size", image.getSize());
			return "upload/success";
		} catch (Exception e) {
			model.addAttribute("message","loi luu file!");
			e.printStackTrace();
			// TODO: handle exception
		}
	 }
	 return "upload/form";
}
}
