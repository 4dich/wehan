package com.kh.wehan.notice.model.service;

import java.util.ArrayList;

import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.notice.model.vo.PageInfo;

public interface NoticeService {

	/**
	 * 공지사항 작성하기
	 * @param n
	 * @return
	 */
	int insertNotice(Notice n);
	

	/**
	 * 공지사항 글 수 확인하기
	 * @return
	 */
	int getListCount();


	/**
	 * 공지사항 리스트 가져오기 + 페이지내이션
	 * @param pi
	 * @return
	 */
	ArrayList<Notice> listNotice(PageInfo pi);

}
