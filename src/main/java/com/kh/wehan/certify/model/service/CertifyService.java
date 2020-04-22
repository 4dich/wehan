package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.CertifyReply;
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Follow;
import com.kh.wehan.member.model.vo.Member;

public interface CertifyService {

	/**
	 * 피드 인증글 총 개수
	 * @return
	 */
	int getListCount();

	/**
	 * 피드 리스트 출력
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> selectList(PageInfo pi);

	/**
	 * 친구 피드 리스트 출력
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> getFriendList(PageInfo pi,String mName);

	/**
	 * 팔로우 리스트 출력
	 * @param pi
	 * @return
	 */
	ArrayList<Member> getFollowList(PageInfo pi,String mName);

	/**
	 * 인증글 상세 조회
	 * @param ceId
	 * @return
	 */
	Certify selectCertify(int ceId);


	/**
	 * 팔로우 삭제
	 * @param pi
	 * @param f
	 * @return
	 */
	ArrayList<Follow> getFollowDelete(PageInfo pi, Follow f);

	/**
	 * 댓글 등록
	 * @param r
	 * @return
	 */
	int insertReply(CertifyReply r);

	/**
	 * 피드 카테고리 리스트 검색
	 * @param category
	 * @return
	 */
	int fidCategoryCount(String category);

	/**
	 * 피드 카테고리 검색
	 * @return
	 */
	ArrayList<Certify> fidCategory(String category,PageInfo pi);

	/** 팔로우 검색
	 * @param pi
	 * @param sc
	 * @return
	 */
	ArrayList<Member> getSearchFollowList(PageInfo pi, SearchCondition sc);

	/**
	 * 댓글 삭제
	 * @param r
	 * @return
	 */
	int deleteReply(CertifyReply r);

	/**
	 * 피드 타이틀 리스트 개수
	 * @param title
	 * @return
	 */
	int fidTitleCount(String title);

	
	/**
	 * 피드 타이틀 리스트
	 * @param title
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> fidTitle(String title, PageInfo pi);

	/**
	 * 챌린지 _ 인증글 리스트 출력
	 * @param chId
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> chCertifyList(String chId, PageInfo pi);

	String chName(String chId);

	/**
	 * 인증글 등록페이지
	 * @param ceId
	 * @return
	 */
	Challenge insertPage(String chId);

	/**
	 * 인증글 insert
	 * @param cer
	 * @return
	 */
	int insertCertify(Certify cer);


}
