package com.kh.wehan.member.controller;

import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonIOException;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.service.MemberService;
import com.kh.wehan.member.model.vo.BlackList;
import com.kh.wehan.member.model.vo.Member;

@Controller
public class MemberInfoListController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("mlist.do")
	public ModelAndView memberList(ModelAndView mv, @RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		int mCount = mService.memberCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage,mCount,10,10);
		
		ArrayList<Member> list = mService.memberList(pi);
		
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
	public ModelAndView mlistSearch(ModelAndView mv, @RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
			,String selecter,String searchValue) throws JsonIOException, IOException {
		
		Member mem = new Member();
		if(selecter.equals("userId")) {
			mem.setUserId(searchValue);
		}
		if(selecter.equals("nickName")) {
			mem.setNickName(searchValue);
		}
		if(selecter.equals("userName")) {
			mem.setUserName(searchValue);
		}
		
		int mCount = mService.mlistSearchCount(mem);
		
		PageInfo pi = Pagination.getPageInfo(currentPage,mCount,10,10);
		
		
		ArrayList<Member> list = mService.mlistSearch(mem,pi);
		
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
	
	@RequestMapping("mlistDetail.do")
	public ModelAndView mlistDetaile(ModelAndView mv,String userId) {
		
		Member m = mService.memberDetail(userId);
		if(m != null) {
			int black = mService.blackCheck(userId);
			if(black > 0) {
				m.setBlacklistYN("Y");
			}else {
				m.setBlacklistYN("N");
			}
		}
		
		BlackList b = null;
		if(m.getBlacklistYN().equals("Y")){
			b = mService.BlackListInfo(userId);
			mv.addObject("b",b);
		}
		System.out.println(b);
		mv.addObject("m",m);
		mv.setViewName("admin/ad_profileDetail");
		return mv;
	}
	
	@RequestMapping("blackList.do")
	public ModelAndView blackList(ModelAndView mv, @RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		int bCount = mService.blackListCount();
		PageInfo pi = Pagination.getPageInfo(currentPage, bCount, 10, 10);
		ArrayList<BlackList> list = mService.blackList(pi);
		mv.addObject("pi",pi);
		mv.addObject("list",list);
		mv.setViewName("admin/ad_blackList");
		return mv;
	}
}