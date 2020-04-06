package com.kh.wehan.common;

import com.kh.wehan.common.model.vo.PageInfo;

public class Pagination {

	// PageInfo 객체를 리턴하는 static 메소드 추가
	
	/**
	 * @author 김현희
	 * @param currentPage - 현재 페이지
	 * @param listCount   - 목록 수 
	 * @param pageLimit   - 한페이지 당 페이지 수
	 * @param boardLimit  - 한 페이지에서 보여질 게시글 갯수
	 * @return
	 */
	public static PageInfo getPageInfo(int currentPage, int listCount, int pageLimit, int boardLimit) {
		
		// 페이지 정보를 담아줄 PageInfo 참조변수 선언
		PageInfo pi= null;
		
		int maxPage; 		// 전체 페이징 수 중 가장 마지막 페이지
		int startPage; 		// 현재 페이지에서 보여질 페이징 버튼의 시작 페이지
		int endPage; 		// 현재 페이지에서 보여질 페이징 버튼의 끝 페이지
		
		// * maxPage - 총페이지 수
		maxPage = (int)Math.ceil((double)listCount/boardLimit);
		
		// * startPage - 현재 페이지에 보여질 시작페이지 수
		startPage = (currentPage-1)/pageLimit * pageLimit +1;
		
		// * endPage - 현재 페이지에서 보여질 마지막 페이지 수
		endPage = startPage + pageLimit-1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new PageInfo(currentPage,listCount,pageLimit,maxPage,startPage,endPage,boardLimit);
		
		return pi;
	}
}