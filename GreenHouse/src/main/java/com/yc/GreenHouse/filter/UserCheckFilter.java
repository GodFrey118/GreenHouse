package com.yc.GreenHouse.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;

/**
 * Servlet Filter implementation class UserCheckFilter
 */
@WebFilter("/*")
public class UserCheckFilter implements Filter {

	public void destroy() {	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//做用户校验处理
		String reqUri=((HttpServletRequest)request).getRequestURI();
		if (reqUri.endsWith("manage.jsp")) {
			HttpSession session=((HttpServletRequest)request).getSession();
			Object obj=session.getAttribute("user");
			System.out.println("UserCheckFilter==>"+obj);
			if (obj==null) {
				((HttpServletResponse)response).sendRedirect("/GreenHouse/manager_login.jsp");
			}else {
				chain.doFilter(request, response);
			}
		}else {
			chain.doFilter(request, response);
		}
		
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		LogManager.getLogger().debug("初始化用户校验过滤器处理UserCheckFilter...");
	}

}
