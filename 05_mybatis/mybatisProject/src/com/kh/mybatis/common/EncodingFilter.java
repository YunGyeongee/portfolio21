package com.kh.mybatis.common;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class EncodingFilter
 */
@WebFilter(urlPatterns="/*") // 모든 컨트롤러가 이 필터를 거쳐 하나하나 인코딩 할 필요가 없어짐
public class EncodingFilter implements Filter {

    /**
     * Default constructor. 
     */
    public EncodingFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// Servlet 구동 전에 실행하려는 코드 작성
		
		// 요청시 전달값에 한글이 있을 경우 인코딩 작업
		request.setCharacterEncoding("UTF-8");
		
		chain.doFilter(request, response); // 다음 필더가 있다면 그 다음필터 호출, 다음 필터가 없다면 Servlet 호출
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
