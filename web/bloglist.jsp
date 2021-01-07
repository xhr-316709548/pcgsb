﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<div class="hero common-hero">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="hero-ct">
					<h1> 电影新闻 - 列表</h1>
					<ul class="breadcumb">
						<li class="active"><a href="index.jsp">主页</a></li>
						<li> <span class="ion-ios-arrow-right"></span> 电影新闻</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- blog list section-->
<div class="page-single">
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-sm-12 col-xs-12">
				<div class="blog-item-style-1 blog-item-style-3">
            		<img src="images/uploads/bloglist-it1.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="">Godzilla: King Of The Monsters Adds O’Shea Jackson Jr</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>Africa's burgeoning animation scene got a boost this week with the announcement of an ambitious new partnership that will pair rising talents from across the continent ...</p>
            		</div>
            	</div>
            	<div class="blog-item-style-1 blog-item-style-3">
            		<img src="images/uploads/bloglist-it2.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="">Magnolia Nabs ‘Lucky’ Starring Harry Dean Stanton</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>Magnolia Pictures has acquired U.S. and international rights to the comedic drama Lucky John Carroll Lynch’s directorial debut. Lynch is an in-demand character actor who ...</p>
            		</div>
            	</div>
				<div class="blog-item-style-1 blog-item-style-3">
            		<img src="images/uploads/bloglist-it3.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="">‘Going in Style’ Tops ‘Smurfs: The Lost Village’ at Thursday Box Office</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>New Line’s remake of “Going in Style” launched with a moderate $600,000 on Thursday night, while Sony’s animated “Smurfs: The Lost Village” debuted with $375,000 ...</p>
            		</div>
            	</div>
            	<div class="blog-item-style-1 blog-item-style-3">
            		<img src="images/uploads/bloglist-it4.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="">India’s National Film Awards: ‘Kaasav’ Wins Best Picture</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>Although it sporadically errs on the side of sentimentality and simplification, "The Case for Christ" sustains interest, and even generates mild suspense ...</p>
            		</div>
            	</div>
            	<div class="blog-item-style-1 blog-item-style-3">
            		<img src="images/uploads/bloglist-it5.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="">‘Kong: Skull Island’ Tops $500 Million at Worldwide Box Office</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>King Kong is still a box office giant. “Kong: Skull Island” has crossed the $500 million mark at the worldwide box office. It’s the third 2017 title to hit the milestone after Disney’s ...</p>
            		</div>
            	</div>
            	<div class="blog-item-style-1 blog-item-style-3">
            		<img src="images/uploads/bloglist-it6.jpg" alt="">
            		<div class="blog-it-infor">
            			<h3><a href="">Film Review: ‘Aftermath’</a></h3>
            			<span class="time">27 Mar 2017</span>
            			<p>"Aftermath" is a plane crash movie without a plane crash. Instead, the closest we get is a scene set in the control tower, where a computer screen shows two ...</p>
            		</div>
            	</div>
			</div>
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div class="sidebar">
					<div class="sb-search sb-it">
						<h4 class="sb-title">Search</h4>
						<input type="text" placeholder="Enter keywords">
					</div>
					<div class="sb-cate sb-it">
						<h4 class="sb-title">Categories</h4>
						<ul>
							<li><a href="#">Awards (50)</a></li>
							<li><a href="#">Box office (38)</a></li>
							<li><a href="#">Film reviews (72)</a></li>
							<li><a href="#">News (45)</a></li>
							<li><a href="#">Global (06)</a></li>
						</ul>
					</div>
					<div class="sb-recentpost sb-it">
						<h4 class="sb-title">most popular</h4>
						<div class="recent-item">
							<span>01</span><h6><a href="#">Korea Box Office: Beauty and the Beast Wins Fourth</a></h6>
						</div>
						<div class="recent-item">
							<span>02</span><h6><a href="#">Homeland Finale Includes Shocking Death </a></h6>
						</div>
						<div class="recent-item">
							<span>03</span><h6><a href="#">Fate of the Furious Reviews What the Critics Saying</a></h6>
						</div>
					</div>
					<div class="sb-tags sb-it">
						<h4 class="sb-title">tags</h4>
						<ul class="tag-items">
							<li><a href="#">Batman</a></li>
							<li><a href="#">film</a></li>
							<li><a href="#">homeland</a></li>
							<li><a href="#">Fast & Furious</a></li>
							<li><a href="#">Dead Walker</a></li>
							<li><a href="#">King</a></li>
							<li><a href="#">Beauty</a></li>
						</ul>
					</div>
					<div class="ads">
						<img src="images/uploads/ads1.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--end of blog list section-->
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