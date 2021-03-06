package com.thang.controller;

import java.security.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;
import java.util.logging.SimpleFormatter;

import org.hibernate.annotations.Parent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thang.DAO.UserDAO;

import com.thang.entity.User;
import com.thang.service.ParamService;

import antlr.collections.List;

@Controller
public class Index {
	@Autowired
	UserDAO dao;
	@Autowired
	ParamService param;

	@RequestMapping("/index")
	public String show(Model model) {
		java.util.List<User> user = dao.findAll();
		System.out.println(user.get(0).getDate());	    
		model.addAttribute("user", user);
		return "index";
    
	    }

	@RequestMapping(value = "/index/search", params = "keywords")
	public String timkiem(Model model, @RequestParam("keywords") Optional<String> kw) {

//      System.out.println(kw);

		String keywords = kw.orElse("keywords");
//       //Page<Product> page = dao.findByKeywords("%"+keywords+"%", pageable); bai 2 su dung @Query(JPQL)
		java.util.List<User> user = dao.findByKeywords("%" + keywords + "%");
		model.addAttribute("user", user);

		return "index";

	}

	@RequestMapping("/crud/create")
	public String create(Model model,

			@RequestParam("username") String usname, @RequestParam("password") String pass,
			@RequestParam("email") String email, @RequestParam("date") String date,
			@RequestParam("nhanvien") boolean gender

	) {

		System.out.println(gender);
		System.out.println(date);
		User users = new User();

		users.setUsername(usname);
		users.setAdmin(gender);
		users.setDate(date);
		users.setEmail(email);
		users.setPassword(pass);
//	    dao.insertUsers(usname, pass, email, date, gender);
		dao.save(users);
		System.out.println("thanh cong");

		return "redirect:/index";
	}
	// /edit?id=30

	@RequestMapping(value = "/edit", params="id")
	public String edit( @RequestParam("id") int id, Model model) {
//		System.out.println(id);
		User userr = dao.getById(id);
//		System.out.println(userr.getUsername());
		model.addAttribute("userr", userr);
//		System.out.println(userr.isAdmin());		
		// phan gioi tinh
		String nam = "";
		String nu ="";
		if(userr.isAdmin()==true) {
			nam="checked";
		}
		else {
			nu="checked";
		}
		model.addAttribute("nam",nam);
		model.addAttribute("nu",nu);		
		return "index";
	}

	@RequestMapping("/crud/update")
	public String update( Model model,
			@RequestParam("id") int id,
			@RequestParam("username") String usname,
			@RequestParam("password") String pass,
			@RequestParam("email") String email,
			@RequestParam("date") String date,
			@RequestParam("nhanvien") boolean gender
	) {		
		
		System.out.println(id);
		System.out.println(gender);
		System.out.println(date);
		System.out.println(usname);
		User users = dao.getById(id);

		users.setUsername(usname);
		users.setAdmin(gender);
		users.setDate(date);
		users.setEmail(email);
		users.setPassword(pass);

		dao.save(users);			
		return "redirect:/index";
	}
	@RequestMapping("/crud/delete/{id}")
	public String delete( Model model,
			@PathVariable("id") int id
			) {
		
		System.out.println(id);
		User user = dao.getById(id);
		dao.delete(user);
		
		return "redirect:/index";
	}
}
