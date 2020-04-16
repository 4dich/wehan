package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.CertifyReply;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Follow;
import com.kh.wehan.member.model.vo.Member;

public interface CertifyService {

	/**
	 * 피드 인증글 총 개수
	 * @return
	 */
	int getListCount();

	/**
	 * 피드 리스트 출력
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> selectList(PageInfo pi);

	/**
	 * 친구 피드 리스트 출력
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> getFriendList(PageInfo pi);

	/**
	 * 팔로우 리스트 출력
	 * @param pi
	 * @return
	 */
	ArrayList<Member> getFollowList(PageInfo pi,String mName);

	/**
	 * 인증글 상세 조회
	 * @param ceId
	 * @return
	 */
	Certify selectCertify(int ceId);


	/**
	 * 팔로우 삭제
	 * @param pi
	 * @param f
	 * @return
	 */
	ArrayList<Follow> getFollowDelete(PageInfo pi, Follow f);



}
