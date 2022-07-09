package com.thang.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.thang.model.Faculty;
import com.thang.model.Student;
@Controller
public class StudentController {
	private static List<Student> student = new ArrayList<Student>();
	@RequestMapping("/student/form")
	public String form(@ModelAttribute("sv")Student sv) {
		sv.setName("nguyen dinh thang");
		sv.setEmail("thang@gmail.com");
		sv.setMarks(9.0);
		sv.setGender(true);
		
		sv.setFaculty("MAN");
		
		return"student/haha";
	}
	

	@PostMapping("/student/save")
	public String save(  Model model ,@ModelAttribute("sv")Student sv  ) {
		String email = "^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$";
		if (sv.getName().trim().length() == 0) {
			model.addAttribute("message", "Vui lòng nhập họ tên !");
			return "student/form";
		}
		else if(!sv.getEmail().matches(email)) {
			model.addAttribute("message", "Email không hợp lệ  !");
			return "student/form";
		}else if (sv.getMarks() == null) {
			model.addAttribute("message", "Vui lòng nhập điểm !");
			return "student/form";
		} else if (sv.getMarks() < 0 || sv.getMarks() > 10) {
			model.addAttribute("message", "Điểm không hợp lệ  !");
			return "student/form";
		}
		else if(sv.getGender() == null){
			model.addAttribute("message",  "Vui lòng chọn giới tính !");
			return "student/form";
		}else if(sv.getFaculty().isEmpty()){
			model.addAttribute("message",  "Vui lòng chọn Country !");
			return "student/form";
		}else if(sv.getHobbies().isEmpty()){
			model.addAttribute( "message",  "Vui lòng chọn ít nhất 1 sở thích !");
			return "student/form";
		}
	  else{
          model.addAttribute("message", "Chúc mừng, bạn đã nhập đúng !");
  
		student.add(sv);	
		model.addAttribute("student",student);
	  }
		return "student/form";
		
	  
	}
	
	@ModelAttribute("genders")
	public Map<Boolean,String> getGenders(){
		Map<Boolean,String > map = new HashMap<>();
		map.put(true,"Male");
		map.put(false,"Female");
		
		return map;		
	}
	
	@ModelAttribute("faculty")
	public List<Faculty> getfaculties(Model model){
	List<Faculty> list = new ArrayList<>();
	list.add(new Faculty("ud","Ứng Dụng Phần Mềm"));
	list.add(new Faculty("tk","Thiết Kế Đồ Họa"));
	list.add(new Faculty("qtkd","Quản Trị Kinh Doanh"));
		return list;
	}


	
	@ModelAttribute("hobbies")
	public Map<String,String>getHobbies(){
		Map<String,String> map 	= new HashMap<>();
		map.put("T", "Travelling");
		map.put("M", "Music");
		map.put("F", "Food");
		map.put("o", "Other");
		return map;
	}
	
}
