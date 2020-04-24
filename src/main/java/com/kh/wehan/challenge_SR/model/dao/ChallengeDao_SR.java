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


	/**
	 * 결제 취소 시 챌린지 삭제
	 * @param chId
	 * @return
	 */
	public int cancleRegister(String chId) {
		return sqlSession.delete("challengeMapperSR.cancleRegister", chId);
	}


	/**
	 * 마감된 챌린지 성공률 구하기
	 * 1)챌린지 80% 이상 인증한 사람 수 구하기
	 * @param m
	 * @return
	 */
	public int getSuccessRate(Map m) {
		return sqlSession.selectOne("challengeMapperSR.getSuccessRate", m);
	}


	
	
	

	

}
