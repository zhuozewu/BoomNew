package com.aode.bn.interceptors;

import com.aode.bn.annotation.Auth;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 * 解决jsp传值到后台乱码问题
 */
public class CharacterEncodingInterceptor implements HandlerInterceptor{
    public void afterCompletion(HttpServletRequest arg0,
                                HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
    }

    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
                           Object arg2, ModelAndView arg3) throws Exception {

    }

    public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
                             Object arg2) throws Exception {
        Auth auth = ((HandlerMethod) arg2).getMethod().getAnnotation(Auth.class);
        boolean flag = true;
        if (auth != null) {// 有权限控制的就要检查
            System.out.println(arg0.getMethod());
            arg0.setCharacterEncoding("UTF-8");
            System.out.println(auth.value());
            flag = true;
        }
        return flag;
    }
}
