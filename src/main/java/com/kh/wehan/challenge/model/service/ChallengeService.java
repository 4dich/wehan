package com.kh.wehan.challenge.model.service;

import java.util.ArrayList;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.challenge.model.vo.PremiumChallenge;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Mypage;

public interface ChallengeService {

	/**
	 * 관리자 챌린지 리스트 카운트용
	 * @return
	 */
	int getListCount();

	/**
	 * 관리자 리스트 관리용
	 * @param pi
	 * @return
	 */
	ArrayList<Challenge> selectList(PageInfo pi);

	/**
	 * 리스트 상세보기(관리자용, 사용자용)
	 * @param chId
	 * @return
	 */
	Challenge selectOneDetail(String chId);

	/**
	 * 관리자 챌린지 리스트 검색(페이징 처리)
	 * @param chal
	 * @return
	 */
	int getSearchListCount(Challenge chal);

	/**
	 * 관리자 챌린지 리스트 조건 검색
	 * @param chal
	 * @param pi
	 * @return
	 */
	ArrayList<Challenge> selectSearchList(Challenge chal, PageInfo pi);

	/**
	 * 사용자 챌린지 등록
	 * @param chal
	 * @return
	 */
	int insertChallenge(Challenge chal);

	/**
	 * 사용자 챌린지 리스트
	 * @param pi
	 * @return
	 */
	ArrayList<Challenge> selectChallengeList(PageInfo pi);

	/**
	 * 사용자 챌린지 리스트 카테고리 별 분류 리스트 카운트
	 * @param category
	 * @return
	 */
	int getListCount(String category);

	/**
	 * 사용자 챌린지 리스트 카테고리 별 분류
	 * @param category
	 * @param pi
	 * @return
	 */
	ArrayList<Challenge> selectList(String category, PageInfo pi);

	/**
	 * 사용자 챌린지 리스트 검색
	 * 사용자 챌린지 디테일 리스트 검색
	 * @param chal
	 * @param pi
	 * @return
	 */
	ArrayList<Challenge> selectSearchChNameList(Challenge chal, PageInfo pi);

	/**
	 * 프리미엄 챌린지 조회 시 사용자 레벨 조회
	 * @param userId
	 * @return
	 */
	Mypage checkPremiumCondition(String userId);

	/**
	 * 프리미엄 챌린지 상세 보기
	 * @param chId
	 * @return
	 */
	PremiumChallenge selectOnePremiumDetail(String chPId);

	/**
	 * 프리미엄 챌린지 리스트 카운트
	 * @param chal
	 * @return
	 */
	int getSearchListCount(PremiumChallenge chal);

	/**
	 * 사용자 프리미엄 챌린지 리스트 검색
	 * 사용자 프리미엄 챌린지 디테일 리스트 검색
	 * @param chal
	 * @param pi
	 * @return
	 */
	ArrayList<PremiumChallenge> selectSearchChNameList(PremiumChallenge chal, PageInfo pi);

	/**
	 * 프리미엄 챌린지 리스트
	 * @param pi
	 * @return
	 */
	ArrayList<PremiumChallenge> selectPremiumList(PageInfo pi);

	/**
	 * 프리미엄 챌린지 등록
	 * @param chal
	 * @return
	 */
	int insertPremiumChallenge(PremiumChallenge chal);

	/**
	 * 프리미엄 리스트 카운트
	 * @return
	 */
	int getPremiumListCount();



	
	

}
