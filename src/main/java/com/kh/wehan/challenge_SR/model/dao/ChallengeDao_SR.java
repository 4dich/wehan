package com.kh.wehan.challenge_SR.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.challenge_SR.model.vo.ChallengeTop10;
import com.kh.wehan.challenge_SR.model.vo.ChallengerInfo;

@Repository("chalDaoSr")
public class ChallengeDao_SR {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	/**
	 * 챌린지 Top10리스트 가져오기
	 * @return
	 */
	public ArrayList<ChallengeTop10> getChallengeTop10List() {
		return (ArrayList)sqlSession.selectList("challengeMapperSR.getChallengeTop10List");
	}


	/**
	 * 멤버 정보 가져오기
	 * @return
	 */
	public ArrayList<ChallengerInfo> getChallengerList() {
		return (ArrayList)sqlSession.selectList("challengeMapperSR.getChallengerList");
	}


	
	
	

	

}
