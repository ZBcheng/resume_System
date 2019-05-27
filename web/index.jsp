<%--
  Created by IntelliJ IDEA.
  User: bee0_0
  Date: 2019-05-13
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>

<body style="font-family: 'Roboto', sans-serif">
    <nav class="white" role="navigation">
        <div class="nav-wrapper container">
        <a id="logo-container" class="brand-logo">简历信息系统</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="<%=request.getContextPath()%>/login.jsp">登录</a></li>
            <li><a href="<%=request.getContextPath()%>/register.jsp">注册</a></li>
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
          <a href="<%=request.getContextPath()%>/login.jsp" id="download-button" class="btn-large waves-effect waves-light teal lighten-1">登录</a>
        </div>
        <br><br>

      </div>
    </div>
    <div class="parallax"><img src="static/image/img2.jpg"></div>
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
    <div class="parallax"><img src="static/image/img1.jpg" alt="Unsplashed /static/image/background img 2"></div>
  </div>

  <div class="container">
    <div class="section">

      <div class="row">
        <div class="col s12 center">
          <h3><i class="mdi-content-send brown-text"></i></h3>
          <h4>网站介绍</h4>
          <p class="left-align light" style="font-size:18px;" >个人简历是求职者给招聘单位发的一份简要介绍，随着求职竞争压力越来越大，如何在求职简历中体现自己的才能，让自己的简历在成百上千份简历中被选中，成了很多学生绞尽脑汁思考的“课题”，在本站中，你可以使用模版轻松建立个人简历，提升自己的竞争力，用优秀的简历开启自己的职场故事</p>
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
    <div class="parallax"><img src="static/image/bak3.png" alt="Unsplashed /static/image/background img 3"></div>
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