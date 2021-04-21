package com.kh.notice.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.vo.Notice;

public class NoticeService {
	/*
	public int selectListCount() {
		Connection conn = getConnection();
		int listCount = new NoticeDao().selectListCount(conn);
		
		if(listCount>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return listCount;
	}
*/

	
	public ArrayList<Notice> selectNotcieList(/*PageInfo pi*/){
		Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectNoticeList(conn/*, pi*/);
		
		close(conn);
		return list;
	}

}
