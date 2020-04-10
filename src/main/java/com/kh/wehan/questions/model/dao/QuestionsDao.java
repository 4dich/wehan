package com.kh.wehan.questions.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.wehan.common.model.vo.PageInfo;
import com.kh.wehan.notice.model.vo.Notice;
import com.kh.wehan.questions.model.vo.Questions;
import com.kh.wehan.questions.model.vo.SearchCondition;

@Repository("qDao")
public class QuestionsDao {	
	@Autowired
	private SqlSessionTemplate sqlSession;		
		/**
		 * 문의사항 글 갯수 가져오기
		 * @return
		 */
	public int getListCount() {	
		return sqlSession.selectOne("questionsMapper.getListCount");
	}
		/**
		 * 문의사항 리스트 가져오기
		 * @param pi
		 * @return
		 */			
	public ArrayList<Questions> selectList(PageInfo pi) {  
		  int offset = (pi.getCurrentPage() -1)* pi.getBoardLimit();
		  RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());	  		
		return (ArrayList)sqlSession.selectList("questionsMapper.selectList",null,rowBounds);
	}
	
	    /**
	     * 문의사항 상세보기
	     * @param qId
	     * @return
	     */
		public Questions questionsSelect(int qId) {			
			return sqlSession.selectOne("questionsMapper.questionsSelect",qId);
		}
		
		/**
		 * 문의사항 카운트
		 * @param qId
		 * @return
		 */
		
		public int updateCount(int qId) {			
			return sqlSession.update("questionsMapper.updateCount",qId);
		}
				
		
		/**
		 * 문의사항 검색글 갯수 가져오기
		 * @param sc
		 * @return 
		 */
		public int getSearchListCount(SearchCondition sc) {
			return sqlSession.selectOne("questionsMapper.getSearchListCount",sc);
		}
		
		/**
		 * 문의사항 검색 리스트 불러오기
		 * @param sc
		 * @param pi
		 * @return
		 */
		public ArrayList<Questions> selectSearchList(SearchCondition sc, PageInfo pi){
			int offset = (pi.getCurrentPage() -1)*pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
			return (ArrayList)sqlSession.selectList("questionsMapper.selectSearchList",sc,rowBounds);
			
		}				
		
		/**
		 * 문의사항 입력
		 * @param n
		 * @return
		 */
		public int questionsInsert(Questions n) {
			return sqlSession.insert("questionsMapper.questionsInsert", n);
		}

		/**
		 * 문의사항 수정하기
		 * @param n
		 * @return
		 */
		public int questionsModify(Questions n) {
			return sqlSession.update("questionsMapper.questionsModify", n);
		}

		/**
		 * 문의사항 삭제하기
		 * @param nId
		 * @return
		 */
		public int questionsDelete(int qId) {
			return sqlSession.update("questionsMapper.questionsDelete", qId);
		}



		
		


}






