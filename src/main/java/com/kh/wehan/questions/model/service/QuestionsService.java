package com.kh.wehan.questions.model.service;

import java.util.ArrayList;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.questions.model.vo.Questions;
import com.kh.wehan.questions.model.vo.SearchCondition;

public interface QuestionsService {

	

	/**
	 * 문의사항 글 갯수 가져오기
	 * @return
	 */
	int getListCount();

	/**
	 * 문의사항 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<Questions> selectList(PageInfo pi);

	/**
	 * 문의사항 상세보기
	 * @param qId
	 * @return
	 */
	Questions questionsSelect(int qId);

	/**
	 * 문의사항 검색글 갯수 가져오기
	 * @param sc
	 * @return
	 */
	int getSearchListCount(SearchCondition sc);
	
	/**
	 *  문의사항 검색 리스트 불러오기
	 * @param sc
	 * @param pi
	 * @return
	 */	
	ArrayList<Questions> selectSearchList(SearchCondition sc, PageInfo pi);
	
	
}













