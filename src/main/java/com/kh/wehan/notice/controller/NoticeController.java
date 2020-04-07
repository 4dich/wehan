package com.kh.wehan.notice.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.service.NoticeService;
import com.kh.wehan.notice.model.vo.Notice;

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
	
	@RequestMapping("noticeDetail.do")
	public ModelAndView noticeDetail(ModelAndView mv, int nId, int currentPage) {
		
		Notice n = nService.noticeSelect(nId);
		
		return mv;
	}

	
	
}
