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
	 * 공지사항 글 갯수 가져오기
	 */
	@Override
	public int getListCount() {
		return nDao.getListCount();
	}

	/**
	 * 공지사항 리스트 가져오기
	 */
	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		return nDao.selectList(pi);
	}

	/**
	 * 공지사항 상세보기 + 조회수 올리기
	 */
	@Override
	public Notice noticeSelect(int nId) {
		
		// 조회수 증가용
		int result = nDao.updateCount(nId);
		
		if(result > 0) {
			return nDao.noticeSelect(nId);
		} else {
			return null;
		}
	 	
	}

	
	

}
