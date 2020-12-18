<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">
<head>
    <!-- Basic need -->
    <title>Open Pediatrics</title>
    <meta charset="UTF-8">
    <meta name="referrer" content="no-referrer">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
    <!-- Mobile specific meta -->
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone-no">

    <!-- CSS files -->
    <link rel="stylesheet" href="css/plugins.css">
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<!--preloading-->
<div id="preloader">
    <img class="logo" src="images/logo1.png" alt="" width="119" height="58">
    <div id="status">
        <span></span>
        <span></span>
    </div>
</div>
<!--end of preloading-->
<!--login form popup-->
<div class="login-wrapper" id="login-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <c:if test="${sessionScope.uName!=null}">
            <h3>是否确认登出？</h3>
            <form method="post" action="logoutServlet">
                <div class="row">
                    <button type="submit">确认</button>
                </div>
            </form>
        </c:if>
        <c:if test="${sessionScope.uName==null}">
            <h3>登录</h3>
            <form method="post" action="loginServlet">
                <div class="row">
                    <label for="username">
                        用户名:
                        <input type="text" name="username" id="username" placeholder="Type username"
                               pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,20}$" required="required"/>
                    </label>
                </div>
                <div class="row">
                    <label for="password">
                        密码:
                        <input type="password" name="password" id="password" placeholder="Type pawword"
                               pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
                               required="required"/>
                    </label>
                </div>
                <div class="row">
                    <div class="remember">
                        <div>
                            <input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
                        </div>
                        <a href="#">忘记密码 ?</a>
                    </div>
                </div>
                <div class="row">
                    <button type="submit">登录</button>
                </div>
            </form>
            <div class="row">
                <p>其他登陆方式</p>
                <div class="social-btn-2">
                    <a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
                    <a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
                </div>
            </div>
        </c:if>
    </div>
</div>
<!--end of login form popup-->
<!--signup form popup-->
<div class="login-wrapper" id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
        <c:if test="${sessionScope.uName!=null}">
            <h3>欢迎,${sessionScope.uName}!</h3>
        </c:if>
        <c:if test="${sessionScope.uName==null}">
            <h3>注册</h3>
            <form method="post" action="signupServlet">
                <div class="row">
                    <label for="username-2">
                        用户名:
                        <input type="text" name="username" id="username-2" placeholder="请使用字母和数字且开头为字母并大于三位"
                               pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,20}$" required="required"/>
                    </label>
                </div>
                <div class="row">
                    <label for="email-2">
                        邮箱:
                        <input type="text" name="email" id="email-2" placeholder="请输入正确的邮箱格式"
                               pattern="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" required="required"/>
                    </label>
                </div>
                <div class="row">
                    <label for="password-2">
                        密码:
                        <input type="password" name="password" id="password-2" placeholder="密码需要大于8位且包括大小写字母与数字"
                               pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
                               required="required"/>
                    </label>
                </div>
                <div class="row">
                    <label for="repassword-2">
                        重复密码:
                        <input type="password" name="repassword" id="repassword-2" placeholder="请重复你输入的密码"
                               pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
                               required="required"/>
                    </label>
                </div>
                <div class="row">
                    <button type="submit">注册</button>
                </div>
            </form>
        </c:if>
    </div>
</div>
<!--end of signup form popup-->

<!-- BEGIN | Header -->
<header class="ht-header">
    <div class="container">
        <nav class="navbar navbar-default navbar-custom">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header logo">
                <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <div id="nav-icon1">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <a href="index.jsp"><img class="logo" src="images/logo1.png" alt="" width="119" height="58"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav flex-child-menu menu-left">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1"  href="index.jsp">
                            主页
                        </a>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-hover="dropdown" href="bloglist.jsp">
                            新闻
                        </a>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            我的信息 <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="userfavoritegrid.jsp">我的最爱</a></li>
                            <li><a href="userprofile.jsp">修改信息</a></li>
                            <li class="it-last"><a href="userrate.jsp">我的评分</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav flex-child-menu menu-right">
                    <li><a href="#">帮助</a></li>
                    <c:if test="${sessionScope.uName!=null}">
                        <li class="loginLink"><a href="#">登出</a></li>
                        <li class="btn signupLink"><a href="#">${sessionScope.uName}</a></li>
                    </c:if>
                    <c:if test="${sessionScope.uName==null}">
                        <li class="loginLink"><a href="#">登陆</a></li>
                        <li class="btn signupLink"><a href="#">注册</a></li>
                    </c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <!-- top search form -->
        <form action="findMovieList" method="post">
            <div class="top-search">
                <select name="fchoose">
                    <option value="mName">影名</option>
                    <option value="actor">明星</option>
                </select>
                <input type="text" name="search" placeholder="请选择左侧搜索方式再进行搜索。">
            </div>
        </form>
    </div>
</header>
<!-- END | Header -->

<div class="hero common-hero">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="hero-ct">
                    <h1> 电影搜索 - 列表</h1>
                    <ul class="breadcumb">
                        <li class="active"><a href="index.jsp">主页</a></li>
                        <li> <span class="ion-ios-arrow-right"></span> 电影搜索</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="page-single movie_list">
    <div class="container">
        <div class="row ipad-width2">
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="topbar-filter">
                    <p>一共发现 <span>${sessionScope.num} </span>部电影</p>
                </div>
                <c:forEach var="mList" items="${requestScope.mList}">
                    <div class="movie-item-style-2">
                        <img src=${mList.img} class="eval-self-photo" alt=""onerror="onerror=null;src='images/noImg.jpg'">
                        <div class="mv-item-infor">
                            <h6><a href="showMovie?movieid=${mList.id}">${mList.name} <span>(${mList.year})</span></a></h6>
                            <p class="rate"><i class="ion-android-star"></i><span>${mList.rate}</span> /10</p>
                            <p style="display: -webkit-box;-webkit-line-clamp:3;-webkit-box-orient: vertical;overflow: hidden;border-bottom: 1px solid #405266;margin-bottom: 25px;">${mList.summary}</p>
                            <p class="run-time"> 标签: ${mList.genre}  </p>
                            <p>地区: ${mList.country}</p>
                        </div>
                    </div>
                </c:forEach>
                <div class="topbar-filter">
                    <label>每页有电影:</label>
                    <select>
                        <option value="range">5 部</option>
                    </select>
                    <div class="pagination2">
                        <c:set var="page" value="${requestScope.page}" scope="request"/>
                        <c:set var="num" value="${sessionScope.num}" scope="session"/>
                        <c:if test="${page==1&&num<=5}">
                            <span>Page:</span>
                            <a class="active" href="#">${page}</a>
                        </c:if>
                        <c:if test="${page==1&&num>5}">
                        <span>Page:</span>
                        <a class="active" href="#">${page}</a>
                        <a href="PageServlet?page=${page+1}&&pmop=movie">${page+1}</a>
                        </c:if>
                        <c:if test="${page!=1&&num>page*5}">
                            <span>Page:</span>
                            <a href="PageServlet?page=${page-1}&&pmop=movie">${page-1}</a>
                            <a class="active" href="#">${page}</a>
                            <a href="PageServlet?page=${page+1}&&pmop=movie">${page+1}</a>
                        </c:if>
                        <c:if test="${page!=1&&num<=page*5}">
                            <span>Page:</span>
                            <a href="PageServlet?page=${page-1}&&pmop=movie">${page-1}</a>
                            <a class="active" href="#">${page}</a>
                        </c:if>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="sidebar">
                    <div class="sb-facebook sb-it">
                        <h4 class="sb-title">Find us on Facebook</h4>
                        <iframe src="" data-src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fhaintheme%2F%3Ffref%3Dts&tabs=timeline&width=340&height=315px&small_header=true&adapt_container_width=false&hide_cover=false&show_facepile=true&appId"  height="315" style="width:100%;border:none;overflow:hidden" ></iframe>
                    </div>
                    <div class="sb-twitter sb-it">
                        <h4 class="sb-title">Tweet to us</h4>
                        <div class="slick-tw">
                            <div class="tweet item" id="599202861751410688">
                            </div>
                            <div class="tweet item" id="297462728598122498">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- footer section-->
<footer class="ht-footer">
    <div class="container">
        <div class="flex-parent-ft">
            <div class="flex-child-ft item1">
                <a href="index.jsp"><img class="logo" src="images/logo1.png" alt=""></a>
                <p>5th Avenue st, manhattan<br>
                    New York, NY 10001</p>
                <p>Call us: <a href="#">(+01) 202 342 6789</a></p>
            </div>
            <div class="flex-child-ft item2">
                <h4>Resources</h4>
                <ul>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Blockbuster</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">Forums</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Help Center</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item3">
                <h4>Legal</h4>
                <ul>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Security</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item4">
                <h4>Account</h4>
                <ul>
                    <li><a href="#">My Account</a></li>
                    <li><a href="#">Watchlist</a></li>
                    <li><a href="#">Collections</a></li>
                    <li><a href="#">User Guide</a></li>
                </ul>
            </div>
            <div class="flex-child-ft item5">
                <h4>Newsletter</h4>
                <p>Subscribe to our newsletter system now <br> to get latest news from us.</p>
                <form action="#">
                    <input type="text" placeholder="Enter your email...">
                </form>
                <a href="#" class="btn">Subscribe now <i class="ion-ios-arrow-forward"></i></a>
            </div>
        </div>
    </div>
    <div class="ft-copyright">
        <div class="ft-left">
            <p>© 2017 Blockbuster. All Rights <a href="http://www.bootstrapmb.com/" title="bootstrapmb">Reserved</a>. Designed by leehari.</p>
        </div>
        <div class="backtotop">
            <p><a href="#" id="back-to-top">Back to top  <i class="ion-ios-arrow-thin-up"></i></a></p>
        </div>
    </div>
</footer>
<!-- end of footer section-->

<script src="js/jquery.js"></script>
<script src="js/plugins.js"></script>
<script src="js/plugins2.js"></script>
<script src="js/custom.js"></script>
</body>
</html>