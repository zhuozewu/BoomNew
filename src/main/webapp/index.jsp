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
<a href="roleInput">增加岗位</a>
<a href="roleList">查看岗位</a>
<a href="/newsList">list</a>
<a href="/newsInput">addNews</a>
<form action="login" method="get">
    name:<input type="text" name="name"/><br>
    password:<input type="password" name="password"><br>
    <input type="submit" value="submit"/>
</form>

<form action="test" method="get">
    <script id="container" name="content" type="text/plain">
        这里写你的初始化内容
    </script>
    <!-- 配置文件 -->
    <script type="text/javascript" src="UEditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="UEditor/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('container');
    </script><!-- 配置文件 -->
    <script type="text/javascript" src="UEditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="UEditor/ueditor.all.js"></script>
    <input type="submit" value="submit"/>
</form>
<br>

</body>
</html>
