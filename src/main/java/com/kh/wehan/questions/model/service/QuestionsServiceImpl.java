package com.kh.wehan.questions.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.questions.model.dao.QuestionsDao;
import com.kh.wehan.questions.model.vo.Questions;

@Service("qService")

public class QuestionsServiceImpl implements QuestionsService{	
	@Autowired
	private QuestionsDao qDao;	
	/**
	 * 문의사항 글 갯수 가져오기
	 */
	@Override
	public int getListCount() {
		return qDao.getListCount();
	}
	/**
	 * 문의사항 리스트 가져오기
	 */
	@Override
	public ArrayList<Questions> selectList(PageInfo pi) {
		return qDao.selectList(pi);
	}	
	
	/**
	 * 문의사항 상세보기 + 조회수 올리기
	 */
	@Override
	public Questions questionsSelect(int qId) {
		
		// 조회수 증가용
		int result = qDao.updateCount(qId);
		
		if(result > 0) {
			return qDao.questionsSelect(qId);
		} else {
			return null;
		}
	 	
	}
	

	
}





