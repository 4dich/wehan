package com.kh.wehan.certify.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.certify.model.service.AdminCertifyService;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;

@SessionAttributes("loginUser")
@Controller
public class AdminCertifyController {
	
	@Autowired
	private AdminCertifyService acService;
	
	@RequestMapping("aclist.bo")
	public ModelAndView adCerList(ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		int listCount = acService.getListCount();
		System.out.println("listCount : " + listCount);
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Certify> list = acService.selectList(pi);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("admin/ad_certify");
		
		return mv;
	}
}
