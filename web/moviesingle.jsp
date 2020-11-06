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
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/echarts.js"></script>
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
        <h3>Login</h3>
        <form method="post" action="login.php">
            <div class="row">
                <label for="username">
                    Username:
                    <input type="text" name="username" id="username" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
            </div>

            <div class="row">
                <label for="password">
                    Password:
                    <input type="password" name="password" id="password" placeholder="******" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
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
        <h3>sign up</h3>
        <form method="post" action="signup.php">
            <div class="row">
                <label for="username-2">
                    Username:
                    <input type="text" name="username" id="username-2" placeholder="Hugh Jackman" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                </label>
            </div>

            <div class="row">
                <label for="email-2">
                    your email:
                    <input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
                <label for="password-2">
                    Password:
                    <input type="password" name="password" id="password-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
                <label for="repassword-2">
                    re-type Password:
                    <input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                </label>
            </div>
            <div class="row">
                <button type="submit">sign up</button>
            </div>
        </form>
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
                    <li class="btn signupLink"><a href="#">sign up</a></li>
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
            <div class="form-style-1" >
                <div class="col-md-1 ">
                    <input class="submit" type="submit" value="搜索"/>
                </div>
            </div>
        </form>
    </div>
</header>
<!-- END | Header -->

<div class="hero mv-single-hero">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- <h1> movie listing - list</h1>
                <ul class="breadcumb">
                    <li class="active"><a href="#">Home</a></li>
                    <li> <span class="ion-ios-arrow-right"></span> movie listing</li>
                </ul> -->
            </div>
        </div>
    </div>
</div>
<div class="page-single movie-single movie_single">
    <div class="container">
        <div class="row ipad-width2">
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="movie-img sticky-sb">
                    <img src="${requestScope.movie.img}" alt="">
                    <div class="movie-btn">
                        <div class="btn-transform transform-vertical red">
                            <div><a href="#" class="item item-1 redbtn"> <i class="ion-play"></i> Watch Trailer</a></div>
                            <div><a href="https://www.youtube.com/embed/o-0hcF97wy0" class="item item-2 redbtn fancybox-media hvr-grow"><i class="ion-play"></i></a></div>
                        </div>
                        <div class="btn-transform transform-vertical">
                            <div><a href="#" class="item item-1 yellowbtn"> <i class="ion-card"></i> Buy ticket</a></div>
                            <div><a href="#" class="item item-2 yellowbtn"><i class="ion-card"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="movie-single-ct main-content">
                    <h1 class="bd-hd">${requestScope.movie.name} <span>${requestScope.movie.year}</span></h1>
                    <div class="social-btn">
                        <a href="#" class="parent-btn"><i class="ion-heart"></i> Add to Favorite</a>
                        <div class="hover-bnt">
                            <a href="#" class="parent-btn"><i class="ion-android-share-alt"></i>share</a>
                            <div class="hvr-item">
                                <a href="#" class="hvr-grow"><i class="ion-social-facebook"></i></a>
                                <a href="#" class="hvr-grow"><i class="ion-social-twitter"></i></a>
                                <a href="#" class="hvr-grow"><i class="ion-social-googleplus"></i></a>
                                <a href="#" class="hvr-grow"><i class="ion-social-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="movie-tabs">
                        <div class="tabs">
                            <ul class="tab-links tabs-mv">
                                <li class="active"><a href="#overview">Overview</a></li>
                                <li><a href="#cast">  Crew </a></li>
                                <li><a href="#relation"> Relation Photo</a></li>
                                <li><a href="#moviesrelated"> Related Movies</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="overview" class="tab active">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-12 col-xs-12">
                                            <p>${requestScope.movie.summary}</p>
                                            <div class="title-hd-sm">
                                                <h4>DIRECTOR and AUTHOR</h4>
                                                <a href="#" class="time">Full Crew  <i class="ion-ios-arrow-right"></i></a>
                                            </div>
                                            <!-- movie cast -->
                                            <div class="mvcast-item">
                                                <c:forEach var="dirList" items="${requestScope.dirList}">
                                                    <div class="cast-it">
                                                        <div class="cast-left">
                                                            <img width="40" height="40" src=${dirList.img} alt="">
                                                            <a href="#">${dirList.name}</a>
                                                        </div>
                                                        <p>${dirList.birthplace}</p>
                                                    </div>
                                                </c:forEach>
                                                <c:forEach var="autList" items="${requestScope.autList}">
                                                    <div class="cast-it">
                                                        <div class="cast-left">
                                                            <img width="40" height="40" src=${autList.img} alt="">
                                                            <a href="#">${autList.name}</a>
                                                        </div>
                                                        <p>${autList.birthplace}</p>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xs-12 col-sm-12">
                                            <div class="sb-it">
                                                <h6>Director: </h6>
                                                <p>
                                                <c:forEach var="dirList" items="${requestScope.dirList}">
                                                    <a href="#">${dirList.name},</a>
                                                </c:forEach>
                                                </p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Writer: </h6>
                                                <p>
                                                    <c:forEach var="autList" items="${requestScope.autList}">
                                                        <a href="#">${autList.name},</a>
                                                    </c:forEach>
                                                </p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Genres:</h6>
                                                <p><a href="#">${requestScope.movie.genre}</a></p>
                                            </div>
                                            <div class="sb-it">
                                                <h6>Plot Keywords:</h6>
                                                <p class="tags">
                                                    <span class="time"><a href="#">superhero</a></span>
                                                    <span class="time"><a href="#">marvel universe</a></span>
                                                    <span class="time"><a href="#">comic</a></span>
                                                    <span class="time"><a href="#">blockbuster</a></span>
                                                    <span class="time"><a href="#">final battle</a></span>
                                                </p>
                                            </div>
                                            <div class="ads">
                                                <img src="images/uploads/ads1.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="cast" class="tab">
                                    <div class="row">
                                        <h3>Cast & Crew of</h3>
                                        <h2>${requestScope.movie.name}</h2>
                                        <!-- //== -->
                                        <div class="title-hd-sm">
                                            <h4>DIRECTORS</h4>
                                        </div>
                                        <div class="mvcast-item">
                                            <c:forEach var="dirList" items="${requestScope.dirList}">
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img width="40" height="40" src=${dirList.img} alt="">
                                                        <a href="#">${dirList.name}</a>
                                                    </div>
                                                    <p>${dirList.birthplace}</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <!-- //== -->
                                        <div class="title-hd-sm">
                                            <h4>AUTHOR</h4>
                                        </div>
                                        <div class="mvcast-item">
                                            <c:forEach var="autList" items="${requestScope.autList}">
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img width="40" height="40" src=${autList.img} alt="">
                                                        <a href="#">${autList.name}</a>
                                                    </div>
                                                    <p>${autList.birthplace}</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <!-- //== -->
                                        <div class="title-hd-sm">
                                            <h4>ACTOR</h4>
                                        </div>
                                        <div class="mvcast-item">
                                            <c:forEach var="actList" items="${requestScope.actList}">
                                                <div class="cast-it">
                                                    <div class="cast-left">
                                                        <img width="40" height="40" src=${actList.img} alt="">
                                                        <a href="#">${actList.name}</a>
                                                    </div>
                                                    <p>${actList.birthplace}</p>
                                                </div>
                                            </c:forEach>
                                        </div>
                                        <!-- //== -->
                                    </div>
                                </div>
                                <div id="relation" class="tab">
                                    <div class="row">
                                        <div class="rv-hd">
                                            <div>
                                                <h3>Relation Photos of</h3>
                                                <h2>${requestScope.movie.name}</h2>
                                            </div>
                                        </div>
                                        <div id="main" style="width:800px;height:800px"class="title-hd-sm"></div>
                                        <script type="text/javascript">
                                            var myChart = echarts.init(document.getElementById('main'));
                                            var categories = [
                                                {name: '电影'},
                                                {name: '演员'},
                                                {name: '编剧'},
                                                {name: '导演、编剧、演员'}
                                            ]
                                            option = {
                                                // 图的标题
                                                title: {
                                                    text: '关系图',
                                                    textStyle: {
                                                        fontWeight: 'normal',              //标题颜色
                                                        color: '#ffffff'
                                                    },
                                                },
                                                // 提示框的配置
                                                tooltip: {
                                                    formatter: function (x) {
                                                        return x.data.des;
                                                    }
                                                },
                                                // 工具箱
                                                toolbox: {
                                                    // 显示工具箱
                                                    show: true,
                                                    feature: {
                                                        mark: {
                                                            show: true
                                                        },
                                                        // 还原
                                                        restore: {
                                                            show: true
                                                        },
                                                        // 保存为图片
                                                        saveAsImage: {
                                                            show: true
                                                        }
                                                    }
                                                },
                                                legend: [{
                                                    // selectedMode: 'single',
                                                    data: categories.map(function (a) {
                                                        return a.name;
                                                    }),
                                                    textStyle:{color:"#ffffff"}
                                                }],
                                                series: [{
                                                    type: 'graph', // 类型:关系图
                                                    layout: 'force', //图的布局，类型为力导图
                                                    symbolSize: 40, // 调整节点的大小
                                                    roam: true, // 是否开启鼠标缩放和平移漫游。默认不开启。如果只想要开启缩放或者平移,可以设置成 'scale' 或者 'move'。设置成 true 为都开启
                                                    edgeSymbol: ['circle', 'arrow'],
                                                    edgeSymbolSize: [2, 10],
                                                    edgeLabel: {
                                                        normal: {
                                                            textStyle: {
                                                                fontSize: 20
                                                            }
                                                        }
                                                    },
                                                    force: {
                                                        edgeLength: 50,
                                                        repulsion: 800,
                                                        gravity: 0.2
                                                    },
                                                    draggable: true,
                                                    lineStyle: {
                                                        normal: {
                                                            width: 2,
                                                            color: '#fdfdfd',
                                                        }
                                                    },
                                                    edgeLabel: {
                                                        normal: {
                                                            show: true,
                                                            formatter: function (x) {
                                                                return x.data.name;
                                                            }
                                                        }
                                                    },
                                                    label: {
                                                        normal: {
                                                            show: true,
                                                            textStyle: {}
                                                        }
                                                    },

                                                    // 数据
                                                    data: ${pointlist},
                                                    links: ${linklist},
                                                    categories: categories,
                                                }]
                                            };
                                            myChart.setOption(option);

                                        </script>
                                    </div>
                                </div>
                                <div id="moviesrelated" class="tab">
                                    <div class="row">
                                        <h3>Related Movies To</h3>
                                        <h2>${requestScope.movie.name}</h2>
                                        <div class="topbar-filter">
                                            <p>Found <span>12 movies</span> in total</p>
                                            <label>Sort by:</label>
                                            <select>
                                                <option value="popularity">Popularity Descending</option>
                                                <option value="popularity">Popularity Ascending</option>
                                                <option value="rating">Rating Descending</option>
                                                <option value="rating">Rating Ascending</option>
                                                <option value="date">Release date Descending</option>
                                                <option value="date">Release date Ascending</option>
                                            </select>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv1.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="#">oblivion <span>(2012)</span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>8.1</span> /10</p>
                                                <p class="describe">Earth's mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity...</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="#">Joss Whedon</a></p>
                                                <p>Stars: <a href="#">Robert Downey Jr.,</a> <a href="#">Chris Evans,</a> <a href="#">  Chris Hemsworth</a></p>
                                            </div>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv2.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="#">into the wild <span>(2014)</span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>7.8</span> /10</p>
                                                <p class="describe">As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat...</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="#">Anthony Russo,</a><a href="#">Joe Russo</a></p>
                                                <p>Stars: <a href="#">Chris Evans,</a> <a href="#">Samuel L. Jackson,</a> <a href="#">  Scarlett Johansson</a></p>
                                            </div>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv3.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="#">blade runner  <span>(2015)</span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>7.3</span> /10</p>
                                                <p class="describe">Armed with a super-suit with the astonishing ability to shrink in scale but increase in strength, cat burglar Scott Lang must embrace his inner hero and help...</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="#">Peyton Reed</a></p>
                                                <p>Stars: <a href="#">Paul Rudd,</a> <a href="#"> Michael Douglas</a></p>
                                            </div>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv4.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="#">Mulholland pride<span> (2013)  </span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>7.2</span> /10</p>
                                                <p class="describe">When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="#">Shane Black</a></p>
                                                <p>Stars: <a href="#">Robert Downey Jr., </a> <a href="#">  Guy Pearce,</a><a href="#">Don Cheadle</a></p>
                                            </div>
                                        </div>
                                        <div class="movie-item-style-2">
                                            <img src="images/uploads/mv5.jpg" alt="">
                                            <div class="mv-item-infor">
                                                <h6><a href="#">skyfall: evil of boss<span> (2013)  </span></a></h6>
                                                <p class="rate"><i class="ion-android-star"></i><span>7.0</span> /10</p>
                                                <p class="describe">When Tony Stark's world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.</p>
                                                <p class="run-time"> Run Time: 2h21’    .     <span>MMPA: PG-13 </span>    .     <span>Release: 1 May 2015</span></p>
                                                <p>Director: <a href="#">Alan Taylor</a></p>
                                                <p>Stars: <a href="#">Chris Hemsworth,  </a> <a href="#">  Natalie Portman,</a><a href="#">Tom Hiddleston</a></p>
                                            </div>
                                        </div>
                                        <div class="topbar-filter">
                                            <label>Movies per page:</label>
                                            <select>
                                                <option value="range">5 Movies</option>
                                                <option value="saab">10 Movies</option>
                                            </select>
                                            <div class="pagination2">
                                                <span>Page 1 of 2:</span>
                                                <a class="active" href="#">1</a>
                                                <a href="#">2</a>
                                                <a href="#"><i class="ion-arrow-right-b"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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