package com.kh.wehan.pay.model.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PayController {

	
	@RequestMapping("paylist.do")
	public ModelAndView payList(ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
		
		ArrayList<pay> list =  
		
		
		
		return mv;
	}
	
}
