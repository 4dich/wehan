package com.kh.wehan.member.model.service;

import java.util.ArrayList;

import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.Member;

public interface MemberService {

	/**
	 * 로그인
	 * @param m
	 * @return
	 */
	Member login(String userId);
	Admin adminlogin(String userId);

	/**
	 * idCheck:아이디 체크
	 * AidCheck:관리자 아이디 체크
	 * nickCheck:닉네임 체크
	 * blackCheck:블랙리스트 체크
	 * @param id
	 * @return
	 */
	int idCheck(String idCheck);
	int AidCheck(String idCheck);
	int nickCheck(String nickName);
	int blackCheck(String userId);
	/**
	 * 회원가입
	 * @param m
	 * @return
	 */
	int insertMember(Member m);

	/**
	 * 유저 수
	 * @return
	 */
	int memberCount();

	/**
	 * 유저 정보 list
	 * @return
	 */
	ArrayList<Member> memberList();
	

}
