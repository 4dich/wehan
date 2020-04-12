package com.kh.wehan.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public Member login(String userId) {
		return (Member)sqlSession.selectOne("memberMapper.userInfo",userId);
	}


	public Admin adminlogin(String userId) {
		return (Admin)sqlSession.selectOne("memberMapper.adminInfo",userId);
	}

	public int idCheck(String idCheck) {
		return sqlSession.selectOne("memberMapper.idCheck",idCheck);
	}
	public int nickCheck(String nickName) {
		return sqlSession.selectOne("memberMapper.nickCheck",nickName);
	}
	public int AidCheck(String idCheck) {
		return sqlSession.selectOne("memberMapper.AidCheck",idCheck);
	}
	public int blackCheck(String userId) {
		return sqlSession.selectOne("memberMapper.blackCheck",userId);
	}

	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public int memberCount() {
		return sqlSession.selectOne("memberMapper.memberCount");
	}

	public ArrayList<Member> memberList() {
		return (ArrayList)sqlSession.selectList("memberMapper.memberList");
	}

	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}

	public ArrayList<Member> mlistSearch(Member mem) {
		return (ArrayList)sqlSession.selectList("memberMapper.mlistSearch",mem);
	}


	public Member memberSearch(String userId) {
		return (Member)sqlSession.selectOne("memberMapper.userInfo",userId);
	}


	public String idFind(String email) {
		return sqlSession.selectOne("memberMapper.idFind",email);
	}

}

