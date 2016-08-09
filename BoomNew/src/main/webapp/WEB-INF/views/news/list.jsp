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
              <th>title</th>
              <th>content</th>
              <th>postTime</th>
              <th>type</th>
              <th>replyCount</th>
              <th>status</th>
              <th>author</th>

          </tr>

          <c:forEach items="${requestScope.newsList }" var="news">
                <tr>
                    <td>${news.title }</td>
                    <td>${news.content }</td>
                    <td>${news.postTime }</td>
                    <td>${news.type }</td>
                    <td>${news.replyCount }</td>
                    <td>${news.status }</td>
                    <td>${news.author }</td>
                    <td><a href="/newsInput/${news.id}">修改</a></td>
                    <td><a class="delete" href="/news/${news.id}">删除</a></td>
                </tr>
          </c:forEach>

      </table>
  </c:if>
      
  </body>
</html>
