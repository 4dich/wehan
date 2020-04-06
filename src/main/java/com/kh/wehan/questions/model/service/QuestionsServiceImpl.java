package com.kh.wehan.questions.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.questions.model.dao.QuestionsDao;
import com.kh.wehan.questions.model.vo.Questions;

@Service("nService")

public class QuestionsServiceImpl implements QuestionsService{
	
	@Autowired
	private QuestionsDao nDao;
	
	
	@Override
	public int insertQuestions(Questions n) {
		return nDao.insertQuestions(n);
	}

	
}




