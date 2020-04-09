package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.certify.model.dao.AdminCertifyDao;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;

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

	@Override
	public Certify selectCertify(int ceId) {

		return acDao.selectCertify(ceId);
		
	}

	/**
	 * 인증글 갯수
	 */
	@Override
	public int getSearchListCount(SearchCondition sc) {
		
		return acDao.getSearchListCount(sc);
	}

	/**
	 * 인증글 검색리스트
	 */
	@Override
	public ArrayList<Certify> selectSearchList(SearchCondition sc, PageInfo pi) {
		return acDao.selectSearchList(sc,pi);
	}


}
