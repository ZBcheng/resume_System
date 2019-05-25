<%--
  Created by IntelliJ IDEA.
  User: bee0_0
  Date: 2019-05-13
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="resume_user.User"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>简历信息系统</title>

    <!-- CSS  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="static/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="static/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="https://font.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>

<body style="font-family: Roboto, sans-serif">
    <form class="col s12" id="logout_form" action="${pageContext.request.contextPath}\login" method="get">
    </form>
    <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <a style="font-family: 'Roboto Mono Light for Powerline'" id="logo-container" class="brand-logo">简历信息系统</a>
                <ul class="right hide-on-med-and-down">
                    <script src="static/js/sidenav.js"></script>
                    <li><a onclick="show_sidebar()" href="#slide-out">个人信息</a></li>
                    <li><a onclick="logout()">退出登录</a></li>
                    <script src="static/js/logout.js"></script>
                </ul>

                <ul id="slide-out" class="sidenav">
                    <li><div class="user-view" style="height: 190px">
                        <div class="background">
                            <img src="static/image/background1.jpg">
                        </div>
                        <a href="#user"><img class="circle" src="static/image/user.jpg"></a>
                        <a href="#name"><span class="white-text name" style="padding-top: 7px;padding-bottom: 20px"><%=User.getCurUser().getUsername()%>&nbsp&nbsp&nbsp&nbsp<%=User.getCurUser().info_list.getCity()%></span></a>
                    </div>
                    </li>
                    <li><a class="subheader" href="#!"></i>基本信息</a></li>
                    <li><div class="divider"></div></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">face</i><%=User.getCurUser().getUsername()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">web</i><%=User.getCurUser().info_list.getWebsite()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">cake</i><%=User.getCurUser().info_list.getBirthday()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">phone</i><%=User.getCurUser().info_list.getPhone()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">email</i><%=User.getCurUser().info_list.getEmail()%></a></li>

                    <li><a class="subheader" href="#!"></i>教育信息</a></li>
                    <li><div class="divider"></div></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">school</i><%=User.cur_user.info_list.getSchool()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">web</i><%=User.cur_user.info_list.getMajor()%></a></li>
                    <li><a class="subheader" href="#!"></i>技能信息</a></li>

                    <li><div class="divider"></div></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">code</i><%=User.cur_user.info_list.getLanguage()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">bug_report</i><%=User.cur_user.info_list.getFrameworks()%></a></li>

                    <li><div class="divider"></div></li>
                    <li><a class="waves-effect" href="<%=request.getContextPath()%>/infolist.jsp" ><i class="material-icons">edit</i>详细信息</a></li>
                    <li><a class="waves-effect" href="/logout/" style="color: #E53935"><i class="material-icons">info</i>退出登录</a></li>

                    <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                </ul>
            </div>
        </nav>


<div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container" style="height: 600px">
            <br><br>
            <h1 class="header center" style="color: whitesmoke; margin-top: 170px"><strong>简历信息系统</strong></h1>
            <div class="row center">
                <h5 class="header col s12 light"><strong>在这里，用一份简历开始你的故事</strong></h5>
            </div>
            <div class="row center">
                <a href="<%=request.getContextPath()%>/infolist.jsp" id="download-button" class="btn-large waves-effect waves-light teal lighten-1">开始创建</a>
            </div>
            <br><br>

        </div>
    </div>
    <div class="parallax"><img src="static/image/bak2.jpg"></div>
</div>


<div class="container">
    <div class="section">

        <!--   Icon Section   -->
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons" >flash_on</i></h2>
                    <h5 class="center">快速创建</h5>

                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons">group</i></h2>
                    <h5 class="center">在线查看</h5>

                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons">settings</i></h2>
                    <h5 class="center">便捷修改</h5>

                </div>
            </div>
        </div>

    </div>
</div>


<div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
        <div class="container">
            <div class="row center">
                <h5 class="header col s12 light"><strong>制作第一份简历，打开职场第一道大门</strong></h5>
            </div>
        </div>
    </div>
    <div class="parallax"><img src="static/image/img4.jpg" alt="Unsplashed /static/image/background img 2"></div>
</div>

<div class="container">
    <div class="section">

        <div class="row">
            <div class="col s12 center">
                <h3><i class="mdi-content-send brown-text"></i></h3>
                <h4>网站介绍</h4>
                <p class="left-align light" style="font-size:18px;">个人简历是求职者给招聘单位发的一份简要介绍，随着求职竞争压力越来越大，如何在求职简历中体现自己的才能，让自己的简历在成百上千份简历中被选中，成了很多学生绞尽脑汁思考的“课题”，在本站中，你可以使用模版轻松建立个人简历，提升自己的竞争力，用优秀的简历开启自己的职场故事</p>
            </div>
        </div>

    </div>
</div>


<div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
        <div class="container">
            <div class="row center">
                <h5 class="header col s12 light"><strong>用一份成功的简历开启一个成功的故事</strong></h5>
            </div>
        </div>
    </div>
    <div class="parallax"><img src="static/image/img3.jpg" alt="Unsplashed /static/image/background img 3"></div>
</div>


<footer class="page-footer teal">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">简介</h5>
                <p class="grey-text text-lighten-4">本小组成员为张毕成、崔鹏、刘逵、胡天绒，网站的设计受到google前端设计风格Material Design的启发，使用了以原生JavaScript为基础的Material Desian框架Materialize</p>


            </div>
            <div class="col l3 s12">
                <h5 class="white-text">成员</h5>
                <ul>
                    <li><a class="white-text" href="#!">张毕成</a></li>
                    <li><a class="white-text" href="#!">崔鹏</a></li>
                    <li><a class="white-text" href="#!">刘逵</a></li>
                    <li><a class="white-text" href="#!">胡天绒</a></li>
                </ul>
            </div>
            <div class="col l3 s12">
                <h5 class="white-text">工作</h5>
                <ul>
                    <li><a class="white-text" href="#!">系统后端</a></li>
                    <li><a class="white-text" href="#!">系统前端</a></li>
                    <li><a class="white-text" href="#!">数据库设计</a></li>
                    <li><a class="white-text" href="#!">界面设计 Java类设计</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            Made by <a class="brown-text text-lighten-3" href="http://materializecss.com">Materialize</a>
        </div>
    </div>
</footer>





<!--  Scripts-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="static/js/materialize.js"></script>
<script src="static/js/init.js"></script>

</body>
</html>