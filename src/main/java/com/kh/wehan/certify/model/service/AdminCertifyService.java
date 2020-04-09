package com.kh.wehan.certify.model.service;

import java.util.ArrayList;

import com.kh.wehan.certify.model.vo.Certify;
import com.kh.wehan.certify.model.vo.SearchCondition;
import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;

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

	/**
	 * 인증글 검색글 갯수
	 * @param sc
	 * @return
	 */
	int getSearchListCount(SearchCondition sc);

	/**
	 * 인증글 검색 리스트 불러오기
	 * @param sc
	 * @param pi
	 * @return
	 */
	ArrayList<Certify> selectSearchList(SearchCondition sc, PageInfo pi);

	

}
