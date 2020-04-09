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
	
	@RequestMapping("ad_certifyView.do")
	public ModelAndView adCerList(ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		
		System.out.println(currentPage);
		int listCount = acService.getListCount();
		System.out.println("listCount : " + listCount);
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Certify> list = acService.selectList(pi);
		
		System.out.println("list : " +list);
		
		
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("admin/ad_certify");
		
		return mv;
	}


	@RequestMapping("ad_certifyDetail.do")
	public ModelAndView adCerDetail(ModelAndView mv, int ceId,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		Certify c = acService.selectCertify(ceId);
		
		if(c != null) {
			mv.addObject("c",c)
			.addObject("currentPage",currentPage)
			.setViewName("admin/ad_certifyDetail");
		}else {
			mv.addObject("msg","Error")
			.addObject("msg2","인증글 상세조회 실패")
			.setViewName("commom/errorPage");
		}
		
		
		return mv;
	}
}
