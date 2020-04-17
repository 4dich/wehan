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
		return chalDaoSr.getChallengeTop10List();
	}
}
