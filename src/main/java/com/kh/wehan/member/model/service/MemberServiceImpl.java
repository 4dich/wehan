package com.kh.wehan.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.member.model.dao.MemberDao;
import com.kh.wehan.member.model.vo.Admin;
import com.kh.wehan.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao mDao;
	
	@Override
	public Member login(String userId) {
		return mDao.login(userId);
	}

	@Override
	public int idCheck(String idCheck) {
		return mDao.idCheck(idCheck);
	}

	@Override
	public Admin adminlogin(String userId) {
		return mDao.adminlogin(userId);
	}

	@Override
	public int nickCheck(String nickName) {
		return mDao.nickCheck(nickName);
	}

}
