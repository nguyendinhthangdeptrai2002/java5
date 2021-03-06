package com.thang.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thang.DAO.khachhangDAO;
import com.thang.entity.Khachhang;



@Controller
public class index {
	@Autowired
	khachhangDAO dao;
	@RequestMapping("index")
	public String show(Model model) {
		List<Khachhang> khachhang = dao.findAll();
		model.addAttribute("khachhang",khachhang);
		
		return "khachhang";
	}
	
	@RequestMapping(value = "/index/search", params = "keywords")
	public String timkiem(Model model, @RequestParam("keywords") Optional<String> kw) {

//      System.out.println(kw);

		String keywords = kw.orElse("keywords");
//       //Page<Product> page = dao.findByKeywords("%"+keywords+"%", pageable); bai 2 su dung @Query(JPQL)
		java.util.List<Khachhang> khachhang = dao.findByKeywords("%" + keywords + "%");
		model.addAttribute("khachhang", khachhang);

		return "khachhang";

	}
	
	@RequestMapping("new")
	public String show() {
		
		return "form";
	}
	
	
	@RequestMapping("/create")
	public String them(Model model,
			@RequestParam("username") String username,
	        @RequestParam("password") String pass,
            @RequestParam("hoten") String hoten,
            @RequestParam("gender") Boolean gioitinh,
            @RequestParam("email") String email
            )
	
	
{
		Khachhang khachhang= new Khachhang();
		khachhang.setUsername(username);
		khachhang.setPassword(pass);
		khachhang.setHoten(hoten);
		khachhang.setGioitinh(gioitinh);
		khachhang.setEmail(email);
		dao.save(khachhang);
		System.out.println("thanh cong");
		
            	 return "redirect:index";
            }

   
	@RequestMapping("/delete/{username}")
	public String delete( Model model,
			@PathVariable("username") String username
			) {
		Khachhang khachhang = dao.getOne(username);
		dao.delete(khachhang);
		
		
		return "redirect:/index";
	}
	
	
	

}
