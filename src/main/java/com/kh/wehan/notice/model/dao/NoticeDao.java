package com.kh.wehan.notice.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;

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

	
	


}
