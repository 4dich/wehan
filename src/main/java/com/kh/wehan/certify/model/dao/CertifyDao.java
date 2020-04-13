package com.kh.wehan.certify.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.model.vo.PageInfo;

@Repository("ceDao")
public class CertifyDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 피드 인증글 총 개수
	 * @return
	 */
	public int getListCount() {
		return sqlSession.selectOne("certifyMapper.getFidListCount");
	}

	/**
	 * 피드 리스트 출력
	 * @param pi
	 * @return
	 */
	public ArrayList<Certify> selectList(PageInfo pi) {

		int offset =(pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("certifyMapper.fidSelectList",null,rowBounds);
	}

	public ArrayList<Certify> selectFriendList(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("certifyMapper.friendFidSelectList",null,rowBounds);
	}

}
