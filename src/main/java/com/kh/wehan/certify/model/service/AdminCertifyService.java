package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.common.model.vo.PageInfo;

public interface AdminCertifyService {

	/**
	 * 인증글 리스트 총 개수 조회
	 * @return
	 */
	int getListCount();

	/**
	 * 인증글 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> selectList(PageInfo pi);

	/**
	 * 인증글 상세조회
	 * @param ceId
	 * @return
	 */
	Certify selectCertify(int ceId);

}
