package com.kh.wehan.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
