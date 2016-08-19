<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  </head>
  
  <body>
  <form:form action="${pageContext.request.contextPath }/user" modelAttribute="user" method="POST" acceptCharset="utf-8">
      <c:if test="${user.id !=null}">
          <form:hidden path="id"/>
          <input type="hidden" name="_method" value="PUT"/>
      </c:if>
	<form:input path="name"/>
	<form:password path="password"/>
	<input type="submit" value="Submit"/>
  </form:form>
  <table>
    <c:if test="${roles !=null}">

            <tr>
                <th>岗位</th>
                <th>为用户设立岗位</th>
            </tr>
        <c:forEach items="${requestScope.roles}" var="role">
            <tr>
                 <td>${role.roleName }</td>
                 <td><a href="${pageContext.request.contextPath }/setRole/${user.id}_${role.id}">为用户设立岗位</a></td>
             </tr>

        </c:forEach>
    </c:if>
  </table>
  </body>
</html>
