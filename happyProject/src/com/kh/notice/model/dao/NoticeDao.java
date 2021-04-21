package com.kh.notice.model.dao;

import static com.kh.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.model.vo.PageInfo;
import com.kh.notice.model.vo.Notice;

public class NoticeDao {
	
	private Properties prop = new Properties();
	
	public NoticeDao() {
		
		String fileName = NoticeDao.class.getResource("/sql/notice/notice-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/*
	public int selectListCount(Connection conn) {
		// select문 => ResultSet객체(총게시글갯수 == 정수)
		int listCount =0;
		
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectListCount");
		try {
			pstmt=conn.prepareStatement(sql);
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt("LISTCOUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}
	*/
	
	public ArrayList<Notice> selectNoticeList(Connection conn/*, PageInfo pi*/){
		
		ArrayList<Notice> list = new ArrayList<>();
		PreparedStatement pstmt =null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNoticeList"); 
		
		try {
			pstmt = conn.prepareStatement(sql); // 
			/*
			pstmt.setInt(1, (pi.getCurrentPage()-1) * pi.getBoardLimit() +1);
			pstmt.setInt(2, pi.getCurrentPage() * pi.getBoardLimit());
			*/
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				list.add(new Notice(rset.getInt("NO_NO"),
									rset.getString("NO_TITLE"),
									rset.getString("MEM_ID"),
									rset.getInt("NO_COUNT"),
									rset.getDate("NO_DATE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
		
	}
	
	
}
