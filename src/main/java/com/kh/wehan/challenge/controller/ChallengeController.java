package com.kh.wehan.challenge.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.challenge.model.service.ChallengeService;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;

@Controller
public class ChallengeController {

	@Autowired
	private ChallengeService cService;
	
	@RequestMapping(value="clist.do")
	public ModelAndView adChalList(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int listCount = cService.getListCount();
		System.out.println("listCount : " + listCount);
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		System.out.println("pi : " + pi);
		
		ArrayList<Challenge> list = cService.selectList(pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("admin/ad_challengeList");
		
		return mv;
	}
}
