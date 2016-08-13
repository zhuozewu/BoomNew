package com.aode.bn.util;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by 匆匆の过客 on 2016/8/8.
 */
public class GetMethodEncodingFilter implements javax.servlet.Filter {
    private String charset = "utf-8";

    public void destroy() {
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest)request;
        req = new GetHttpServletRequestWrapper(req,charset);
        filterChain.doFilter(req, response);
    }

    public void init(FilterConfig filterConfig) throws ServletException {
    }

}
