package com.aode.bn.interceptors;

import com.aode.bn.annotation.Auth;
import org.springframework.http.HttpStatus;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Set;

/**
 * Created by 匆匆の过客 on 2016/8/6.
 * 解决jsp传值到后台乱码问题
 */
public class AuthInterceptor implements HandlerInterceptor{
    public static final String SESSION_USERID = "kUSERID";
    public static final String SESSION_AUTHS = "kAUTHS";
    public void afterCompletion(HttpServletRequest arg0,
                                HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
    }

    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
                           Object arg2, ModelAndView arg3) throws Exception {

    }

    public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1,
                             Object arg2) throws Exception {
        boolean flag = true;
        if (arg2 instanceof HandlerMethod) {
            Auth auth = ((HandlerMethod) arg2).getMethod().getAnnotation(Auth.class);
            if (auth != null) {// 有权限控制的就要检查
                if (arg0.getSession().getAttribute(SESSION_USERID) == null) {// 没登录就要求登录
                    arg1.setStatus(HttpStatus.FORBIDDEN.value());
                    arg1.setContentType("text/html; charset=UTF-8");
                    PrintWriter out=arg1.getWriter();
                    out.write("{\"type\":\"nosignin\",\"msg\":\"请您先登录!\"}");
                    out.flush();
                    out.close();
                    flag = false;
                } else {// 登录了检查,方法上只是@Auth,表示只要求登录就能通过.@Auth("authority")这类型,验证用户权限
                    if (!"".equals(auth.value())) {
                        Set<String> auths = (Set<String>) arg0.getSession().getAttribute(SESSION_AUTHS);
                        if (!auths.contains(auth.value())) {// 提示用户没权限
                            arg1.setStatus(HttpStatus.FORBIDDEN.value());
                            arg1.setContentType("text/html; charset=UTF-8");
                            PrintWriter out=arg1.getWriter();
                            out.write("{\"type\":\"noauth\",\"msg\":\"您没有"+auth.name()+"权限!\"}");
                            out.flush();
                            out.close();
                            flag = false;
                        }
                    }
                }
            }
        }
        return flag;
    }
}

