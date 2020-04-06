package com.kh.wehan.notice.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.notice.model.dao.NoticeDao;
import com.kh.wehan.notice.model.vo.Notice;

@Service("nService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDao nDao;
	
	/**
	 * 공지사항 작성하기
	 */
	@Override
	public int insertNotice(Notice n) {
		return nDao.insertNotice(n);
	}

	/**
	 * 공지사항 글 수 확인하기
	 */
	@Override
	public int getListCount() {
		return nDao.getListCount();
	}

}
