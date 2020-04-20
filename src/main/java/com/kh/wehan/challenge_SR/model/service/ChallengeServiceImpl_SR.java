package com.kh.wehan.challenge_SR.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.challenge_SR.model.dao.ChallengeDao_SR;
import com.kh.wehan.challenge_SR.model.vo.ChallengeTop10;
import com.kh.wehan.challenge_SR.model.vo.ChallengerInfo;

@Service("chalServiceSr")
public class ChallengeServiceImpl_SR implements ChallengeService_SR{
	@Autowired
	private ChallengeDao_SR chalDaoSr;

	/**
	 * 챌린지 Top10리스트 가져오기
	 */
	@Override
	public ArrayList<ChallengeTop10> getChallengeTop10List() {
		return chalDaoSr.getChallengeTop10List();
	}

	
	/**
	 * 챌린지 참여자 닉네임 가져오기
	 */
	@Override
	public ArrayList<ChallengerInfo> getChallengerList(String[] list) {
		
		// 멤버 정보가져오기
		ArrayList<ChallengerInfo> info = chalDaoSr.getChallengerList();
		ChallengerInfo a;
		ArrayList<ChallengerInfo> result = new ArrayList<ChallengerInfo>();
		
		// 참가자 
		for(int i = 0; i < list.length; i++) {
			// 멤버
			for(int k = 0; k < info.size(); k++) {
					// 참가자의 id와 멤버의 아이디가 같으면
				if(list[i].equals(info.get(k).getUserId())) {
					a = new ChallengerInfo();
									
					a.setUserId(info.get(k).getUserId());
					a.setUserNickname(info.get(k).getUserNickname());
					a.setUserLevel(info.get(k).getUserLevel());		
										
					result.add(a);
					
					break;
				}
				
			}
		}
		
		return result;
	}
}
