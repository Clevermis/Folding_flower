package com.clevermis.filter;

import javafx.collections.SetChangeListener;

import javax.servlet.*;
import java.io.IOException;

/**
 * @program: Folding_flower
 * @description: 字符编码过滤器
 * @author: Clevermis
 * @create: 2021-11-26 22:30
 **/
public class CharacterEncodingfilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
