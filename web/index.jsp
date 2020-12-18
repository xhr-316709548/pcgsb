<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!-->
<html lang="en" class="no-js">
<head>
    <!-- Basic need -->
    <title>Open Pediatrics</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="referrer" content="no-referrer">
    <link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'/>
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
                        <a class="btn btn-default dropdown-toggle lv1" href="index.jsp">
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

<div class="slider movie-items">
    <div class="container">
        <div class="row">
            <div class="social-link">
                <p>Follow us: </p>
                <a href="#"><i class="ion-social-facebook"></i></a>
                <a href="#"><i class="ion-social-twitter"></i></a>
                <a href="#"><i class="ion-social-googleplus"></i></a>
                <a href="#"><i class="ion-social-youtube"></i></a>
            </div>
            <div class="slick-multiItemSlider">
                <c:if test="${sessionScope.uName!=null}">
                    <c:forEach var="recommendMovie" items="${requestScope.recommendMovie}">
                        <div class="movie-item">
                            <div class="mv-img">
                                <a href="#"><img src=${recommendMovie.img} class="eval-self-photo" alt=""
                                                 onerror="onerror=null;src='images/noImg.jpg'"></a>
                            </div>
                            <div class="title-in">
                                    <%--<div class="cate">
                                        <span class="blue"><a href="#">${recommendMovie.genre}</a></span>
                                    </div>--%>
                                <h6><a href="#">${recommendMovie.name}</a></h6>
                                <p><i class="ion-android-star"></i><span>${recommendMovie.rate}</span> /10</p>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${sessionScope.uName==null}">
                    <div class="movie-item">
                        <div class="mv-img">
                            <a href="#"><img
                                    src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2219011938.webp"
                                    alt="" width="285" height="437"></a>
                        </div>
                        <div class="title-in">
                            <h6><a href="showMovie?movieid=1291543">功夫</a></h6>
                            <p><i class="ion-android-star"></i><span>8.3</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item">
                        <div class="mv-img">
                            <a href="#"><img
                                    src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910812549.webp"
                                    alt="" width="285" height="437"></a>
                        </div>
                        <div class="title-in">
                            <h6><a href="showMovie?movieid=1291544">哈利·波特与阿兹卡班的囚徒 Harry Potter and the Prisoner of
                                Azkaban</a></h6>
                            <p><i class="ion-android-star"></i><span>8.4</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item">
                        <div class="mv-img">
                            <a href="#"><img
                                    src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p692813374.webp"
                                    alt="" width="285" height="437"></a>
                        </div>
                        <div class="title-in">
                            <h6><a href="showMovie?movieid=1291545">大鱼 Big Fish</a></h6>
                            <p><i class="ion-android-star"></i><span>8.8</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item">
                        <div class="mv-img">
                            <a href="#"><img
                                    src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910825503.webp"
                                    alt="" width="285" height="437"></a>
                        </div>
                        <div class="title-in">
                            <h6><a href="showMovie?movieid=1291552">指环王3：王者无敌 The Lord of the Rings: The Return of the
                                King</a></h6>
                            <p><i class="ion-android-star"></i><span>9.1</span> /10</p>
                        </div>
                    </div>
                    <div class="movie-item">
                        <div class="mv-img">
                            <a href="#"><img
                                    src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2315672647.webp"
                                    alt="" width="285" height="437"></a>
                        </div>
                        <div class="title-in">
                            <h6><a href="showMovie?movieid=25662329">疯狂动物城 Zootopia</a></h6>
                            <p><i class="ion-android-star"></i><span>9.2</span> /10</p>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
<div class="movie-items">
    <div class="container">
        <div class="row ipad-width">
            <div class="col-md-8">
                <div class="title-hd">
                    <h2>最新电影</h2>
                </div>
                <div class="tabs">
                    <div class="tab-content">
                        <div class="row">
                            <div class="slick-multiItem">
                                <div class="slide-it">
                                    <div class="movie-item">
                                        <div class="mv-img">
                                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2541300705.webp"
                                                 alt="" width="185" height="284">
                                        </div>
                                        <div class="hvr-inner">
                                            <a href="showMovie?movieid=30391300"> Read more <i
                                                    class="ion-android-arrow-dropright"></i> </a>
                                        </div>
                                        <div class="title-in">
                                            <h6><a href="#">我们是小僵尸</a></h6>
                                            <p><i class="ion-android-star"></i><span>8.5</span> /10</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-it">
                                    <div class="movie-item">
                                        <div class="mv-img">
                                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2546207860.webp"
                                                 alt="" width="185" height="284">
                                        </div>
                                        <div class="hvr-inner">
                                            <a href="showMovie?movieid=30328584"> Read more <i
                                                    class="ion-android-arrow-dropright"></i> </a>
                                        </div>
                                        <div class="title-in">
                                            <h6><a href="#">十二个想死的孩子</a></h6>
                                            <p><i class="ion-android-star"></i><span>5.7</span> /10</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-it">
                                    <div class="movie-item">
                                        <div class="mv-img">
                                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2545472803.webp"
                                                 alt="" width="185" height="284">
                                        </div>
                                        <div class="hvr-inner">
                                            <a href="showMovie?movieid=26266893"> Read more <i
                                                    class="ion-android-arrow-dropright"></i> </a>
                                        </div>
                                        <div class="title-in">
                                            <h6><a href="#">流浪地球</a></h6>
                                            <p><i class="ion-android-star"></i><span>7.9</span> /10</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-it">
                                    <div class="movie-item">
                                        <div class="mv-img">
                                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2544313786.webp"
                                                 alt="" width="185" height="284">
                                        </div>
                                        <div class="hvr-inner">
                                            <a href="showMovie?movieid=30331149"> Read more <i
                                                    class="ion-android-arrow-dropright"></i> </a>
                                        </div>
                                        <div class="title-in">
                                            <h6><a href="#">白蛇：缘起</a></h6>
                                            <p><i class="ion-android-star"></i><span>8.0</span> /10</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="title-hd">
                    <h2>最高评分</h2>
                </div>
                <div class="tabs">
                    <div class="tab-content">
                        <div class="row">
                            <div class="slick-multiItem">
                                <div class="slide-it">
                                    <div class="movie-item">
                                        <div class="mv-img">
                                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2397258764.webp"
                                                 alt="" width="185" height="284">
                                        </div>
                                        <div class="hvr-inner">
                                            <a href="showMovie?movieid=26725031"> Read more <i
                                                    class="ion-android-arrow-dropright"></i> </a>
                                        </div>
                                        <div class="title-in">
                                            <h6><a href="#">是，大臣</a></h6>
                                            <p><i class="ion-android-star"></i><span>9.8</span> /10</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-it">
                                    <div class="movie-item">
                                        <div class="mv-img">
                                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2006533765.webp"
                                                 alt="" width="185" height="284">
                                        </div>
                                        <div class="hvr-inner">
                                            <a href="showMovie?movieid=24751811"> Read more <i
                                                    class="ion-android-arrow-dropright"></i> </a>
                                        </div>
                                        <div class="title-in">
                                            <h6><a href="#">剧院魅影</a></h6>
                                            <p><i class="ion-android-star"></i><span>9.7</span> /10</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-it">
                                    <div class="movie-item">
                                        <div class="mv-img">
                                            <img src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2294795378.webp"
                                                 alt="" width="185" height="284">
                                        </div>
                                        <div class="hvr-inner">
                                            <a href="showMovie?movieid=25892102"> Read more <i
                                                    class="ion-android-arrow-dropright"></i> </a>
                                        </div>
                                        <div class="title-in">
                                            <h6><a href="#">Coldplay</a></h6>
                                            <p><i class="ion-android-star"></i><span>9.6</span> /10</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="slide-it">
                                    <div class="movie-item">
                                        <div class="mv-img">
                                            <img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2354179225.webp"
                                                 alt="" width="185" height="284">
                                        </div>
                                        <div class="hvr-inner">
                                            <a href="showMovie?movieid=5133063"> Read more <i
                                                    class="ion-android-arrow-dropright"></i> </a>
                                        </div>
                                        <div class="title-in">
                                            <h6><a href="#">憨豆先生精选辑</a></h6>
                                            <p><i class="ion-android-star"></i><span>9.6</span> /10</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sidebar">
                    <div class="ads">
                        <img src="images/uploads/ads1.png" alt="" width="336" height="296">
                    </div>
                    <div class="celebrities">
                        <h4 class="sb-title">你可能感兴趣的小伙伴</h4>
                        <div class="celeb-item">
                            <a href="#"><img src="images/uploads/ava1.jpg" alt="" width="70" height="70"></a>
                            <div class="celeb-author">
                                <h6><a href="#">${requestScope.recommendUser[0]}</a></h6>
                                <span>vip用户</span>
                            </div>
                        </div>
                        <div class="celeb-item">
                            <a href="#"><img src="images/uploads/ava2.jpg" alt="" width="70" height="70"></a>
                            <div class="celeb-author">
                                <h6><a href="#">${requestScope.recommendUser[1]}</a></h6>
                                <span>普通用户</span>
                            </div>
                        </div>
                        <div class="celeb-item">
                            <a href="#"><img src="images/uploads/ava3.jpg" alt="" width="70" height="70"></a>
                            <div class="celeb-author">
                                <h6><a href="#">${requestScope.recommendUser[2]}</a></h6>
                                <span>普通用户</span>
                            </div>
                        </div>
                        <div class="celeb-item">
                            <a href="#"><img src="images/uploads/ava4.jpg" alt="" width="70" height="70"></a>
                            <div class="celeb-author">
                                <h6><a href="#">${requestScope.recommendUser[3]}</a></h6>
                                <span>普通用户</span>
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
            <p>© 2017 Blockbuster. All Rights <a href="http://www.bootstrapmb.com/" title="bootstrapmb">Reserved</a>.
                Designed by leehari.</p>
        </div>
        <div class="backtotop">
            <p><a href="#" id="back-to-top">Back to top <i class="ion-ios-arrow-thin-up"></i></a></p>
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

