package com.kh.wehan.challenge_SR.model.service;

import java.util.ArrayList;

import com.kh.wehan.challenge_SR.model.vo.ChallengeTop10;

public interface ChallengeService_SR {

	/**
	 * 챌린지 Top10리스트 가져오기
	 * @return
	 */
	ArrayList<ChallengeTop10> getChallengeTop10List();
	
}
