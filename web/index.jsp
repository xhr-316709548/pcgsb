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
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="referrer" content="no-referrer">
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
        <h3>Login</h3>
        <form method="post" action="loginServlet">
            <div class="row">
                <label for="username">
                    Username:
                    <input type="text" name="username" id="username" placeholder="Type username" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,20}$" required="required" />
                </label>
            </div>

            <div class="row">
                <label for="password">
                    Password:
                    <input type="password" name="password" id="password" placeholder="Type pawword" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
                <div class="remember">
                    <div>
                        <input type="checkbox" name="remember" value="Remember me"><span>Remember me</span>
                    </div>
                    <a href="#">Forget password ?</a>
                </div>
            </div>
            <div class="row">
                <button type="submit">Login</button>
            </div>
        </form>
        <div class="row">
            <p>Or via social</p>
            <div class="social-btn-2">
                <a class="fb" href="#"><i class="ion-social-facebook"></i>Facebook</a>
                <a class="tw" href="#"><i class="ion-social-twitter"></i>twitter</a>
            </div>
        </div>
    </div>
</div>
<!--end of login form popup-->
<!--signup form popup-->
<div class="login-wrapper"  id="signup-content">
    <div class="login-content">
        <a href="#" class="close">x</a>
<c:if test="${sessionScope.uName!=null}">
        <h3>Welcome,${sessionScope.uName}!</h3>
</c:if>
<c:if test="${sessionScope.uName==null}">
        <h3>sign up</h3>
        <form method="post" action="signupServlet">
                <div class="row">
                    <label for="username-2">
                        Username:
                        <input type="text" name="username" id="username-2" placeholder="请使用字母和数字且开头为字母并大于三位" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{3,20}$" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="email-2">
                        your email:
                        <input type="text" name="email" id="email-2" placeholder="请输入正确的邮箱格式" pattern="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="password-2">
                        Password:
                        <input type="password" name="password" id="password-2" placeholder="密码需要大于8位且包括大小写字母与数字" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="repassword-2">
                        re-type Password:
                        <input type="password" name="repassword" id="repassword-2" placeholder="请重复你输入的密码" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                    </label>
                </div>
                <div class="row">
                    <button type="submit">sign up</button>
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
                <a href="index.html"><img class="logo" src="images/logo1.png" alt="" width="119" height="58"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav flex-child-menu menu-left">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown">
                            Home <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="index.html">Home 01</a></li>
                            <li><a href="homev2.html">Home 02</a></li>
                            <li><a href="homev3.html">Home 03</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            movies<i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Movie grid<i class="ion-ios-arrow-forward"></i></a>
                                <ul class="dropdown-menu level2">
                                    <li><a href="moviegrid.html">Movie grid</a></li>
                                    <li><a href="moviegridfw.html">movie grid full width</a></li>
                                </ul>
                            </li>
                            <li><a href="movielist.html">Movie list</a></li>
                            <li><a href="moviesingle.html">Movie single</a></li>
                            <li class="it-last"><a href="seriessingle.html">Series single</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            celebrities <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="celebritygrid01.html">celebrity grid 01</a></li>
                            <li><a href="celebritygrid02.html">celebrity grid 02 </a></li>
                            <li><a href="celebritylist.html">celebrity list</a></li>
                            <li class="it-last"><a href="celebritysingle.html">celebrity single</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            news <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="bloglist.html">blog List</a></li>
                            <li><a href="bloggrid.html">blog Grid</a></li>
                            <li class="it-last"><a href="blogdetail.html">blog Detail</a></li>
                        </ul>
                    </li>
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            community <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="userfavoritegrid.html">user favorite grid</a></li>
                            <li><a href="userfavoritelist.html">user favorite list</a></li>
                            <li><a href="userprofile.html">user profile</a></li>
                            <li class="it-last"><a href="userrate.html">user rate</a></li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav flex-child-menu menu-right">
                    <li class="dropdown first">
                        <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
                            pages <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </a>
                        <ul class="dropdown-menu level1">
                            <li><a href="landing.html">Landing</a></li>
                            <li><a href="404.html">404 Page</a></li>
                            <li class="it-last"><a href="comingsoon.html">Coming soon</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Help</a></li>
                    <li class="loginLink"><a href="#">LOG In</a></li>
                    <c:if test="${sessionScope.uName!=null}">
                        <li class="btn signupLink"><a href="#">${sessionScope.uName}</a></li>
                    </c:if>
                    <c:if test="${sessionScope.uName==null}">
                        <li class="btn signupLink"><a href="#">sign up</a></li>
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
                    <option value="director">导演</option>
                    <option value="genre">标签</option>
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
            <div  class="slick-multiItemSlider">
                <div class="movie-item">
                    <div class="mv-img">
                        <a href="#"><img src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2219011938.webp" alt="" width="285" height="437"></a>
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="blue"><a href="#">Sci-fi</a></span>
                        </div>
                        <h6><a href="#">Interstellar</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
                <div class="movie-item">
                    <div class="mv-img">
                        <a href="#"><img src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910812549.webp" alt="" width="285" height="437"></a>
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="yell"><a href="#">action</a></span>
                        </div>
                        <h6><a href="#">The revenant</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
                <div class="movie-item">
                    <div class="mv-img">
                        <a href="#"><img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p692813374.webp" alt="" width="285" height="437"></a>
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="green"><a href="#">comedy</a></span>
                        </div>
                        <h6><a href="#">Die hard</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
                <div class="movie-item">
                    <div class="mv-img">
                        <a href="#"><img src="https://img3.doubanio.com/view/photo/s_ratio_poster/public/p1910825503.webp" alt="" width="285" height="437"></a>
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="blue"><a href="#">Sci-fi</a></span> <span class="orange"><a href="#">advanture</a></span>
                        </div>
                        <h6><a href="#">The walk</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
                <div class="movie-item">
                    <div class="mv-img">
                        <a href="#"><img src="images/uploads/slider1.jpg" alt="" width="285" height="437"></a>
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="blue"><a href="#">Sci-fi</a></span>
                        </div>
                        <h6><a href="#">Interstellar</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
                <div class="movie-item">
                    <div class="mv-img">
                        <a href="#"><img src="images/uploads/slider2.jpg" alt="" width="285" height="437"></a>
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="yell"><a href="#">action</a></span>
                        </div>
                        <h6><a href="#">The revenant</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
                <div class="movie-item">
                    <div class="mv-img">
                        <img src="images/uploads/slider3.jpg" alt="" width="285" height="437">
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="green"><a href="#">comedy</a></span>
                        </div>
                        <h6><a href="#">Die hard</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
                <div class="movie-item">
                    <div class="mv-img">
                        <img src="images/uploads/slider4.jpg" alt="" width="285" height="437">
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="blue"><a href="#">Sci-fi</a></span> <span class="orange"><a href="#">advanture</a></span>
                        </div>
                        <h6><a href="#">The walk</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
                <div class="movie-item">
                    <div class="mv-img">
                        <img src="images/uploads/slider3.jpg" alt="" width="285" height="437">
                    </div>
                    <div class="title-in">
                        <div class="cate">
                            <span class="green"><a href="#">comedy</a></span>
                        </div>
                        <h6><a href="#">Die hard</a></h6>
                        <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                    </div>
                </div>
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
                    <a href="#" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
                </div>
                <div class="tabs">
                    <ul class="tab-links">
                        <li class="active"><a href="#tab1">#Popular</a></li>
                        <li><a href="#tab2"> #Coming soon</a></li>
                        <li><a href="#tab3">  #Top rated  </a></li>
                        <li><a href="#tab4"> #Most reviewed</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab1" class="tab active">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab2" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab3" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab4" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="title-hd">
                    <h2>最高评分</h2>
                    <a href="#" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
                </div>
                <div class="tabs">
                    <ul class="tab-links-2">
                        <li><a href="#tab21">#Popular</a></li>
                        <li class="active"><a href="#tab22"> #Coming soon</a></li>
                        <li><a href="#tab23">  #Top rated  </a></li>
                        <li><a href="#tab24"> #Most reviewed</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="tab21" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab22" class="tab active">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab23" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab24" class="tab">
                            <div class="row">
                                <div class="slick-multiItem">
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Interstellar</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The revenant</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">The walk</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-it">
                                        <div class="movie-item">
                                            <div class="mv-img">
                                                <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                            </div>
                                            <div class="hvr-inner">
                                                <a  href="moviesingle.html"> Read more <i class="ion-android-arrow-dropright"></i> </a>
                                            </div>
                                            <div class="title-in">
                                                <h6><a href="#">Die hard</a></h6>
                                                <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                            </div>
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
                        <a href="#" class="btn">See all celebrities<i class="ion-ios-arrow-right"></i></a>
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
                <a href="index.html"><img class="logo" src="images/logo1.png" alt=""></a>
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

