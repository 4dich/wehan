package com.kh.wehan.member.model.service;

import com.kh.wehan.member.model.vo.Mypage;

public interface MypageService {
	/**
	 * 0. 마이페이지 프로필 조회
	 * @return
	 */
	public Mypage my_profileView(String userId);
}
