package com.kh.wehan.certify.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.CertifyReply;
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;

@Repository("acDao")
public class AdminCertifyDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("certifyMapper.getListCount");
	}

	public ArrayList<Certify> selectList(PageInfo pi) {
		
		int offset =(pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("certifyMapper.selectList",null,rowBounds);
	}

	public int updateCount(int ceId) {
		return sqlSession.update("certifyMapper.updateCertify",ceId);
	}

	public Certify selectCertify(int ceId) {
		
		return sqlSession.selectOne("certifyMapper.selectCertify",ceId);
	}

	public int getSearchListCount(SearchCondition sc) {
		
		return sqlSession.selectOne("certifyMapper.getSearchListCount",sc);
	}

	public ArrayList<Certify> selectSearchList(SearchCondition sc, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("certifyMapper.selectSearchList",sc, rowBounds);
	}

	public int updateCertify(int ceId) {
		
		return sqlSession.update("certifyMapper.updateCertify",ceId);
	}

	public ArrayList<CertifyReply> selectReply(int ceId) {
		
		return (ArrayList)sqlSession.selectList("certifyMapper.selectReply",ceId);
	}



	
	
	
}
