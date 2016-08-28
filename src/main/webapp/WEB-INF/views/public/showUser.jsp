<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>

    <link rel="stylesheet" href="../css/reset.css" type="text/css" media="screen" />

    <!--[if ! lte IE 6]><!-->
    <link rel="stylesheet" href="../css/style.css" type="text/css" media="screen" />
    <!--<![endif]-->

    <!--[if gt IE 6]>
    <link rel="stylesheet" href="../css/ie.css" type="text/css" media="screen" />
    <![endif]-->

    <!--[if IE 7]>
    <link rel="stylesheet" href="../css/ie7.css" type="text/css" media="screen" />
    <![endif]-->

    <!--[if lte IE 6]>
    <link rel="stylesheet" href="http://universal-ie6-css.googlecode.com/files/ie6.1.1.css" media="screen, projection">
    <![endif]-->

    <link rel="stylesheet" href="../css/fancybox.css" type="text/css" media="screen" />
</head>
<body>


</div><!-- end #header-top -->

<div id="header">

    <div class="container">

        <h1 id="logo">
            <a href="index.html">
                <img src="img/logo.png" alt="Travel Guide">
            </a>
        </h1>

        <div id="header-ads">
            <c:if test="${empty sessionScope.loginUser}">
                <div style="font-size: larger;color: #9c163e"> 您目前为游客，请先<a href="${pageContext.request.contextPath}/login.jsp">登陆</a></div>
            </c:if>
            <c:if test="${!empty sessionScope.loginUser}">
                <div style="font-size: larger;color: #9c163e">爆炸新闻网欢迎您 , ${loginUser.name}!</div>
            </c:if>
        </div>

    </div><!-- end .container -->

</div><!-- end #header -->

<div id="nav">

    <div class="container">

        <ul>
            <li><a href="/newsList-2">新闻首页</a></li>
            <li><a href="#">新闻分类</a>
                <ul>
                    <c:if test="${empty sessionScope.types }">
                        <li>没有任何分类信息</li>
                    </c:if>
                    <c:if test="${!empty sessionScope.types }">
                        <c:forEach items="${sessionScope.types }" var="type" >

                            <li><a href="/newsList-2?type=${type}">${type}</a></li>
                        </c:forEach>
                    </c:if>
                </ul>
            </li>
            <li class="active"><a href="#">用户中心</a>
                <ul>
                    <li><a href="userShow?userId=${sessionScope.kUSERID}">用户资料</a></li>
                    <li><a href="findReplyByUserId">用户评论</a></li>
                </ul>
            </li>
        </ul>

        <div id="search"></div><!-- end #search -->

    </div><!-- end .container -->

</div><!-- end #nav -->

<div id="nav-shadow"></div>

<div id="content">

    <div class="container">

        <div id="main">

            <div class="entry collapsible">
                <c:if test="${empty requestScope.user}">
                    没有用户信息
                </c:if>
                <c:if test="${!empty requestScope.user}">
                    <table width="1320" height="113" border="2" align="center" cellpadding="1" cellspacing="1">
                        <tr>
                            <th width="84"><strong><em>名字</em></strong></th>
                            <th width="88"><em><strong>密码</strong></em></th>
                            <th width="143"><strong><em>岗位</em></strong></th>
                            <th width="191"><strong><em>查看用户所发表的评论</em></strong></th>
                        </tr>
                        <tr>
                            <td width="84" align="center">${user.name}</td>
                            <td width="88" align="center">${user.password }</td>
                            <td width="143" align="center" >${user.role.roleName }</td>
                            <td width="191" align="center"><blockquote>
                              <p><a href="/findAllReplyByUserId/${user.id}">查看用户所发表的评论</a></p>
                            </blockquote></td>
                        </tr>

                    </table>
                </c:if>

            </div>
        </div><!-- end #main --><!-- end #sidebar -->

        <div class="clear"></div>

    </div><!-- end .container -->

</div><!-- end #content --><!-- end #footer -->
<!-- start scripts -->
<script src="js/jquery.min-2.js"></script>
<script src="js/jquery.cycle.all.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/organictabs.jquery.js"></script>
<script src="js/jquery.fancybox-1.3.4.pack.js"></script>
<script src="js/css3-mediaqueries.js"></script>
<script src="js/custom.js"></script>
<!--[if IE]> <script src="js/selectivizr.js"></script> <![endif]-->
<!-- end scripts -->
</body>
</html>