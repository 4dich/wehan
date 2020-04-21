package com.kh.wehan.member.model.service;

import java.util.ArrayList;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.BlackList;
import com.kh.wehan.member.model.vo.FindKey;
import com.kh.wehan.member.model.vo.Member;

public interface MemberService {
	//--------로그인---------
	/**
	 * 로그인
	 * @param m
	 * @return
	 */
	Member login(String userId);
	/**
	 * 관리자 로그인
	 * @param userId
	 * @return
	 */
	Admin adminlogin(String userId);

	
	//-------회원가입--------
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

	//-------회원정보 리스트---------
	
	/**
	 * 유저 수
	 * @return
	 */
	int memberCount();

	/**
	 * 유저 정보 list
	 * @return
	 */
	ArrayList<Member> memberList(PageInfo pi);
	
	/**
	 * 유저정보 업데이트
	 * @param m
	 * @return
	 */
	int updateMember(Member m);
	
	/**
	 * 검색된 유저 list 개수
	 * @param mem
	 * @return
	 */
	int mlistSearchCount(Member mem);
	
	/**
	 * 검색된 유저 list
	 * @param selecter
	 * @param searchValue
	 * @return
	 */
	ArrayList<Member> mlistSearch(Member mem,PageInfo pi);
	
	/**
	 * 유저리스트 상세보기
	 * @param mem
	 * @return
	 */
	Member memberDetail(String userId);
	
	/**
	 * 블랙리스트 정보 가져오기
	 * @return
	 */
	BlackList BlackListInfo(String userId);
	
	
	//---------아이디/비밀번호 찾기-------------
	
	/**
	 * 아이디 찾기
	 * @param eamil
	 * @return
	 */
	String idFind(String email);
	
	/**
	 * 비밀번호 찾기
	 * @param m
	 * @return
	 */
	int pwdFind(Member m);
	
	/**
	 * 비밀번호 인증키 
	 * @param c
	 * @return
	 */
	int insertFindKey(FindKey c);
	
	/**
	 * 인증키 매칭
	 * @param c
	 * @return
	 */
	int matchKey(FindKey c);
	
	/**
	 * 인증키 삭제
	 * @param userId
	 * @return
	 */
	int DeleteFindKey(String userId);
	
	/**
	 * 비밀번호 변경
	 * @param m
	 * @return
	 */
	int updatePwd(Member m);
	
	//----------- 블랙리스트 등록/취소--------------
	
	/**
	 * 블랙리스트 등록
	 * @param b
	 * @return
	 */
	int blackInsert(BlackList b);
	
	/**
	 * 블랙리스트 취소
	 * @param bId
	 * @return
	 */
	int blackCancle(String bId);
	
	/**
	 * 블랙리스트 개수
	 * @return
	 */
	int blackListCount();
	
	/**
	 * 블랙리스트
	 * @return
	 */
	ArrayList<BlackList> blackList(PageInfo pi);
	
	/**
	 * 마이페이지 생성
	 * @param userId
	 * @return
	 */
	int insertMypage(String userId);
	
}