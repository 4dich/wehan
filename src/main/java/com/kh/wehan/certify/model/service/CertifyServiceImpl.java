package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.certify.model.dao.CertifyDao;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.CertifyReply;
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Follow;
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
	public ArrayList<Certify> getFriendList(PageInfo pi,String mName) {
		
		return ceDao.selectFriendList(pi,mName);
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

	@Override
	public ArrayList<Follow> getFollowDelete(PageInfo pi, Follow f) {
	
		return ceDao.deleteFollow(pi,f);
	}

	/**
	 * 댓글 달기
	 */
	@Override
	public int insertReply(CertifyReply r) {
		return ceDao.insertReply(r);
	}

	
	/**
	 * 카테고리 리스트 출력
	 */
	@Override
	public int fidCategoryCount(String category) {
		return ceDao.fidCategoryCount(category);
	}
	
	/**
	 * 카테고리 검색
	 */
	@Override
	public ArrayList<Certify> fidCategory(String category,PageInfo pi) {
		return ceDao.fidCategory(category,pi);
	}

	/**
	 * 유저검색
	 */
	@Override
	public ArrayList<Member> getSearchFollowList(PageInfo pi, SearchCondition sc) {
		
		return ceDao.followSearch(pi,sc);
	}

	/**
	 * 댓글 삭제
	 */
	@Override
	public int deleteReply(CertifyReply r) {
		return ceDao.deleteReply(r);
	}

	@Override
	public int fidTitleCount(String title) {
		return ceDao.fidTitleCount(title);
	}

	@Override
	public ArrayList<Certify> fidTitle(String title, PageInfo pi) {
		return ceDao.fidTitle(title,pi);
	}

	/**
	 * 챌린지 _ 인증글 리스트
	 */
	@Override
	public ArrayList<Certify> chCertifyList(String chId, PageInfo pi) {
		
		return ceDao.chCertifyList(chId,pi);
	}


}
