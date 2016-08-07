<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
  <head>
    <title>My JSP 'register.jsp' starting page</title>
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  </head>
  
  <body>
  <form:form action="user/addUser" modelAttribute="user" method="POST">
	<form:input path="name"/>   
	<form:password path="password"/>
	<input type="submit" value="注册"/>
  </form:form>
  </body>
</html>
