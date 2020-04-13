package com.kh.wehan.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.BlackList;
import com.kh.wehan.member.model.vo.FindKey;
import com.kh.wehan.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//로그인
	public Member login(String userId) {
		return (Member)sqlSession.selectOne("memberMapper.userInfo",userId);
	}
	public Admin adminlogin(String userId) {
		return (Admin)sqlSession.selectOne("memberMapper.adminInfo",userId);
	}

	
	//회원가입
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

	// 관리자 회원 리스트
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
	public BlackList BlackListInfo(String userId) {
		return sqlSession.selectOne("BlackListInfo",userId);
	}

	//아이디 찾기
	public Member memberSearch(String userId) {
		return (Member)sqlSession.selectOne("memberMapper.userInfo",userId);
	}
	public String idFind(String email) {
		return sqlSession.selectOne("memberMapper.idFind",email);
	}

	//비밀번호 찾기
	public int pwdFind(Member m) {
		return sqlSession.selectOne("memberMapper.pwdFind",m);
	}
	public int insertFindKey(FindKey c) {
		return sqlSession.insert("memberMapper.insertKey",c);
	}
	public int matchKey(FindKey c) {
		return sqlSession.selectOne("memberMapper.matchKey",c);
	}
	public int DeleteFindKey(String userId) {
		return sqlSession.delete("memberMapper.DeleteFindKey",userId);
	}
	public int updatePwd(Member m) {
		return sqlSession.update("memberMapper.updatePwd",m);
	}
	



}
