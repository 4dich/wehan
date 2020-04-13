package com.kh.wehan.certify.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.certify.model.service.CertifyService;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Member;


@Controller
public class CertifyController {
	
	@Autowired
	private CertifyService ceService;

	/**
	 * 추천 피드 리스트 출력
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	
	@RequestMapping("fid_ch_recommendView.do")
	public ModelAndView listFid(ModelAndView mv, 
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		int listCount = ceService.getListCount();
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Certify> list = ceService.selectList(pi);
		
		System.out.println("list :" + list);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("user/fid/fid_ch_recommend");
		
		return mv;
	
	}
	
	@RequestMapping("fid_friendListView.do")
	public ModelAndView friendListFid(ModelAndView mv,HttpServletRequest request, 
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		if(m != null) {
			
			int listCount = ceService.getListCount();
			
			int pageLimit = 5;
			int boardLimit = 10;
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
			
			ArrayList<Certify> list = ceService.getFriendList(pi);
			
			mv.addObject("list",list).addObject("pi",pi).setViewName("user/fid/fid_friendList");
			m.getUserId();
			
			
			
		}else {
			mv.addObject("msg","엥").addObject("msg2", "로그인 먼저해주세요");
			mv.setViewName("common/errorPage");
		}
		
		
		return mv;
	}
	
}
