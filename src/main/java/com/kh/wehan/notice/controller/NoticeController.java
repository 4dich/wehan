package com.kh.wehan.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.notice.model.service.NoticeService;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.notice.model.vo.SearchCondition;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService nService;
	
	
	/**
	 * user 공지사항 리스트 불러오기
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("noticeList.do")
	public ModelAndView list(ModelAndView mv, @RequestParam(value="currentPage", required=true, defaultValue="1") int currentPage){
		
		// 공지사항 글 수 확인
		int listCount = nService.getListCount();
		
		// 공지사항 페이지네이션
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		
		// 공지사항 글 목록 불러오기
		ArrayList<Notice> list = nService.selectList(pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("user/notice/notice");
		
		return mv;
	}
	
	/**
	 * user 공지사항 상세보기
	 * @param mv
	 * @param nId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("noticeDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv, int nId, int currentPage) {
		
		Notice n = nService.noticeSelect(nId);
		
		if(n != null) {
			mv.addObject("n", n) // 공지사항 내용 보내기
			.addObject("currentPage",currentPage) // 현재 페이지 보내기
			.setViewName("user/notice/noticeDetail");
		} else {
			mv.addObject("msg","Error").addObject("msg2","페이지 상세 조회 실패").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	/**
	 * user 공지사항 검색
	 * @param mv
	 * @param searchNotice
	 * @param searchWord
	 * @return
	 */
	@RequestMapping("searchNotice.do")
	public ModelAndView searchNotice(ModelAndView mv, String searchNotice, String searchWord) {
		
		SearchCondition sc = new SearchCondition();
		
		if(searchNotice.equals("title")) {
			sc.setTitle(searchWord);
		} else if(searchNotice.equals("content")) {
			sc.setContent(searchWord);
		}
		
		int currentPage = 1;
		
		int listCount = nService.getSearchListCount(sc);
		
		System.out.println(listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		ArrayList<Notice> list = nService.selectSearchList(sc, pi);
		
		
		mv.addObject("list", list).addObject("pi", pi).setViewName("user/notice/notice");
		
		
		return mv;
	}

	
	/**
	 * admin 공지사항 리스트 불러오기
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("ad_noticeList.do")
	public ModelAndView adNoticeList(ModelAndView mv, @RequestParam(value="currentPage", required=true, defaultValue="1") int currentPage) {
		
		// 공지사항 글 수 확인
		int listCount = nService.getListCount();
		
		// 공지사항 페이지네이션
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		
		// 공지사항 글 목록 불러오기
		ArrayList<Notice> list = nService.selectList(pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("admin/ad_noticeList");
				
		return mv;
	}
	
	
	/**
	 * admin 공지사항 상세보기
	 * @param mv
	 * @param nId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("ad_noticeDetail.do")
	public ModelAndView adNoticeDetail(ModelAndView mv, int nId, int currentPage) {
		
		Notice n = nService.noticeSelect(nId);
		
		if(n != null) {
			mv.addObject("n", n) // 공지사항 내용 보내기
			.addObject("currentPage",currentPage) // 현재 페이지 보내기
			.setViewName("admin/ad_noticeDetail");
		} else {
			mv.addObject("msg","Error").addObject("msg2","페이지 상세 조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
	
	/**
	 * admin 공지사항 검색
	 * @param mv
	 * @param searchNotice
	 * @param searchWord
	 * @return
	 */
	@RequestMapping("ad_searchNotice.do")
	public ModelAndView adSearchNotice(ModelAndView mv, String adSearchNotice, String adNoticeSerchWord) {
		
		SearchCondition sc = new SearchCondition();
		
		if(adSearchNotice.equals("title")) {
			sc.setTitle(adNoticeSerchWord);
		} else if(adSearchNotice.equals("content")) {
			sc.setContent(adNoticeSerchWord);
		}
		
		int currentPage = 1;
		
		int listCount = nService.getSearchListCount(sc);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		ArrayList<Notice> list = nService.selectSearchList(sc, pi);
		
		
		mv.addObject("list", list).addObject("pi", pi).setViewName("admin/ad_noticeList");
		
		
		return mv;
	}
	
	
	/**
	 * admin 공지사항 등록하기
	 * @param mv
	 * @param nTitle
	 * @param nWriter
	 * @param nContent
	 * @return
	 */
	@RequestMapping("ad_noticeInsert.do")
	public String adNoticeInsert(Notice n, HttpServletRequest request) {
		
//		HttpSession session = request.getSession();
//		Admin admin = (Admin)session.getAttribute("loginAdmin");
//		String adminId = admin.getUserId();
		
		n.setnWriter("admin");
		
		int result = nService.adNoticeInsert(n);
		
		if(result > 0) {
			return "redirect:ad_noticeList.do";
		} else {						
			return "common/errorPage";
		}
	}
	
	/**
	 * admin 공지사항 수정 불러오기
	 * @param mv
	 * @param nId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("ad_noticeModifyView.do")
	public ModelAndView adNoticeModifyView(ModelAndView mv, int nId, int currentPage) {
		
		Notice n = nService.noticeSelect(nId);
		
		if(n != null) {
			mv.addObject("n", n).addObject("currentPage", currentPage).setViewName("admin/ad_noticeModify");
		}
		
		return mv;		
		
	}
	
	
	/**
	 * 공지사항 수정 저장하기
	 * @param n
	 * @return
	 */
	@RequestMapping("ad_noticeModify.do")
	public ModelAndView adNoticeModify(ModelAndView mv, Notice n) {		
		
		int result = nService.adNoticeModify(n);
		
		
		if(result > 0 ) {
			
			mv.addObject("nId", n.getnId()).setViewName("redirect:ad_noticeList.do");
			
		} else {
			
			mv.addObject("msg", "Error").addObject("msg2", "페이지 상세보기 에러").setViewName("common/errorPage");
			
		}
		
		return mv;	
	}
	
	/**
	 * admin 공지사항 삭ㅈ
	 * @param mv
	 * @param nId
	 * @return
	 */
	@RequestMapping("ad_noticeDelete.do")
	public ModelAndView adNoticeDelete(ModelAndView mv, int nId) {
		
		int result = nService.adNoticeDelete(nId);
		
		if(result > 0) {
			mv.setViewName("redirect:ad_noticeList.do");
		} else {
			mv.addObject("msg", "Error").addObject("msg2", "공지사항 삭제 에러").setViewName("common/errorPage");
		}
		
		return mv;
	}
}
