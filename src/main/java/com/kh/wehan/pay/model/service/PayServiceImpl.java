package com.kh.wehan.pay.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
		return null;
	}

	@Override
	public Pay noticeSelect(int nId) {
		return null;
	}

}
