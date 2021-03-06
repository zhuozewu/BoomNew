
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

            <a href="#?ref=smuliii"><img src="http://envato.s3.amazonaws.com/referrer_adverts/tf_468x60_v4.gif" alt="tf_468x60_v4" /></a>

        </div><!-- end #header-ads -->

    </div><!-- end .container -->

</div><!-- end #header -->

<div id="nav">


    <div class="container">

        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="#">Categories</a>
                <ul>
                    <li><a href="#">Photography</a></li>
                    <li><a href="#">Private Portfolios</a></li>
                    <li><a href="#">My Travels</a></li>
                    <li><a href="#">Family Travel Guide</a></li>
                    <li><a href="#">Fly&amp;Drive Guides</a></li>
                    <li><a href="#">Tropical Destinations</a></li>
                    <li><a href="#">Mountain Destionations</a></li>
                </ul>
            </li>
            <li><a href="#">Destinations</a></li>
            <li><a href="#">Community</a></li>
            <li class="active"><a href="#">Premade Pages</a>
                <ul>
                    <li><a href="single-post.html">Single Post</a></li>
                    <li><a href="single-page.html">Single Page</a></li>
                    <li><a href="archives.html">Archives</a></li>
                    <li><a href="news.html">News</a></li>
                    <li><a href="gallery.html">Gallery</a></li>
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

            <div id="respond" class="box">

                <div class="box-header">

                    <h6 class="align-left">Leave a <span>Comment</span></h6>

                    <p class="align-right">
                        <strong><a href="#">Login to send reply</a></strong>
                    </p>

                </div>

                <form method="post" action="${pageContext.request.contextPath }/reply" id="comment-form" class="form clearfix" modelAttribute="reply" method="POST" enctype="multipart/form-data">
                    <div class="input_block">
                        <p>
                            <label for="comment">Comments <span>(Use valid HTML tags)</span></label>
                            <textarea id="comment" rows="10" cols="45" class="input" name="content"></textarea>
                        </p>

                        <p>
                            <input type="submit" name="submit" value="Submit" class="submit" />
                        </p>
                    </div>

                </form>

            </div><!-- end #respond --><!-- end #main --><!-- end #sidebar -->

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
</body>
</html>
