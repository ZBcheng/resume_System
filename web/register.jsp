<%--
  Created by IntelliJ IDEA.
  User: bee0_0
  Date: 2019-05-18
  Time: 01:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>注册</title>

    <!-- CSS  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="static/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    <link href="static/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>

<body background="static/image/login.jpg">

    <div class="login-card" style="width: 600px; margin: auto;  ">
        <div class="card">


            <h2 style="padding-left: 55px; padding-top: 55px" onclick="register()">注册</h2>
            <div class="row">
                <form class="col s12" id="log_form" action="" method="post">
                    <div class="row" style="margin-left: 50px;">

                        <div class="row" style="margin-top: 10px">
                            <div class="input-field col s10" name="name">
                                <i class="material-icons prefix">face</i>
                                <input id="name" type="text" class="validate" name="name">
                                <label for="name">姓名</label>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 10px">
                            <div class="input-field col s10" name="username">
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

                        <div class="row" style="margin-top: 10px">
                            <div class="input-field col s10" name="email">
                                <i class="material-icons prefix">email</i>
                                <input id="email" type="email" class="validate" name="email">
                                <label for="email">邮箱</label>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 10px">
                            <div class="input-field col s10" name="birthday">
                                <i class="material-icons prefix">cake</i>
                                <input id="birthday" type="tel" class="datepicker" name="birthday">
                                <label for="birthday">生日</label>
                                <script>
                                    document.addEventListener('DOMContentLoaded', function() {
                                        var elem = document.querySelectorAll('.datepicker');
                                        var instances = M.Datepicker.init(elem)
                                    });
                                </script>
                            </div>
                        </div>

                        <div class="row" style="margin-top: 10px">
                            <div class="input-field col s10" name="mobile">
                                <i class="material-icons prefix">phone</i>
                                <input id="mobile" type="text" class="validate" name="mobile">
                                <label for="mobile">手机</label>
                            </div>
                        </div>


                        <div class="row" style="margin-top: 30px;">

                            <a class="waves-effect waves-light btn modal-trigger col s4" href="#modal1" onclick="register()" style="margin-left: 50px">注册</a>

                            <!-- Modal Structure -->

                            <a class="waves-effect waves-light btn col s4" style="margin-left: 30px" href="<%=request.getContextPath()%>/index.jsp">返回</a>
                        </div>
                        <script src="/static/js/register.js"></script>
                    </div>
            </form>
        </div>

    </div>

    </div>
    </div>

    <!--  Scripts-->
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="/static/js/materialize.js"></script>
    <script src="/static/js/init.js"></script>

</body>
</html>
