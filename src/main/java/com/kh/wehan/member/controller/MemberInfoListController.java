package com.kh.wehan.member.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import static com.kh.wehan.common.Pagination.getPageInfo;

import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.Member;

@Controller
public class MemberInfoListController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("mlist.do")
	public ModelAndView memberList(ModelAndView mv, @RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		int mCount = mService.memberCount();
		System.out.println(mCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage,mCount,10,5);
		
		ArrayList<Member> list = mService.memberList();
		
		for(Member m : list) {
			int black = mService.blackCheck(m.getUserId());
			if(black > 0) {
				m.setBlacklistYN("Y");
			}else {
				m.setBlacklistYN("N");
			}
		}
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("admin/ad_profileList");
		return mv;
	}
	
	@RequestMapping("mlistSearch.do")
	public void mlistSearch() {
		
	}
}
