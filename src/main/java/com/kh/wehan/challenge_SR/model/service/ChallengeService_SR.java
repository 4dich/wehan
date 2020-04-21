package com.kh.wehan.challenge_SR.model.service;

import java.util.ArrayList;

import com.kh.wehan.challenge_SR.model.vo.ChallengeTop10;
import com.kh.wehan.challenge_SR.model.vo.ChallengerInfo;

public interface ChallengeService_SR {

	/**
	 * 챌린지 Top10리스트 가져오기
	 * @return
	 */
	ArrayList<ChallengeTop10> getChallengeTop10List();

	/**
	 * 참가자 정보 가져오기
	 * @param list
	 * @return
	 */
	ArrayList<ChallengerInfo> getChallengerList(String[] list);

	/**
	 * 결제 취소 시 챌린지 삭제
	 * @param chId
	 * @return
	 */
	int cancleRegister(String chId);
	
	
}
