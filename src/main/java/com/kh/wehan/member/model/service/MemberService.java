package com.kh.wehan.member.model.service;

import com.kh.wehan.member.model.vo.Member;

public interface MemberService {

	/**
	 * 로그인
	 * @param m
	 * @return
	 */
	Member login(Member m);

	/**
	 * 아이디 체크
	 * @param id
	 * @return
	 */
	int idCheck(String idCheck);

}
