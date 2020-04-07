package com.kh.wehan.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.notice.model.vo.SearchCondition;

@Repository("nDao")
public class NoticeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 공지사항 글 갯수 가져오기
	 * @return
	 */
	public int getListCount() {
		return sqlSession.selectOne("noticeMapper.getListCount");
	}

	/**
	 * 공지사항 리스트 가져오기
	 * @param pi
	 * @return
	 */
	public ArrayList<Notice> selectList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectList", null, rowBounds);
	}

	
	/**
	 * 공지사항 카운트
	 * @param nId
	 * @return
	 */
	public int updateCount(int nId) {
		return sqlSession.update("noticeMapper.updateCount",nId);
	}
	
	/**
	 * 공지사항 상세보기
	 * @param nId
	 * @return
	 */
	public Notice noticeSelect(int nId) {
		return sqlSession.selectOne("noticeMapper.noticeSelect",nId);
	}

	/**
	 * 공지사항 검색글 갯수 가져오기
	 * @param sc
	 * @return
	 */
	public int getSearchListCount(SearchCondition sc) {
		return sqlSession.selectOne("noticeMapper.getSearchListCount", sc);
	}

	/**
	 * 공지사항 검색 리스트 불러오기
	 * @param sc
	 * @param pi
	 * @return
	 */
	public ArrayList<Notice> selectSearchList(SearchCondition sc, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("noticeMapper.selectSearchList", sc, rowBounds);
	}

	/**
	 * 공지사항 입력
	 * @param n
	 * @return
	 */
	public int adNoticeInsert(Notice n) {
		return sqlSession.insert("noticeMapper.adNoticeInsert", n);
	}

	/**
	 * 공지사항 수정하기
	 * @param n
	 * @return
	 */
	public int adNoticeModify(Notice n) {
		return sqlSession.update("noticeMapper.adNoticeModify", n);
	}

	/**
	 * 공지사항 삭제하기
	 * @param nId
	 * @return
	 */
	public int adNoticeDelete(int nId) {
		return sqlSession.update("noticeMapper.adNoticeDelete", nId);
	}



	
	


}
