package com.kh.wehan.member.model.service;

import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.Member;

public interface MemberService {

	/**
	 * 로그인
	 * @param m
	 * @return
	 */
	Member login(String userId);

	/**
	 * 아이디 체크
	 * @param id
	 * @return
	 */
	int idCheck(String idCheck);

	Admin adminlogin(String userId);

	int nickCheck(String nickName);

}
