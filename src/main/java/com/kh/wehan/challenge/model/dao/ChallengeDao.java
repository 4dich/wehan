package com.kh.wehan.challenge.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;

@Repository("cDao")
public class ChallengeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("challengeMapper.getListCount");
	}

	public ArrayList<Challenge> getSelectList(PageInfo pi) {

		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("challengeMapper.selectList", null, rowBounds);
	}

	public Challenge getSelectOneDetail(String chId) {
		return sqlSession.selectOne("challengeMapper.selectOneDetail");
	}

	public int getSearchListCount(Challenge chal) {
		return sqlSession.selectOne("challengeMapper.getSearchListCount",chal);
	}

	public ArrayList<Challenge> getSelectSearchList(Challenge chal, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("challengeMapper.getSelectSearchList", chal, rowBounds);
	}

	public int getInsertChallenge(Challenge chal) {
		return sqlSession.insert("challengeMapper.insertChallenge", chal);
	}

	public ArrayList<Challenge> selectChallengeList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("challengeMapper.selectChallengeList", null, rowBounds);
	}


	
	
}
