package com.kh.wehan.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.dao.MypageDao;
import com.kh.wehan.member.model.vo.Mypage;

@Service("myService")
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	private MypageDao myDao;
	
	@Override
	public Mypage my_profileView(String userId) {
		return myDao.my_profileView(userId);
	}

	@Override
	public int followCount(String userId) {
		return myDao.followCount(userId);
	}

	@Override
	public int followingCount(String userId) {
		return myDao.followingCount(userId);
	}

	@Override
	public int updateProfile(Mypage mp) {
		return myDao.updateProfile(mp);
	}

	@Override
	public ArrayList<Challenge> selectListCh(String userId) {
		return myDao.selectListCh(userId);
	}

}
