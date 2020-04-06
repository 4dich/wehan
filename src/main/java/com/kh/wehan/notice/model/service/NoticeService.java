package com.kh.wehan.notice.model.service;

import com.kh.wehan.notice.model.vo.Notice;

public interface NoticeService {

	/**
	 * 공지사항 작성하기
	 * @param n
	 * @return
	 */
	int insertNotice(Notice n);

}
