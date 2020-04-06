package com.kh.wehan.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.wehan.notice.model.service.NoticeService;
import com.kh.wehan.notice.model.vo.Notice;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService nService;
	
	@RequestMapping("noticeInsert.do")
	public String insertNotice(Notice n) {
		
		int result = nService.insertNotice(n);
		
		if(result > 0) {
			return "redirect:ad_noticeListView.do";
		} else {
			return "common/errorPage";
		}
	}
}
