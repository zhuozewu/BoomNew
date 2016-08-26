<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
      <link rel="stylesheet" href="../css/reset.css" />
      <link rel="stylesheet" href="../css/content.css" />
      <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
      <script type="text/javascript">
          $(function(){
              $(".delete").click(function(){
                  var href = $(this).attr("href");
                  $("form").attr("action", href).submit();
                  return false;
              });
          })
      </script>
  </head>

  <body marginwidth="0" marginheight="0">
    <form action="" method="POST">
        <input type="hidden" name="_method" value="DELETE"/>
    </form>
    <div class="container">
    <div class="public-nav">您当前的位置：<a href="">管理首页</a>><a href="">信息管理</a><a href="">所有信息</a></div>
    <div class="public-content">
    <div class="public-content-header">
        <h3>修改网站配置</h3>
    </div>
    <c:if test="${empty requestScope.newsList }">
                              没有任何员工信息
    </c:if>
      <div class="public-content-cont">
      <table class="public-cont-table">
          <tr>
              <th style="width:5%">ID</th>
              <th style="width:10%">标题</th>
              <th style="width:10%">发表时间</th>
              <th style="width:20%">内容</th>
              <th style="width:5%">类型</th>
              <th style="width:10%">作者</th>
              <th style="width:25%">图片</th>
              <th style="width:5%">修改</th>
              <th style="width:5%">删除</th>
          </tr>
        <c:if test="${!empty requestScope.newsList }">
          <c:forEach items="${requestScope.newsList }" var="news" >
                <tr>
                    <td>${news.nid}</td>
                    <td>${news.title }</td>
                    <td>${news.postTime }</td>
                    <td>${news.content }</td>
                    <td>${news.type }</td>
                    <td>${news.author.name }</td>
                    <td><img src="${news.picUrl}" class="thumb"></td>
                    <td><a href="/newsInput/${news.nid }" >修改</a></td>
                    <td><a class="delete" href="/news/${news.nid }">删除</a></td>
                </tr>
          </c:forEach>
      </table>
    <div class="page">
        <form action="/newsList" method="get">
        共<span>${page.total}</span>条新闻
        <a href="/newsList?page=${page.firstPage}">首页</a>
        <a href="/newsList?page=${page.prePage}">上一页</a>
        <a href="/newsList?page=${page.nextPage}">下一页</a>
        第<span style="color:red;font-weight:600">${page.pageNum}</span>页
        共<span style="color:red;font-weight:600">${page.pages}</span>页
        <input type="text" class="page-input" name="page">
        <input type="submit" class="page-btn" value="跳转">
        </form>
    </div>
      </div>
        </c:if>
            </div>
                </div>

  </body>
</html>
