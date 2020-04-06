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
		
		Member loginUser = (Member)sqlSession.selectOne("memberMapper.userInfo",m);
		System.out.println(loginUser);
		return loginUser;
	}

}
