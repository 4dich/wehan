package com.kh.wehan.challenge.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.challenge.model.dao.ChallengeDao;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;

@Service("cService")
public class ChallengeServiceImpl implements ChallengeService {

	@Autowired
	private ChallengeDao cDao;

	@Override
	public int getListCount() {
		return cDao.getListCount();
	}

	@Override
	public ArrayList<Challenge> selectList(PageInfo pi) {
		return cDao.getSelectList(pi);
	}

	@Override
	public Challenge selectOneDetail(String chId) {
		return cDao.getSelectOneDetail(chId);
	}

	@Override
	public int getSearchListCount(Challenge chal) {
		return cDao.getSearchListCount(chal);
	}

	@Override
	public ArrayList<Challenge> selectSearchList(Challenge chal, PageInfo pi) {
		return cDao.getSelectSearchList(chal, pi);
	}

	@Override
	public int insertChallenge(Challenge chal) {
		return cDao.getInsertChallenge(chal);
	}

	@Override
	public ArrayList<Challenge> selectChallengeList(PageInfo pi) {
		return cDao.selectChallengeList(pi);
	}

	@Override
	public int getListCount(String category) {
		return cDao.getListCount(category);
	}

	@Override
	public ArrayList<Challenge> selectList(String category, PageInfo pi) {
		return cDao.getSelectList(category, pi);
	}



}
