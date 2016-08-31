<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">

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
<body><!-- end #header-top -->

<div id="header">

    <div class="container">

        <h1 id="logo">
            <a href="index.html">
                <img src="${pageContext.request.contextPath}/img/logo.png" alt="Travel Guide">
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

            <div class="entry single"><!-- end .entry-header --><!-- end .entry-content --><!-- end .box-footer -->

                <div class="box-footer"><!-- end .align-left --><!-- end .align-right -->

                </div><!-- end .box-footer -->

            </div><!-- end .entry -->
            <div id="comments">
            <ol class="comments-list">
            <c:if test="${empty requestScope.replys }">
                没有任何员工信息
            </c:if>
            <c:if test="${!empty requestScope.replys }">
            <c:forEach items="${requestScope.replys}" var="reply1">

                    <li class="comment">

                        <div class="comment-avatar">
                            <img src="http://1.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=60" width="60" height="60" alt="Gravatar" class="avatar" />
                        </div>
                        <div class="comment-body">

                            <div class="comment-meta">

                                发表者：<b>${reply1.author.name}</b>, <span class="date">${reply1.postTime}</span>

                            </div>
                            <!-- .comment-meta -->
                            <p>${reply1.content}</p>

                            <c:if test="${!empty reply1.news}">

                            <ul class="comment-links">
                                <li><a href="/replyInput/${sessionScope.kUSERID}_-1_${reply1.rid}">Reply</a></li>
                                <li><a href="/findSonReplyByRid/${reply1.rid}">查看评论此评论的评论</a></li>
                            </ul>
                            </c:if>
                            <!-- .comment-links -->

                        </div>
                        <!-- .comment-body -->
                </li>
                </c:forEach>
                     </c:if>
            </ol>
            </div>

            <ul class="pagination">
                <li class="prev"><a href="${pageContext.request.contextPath}/findSonReplyByRid/${sessionScope.rid}?page=${page.prePage}">Prev</a></li>
                <li><a href="${pageContext.request.contextPath}/findSonReplyByRid/${sessionScope.rid}?page=${page.prePage}">${page.prePage}</a></li>
                <li class="active"><a href="#">${page.pageNum}</a></li>
                <li><a href="${pageContext.request.contextPath}/findSonReplyByRid/${sessionScope.rid}?page=${page.nextPage}">${page.nextPage}</a></li>
                <li class="next"><a href="${pageContext.request.contextPath}/findSonReplyByRid/${sessionScope.rid}?page=${page.nextPage}">Next</a></li>
            </ul>

            <c:if test="${!empty sessionScope.nid}">
            <div id="respond" class="box">

                <div class="box-header">

                    <h6 class="align-left">Leave a <span>Comment</span></h6>

                    <p class="align-right">
                        <strong><a href="#">Login to send reply</a></strong>
                    </p>

                </div>
                <div class="align-left">
                <form  method="post" action="${pageContext.request.contextPath }/reply" id="comment-form" class="form clearfix">

                        <p>
                            <label for="comment">Comments <span>(Use valid HTML tags)</span></label>
                            <textarea id="comment" rows="10" cols="45" name="content"></textarea>
                        </p>
                            <input type="submit" value="Submit"/>
                </form>
                </div>
            </div><!-- end #respond --><!-- end #main --><!-- end #sidebar -->
            </c:if>

        </div>
        <div class="clear"></div>

    </div><!-- end .container -->

</div><!-- end #content -->

<div id="footer"><!-- end .container -->

</div><!-- end #footer --><!-- end #footer-bottom -->

<!-- start scripts -->
<script src="${pageContext.request.contextPath}/js/jquery.min-2.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.cycle.all.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/js/organictabs.jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox-1.3.4.pack.js"></script>
<script src="${pageContext.request.contextPath}/js/css3-mediaqueries.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
<!--[if IE]> <script src="${pageContext.request.contextPath}js/selectivizr.js"></script> <![endif]-->
<!-- end scripts -->
<script src="../kingediter/kindeditor-all-min.js"></script>
<script src="../js/laydate.js"></script>
<script>
    KindEditor.ready(function(K) {
        window.editor = K.create('#comment');
    });
</script>
</body>
</html>
