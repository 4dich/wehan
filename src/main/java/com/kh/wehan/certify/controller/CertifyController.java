package com.kh.wehan.certify.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.wehan.certify.model.service.CertifyService;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.CertifyReply;
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Follow;
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
		int boardLimit = 9;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Certify> list = ceService.selectList(pi);
		
		System.out.println("list :" + list);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("user/fid/fid_ch_recommend");
		
		return mv;
	
	}
	
	/**
	 * 친구인증글 피드 출력
	 * @param mv
	 * @param request
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("fid_friendListView.do")
	public ModelAndView friendListFid(ModelAndView mv,HttpServletRequest request, 
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		if(m != null) {
			
			int listCount = ceService.getListCount();
			
			int pageLimit = 5;
			int boardLimit = 9;
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
			String mName = m.getUserId();
			ArrayList<Certify> list = ceService.getFriendList(pi,mName);
			
			mv.addObject("list",list).addObject("pi",pi).setViewName("user/fid/fid_friendList");
			
			
			
			
		}else {
			mv.addObject("msg","엥").addObject("msg2", "로그인 먼저해주세요");
			mv.setViewName("common/errorPage");
		}
		
		
		return mv;
	}

	/**
	 * 팔로우 리스트 출력
	 * @param mv
	 * @param request
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("fid_followView.do")
	public ModelAndView followList(ModelAndView mv,HttpServletRequest request, 
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
				
		if(m != null) {
			
			int listCount = ceService.getListCount();
			
			int pageLimit = 5;
			int boardLimit = 10;
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
			
			String mName = m.getUserId();
			
			ArrayList<Member> list = ceService.getFollowList(pi,mName);
			
			mv.addObject("list",list).addObject("pi",pi).setViewName("user/fid/fid_follow");
			
			
			
			
		}else {
			mv.addObject("msg","엥").addObject("msg2", "로그인 먼저해주세요");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	/**
	 * 팔로우 유저 검색
	 * @param mv
	 * @param request
	 * @param searchText
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("fid_followerSearch.do")
	public ModelAndView followSearch(ModelAndView mv,HttpServletRequest request, String searchText,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
		
		
		if(m != null) {
			
			int listCount = ceService.getListCount();
			
			int pageLimit = 5;
			int boardLimit = 10;
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
			
			String mName = m.getUserId();
			
			SearchCondition sc = new SearchCondition();
			
			sc.setTitle(searchText);
			sc.setWriter(mName);
			System.out.println(sc);
			ArrayList<Member> list = ceService.getSearchFollowList(pi,sc);
			
			mv.addObject("list",list).addObject("pi",pi).setViewName("user/fid/fid_follow");
			
			
			
			
		}else {
			mv.addObject("msg","엥").addObject("msg2", "로그인 먼저해주세요");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	

	
	
	@RequestMapping("fid_followDelete.do")
		public ModelAndView followDelete(ModelAndView mv,HttpServletRequest request, String host, String follower,
				@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {

			HttpSession session = request.getSession();
			Member m = (Member)session.getAttribute("loginUser");
			Follow f = new Follow(host,follower);
			
			System.out.println(f);
			
			if(m != null) {
				
				int listCount = ceService.getListCount();
				
				int pageLimit = 5;
				int boardLimit = 10;
				
				PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
				
				
				
				ArrayList<Follow> list = ceService.getFollowDelete(pi,f);
				
				mv.addObject("list",list)
				.addObject("pi",pi)
				.setViewName("redirect:fid_followView.do");	
			}else {
				mv.addObject("msg","엥").addObject("msg2", "로그인 먼저해주세요");
				mv.setViewName("common/errorPage");
			}
		return mv;
	}
	
	


	/**
	 * 피드 상세보기
	 * @param mv
	 * @param ceId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("fid_detailView.do")
	public ModelAndView fidDetail(ModelAndView mv, int ceId,HttpServletRequest request,
			@RequestParam(value="currentPage",required=false,defaultValue="1")int currentPage) {
		
		
		HttpSession session = request.getSession();
		Member m = (Member)session.getAttribute("loginUser");
				
		if(m != null) {
			
			Certify c = ceService.selectCertify(ceId);
	
			mv.addObject("c",c)
			.addObject("currentPage",currentPage)
			.setViewName("user/fid/fid_detail");
		}else {
			mv.addObject("msg","엥").addObject("msg2", "로그인 먼저해주세요");
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	

	@RequestMapping("addReply.do")
	@ResponseBody
	public String addReply(CertifyReply r) {
		String picture = "1";
		r.setPicture(picture);
		System.out.println(r);
		int result = ceService.insertReply(r);
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	/**
	 * 댓글 삭제
	 * @param r
	 * @return
	 */
	@ResponseBody
	@RequestMapping("delReply.do")
	public String delReply(CertifyReply r) {
		int result = ceService.deleteReply(r);
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	/**
	 * 카테고리 ajax
	 * @param response
	 * @param category
	 * @param currentPage
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("fid_Category.do")
	public void fidCategory(HttpServletResponse response,String category,@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) throws JsonIOException, IOException {
		System.out.println(currentPage);
		int Count = ceService.fidCategoryCount(category);
		System.out.println(Count);
		PageInfo pi = Pagination.getPageInfo(currentPage,Count,5,9);
		
		ArrayList<Certify> list = ceService.fidCategory(category,pi);
		System.out.println(list);
		response.setContentType("application/json; charset=utf-8");
		
		Map map = new HashMap();
		
		map.put("list",list);
		map.put("pi",pi);
	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(map,response.getWriter());
	}
	
	
	/**
	 * 카테고리 ajax
	 * @param response
	 * @param category
	 * @param currentPage
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("fid_Condition.do")
	public void fidCategory(HttpServletResponse response,String title,String category,@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) throws JsonIOException, IOException {
		System.out.println(currentPage);
		System.out.println(title);
		System.out.println(category);
		PageInfo pi = null;
		ArrayList<Certify> list = null;
		
		if(category != null && category != "") {
			int Count = ceService.fidCategoryCount(category);
			pi = Pagination.getPageInfo(currentPage,Count,5,9);
			list = ceService.fidCategory(category,pi);
		}
		
		if(title != null && title!="") {
			int Count = ceService.fidTitleCount(title);
			pi = Pagination.getPageInfo(currentPage,Count,5,9);
			list = ceService.fidTitle(title,pi);
		}
		
		response.setContentType("application/json; charset=utf-8");
		
		Map map = new HashMap();
		
		map.put("list",list);
		map.put("pi",pi);
	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(map,response.getWriter());
	}
	
	
	/**
	 * 
	 * 챌린지 _ 인증글 리스트
	 * @param mv
	 * @param chId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("ch_certifyList.do")
	public ModelAndView chCertifyList(ModelAndView mv,String chId,
			@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
		
		int listCount = ceService.getListCount();
		
		int pageLimit = 5;
		int boardLimit = 9;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Certify> list = ceService.chCertifyList(chId,pi);
		
		System.out.println("list :" + list);
		
		mv.addObject("list",list);
		mv.addObject("pi",pi);
		mv.setViewName("user/ceritify/ch_certifyPhotoList");
		
		return mv;
		
	}

}


