package com.kh.wehan.pay.model.service;

import java.util.ArrayList;

import com.kh.wehan.challenge.model.vo.Challenge;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.pay.model.vo.Pay;


public interface PayService {

	
	int getListCount();

	ArrayList<Pay> selectList(PageInfo pi);

	Challenge slectchDetail(int pId);

	Pay slectPayDetail(int pId);
	
	int insertPay(Pay pay);

	ArrayList<Pay> pSearch(Pay p);

	ArrayList<Challenge> chSearch(Challenge ch);

	int getSearchListCount(Challenge ch);

	int getSearchListCount(Pay p);

	int refundAll(int[] result);

	
}
