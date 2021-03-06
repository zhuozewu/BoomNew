<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  </head>
  
  <body>
  <form:form action="${pageContext.request.contextPath }/news" modelAttribute="news" method="POST" acceptCharset="utf-8">
      <c:if test="${news.nid !=null}">
          <form:hidden path="nid"/>
          <input type="hidden" name="_method" value="PUT"/>
      </c:if>
	  <form:input path="title"/>
	  <form:textarea path="content"/>
      <form:input path="type"/>
      <form:select path="author.id" items = "${users}" itemLabel="name" itemValue="id">
      </form:select>
      <input type="file">
	<input type="submit" value="Submit"/>
  </form:form>
  </body>
</html>
