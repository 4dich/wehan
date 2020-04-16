package com.kh.wehan.challenge_SR.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.challenge_SR.model.dao.ChallengeDao_SR;
import com.kh.wehan.challenge_SR.model.vo.ChallengeTop10;

@Service("chalServiceSr")
public class ChallengeServiceImpl_SR implements ChallengeService_SR{
	@Autowired
	private ChallengeDao_SR chalDaoSr;

	/**
	 * 챌린지 Top10리스트 가져오기
	 */
	@Override
	public ArrayList<ChallengeTop10> getChallengeTop10List() {
		
		// 1) 챌린지 참가자 수 확인하기
		// 1-1) 챌린지 참가자 목록 가져오기
		
		// 챌린지 리스트 담을 map 만들기
		Map challengerList = new HashMap();
		challengerList.put("chId", null);		// 챌린지 id
		challengerList.put("chPeople", null);	// 챌린져 목록
		
		challengerList = chalDaoSr.getChallengerList();
		
		for(int i = 0; i < challengerList.size(); i++) {
			System.out.println("Map가져오기" + challengerList.get("chId"));
		}
		
		return null;
//		return chalDaoSr.getChallengeTop10List();
	}
}
