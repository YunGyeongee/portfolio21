package com.kh.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.model.vo.User;

/**
 * Servlet implementation class JqAjaxServlet4
 */
@WebServlet("/jqAjax4.do")
public class JqAjaxServlet4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JqAjaxServlet4() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//ArrayList<User> list = new UserService().selectList();
		
		// 위와 같이 실행됐다는 User 직접 샘플 데이터 담기
		ArrayList<User> list = new ArrayList<>();
		list.add(new User(1, "박철수", 30, "남")); // JSONObjexct {}
		list.add(new User(2, "김영희", 26, "여")); // JSONObjexct {}
		list.add(new User(3, "오영심", 32, "여")); // JSONObjexct {}
		list.add(new User(4, "송중기", 34, "남")); // JSONObjexct {}
		list.add(new User(5, "홍길동", 23, "남")); // JSONObjexct {}
		// JSONArray [{}{}{}{}{}]
		
		//reponse.getWriter().print(list/*.toString()*/);
		
		/*
		JSONArray jArr = new JSONArray();
		for(User u : list) {
			JSONObject jObj = new JSONObject();
			jObj.put("no", u.getNo()); // {no:x}
			jObj.put("name", u.getName()); // {no:x, name:xxx}
			jObj.put("age", u.getAge()); // {no:x, name:xxx, age:xx}
			jObj.put("gender", u.getGender()); // {no:x, name:xxx, age:xx, gerder:x}
			
			jArr.add(jObj);
			
		}
		
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().print(jArr);
		*/
		
		// GSON (Google JSON) 이용하면 보다 쉽게 응답할 수 있음
		// http://mvnrepository.com/artifact/com.google.code.gson/gson/2.8.2
		response.setContentType("application/json; charset=UTF-8");
		new Gson().toJson(list, response.getWriter()); // 응답할 객체, 응답 할 스트림
		// 내부적으로 json객체로 변환시 그 때의 키값은 User클래스의 필드명으로 셋팅
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
