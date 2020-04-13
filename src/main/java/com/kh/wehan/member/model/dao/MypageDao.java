package com.kh.wehan.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.vo.Member;
import com.kh.wehan.member.model.vo.Mypage;

@Repository("myDao")
public class MypageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Mypage my_profileView(String userId) {
		return sqlSession.selectOne("mypageMapper.my_profileView", userId);
	}

	public int followCount(String userId) {
		return sqlSession.selectOne("mypageMapper.followCount", userId);
	}

	public int followingCount(String userId) {
		return sqlSession.selectOne("mypageMapper.followingCount", userId);
	}

	public int updateProfile(Mypage mp) {
		return sqlSession.update("mypageMapper.updateProfile",mp);
	}

	public ArrayList<Challenge> selectListCh(String userId) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectListCh",userId);
	}

}
