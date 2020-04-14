package com.kh.wehan.member.model.service;

import java.util.ArrayList;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.vo.Mypage;

public interface MypageService {
	/**
	 * 0-0. 마이페이지 프로필 조회
	 * @return
	 */
	public Mypage my_profileView(String userId);

	/**
	 * 0-1. 나를 팔로우하는 사람수 조회
	 * @param userId
	 * @return
	 */
	public int followCount(String userId);

	/**
	 * 0-2. 내가 팔로우하는 사람수 조회
	 * @param userId
	 * @return
	 */
	public int followingCount(String userId);

	/**
	 * 0-3. 마이페이지 프로필 업데이트
	 * @param mp
	 * @return
	 */
	public int updateProfile(Mypage mp);

	/**
	 * 1-1. 마이페이지 마이챌린지 조회
	 * @param userId
	 * @return
	 */
	public ArrayList<Challenge> selectListCh(String userId);

	/**
	 * 1-2. 마이페이지 마이챌린지 완료된챌린지 개수 조회
	 * @param userId
	 * @return
	 */
	public int getListCountFinCh(String userId);

	/**
	 * 1-3. 마이페이지 마이챌린지 성공한 챌린지 개수 조회
	 * @param userId
	 * @return
	 */
	public int getListCountSucCh(String userId);


}
