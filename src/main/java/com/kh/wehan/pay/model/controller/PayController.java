package com.kh.wehan.pay.model.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.pay.model.service.PayService;
import com.kh.wehan.pay.model.vo.Pay;

@Controller
public class PayController {

	@Autowired
	private PayService pService;
	
	@RequestMapping("paylist.do")
	public ModelAndView payList(ModelAndView mv,
			@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
		
		int listCount = pService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		ArrayList<Pay> list = pService.selectList(pi);
		System.out.println("페이지 리스트 입니다." + list);
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("admin/ad_payList");
		
		return mv;
	}
	
	@RequestMapping("paydetail.do")
	public ModelAndView payDetail(ModelAndView mv,
			int pId) {
		 
		Pay p = pService.slectPayDetail(pId);
		mv.addObject("p",p);
		mv.setViewName("admin/ad_payDetail");	
		
		return mv;
	}
	
	@RequestMapping("payinfo.do")
	public ModelAndView payinfo(Challenge ch,ModelAndView mv,HttpServletRequest request) {
		
		System.out.println(ch);
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		mv.addObject("ch",ch);
		mv.addObject("m",m);
		mv.setViewName("user/payAgree");
		
		
		return mv;
	}
	
	
	@RequestMapping(value="payments.do")
	public void pay(String str) {
		System.out.println("넘어오는가");
		System.out.println(str);
		
		
	}
	
	
}
