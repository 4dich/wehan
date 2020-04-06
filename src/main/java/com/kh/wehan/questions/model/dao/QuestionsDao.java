package com.kh.wehan.questions.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.questions.model.vo.Questions;

@Repository("nDao")
public class QuestionsDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertQuestions(Questions n) {
		return sqlSession.insert("questionsMapper.insertQuestions", n);
	
	
	
	}	

}





