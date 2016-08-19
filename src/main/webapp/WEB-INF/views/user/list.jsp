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
    <c:if test="${empty requestScope.users }">
                              没有任何员工信息
    </c:if>
  <c:if test="${!empty requestScope.users }">
      <table border="1" cellpadding="10" cellspacing="0">
          <tr>
              <th>name</th>
              <th>password</th>
              <th>岗位</th>
              <th>查看用户所发表的新闻</th>
              <th>修改</th>
              <th>删除</th>
          </tr>

          <c:forEach items="${requestScope.users }" var="user">
                <tr>
                    <td>${user.name }</td>
                    <td>${user.password }</td>
                    <td>${user.role.roleName }</td>
                    <td><a href="/userInput/${user.id}">修改</a></td>
                    <td><a class="delete" href="/user/${user.id}">删除</a></td>
                    <td><a href="/findAllNewsByUserId/${user.id}">查看用户所发表的新闻</a></td>
                    <td><a href="/findAllReplyByUserId/${user.id}">查看用户所发表的新闻</a></td>
                </tr>
          </c:forEach>

      </table>
  </c:if>
      
  </body>
</html>
