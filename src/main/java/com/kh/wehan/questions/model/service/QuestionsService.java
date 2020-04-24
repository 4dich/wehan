package com.kh.wehan.questions.model.service;

import java.util.ArrayList;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.questions.model.vo.Questions;
import com.kh.wehan.questions.model.vo.QuestionsReply;
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

	/**
	 * 유저 문의사항 등록하기
	 * @param n
	 * @return
	 */
	int questionsInsert(Questions n);
	
	/**
	 * 유저 문의사항 수정
	 * @param n
	 * @return
	 */
	int questionsModify(Questions n);

	/**
	 * 문의사항 삭제
	 * @param qId
	 * @return
	 */
	int questionsDelete(int qId);
    
	
	/**
	 * 문의사항 댓글 등록하기
	 * @param q
	 * @return
	 */
		
	int questionsReplyInsert(QuestionsReply qr);
	
	ArrayList<QuestionsReply> questionReplyList(int qId);

	ArrayList<QuestionsReply> selectreplyList(int qId);

	int deletereply(int qrId);
}  
    












