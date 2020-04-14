package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.certify.model.dao.CertifyDao;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Member;

@Service("ceService")
public class CertifyServiceImpl implements CertifyService{

	@Autowired
	private CertifyDao ceDao;

	/**
	 * 피드 인증글 총 개수
	 */
	@Override
	public int getListCount() {
		return ceDao.getListCount();
	}

	/**
	 * 피드 리스트 출력
	 */
	@Override
	public ArrayList<Certify> selectList(PageInfo pi) {
		return ceDao.selectList(pi);
	}

	/**
	 * 친구 피드 리스트 출력
	 */
	@Override
	public ArrayList<Certify> getFriendList(PageInfo pi) {
		
		return ceDao.selectFriendList(pi);
	}

	/**
	 * 팔로우 리스트 출력
	 */
	@Override
	public ArrayList<Member> getFollowList(PageInfo pi, String mName) {
		
		return ceDao.selectFollowList(pi,mName);
	}

	/**
	 * 인증글 상세보기
	 */
	@Override
	public Certify selectCertify(int ceId) {
		
		return ceDao.selectCertify(ceId);
	}
}
