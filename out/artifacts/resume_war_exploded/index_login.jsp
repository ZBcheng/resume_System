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
    <title>用户登录</title>

    <!-- CSS  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="static/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="static/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>

<body>
    <form class="col s12" id="logout_form" action="${pageContext.request.contextPath}\login" method="get">
    </form>
    <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" class="brand-logo">简历信息管理</a>
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
                        <a href="#name"><span class="white-text name" style="padding-top: 7px;padding-bottom: 20px"><%=User.getCurUser().getUsername()%>&nbsp&nbsp&nbsp&nbsp<%=User.cur_user.info_list.personal_info.getCity()%></span></a>
                    </div>
                    </li>
                    <li><a class="subheader" href="#!"></i>基本信息</a></li>
                    <li><div class="divider"></div></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">face</i><%=User.getCurUser().getUsername()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">web</i><%=User.cur_user.info_list.personal_info.getWebsite()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">cake</i><%=User.cur_user.info_list.personal_info.getBirthday()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">phone</i><%=User.cur_user.info_list.personal_info.getPhone()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">email</i><%=User.cur_user.info_list.personal_info.getEmail()%></a></li>

                    <li><a class="subheader" href="#!"></i>教育信息</a></li>
                    <li><div class="divider"></div></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">school</i><%=User.cur_user.info_list.edu_info.getSchool()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">web</i><%=User.cur_user.info_list.edu_info.getMajor()%></a></li>
                    <li><a class="subheader" href="#!"></i>技能信息</a></li>

                    <li><div class="divider"></div></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">code</i><%=User.cur_user.info_list.skill_info.getLanguage()%></a></li>
                    <li><a class="waves-effect" href="#!"><i class="material-icons">bug_report</i><%=User.cur_user.info_list.skill_info.getFrameworks()%></a></li>

                    <li><div class="divider"></div></li>
                    <li><a class="waves-effect" href="/logout/" ><i class="material-icons">edit</i>详细信息</a></li>
                    <li><a class="waves-effect" href="/logout/" style="color: #E53935"><i class="material-icons">info</i>退出登录</a></li>

                    <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                </ul>
            </div>
        </nav>


<div id="index-banner" class="parallax-container">
    <div class="section no-pad-bot">
        <div class="container">
            <br><br>
            <h1 class="header center teal-text text-lighten-2">简历信息系统</h1>
            <div class="row center">
                <h5 class="header col s12 light">在这里，用一份简历开始你的故事</h5>
            </div>
            <div class="row center">
                <a href="<%=request.getContextPath()%>/infolist.jsp" id="download-button" class="btn-large waves-effect waves-light teal lighten-1">开始创建</a>
            </div>
            <br><br>

        </div>
    </div>
    <div class="parallax"><img src="static/image/background1.jpg"></div>
</div>


<div class="container">
    <div class="section">

        <!--   Icon Section   -->
        <div class="row">
            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons" >flash_on</i></h2>
                    <h5 class="center">快速创建模版</h5>

                    <p class="light" style="text-align: center">一键生成，自从排版，轻松编辑</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons">group</i></h2>
                    <h5 class="center">查看简历</h5>

                    <p class="light" style="text-align: center">已有简历？快速查看</p>
                </div>
            </div>

            <div class="col s12 m4">
                <div class="icon-block">
                    <h2 class="center brown-text"><i class="material-icons">settings</i></h2>
                    <h5 class="center">修改简历</h5>

                    <p class="light" style="text-align: center">简历信息不合适？在线修改</p>
                </div>
            </div>
        </div>

    </div>
</div>


<div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
        <div class="container">
            <div class="row center">
                <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
            </div>
        </div>
    </div>
    <div class="parallax"><img src="static/image/background2.jpg" alt="Unsplashed /static/image/background img 2"></div>
</div>

<div class="container">
    <div class="section">

        <div class="row">
            <div class="col s12 center">
                <h3><i class="mdi-content-send brown-text"></i></h3>
                <h4>Contact Us</h4>
                <p class="left-align light">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam scelerisque id nunc nec volutpat. Etiam pellentesque tristique arcu, non consequat magna fermentum ac. Cras ut ultricies eros. Maecenas eros justo, ullamcorper a sapien id, viverra ultrices eros. Morbi sem neque, posuere et pretium eget, bibendum sollicitudin lacus. Aliquam eleifend sollicitudin diam, eu mattis nisl maximus sed. Nulla imperdiet semper molestie. Morbi massa odio, condimentum sed ipsum ac, gravida ultrices erat. Nullam eget dignissim mauris, non tristique erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;</p>
            </div>
        </div>

    </div>
</div>


<div class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
        <div class="container">
            <div class="row center">
                <h5 class="header col s12 light">A modern responsive front-end framework based on Material Design</h5>
            </div>
        </div>
    </div>
    <div class="parallax"><img src="static/image/background3.jpg" alt="Unsplashed /static/image/background img 3"></div>
</div>


<footer class="page-footer teal">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">Company Bio</h5>
                <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>


            </div>
            <div class="col l3 s12">
                <h5 class="white-text">Settings</h5>
                <ul>
                    <li><a class="white-text" href="#!">Link 1</a></li>
                    <li><a class="white-text" href="#!">Link 2</a></li>
                    <li><a class="white-text" href="#!">Link 3</a></li>
                    <li><a class="white-text" href="#!">Link 4</a></li>
                </ul>
            </div>
            <div class="col l3 s12">
                <h5 class="white-text">Connect</h5>
                <ul>
                    <li><a class="white-text" href="#!">Link 1</a></li>
                    <li><a class="white-text" href="#!">Link 2</a></li>
                    <li><a class="white-text" href="#!">Link 3</a></li>
                    <li><a class="white-text" href="#!">Link 4</a></li>
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