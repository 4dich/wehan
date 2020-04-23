package com.kh.wehan.certify.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.wehan.certify.model.service.CertifyService;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.CertifyReply;
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.challenge.model.vo.Challenge;
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
		
		int Count = ceService.fidCategoryCount(category);
		
		PageInfo pi = Pagination.getPageInfo(currentPage,Count,5,9);
		
		ArrayList<Certify> list = ceService.fidCategory(category,pi);
		
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
	public void fidCategory(HttpServletResponse response,String title,
			String category,@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) throws JsonIOException, IOException {
		
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
		
		Challenge c = ceService.chName(chId);
		
		ArrayList<Certify> list = ceService.chCertifyList(chId,pi);
		
		System.out.println("c:"+c);
		
		mv.addObject("list",list);
		mv.addObject("c",c);
		mv.addObject("pi",pi);
		mv.setViewName("user/certify/ch_certifyPhotoList");
		
		return mv;
		
	}

	/**
	 * 이미지 파일 저장(인증글)
	 * @param file
	 * @param request
	 * @return
	 */
	public String saveFile(MultipartFile file,HttpServletRequest request) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\certify";
		File folder = new File(savePath);
		
		if(!folder.exists()) {
			folder.mkdir();
		}
		
		String originFileName = file.getOriginalFilename();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		
		String picture = sdf.format(new java.sql.Date(System.currentTimeMillis()))+ "."
				+ originFileName.substring(originFileName.lastIndexOf(".")+1);
		String picturePath = folder + "\\" + picture;
		
		try {
			file.transferTo(new File(picturePath));
		}catch(Exception e) {
			e.printStackTrace();
		}
		return picture;
	}
	/**
	 * 
	 * 인증글 등록창 
	 * @param c
	 * @param request
	 * @param file
	 * @return
	 */
	
		@RequestMapping("insertCertify.do") 
		public ModelAndView certifyForm(ModelAndView mv, String chId){

			Challenge c = ceService.insertPage(chId);
			
			mv.addObject("c",c).setViewName("user/certify/ch_registerPhoto");
			
			return mv;
		}
		
		
		/**
		 *  인증글 insert
		 * @param cer
		 * @param mv
		 * @param request
		 * @param file
		 * @return
		 */
		@RequestMapping("registerCertify.do")
		public ModelAndView registerCertify(Certify cer, ModelAndView mv, HttpServletRequest request,
										@RequestParam(name="registerPic", required=false) MultipartFile file) {
		
			HttpSession session = request.getSession();
			
			Member mem = (Member)session.getAttribute("loginUser");
			String userId = mem.getUserId();
			
			String picture = null;
			
			cer.setUserId(userId);
			
			 if(!file.getOriginalFilename().equals(" ")) { 
				 picture = saveFile(file, request);
			 
				 if(picture != null) { 
					 cer.setCePicture(picture); 
				 	}
			 }
			 
			cer.setCePicture(picture);
			
			int result = ceService.insertCertify(cer);
			
			
			String chId = cer.getChId();
			
			if(result > 0) {
				mv.addObject("chId",chId)
				.setViewName("redirect:ch_certifyList.do");
			} else {
				mv.addObject("msg", "오류입니다").setViewName("common/errorPage");
			}	
			
			return mv;
		}
		
	
	

}


