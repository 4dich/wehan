package com.kh.wehan.member.model.service;

import com.kh.wehan.member.model.vo.Member;
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

}
