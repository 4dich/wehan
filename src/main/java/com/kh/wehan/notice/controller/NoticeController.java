package com.kh.wehan.notice.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.common.Pagination;
import com.kh.wehan.notice.model.service.NoticeService;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.notice.model.vo.PageInfo;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService nService;
	
	/**
	 * 공지사항 글쓰기
	 * @param n
	 * @return
	 */
	@RequestMapping("noticeInsert.do")
	public String insertNotice(Notice n) {
		
		int result = nService.insertNotice(n);
		
		if(result > 0) {
			return "redirect:ad_noticeListView.do";
		} else {
			return "common/errorPage";
		}
	}
	
	@RequestMapping("noticeList.do")
	public ArrayList<Notice> listNotice(ModelAndView mv, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage){
		
		int listCount = nService.getListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Notice> list = nService.listNotice(pi);
			
		
		
		
	}
	
}