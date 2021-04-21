package com.kh.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.notice.model.dao.FaqDao;
import com.kh.notice.model.vo.Faq;
import static com.kh.common.JDBCTemplate.*;

public class FaqService {
	
	public ArrayList<Faq> selectFaqList(){
		Connection conn = getConnection();
		
		ArrayList<Faq> list = new FaqDao().selectFaqList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	
	public int insertFaq(Faq f) {
		Connection conn = getConnection();
		int result = new FaqDao().insertFaq(conn, f);
		
		close(conn);
		
		return result;
	}
	
	public int increaseCount(int faNo) {
		Connection conn = getConnection();
		int result = new FaqDao().increaseCount(conn, faNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
	}
	
	
	public Faq selectFaq(int faNo) {
		Connection conn = getConnection();
		Faq f = new FaqDao().selectFaq(conn, faNo);
			
			close(conn);
			
			return f;
		}
		
	
	
	

}