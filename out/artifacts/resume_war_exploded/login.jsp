<%--
  Created by IntelliJ IDEA.
  User: bee0_0
  Date: 2019-05-17
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>登录</title>

        <!-- CSS  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="static/css/materialize.css" type="text/css" rel="stylesheet" />
        <link href="static/css/style.css" type="text/css" rel="stylesheet" />
    </head>


    <body background="static/image/login2.jpg" style="font-family: 'Roboto', sans-serif">
        <div class="login-card" style="width: 600px; height: 400px; margin: auto; margin-top: 200px; background: white">
            <div class="card">
                <h2 style="padding-left: 55px; padding-top: 55px">登录</h2>
                <div class="row">
                    <form class="col s12" id="log_form" action="${pageContext.request.contextPath}/login" method="post">
                        <div class="row" style="margin-left: 50px;">
                            <div class="row" style="margin-top: 10px">
                                <div class="input-field col s10">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input id="username" type="text" class="validate" name="username">
                                    <label for="username">用户名</label>
                                </div>
                            </div>

                            <div class="row" style="margin-top: 10px">
                                <div class="input-field col s10" name="password">
                                <i class="material-icons prefix">lock</i>
                                <input id="password" type="password" class="validate" name="password">
                                <label for="password">密码</label>
                            </div>
                            </div>
                            <div class="row" style="margin-top: 30px;">
                                <a class="waves-effect waves-light btn modal-trigger col s4" href="#modal1" onclick="login()" style="margin-left: 50px">登录</a>
                                <!-- Modal Structure -->
                                <div id="modal1" class="modal" style="margin-top: 130px">
                                    <div class="modal-content">
                                        <h4>信息错误</h4>
                                        <p>用户名或密码不能为空</p>
                                    </div>
                                    <div class="modal-footer" style="padding-right: 25px">
                                        <a href="#!" class="modal-close waves-effect waves-light btn">确定</a>
                                    </div>
                                </div>

                            <a class="waves-effect waves-light btn col s4" style="margin-left: 30px" href="<%=request.getContextPath()%>/index.jsp">返回</a>
                        </div>
                            <script src="static/js/login.js"></script>
                    </div>
                    </form>
                </div>
            </div>
        </div>


        <!--  Scripts-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="static/js/materialize.js"></script>
        <script src="static/js/init.js"></script>

    </body>
</html>