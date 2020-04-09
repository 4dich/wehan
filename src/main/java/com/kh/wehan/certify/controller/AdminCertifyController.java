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
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;

@SessionAttributes("loginUser")
@Controller
public class AdminCertifyController {
	
	@Autowired
	private AdminCertifyService acService;
	
	/**
	 * 인증글 리스트 출력
	 * @param mv
	 * @param currentPage
	 * @return
	 */
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


	/**
	 * 인증글 상세보기
	 * @param mv
	 * @param ceId
	 * @param currentPage
	 * @return
	 */
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
	
	@RequestMapping("searchCertify.do")
	public ModelAndView searchCertify(ModelAndView mv, String searchCertify, String search) {
		
		SearchCondition sc = new SearchCondition();
		
		if(searchCertify.equals("title")) {
			sc.setTitle(search);
		} else if(searchCertify.equals("writer")) {
			sc.setWriter(search);
		}

		int currentPage = 1;
		
		int listCount = acService.getSearchListCount(sc);
		
		System.out.println(listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		ArrayList<Certify> list = acService.selectSearchList(sc, pi);
		
		
		mv.addObject("list", list).addObject("pi", pi).setViewName("admin/ad_certify");
		
		
		
		return mv;
	}
	
	@RequestMapping("ad_certifyDetailUpdate.do")
	public ModelAndView adCerDetailUpdate(ModelAndView mv, int ceId,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		int result = acService.updateCertify(ceId);
		
		if(result > 0) {
			mv.addObject("currentPage",currentPage)
			.setViewName("admin/ad_certifyDetail");
		}else {
			mv.addObject("msg","Error")
			.addObject("msg2","비공개처리실패")
			.setViewName("commom/errorPage");
		}
		
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
