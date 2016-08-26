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
          <c:if test="${empty requestScope.users }">
              没有任何员工信息
          </c:if>
          <div class="public-content-cont">
              <table class="public-cont-table">
                  <tr>
                      <th style="width:10%">ID</th>
                      <th style="width:15%">用户名</th>
                      <th style="width:15%">岗位</th>
                      <th style="width:20%">查看用户所发表的新闻</th>
                      <th style="width:20%">查看用户所发表的评论</th>
                      <th style="width:10%">修改</th>
                      <th style="width:10%">删除</th>
                  </tr>
                  <c:if test="${!empty requestScope.users }">
                  <c:forEach items="${requestScope.users }" var="user" >
                      <tr>
                          <td>${user.id}</td>
                          <td>${user.name }</td>
                          <td>${user.role.roleName }</td>
                          <td><a href="/findAllNewsByUserId/${user.id}">查看用户所发表的新闻</a></td>
                          <td><a href="/findAllReplyByUserId/${user.id}">查看用户所发表的评论</a></td>
                          <td><a href="/userInput/${user.id}">修改</a></td>
                          <td><a class="delete" href="/news/${news.nid }">删除</a></td>
                      </tr>
                  </c:forEach>
              </table>
              <div class="page">
                  <form action="/userList" method="get">
                      共<span>${page.total}</span>条新闻
                      <a href="/userList?page=${page.firstPage}">首页</a>
                      <a href="/userList?page=${page.prePage}">上一页</a>
                      <a href="/userList?page=${page.nextPage}">下一页</a>
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
      
  </body>
</html>
