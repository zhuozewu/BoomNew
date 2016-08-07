<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
</head>
<body>
<h2>Hello World!</h2>
<a href="user/mybatistest">MybatisTest</a>
<a href="user/register">注册</a>
<a href="/user/list">list</a>
<form action="user/login" method="get">
    name:<input type="text" name="name"/><br>
    password:<input type="password" name="password"><br>
    <input type="submit" value="submit"/>
</form>
<br>
</body>
</html>
