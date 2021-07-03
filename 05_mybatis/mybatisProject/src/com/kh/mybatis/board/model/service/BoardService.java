package com.kh.mybatis.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.common.model.vo.PageInfo;

public interface BoardService {
	
	// 1. 게시판 리스트 조회
	int selectListCount();
	ArrayList<Board> selectList(PageInfo pi);
	
	// 2. 게시판 검색 리스트 조회
	int selectSearchListCount(HashMap<String, String> map);
	ArrayList<Board> selectSearchList(HashMap<String, String> map, PageInfo pi);
	
	// 3. 게시글 작성
	int insertBoard(Board b);
	
	// 4. 게시글 상세 조회
	int increaseCount(int boardNo);
	Board selectBoard(int boardNo);
	

}
