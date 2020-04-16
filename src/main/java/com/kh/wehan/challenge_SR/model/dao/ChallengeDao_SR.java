package com.kh.wehan.challenge_SR.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.challenge_SR.model.vo.ChallengeTop10;

@Repository("chalDaoSr")
public class ChallengeDao_SR {
	
	@Autowired
	private SqlSessionTemplate splSession;
	
	/**
	 * 챌린지 Top10리스트 가져오기
	 * 1) 챌린지 참가자 목록 가져오기
	 * @return
	 */
	public Map getChallengerList() {
		return (Map)splSession.selectList("challengeMapperSR.getChallengerList");
	}
	
	
	/**
	 * 챌린지 Top10리스트 가져오기
	 * @return
	 */
	public ArrayList<ChallengeTop10> getChallengeTop10List() {
		return (ArrayList)splSession.selectList("challengeMapperSR.getChallengeTop10List");
	}

	

}
