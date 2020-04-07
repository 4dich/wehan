package com.kh.wehan.notice.model.service;

import java.util.ArrayList;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.notice.model.vo.SearchCondition;

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

	/**
	 * 공지사항 검색글 갯수 가져오기
	 * @param sc 
	 * @return
	 */
	int getSearchListCount(SearchCondition sc);

	/**
	 * 공지사항 검색 리스트 불러오기
	 * @param sc
	 * @param pi
	 * @return
	 */
	ArrayList<Notice> selectSearchList(SearchCondition sc, PageInfo pi);

	/**
	 * 공지사항 입력
	 * @param n
	 * @return
	 */
	int adNoticeInsert(Notice n);

	/**
	 * 공지사항 수정
	 * @param n
	 * @return
	 */
	int adNoticeModify(Notice n);

	/**
	 * 공지사항 삭제
	 * @param nId
	 * @return
	 */
	int adNoticeDelete(int nId);

	

	

}