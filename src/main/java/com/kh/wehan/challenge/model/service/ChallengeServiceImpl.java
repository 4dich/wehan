package com.kh.wehan.challenge.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.challenge.model.dao.ChallengeDao;
import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.challenge.model.vo.PremiumChallenge;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.member.model.vo.Mypage;

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

	@Override
	public ArrayList<Challenge> selectSearchChNameList(Challenge chal, PageInfo pi) {
		return cDao.getSelectSearchChNameList(chal, pi);
	}

	@Override
	public Mypage checkPremiumCondition(String userId) {
		return cDao.checkPremiumCondition(userId);
	}

	@Override
	public PremiumChallenge selectOnePremiumDetail(String chPId) {
		return cDao.selectOnePremiumDetail(chPId);
	}

	@Override
	public int getSearchListCount(PremiumChallenge chal) {
		return cDao.getListCount(chal);
	}

	@Override
	public ArrayList<PremiumChallenge> selectSearchChNameList(PremiumChallenge chal, PageInfo pi) {
		return cDao.selectSearchChNameList(chal, pi);
	}

	@Override
	public ArrayList<PremiumChallenge> selectPremiumList(PageInfo pi) {
		return cDao.selectPremiumList(pi);
	}

	@Override
	public int insertPremiumChallenge(PremiumChallenge chal) {
		return cDao.getInsertPremiumChallenge(chal);
	}

	@Override
	public int getPremiumListCount() {
		return cDao.getPremiumListCount();
	}

}
