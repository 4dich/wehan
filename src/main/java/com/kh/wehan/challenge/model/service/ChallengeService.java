package com.kh.wehan.challenge.model.service;

import java.util.ArrayList;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;

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

	
	
	

}
