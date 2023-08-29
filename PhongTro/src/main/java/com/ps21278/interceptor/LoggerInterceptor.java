package com.ps21278.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ps21278.entity.Account;
import com.ps21278.utils.SessionService;

@Service
public class LoggerInterceptor implements HandlerInterceptor{
	
	@Autowired
	SessionService sessionService;
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)	throws Exception {
		//System.out.println("LoggerInterceptor.preHandle()");
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler,	ModelAndView modelAndView) throws Exception {
		Account user = sessionService.get("user");
		if(user!=null) {
			request.setAttribute("isLogin", true);
			request.setAttribute("admin", user.isVaitro());
			request.setAttribute("fullname", user.getHoten());
			request.setAttribute("username", user.getTendangnhap());
//			request.setAttribute("photo", user.get);
			request.setAttribute("email", user.getEmail());
		}else {
			request.setAttribute("isLogin", false);
		}
		//System.out.println("postHandle()->" + request.getRequestURI());
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, 
			HttpServletResponse response, Object handler, Exception ex)	throws Exception {
		//System.out.println("LoggerInterceptor.afterCompletion()");
	}
}

