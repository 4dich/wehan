package com.kh.wehan.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public Member login(Member m) {
		return (Member)sqlSession.selectOne("memberMapper.userInfo",m);
	}

	public int idCheck(String idCheck) {
		return sqlSession.selectOne("memberMapper.idCheck",idCheck);
	}

}
