package com.kh.wehan.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.member.model.dao.MemberDao;
import com.kh.wehan.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDao mDao;
	
	@Override
	public Member login(Member m) {
		return mDao.login(m);
	}

}
