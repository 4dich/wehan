package com.kh.wehan.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.member.model.dao.MypageDao;
import com.kh.wehan.member.model.vo.Diary;
import com.kh.wehan.member.model.vo.Follow;
import com.kh.wehan.member.model.vo.Member;
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

	@Override
	public int certifyCount(Certify ce) {
		return myDao.certifyCount(ce);
	}

	@Override
	public Member selectMember(String otherId) {
		return myDao.selectMember(otherId);
	}

	@Override
	public int my_unfollow(Follow f) {
		return myDao.my_unfollow(f);
	}

	@Override
	public int isFollow(Follow f) {
		return myDao.isFollow(f);
	}

	@Override
	public int my_follow(Follow f) {
		return myDao.my_follow(f);
	}

	@Override
	public int my_updateLvExp(Mypage mypage) {
		return myDao.my_updateLvEx(mypage);
	}

	@Override
	public ArrayList<Diary> selectListDiary(String userId) {
		return myDao.selectListDiary(userId);
	}

	@Override
	public int insertDiary(Diary di) {
		return myDao.insertDiary(di);
	}

	@Override
	public int deleteDiary(Diary di) {
		return myDao.deleteDiary(di);
	}

	@Override
	public int updateDiary(Diary di) {
		return myDao.updateDiary(di);
	}

	@Override
	public int updateDiaryDrag(Diary di) {
		return myDao.updateDiaryDrag(di);
	}
}
