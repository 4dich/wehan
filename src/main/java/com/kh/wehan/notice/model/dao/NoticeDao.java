package com.kh.wehan.notice.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.notice.model.vo.Notice;

@Repository("nDao")
public class NoticeDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * 공지사항 작성하기
	 * @param n
	 * @return
	 */
	public int insertNotice(Notice n) {
		return sqlSession.insert("noticeMapper.insertNotice", n);
	}

	/**
	 * 공지사항 글 수 확인
	 * @return
	 */
	public int getListCount() {
		return sqlSession.selectOne("noticeMapper.getListCount");
	}

}
