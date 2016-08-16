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
  
  <body>
    <form action="" method="POST">
        <input type="hidden" name="_method" value="DELETE"/>
    </form>
    <c:if test="${empty requestScope.newsList }">
                              没有任何员工信息
    </c:if>
  <c:if test="${!empty requestScope.newsList }">
      <table border="1" cellpadding="10" cellspacing="0">
          <tr>
              <th>id</th>
              <th>title</th>
              <th>content</th>
              <th>postTime</th>
              <th>type</th>
              <th>replyCount</th>
              <th>status</th>
              <th>author</th>
              <th>修改</th>
              <th>删除</th>
              <th>评论</th>
              <th>查看所有评论</th>
          </tr>

          <c:forEach items="${requestScope.newsList }" var="news" >
                <tr>
                    <td>${news.nid}</td>
                    <td>${news.title }</td>
                    <td>${news.content }</td>
                    <td>${news.postTime }</td>
                    <td>${news.type }</td>
                    <td>${news.replyCount }</td>
                    <td>${news.status }</td>
                    <td>${news.author.name }</td>
                    <td><a href="/newsInput/${news.nid }" >修改</a></td>
                    <td><a class="delete" href="/news/${news.nid }">删除</a></td>
                    <!--利用ant风格的格式来传值-->
                    <td><a href="/replyInput/${news.author.id}_${news.nid}_-1">评论</a></td>
                    <td><a href="/allReplyByNewsId/${news.nid}">查看该新闻所有评论</a></td>
                </tr>
          </c:forEach>

      </table>
      <a href="/newsInput" >addNews</a>
  </c:if>
      
  </body>
</html>
