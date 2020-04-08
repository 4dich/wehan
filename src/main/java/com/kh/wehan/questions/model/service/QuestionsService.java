package com.kh.wehan.questions.model.service;

import java.util.ArrayList;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.questions.model.vo.Questions;

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
}
