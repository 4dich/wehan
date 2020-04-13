package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.wehan.certify.model.dao.CertifyDao;
import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.model.vo.PageInfo;

@Service("ceService")
public class CertifyServiceImpl implements CertifyService{

	@Autowired
	private CertifyDao ceDao;

	/**
	 * 피드 인증글 총 개수
	 */
	@Override
	public int getListCount() {
		return ceDao.getListCount();
	}

	/**
	 * 피드 리스트 출력
	 */
	@Override
	public ArrayList<Certify> selectList(PageInfo pi) {
		return ceDao.selectList(pi);
	}
}
