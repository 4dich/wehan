package com.kh.wehan.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.common.model.vo.PageInfo;
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

	/**
	 * 공지사항 리스트 가져오기
	 */
	@Override
	public ArrayList<Notice> listNotice(PageInfo pi) {
		return nDao.listNotice(pi);
	}

}
