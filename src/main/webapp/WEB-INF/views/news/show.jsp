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

  </head>
  
  <body>
  <c:if test="${empty requestScope.news }">
  没有任何员工信息
  </c:if>
  <c:if test="${!empty requestScope.news }">
    <table>
      <tr>
        <th>标题</th>
        <th>作者</th>
        <th>发表时间</th>
        <th>内容</th>
        <th>回复数</th>
        <th>图片</th>
        <th>评论</th>
      </tr>
      <tr>
        <td>${news.title}</td>
        <td>${news.author.name}</td>
        <td>${news.postTime}</td>
        <td>${news.content}</td>
        <td>${news.replyCount}</td>
        <td><img src="${news.picUrl}"></td>
        <td><a href="/replyInput/${news.author.id}_${news.nid}_-1">评论</a> </td>
      </tr>
    </table>
  </c:if>
  </body>
</html>
