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
import com.kh.wehan.member.model.vo.Member;

@Controller
public class MemberInfoListController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("mlist.do")
	public ModelAndView memberList(ModelAndView mv, @RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		int mCount = mService.memberCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage,mCount,10,10);
		
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
	public ModelAndView mlistSearch(ModelAndView mv, @RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage
			,String selecter,String searchValue) throws JsonIOException, IOException {
		
		int mCount = mService.memberCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage,mCount,10,10);
		
		System.out.println(selecter);
		System.out.println(searchValue);
		
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
		
		System.out.println(mem);
		
		ArrayList<Member> list = mService.mlistSearch(mem);
		
		for(Member m : list) {
			int black = mService.blackCheck(m.getUserId());
			if(black > 0) {
				m.setBlacklistYN("Y");
			}else {
				m.setBlacklistYN("N");
			}
		}
		
		mv.addObject("searchValue",searchValue);
		mv.addObject("list",list); 
		mv.addObject("pi",pi);
		mv.setViewName("admin/ad_profileList");
		
		return mv;
	}
	
	@RequestMapping("mlistDetail.do")
	public ModelAndView mlistDetaile(ModelAndView mv,String userId) {
		System.out.println(userId);
		
		Member m = mService.memberDetail(userId);
		if(m != null) {
			int black = mService.blackCheck(userId);
			if(black > 0) {
				m.setBlacklistYN("Y");
			}else {
				m.setBlacklistYN("N");
			}
		}
		System.out.println(m);
		mv.addObject("m",m);
		mv.setViewName("admin/ad_profileDetail");
		return mv;
	}
}