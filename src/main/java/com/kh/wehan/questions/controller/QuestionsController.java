package com.kh.wehan.questions.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.wehan.common.Pagination;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.questions.model.service.QuestionsService;
import com.kh.wehan.questions.model.vo.Questions;

@Controller
public class QuestionsController {
	
	@Autowired
	private QuestionsService qService;
	
	/**
	 * user 문의사항 리스트 불러오기
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("qnaList.do")
	public ModelAndView list(ModelAndView mv, @RequestParam(value="currentPage", required=true, defaultValue="1") int currentPage){
		
		// 문의사항 글 수 확인
		int listCount = qService.getListCount();
		
		// 문의사항 페이지네이션
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		
		// 문의사항 글 목록 불러오기
		ArrayList<Questions> list = qService.selectList(pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("user/questions/questions");
		
		return mv;
	}				
	
  
}






	




