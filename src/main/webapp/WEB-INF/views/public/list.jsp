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
                <div style="font-size: larger;color: #9c163e"> 您目前为游客，请先<a href="${pageContext.request.contextPath}/login.jsp">登陆</a>|<a href="${pageContext.request.contextPath}/userInput-2">注册</a> </div>
            </c:if>
            <c:if test="${!empty sessionScope.loginUser}">
                <div style="font-size: larger;color: #9c163e">爆炸新闻网欢迎您 , ${loginUser.name}! | <a href="${pageContext.request.contextPath}/logout">注销</a> </div>
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
                    <li><a href="user/${sessionScope.kUSERID}">用户资料</a></li>
                    <li><a href="findReplyByUserId">用户评论</a></li>
                </ul>
            </li>
        </ul>

        <div id="search">

            <input type="text" class="input" value="" placeholder="Keyword search here...">
            <input type="submit" class="submit" value="Go">

        </div><!-- end #search -->

    </div><!-- end .container -->

</div><!-- end #nav -->

<div id="nav-shadow"></div>

<div id="content">

    <div class="container">

        <div id="main">

            <div class="entry collapsible">

                <c:if test="${empty requestScope.newsList }">
                    没有任何新闻信息
                </c:if>
                    <c:if test="${!empty requestScope.newsList }">
                <c:forEach items="${requestScope.newsList }" var="news" >
                <div class="entry-header">

                    <img src="${news.picUrl}" width="75" height="40" alt="" class="entry-title-image">

                    <h2 class="title">新闻标题：<b style="font-size: 20px"> ${news.title}</b></h2>

                    <p class="meta">发表于 <b>${news.postTime}</b> 由 <b>${news.author.name}</b></p>

                    <a class="button news-trigger" href="#">Read More...</a>

                </div><!-- end .entry-header -->

                <div class="collapsible-content">

                    <div class="entry-content">

                        <div class="zoom align-right">
                            <a class="single_image" href="${news.picUrl}">
                                <img src="${news.picUrl}" width="210" height="210" alt="Texas Trip 2010: Abandoned ranch" class="entry-image" /><br>
                            </a>
                            <p><a href="/news/${news.nid}?key=0">点击查看更多内容</a> </p>
                        </div>
                            <p>${news.content}</p>
                    </div><!-- end .entry-content -->

                    <div class="box-footer"><!-- end .align-left -->

                    </div><!-- end .box-footer -->

                </div><!-- end .collapsible-content -->
                </c:forEach>
                    </c:if>
            </div><!-- end .entry --><!-- end .entry --><!-- end .entry --><!-- end .entry -->

            <ul class="pagination">
                <li class="prev"><a href="/newsList-2?page=${page.prePage}">Prev</a></li>
                <li><a href="/newsList-2?page=${page.prePage}">${page.prePage}</a></li>
                <li class="active"><a href="#">${page.pageNum}</a></li>
                <li><a href="/newsList-2?page=${page.nextPage}">${page.nextPage}</a></li>
                <li class="next"><a href="/newsList-2?page=${page.nextPage}">Next</a></li>
            </ul>
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
