package com.kh.wehan.challenge.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.challenge.model.service.ChallengeService;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Member;

@Controller
public class ChallengeController {

	@Autowired
	private ChallengeService cService;
	
	/**
	 * 1_1. 관리자 챌린지 게시판 리스트 및 페이징 처리
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value="clist.do")
	public ModelAndView adChalList(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int listCount = cService.getListCount();
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Challenge> list = cService.selectList(pi);
		
		// 1. 게시판에 있는 값인 참여 인원의 아이디를 ,로 나눠서 인원 수를 파악한다
		// 2. 게시판에 있는 값인 가격을 파악한다
		// 3. 인원 수와 가격을 곱하여 모인 금액이 얼마인지를 한 컬럼에 표현하는 코드
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
	
	/**
	 * 1_2. 관리자 챌린지 게시판 > 정보 상세 보기
	 * @param mv
	 * @param chId
	 * @return
	 */
	@RequestMapping("selectOneDetail.do")
	public ModelAndView selectOneDetail(ModelAndView mv, String chId) {
		System.out.println(chId);
		
		Challenge chal = cService.selectOneDetail(chId);
		
		mv.addObject("chal", chal);
		System.out.println(chal);
		mv.setViewName("admin/ad_challengeDetail");

		return mv;
	}
	
	/**
	 * 1_3. 관리자 챌린지 게시판 > 조건 검색
	 * @param mv
	 * @param searchChallengeAdmin
	 * @param search
	 * @return
	 */
	@RequestMapping("searchChallengeAdmin.do")
	public ModelAndView searchChallengeAdmin(ModelAndView mv, String searchChallengeAdmin, String search) {
		
		Challenge chal = new Challenge();
		System.out.println(searchChallengeAdmin);
		if(searchChallengeAdmin.equals("chName")) {
			chal.setChName(search);
		} else if(searchChallengeAdmin.equals("userId")) {
			chal.setUserId(search);
		} else if(searchChallengeAdmin.equals("startDate")) {
			chal.setStartDate(search);		
		} else if(searchChallengeAdmin.equals("endDate")) {
			chal.setEndDate(search);
		}	
		
		System.out.println(chal);
		int currentPage = 1;
		
		int listCount = cService.getSearchListCount(chal);
		
		System.out.println(listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		ArrayList<Challenge> list = cService.selectSearchList(chal, pi);
		
		for(int i=0; i<list.size(); i++) {
			String[] str = list.get(i).getChPeople().split(",");
			list.get(i).setChPeople(String.valueOf(str.length));
			
			list.get(i).setTotalPrice(str.length * list.get(i).getPrice());
		}
		System.out.println(list);
		
		mv.addObject("list", list).addObject("pi", pi).setViewName("admin/ad_challengeList");
		
		return mv;
	}
	
	/**
	 * 2_1. 이미지 파일 저장(챌린지 등록)
	 * @param file
	 * @param request
	 * @return
	 */
	public String saveFile(MultipartFile file,HttpServletRequest request) {
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\challenge";
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
	 * 2_2. 사용자 챌린지 등록
	 * @param chal
	 * @param mv
	 * @param request
	 * @param file
	 * @return
	 */
	@RequestMapping("registerChallenge.do")
	public ModelAndView registerChallenge(Challenge chal, ModelAndView mv, HttpServletRequest request,
									@RequestParam(name="registerPic", required=false) MultipartFile file) {
	
		HttpSession session = request.getSession();
		
		Member mem = (Member)session.getAttribute("loginUser");
		String userId = mem.getUserId();
		
		String picture = null;
		
		chal.setUserId(userId);
		
		 if(!file.getOriginalFilename().equals(" ")) { 
			 picture = saveFile(file, request);
		 
			 if(picture != null) { 
				 chal.setChPicture(picture); 
			 	}
		 }
		 
		chal.setChPicture(picture);
		
		int result = cService.insertChallenge(chal);
		
		if(result > 0) {
			mv.addObject("chal", chal).setViewName("user/challenge/ch_detail");
		} else {
			mv.addObject("msg", "오류입니다").setViewName("common/errorPage");
		}	
		
		return mv;
	}
	
	/**
	 * 3_1. 사용자 챌린지 리스트
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value="chalList.do")
	public ModelAndView ChallengeList(ModelAndView mv, 
						@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int listCount = cService.getListCount();
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Challenge> list = cService.selectChallengeList(pi);
		System.out.println(list);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("listCount", listCount);
		mv.setViewName("user/challenge/ch_list");
		
		return mv;
	}
	
	/**
	 * 3_2. 사용자 챌린지 리스트 > 상세 정보 보기
	 * @param mv
	 * @param chId
	 * @return
	 */
	@RequestMapping("hiddenDetailInList.do")
	public ModelAndView selectOneDetailInList(ModelAndView mv, String chId) {
		
		Challenge chal = cService.selectOneDetail(chId);
		
		mv.addObject("chal", chal);
		mv.setViewName("user/challenge/ch_detail");
		
		return mv;
	}
	
	  
	/**
	 * 3_3. 사용자 챌린지 리스트 > 카테고리 별 페이지 보기
	 * @param mv
	 * @param category
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("categoryInList.do") 
	public ModelAndView categoryInList(ModelAndView mv, String category,
						@RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		int listCount = cService.getListCount(category);
		
		int pageLimit = 5;
		int boardLimit = 10;
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, pageLimit, boardLimit);
		
		ArrayList<Challenge> list = cService.selectList(category, pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.addObject("listCount", listCount);
		mv.setViewName("user/challenge/ch_chList");
		
		return mv;
	}
	 
	
}
