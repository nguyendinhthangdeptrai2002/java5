package com.thang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ctrl")
public class OkController {
	
	
	@RequestMapping("/ok")
	public String ok (){
		return "ok";
	}
//	@RequestMapping("/m1")
//	public String m1 () {
//		return "m1";
//	}
	@RequestMapping( value="/ok",params="btn1ok")	
		public String m1() {
			return "m1";
		}
		//khong biet lam maping bang method
	@RequestMapping(value="/ok", params = "btn2ok")
	public String m2() {
		return "m2";
	}
	@RequestMapping(value="/ok",params = "x")
	public @ResponseBody String m3() {
		return "<h1>day la phuong thuc 3</h1>";
	}
	@RequestMapping(value="/ok" ,params = "btn4ok")
			public  @ResponseBody String m4() {
		return "<h1> day la phuong thuc 4 ne </h1>";
	}

	}
	
