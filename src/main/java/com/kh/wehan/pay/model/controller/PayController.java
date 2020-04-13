package com.kh.wehan.pay.model.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("admin/ad_payList");
		
		return mv;
	}
	
	@RequestMapping("paydetail.do")
	public ModelAndView payDetail(ModelAndView mv,
			int pId) {
		 
		Pay p = pService.slectPayDetail(pId);
		Challenge ch = pService.slectchDetail(pId);
		
		
		String str = p.getmList().get(0).getAccount();
		String[] starr = str.split(",");
	
		
		Object bank = starr[0];
		Object number = starr[2];
		
		mv.addObject("bank",bank);
		mv.addObject("number",number);
		mv.addObject("p",p);
		mv.addObject("ch",ch);
		mv.setViewName("admin/ad_payDetail");	
		
		return mv;
	}
	
	@RequestMapping("payinfo.do")
	public ModelAndView payinfo(Challenge ch,ModelAndView mv,HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		mv.addObject("ch",ch);
		mv.addObject("m",m);
		mv.setViewName("user/payAgree");
		
		
		return mv;
	}
	
	
	@RequestMapping("payments.do")
	public void pay(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		
		String chId = request.getParameter("chId");
		String userId = request.getParameter("userId");
		int price = Integer.parseInt(request.getParameter("price"));
		String pmethod = request.getParameter("pmethod");
		String chName = request.getParameter("chName");
		
		Pay pay = new Pay();
		pay.setChId(chId);
		pay.setUserId(userId);
		pay.setPrice(price);
		pay.setPmethod(pmethod);
		pay.setChName(chName);
		
		int payResult = pService.insertPay(pay);
		
		if(payResult>0) {
		
		String result = "index.jsp";
		response.getWriter().print(result);
		}else{
		System.out.println("결제실패");	
		}
	}
	
	@RequestMapping("plistSearch.do")
	public ModelAndView plistSearch(ModelAndView mv,@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
			,String selecter,String searchValue) {
		
		int listCount = 0;
		
		PageInfo pi = null;
		
		Pay p = new Pay();
		Challenge ch = new Challenge();
		ArrayList<Challenge> chsearch = null;
		ArrayList<Pay> psearch = null;
		if(selecter.equals("userId")) {
			p.setUserId(searchValue);
		}
		if(selecter.equals("chName")) {
			ch.setChName(searchValue);
		}
		if(selecter.equals("pNo")) {
			p.setpId(searchValue);
		}
		
		
		if(ch.getChName() != null) {
			listCount = pService.getSearchListCount(ch); //1
			chsearch = pService.chSearch(ch);
			pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
			mv.addObject("chsearch",chsearch);
			mv.addObject("pi",pi);
		}
		
		if(p.getUserId() != null || p.getpId() !=null) {
			listCount = pService.getSearchListCount(p);
		    psearch = pService.pSearch(p);
		    pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		    mv.addObject("psearch",psearch);
		    mv.addObject("pi",pi);
		}
			
		mv.setViewName("admin/ad_payList");
	
		
		return mv;
		
	}
	
	@RequestMapping("refund.do")
	public ModelAndView refund(ModelAndView mv,HttpServletRequest request) {
		
		String[] payr = request.getParameterValues("result");		
		for(int i=0; i<payr.length;i++) {
			System.out.println(payr[i]);
		}
		
		
		return mv;
	}
	
}
