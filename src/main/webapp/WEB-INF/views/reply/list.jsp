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
    <c:if test="${empty requestScope.replys }">
                              没有任何员工信息
    </c:if>
  <c:if test="${!empty requestScope.replys }">
      <table border="1" cellpadding="10" cellspacing="0">
          <tr>
              <th>id</th>
              <th>title</th>
              <th>content</th>
              <th>postTime</th>
              <th>replyCount</th>
              <th>author</th>
              <th>删除</th>
              <th>评论</th>
          </tr>

          <c:forEach items="${requestScope.replys }" var="reply" >
                <tr>
                    <td>${reply.rid}</td>
                    <td>${reply.news.title }</td>
                    <td>${reply.content }</td>
                    <td>${reply.postTime }</td>
                    <td>${reply.replyCount }</td>
                    <td>${reply.author.name }</td>
                    <td><a class="delete" href="/news/${reply.rid }">删除</a></td>
                    <!--利用ant风格的格式来传值-->
                    <td><a href="/replyInput/${reply.author.id}_-1_${reply.rid}">评论</a></td>
                </tr>
          </c:forEach>

      </table>
  </c:if>
      
  </body>
</html>
