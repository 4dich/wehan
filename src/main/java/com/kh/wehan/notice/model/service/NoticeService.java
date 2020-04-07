package com.kh.wehan.notice.model.service;

import java.util.ArrayList;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;

public interface NoticeService {

	/**
	 * 공지사항 글 갯수 가져오기
	 * @return
	 */
	int getListCount();

	/**
	 * 공지사항 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<Notice> selectList(PageInfo pi);

	/**
	 * 공지사항 상세보기
	 * @param nId
	 * @return
	 */
	Notice noticeSelect(int nId);

	

}