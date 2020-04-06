package com.kh.wehan.questions.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.wehan.questions.model.service.QuestionsService;
import com.kh.wehan.questions.model.vo.Questions;

@Controller
public class QuestionsController {
	
	@Autowired
	private QuestionsService nService;
	
	@RequestMapping("questionsInsert.do")
	public String insertQuestion(Questions n) {
		
		int result = nService.insertQuestions(n);
		
		if(result > 0) {
			return "redirect:ad_noticeListView.dp";
		}else {
			return "common/errorPage";
		}
		
  
}



	

}
