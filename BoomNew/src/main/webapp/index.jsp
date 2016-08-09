<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
</head>
<body>
<h2>Hello World!</h2>
<a href="user/2">TESTGETUSER</a>
<a href="register">注册</a>
<a href="/userList">list</a>
<a href="/newsInput">addNews</a>
<form action="login" method="get">
    name:<input type="text" name="name"/><br>
    password:<input type="password" name="password"><br>
    <input type="submit" value="submit"/>
</form>
<br>
</body>
</html>
