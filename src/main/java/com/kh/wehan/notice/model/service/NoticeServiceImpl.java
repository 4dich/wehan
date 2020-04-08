package com.kh.wehan.notice.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.dao.NoticeDao;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.notice.model.vo.SearchCondition;

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

	/**
	 * 공지사항 검색글 갯수 가져오기
	 */
	@Override
	public int getSearchListCount(SearchCondition sc) {
		return nDao.getSearchListCount(sc);
	}

	/**
	 * 공지사항 검색 리스트 불러오기
	 */
	@Override
	public ArrayList<Notice> selectSearchList(SearchCondition sc, PageInfo pi) {
		return nDao.selectSearchList(sc, pi);
	}

	/**
	 * 공지사항 입력하기
	 */
	@Override
	public int adNoticeInsert(Notice n) {
		return nDao.adNoticeInsert(n);
	}

	/**
	 * 공지사항 수정하기
	 */
	@Override
	public int adNoticeModify(Notice n) {
		return nDao.adNoticeModify(n);
	}

	/**
	 * 공지사항 삭제하기
	 */
	@Override
	public int adNoticeDelete(int nId) {
		return nDao.adNoticeDelete(nId);
	}

	

	
	

}
