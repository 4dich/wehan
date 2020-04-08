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
	 * 공지사항 글 갯수 가져오기
	 */
	@Override
	public int getListCount() {
		return qDao.getListCount();
	}
	/**
	 * 공지사항 리스트 가져오기
	 */
	@Override
	public ArrayList<Questions> selectList(PageInfo pi) {
		return qDao.selectList(pi);
	}	
	
	

	
}





