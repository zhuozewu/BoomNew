<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="../css/reset.css" />
    <link rel="stylesheet" href="../css/public.css" />
    <link rel="stylesheet" href="../css/content.css" />
</head>

<body>
<a href="picDownload/9">查找图片</a>
<div class="container">
    <div class="public-nav">您当前的位置：<a href="">管理首页</a>></div>
    <div class="public-content">
        <div class="public-content-header">
            <h3>修改网站配置</h3>
        </div>
        <div class="public-content-cont">
            <form:form action="${pageContext.request.contextPath }/role" modelAttribute="role" method="POST" acceptCharset="utf-8" enctype="multipart/form-data">

                <c:if test="${role.id !=null}">
                    <form:hidden path="id"/>
                    <input type="hidden" name="_method" value="PUT"/>
                </c:if>
                <div class="form-group">
                    <label  >岗位名称</label>
                    <form:input path="roleName" class="form-input-txt"/>
                </div>
                <div class="form-group">
                    <label  >岗位详细介绍</label>
                    <form:textarea path="description" class="form-input-textara" style="width:700px;height:300px;"/>
                </div>
                <div class="form-group">
                    <form:checkboxes path="privilegeIds" items="${privilegeMap}" />
                </div>
                <div class="form-group" style="margin-left:150px;">
                    <input type="submit" class="sub-btn" value="提  交" />
                    <input type="reset" class="sub-btn" value="重  置" />
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>