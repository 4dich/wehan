package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.certify.model.dao.AdminCertifyDao;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.model.vo.PageInfo;

@Service("acService")
public class AdminCertifyServiceImpl implements AdminCertifyService {

	@Autowired
	private AdminCertifyDao acDao;

	@Override
	public int getListCount() {
		
		return acDao.getListCount();
	}

	@Override
	public ArrayList<Certify> selectList(PageInfo pi) {
		
		return acDao.selectList(pi);
	}
}
