package com.kh.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.model.vo.User;

/**
 * Servlet implementation class JqAjaxServlet3
 */
@WebServlet("/jqAjax3.do")
public class JqAjaxServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JqAjaxServlet3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 요청시 전달값 (조회하고자 하는 회원번호)
		int no = Integer.parseInt(request.getParameter("no"));
	
		// 요청 처리를 위한 서비스 호출
		//User findUser = new UserService().selectUser(no);
		// 위의 내용이 실행되서 조회된 데이터가 담긴 User객체가 아래와같다는 가정하에
		User findUser = new User(1, "박철수", 30, "남");
		//response.getWriter().print(findUser); // findUser.toString()
		
		/*
		 * * JSON (JavaScript Object Notation : 자바스크립트 객체 표기법)
		 * - { key:value, key:value, ... }
		 * 
		 * - 라이브러리 필요 (https://code.google.com/archive/p/json-simple/downloads)
		 * 
		 */
		/*
		JSONObject jsonUser = new JSONObject(); // {}
		jsonUser.put("no", findUser.getNo());	// {no:1}
		jsonUser.put("name", findUser.getName()); // {no:1, name:"박철수"}
		jsonUser.put("age", findUser.getAge()); // {no:1, name:"박철수", age:30}
		jsonUser.put("gender", findUser.getGender()); // {no:1, name:"박철수", age:30, gender:"남"}
		
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().print(jsonUser);
		*/
		
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(findUser, response.getWriter());
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
