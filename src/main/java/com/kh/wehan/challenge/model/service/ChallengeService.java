package com.kh.wehan.challenge.model.service;

import java.util.ArrayList;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;

public interface ChallengeService {

	/**
	 * 관리자 challengeList 카운트용
	 * @return
	 */
	int getListCount();

	/**
	 * 관리자 challenge 리스트 관리용
	 * @param pi
	 * @return
	 */
	ArrayList<Challenge> selectList(PageInfo pi);
	
	

}
