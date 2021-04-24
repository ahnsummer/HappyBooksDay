package com.kh.book.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.kh.book.model.dao.BookDao;
import com.kh.book.model.vo.Book;
import com.kh.book.model.vo.Image;
import com.kh.book.model.vo.Review;

public class BookService {
	
	public ArrayList<Book> selectBookList(int bookNo){
		
		Connection conn = getConnection();
		
		ArrayList<Book> list = new BookDao().selectBookList(conn, bookNo);
		
		close(conn);
		
		return list;
	}
	
	public Book bookDetail(int bookNo) {
		
		Connection conn = getConnection();
		Book b = new BookDao().bookDetail(conn, bookNo);
		
		close(conn);
		return b;
		
	}
	
	public Image bookInfoImg(int bookNo) {
		
		Connection conn = getConnection();
		Image i = new BookDao().bookInfoImg(conn, bookNo);
		
		close(conn);
		return i;
		
	}
	

	public ArrayList<Review> selectReviewList(int bookNo){
		
		Connection conn = getConnection();
		ArrayList<Review> list = new BookDao().selectReviewList(conn, bookNo);
		
		close(conn);
		return list;
	}
	
	
	
	
}
