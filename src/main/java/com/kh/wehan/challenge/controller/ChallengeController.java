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
//		System.out.println("listCount : " + listCount);
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
//		System.out.println("pi : " + pi);
		
		ArrayList<Challenge> list = cService.selectList(pi);
		
		for(int i=0; i<list.size(); i++) {
			String[] str = list.get(i).getChPeople().split(",");
			list.get(i).setChPeople(String.valueOf(str.length));
			
			list.get(i).setTotalPrice(str.length * list.get(i).getPrice());
		}
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("listCount", listCount);
		mv.setViewName("admin/ad_challengeList");
		
		return mv;
	}
	
	@RequestMapping("selectOneDetail.do")
	public ModelAndView selectOneDetail(ModelAndView mv, String chId) {
		
		Challenge chal = cService.selectOneDetail(chId);
		
		mv.addObject("chal", chal);
		mv.setViewName("admin/ad_challengeDetail");
		
		System.out.println(chal);
		return mv;
	}
}
