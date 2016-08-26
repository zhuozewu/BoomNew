<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html>
<head>
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/public.css">
    <script src="js/jquery.min.js"></script>
    <script>
        $.ajax({
            type:"POST",
            url:"findAllPrivilege",
        });

        $().ready(function(){
            var item = $(".public-ifame-item");

            for(var i=0; i < item.length; i++){
                $(item[i]).on('click',function(){
                    $(".ifame-item-sub").hide();
                    if($(this.lastElementChild).css('display') == 'block'){
                        $(this.lastElementChild).hide()
                        $(".ifame-item-sub li").removeClass("active");
                    }else{
                        $(this.lastElementChild).show();
                        $(".ifame-item-sub li").on('click',function(){
                            $(".ifame-item-sub li").removeClass("active");
                            $(this).addClass("active");
                        });
                    }
                });
            }
        });
    </script>

</head>
<body>
<h2>Hello World!</h2>
<%--<a href="user/2">TESTGETUSER</a>
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
</form>--%>
<div class="public-header-warrp">
    <div class="public-header">
        <div class="content">
            <div class="public-header-logo"><a href=""><i>LOGO</i><h3>奥德科技</h3></a></div>
            <div class="public-header-admin fr">
                <p class="admin-name">****管理员 您好！</p>
                <div class="public-header-fun fr">
                    <a href="" class="public-header-man">管理</a>
                    <a href="" class="public-header-loginout">安全退出</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
<!-- 内容展示 -->
<div class="public-ifame mt20">
    <div class="content">
        <!-- 内容模块头 -->
        <div class="public-ifame-header">
            <ul>
                <li class="ifame-item logo">
                    <div class="item-warrp">
                        <a href="#"><i>LOGO</i>
                            <h3 class="logo-title">爆炸新闻，只为爆炸为生</h3>
                            <p class="logo-des">创建于 2016/8/22 22:22:47</p>
                        </a>
                    </div>
                </li>
                <li class="ifame-item"><div class="item-warrp"><span>卓泽武<br>VIP有效期：</span></div></li>
                <div class="clearfix"></div>
            </ul>
        </div>
        <div class="clearfix"></div>
        <!-- 左侧导航栏 -->
        <div class="public-ifame-leftnav">
            <div class="public-title-warrp">
                <div class="public-ifame-title ">
                    <a href="">首页</a>
                </div>
            </div>
            <ul class="left-nav-list">
                <li class="public-ifame-item">
                    <a href="javascript:;">用户管理</a>
                    <div class="ifame-item-sub">
                        <ul>
                            <li class="active"><a href="/userList" target="content">用户列表</a></li>
                            <li><a href="/userInput" target="content">增加用户</a></li>
                            <li><a href="/roleList" target="content">岗位管理</a></li>
                            <li><a href="/roleInput" target="content">增加岗位</a></li>
                        </ul>
                    </div>
                </li>
                <li class="public-ifame-item">
                    <a href="javascript:;">新闻管理</a>
                    <div class="ifame-item-sub">
                        <ul>
                            <li><a href="/newsList" target="content">新闻列表</a></li>
                            <li><a href="/newsInput" target="content">增加新闻</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <!-- 右侧内容展示部分 -->
        <div class="public-ifame-content">
            <iframe name="content" src="main.html" frameborder="0" id="mainframe" scrolling="yes" marginheight="0" marginwidth="0" width="100%" style="height: 700px;"></iframe>
        </div>
    </div>
</div>
</body>
</html>
