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
import com.kh.wehan.questions.model.vo.SearchCondition;

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
	
	/**
	 * user 문의사항 상세보기
	 * @param mv
	 * @param nId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("questionsDetail.do")
	public ModelAndView questionsDetail(ModelAndView mv, int qId, int currentPage) {
		
		Questions n = qService.questionsSelect(qId);
		
		if(n != null) {
			mv.addObject("n", n) // 문의사항 내용 보내기
			.addObject("currentPage",currentPage) // 현재 페이지 보내기
			.setViewName("user/questions/questionsDetail");
		} else {
			mv.addObject("msg","Error").addObject("msg2","페이지 상세 조회 실패").setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	/**
	 *  문의사항 검색(유저)
	 * @param mv
	 * @param searchQuestions
	 * @param searchWord
	 * @return
	 */
	public ModelAndView searchQuestions(ModelAndView mv, String searchQuestions, String searchWord) {
		
		SearchCondition sc = new SearchCondition();
		
		if(searchQuestions.equals("title")) {
			sc.setTitle(searchWord);
			
		}else if(searchQuestions.equals("content")) {
			sc.setContent(searchWord);
		}
		int currentPage =1;
		int listCount = qService.getSearchListCount(sc);
		System.out.println(listCount);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		ArrayList<Questions>list = qService.selectSearchList(sc,pi);
		
		mv.addObject("list",list).addObject("pi",pi).setViewName("user/questions/questions");
		
		return mv;
	}
	
	/**
	 * admin 문의사항 리스트 불러오기
	 * @param mv
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("ad_questionsList.do")
	public ModelAndView adQuestionsList(ModelAndView mv, @RequestParam(value="currentPage", required=true, defaultValue="1") int currentPage) {
		
		// 문의사항 글 수 확인
		int listCount = qService.getListCount();
		
		// 문의사항 페이지네이션
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount, 5, 10);
		
		
		// 문의사항 글 목록 불러오기
		ArrayList<Questions> list = qService.selectList(pi);
		
		mv.addObject("list", list);
		mv.addObject("pi", pi);
		mv.setViewName("admin/ad_questionsList");
				
		return mv;
	}
	
	
	
	/**
	 * admin 문의사항 상세보기
	 * @param mv
	 * @param qId
	 * @param currentPage
	 * @return
	 */
	@RequestMapping("ad_questionsDetail.do")
	public ModelAndView adquestionsDetail(ModelAndView mv, int qId, int currentPage) {
		
		Questions n = qService.questionsSelect(qId);
		
		if(n != null) {
			mv.addObject("n", n) // 공지사항 내용 보내기
			.addObject("currentPage",currentPage) // 현재 페이지 보내기
			.setViewName("admin/ad_questionsDetail");
		} else {
			mv.addObject("msg","Error").addObject("msg2","페이지 상세 조회 실패").setViewName("common/errorPage");
		}
		return mv;
	}
	
  
}






	




