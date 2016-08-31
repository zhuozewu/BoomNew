<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>login</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/login.css" />
</head>
<body>
<div class="page">
	<div class="loginwarrp">
		<div class="logo">登陆</div>
        <div class="login_form">
			<form id="Login" name="Login" method="post" action="login" enctype="multipart/form-data">
				<li class="login-item">
					<span>用户名：</span>
					<input type="text" name="name" class="login_input">
				</li>
				<li class="login-item">
					<span>密　码：</span>
					<input type="password" name="password" class="login_input">
				</li>
				<li class="login-item verify">
					<span>如果你内部员工请点击此处：</span>
					<a href="login-2.jsp">员工登陆</a>
				</li>
				<div class="clearfix"></div>
				<li class="login-sub">
					<input type="submit" name="Submit" value="登录" />
				</li>                      
           </form>
		</div>
	</div>
</div>
</body>
</html>