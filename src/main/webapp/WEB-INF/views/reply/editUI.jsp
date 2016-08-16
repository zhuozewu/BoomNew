<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  </head>
  
  <body>
  <form:form action="${pageContext.request.contextPath }/reply" modelAttribute="reply" method="POST" acceptCharset="utf-8">
      <c:if test="${reply.rid !=null}">
          <form:hidden path="rid"/>
          <input type="hidden" name="_method" value="PUT"/>
      </c:if>
	  <form:textarea path="content"/>
	<input type="submit" value="Submit"/>
  </form:form>
  </body>
</html>
