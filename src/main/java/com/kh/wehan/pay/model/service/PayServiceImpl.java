package com.kh.wehan.pay.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.pay.model.dao.PayDao;
import com.kh.wehan.pay.model.vo.Pay;


@Service("pService")
public class PayServiceImpl implements PayService {

	@Autowired
	private PayDao pDao;
	
	@Override
	public int getListCount() {
		return pDao.getListCount();
	}

	@Override
	public ArrayList<Pay> selectList(PageInfo pi) {
		return pDao.selectList(pi);
	}

	@Override
	public Pay slectPayDetail(int pId) {
		return pDao.slectPayDetail(pId);
	}

	@Override
	public Challenge slectchDetail(int pId) {
		return pDao.slectChDetail(pId);
	}
	
	@Override
	public int insertPay(Pay pay) {
		return pDao.insertPay(pay);
	}

	
	@Override
	public int refundAll(int[] result) {
		return pDao.refundAll(result);
	}

	@Override
	public int refundOne(int pId) {
		return pDao.refundOen(pId);
	}
	
	@Override
	public int getSearchListCount(Challenge ch) {
		return pDao.searchCount(ch);
	}
	
	@Override
	public int getSearchListCount(Pay p) {
		return pDao.searchCount(p);
	}

	@Override
	public ArrayList<Challenge> chSearch(Challenge ch, PageInfo pi) {
		return pDao.chSearch(ch,pi);
	}

	@Override
	public ArrayList<Pay> pSearch(Pay p, PageInfo pi) {
		return pDao.pSearch(p,pi);
	}

	@Override
	public ArrayList<Pay> refundYn(PageInfo pi) {
		// TODO Auto-generated method stub
		return pDao.refundYn(pi);
	}


}
