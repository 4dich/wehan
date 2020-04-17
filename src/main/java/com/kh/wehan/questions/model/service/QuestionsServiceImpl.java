package com.kh.wehan.questions.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.questions.model.dao.QuestionsDao;
import com.kh.wehan.questions.model.vo.Questions;
import com.kh.wehan.questions.model.vo.SearchCondition;

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
	
	/**
	 * 문의사항 검색글 갯수 가져오기
	 */
	@Override
	public int getSearchListCount(SearchCondition sc) {
		return qDao.getSearchListCount(sc);
	}
	/**
	 * 문의사항 검색 리스트 불러오기
	 */
	@Override
	public ArrayList<Questions> selectSearchList(SearchCondition sc,PageInfo pi){
		return qDao.selectSearchList(sc,pi);
	}

	/**
	 * 문의사항 입력하기
	 */
	@Override
	public int questionsInsert(Questions n) {
		return qDao.questionsInsert(n);
	}

	/**
	 * 문의사항 수정하기
	 */
	@Override
	public int questionsModify(Questions n) {
		return qDao.questionsModify(n);
	}

	/**
	 * 문의사항 삭제하기
	 */
	@Override
	public int questionsDelete(int qId) {
		return qDao.questionsDelete(qId);
	}

	
    @Override
	public int questionsReplyInsert(Questions q) {
    	return qDao.questionsReplyInsert(q);
    }
	
}





