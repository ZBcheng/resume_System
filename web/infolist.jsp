<%--
  Created by IntelliJ IDEA.
  User: bee0_0
  Date: 2019-05-17
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="resume_user.User"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>创建简历</title>

    <!-- CSS  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="static/css/materialize.css" type="text/css" rel="stylesheet" />
    <link href="static/css/style.css" type="text/css" rel="stylesheet" />
</head>


<body>
    <nav class="white" role="navigation">
    <div class="nav-wrapper container">
        <a id="logo-container" href="<%=request.getContextPath()%>/index_login.jsp" class="brand-logo"><%=User.getCurUser().getUsername()%>的个人简历</a>
    </div>
</nav>
    <form id="info_form" method="post">
        <div class="login-card" style="width: 700px; margin: auto; margin-top: 100px; background: white">
            <div class="row">
                <div class="col s12 m12">
                    <div class="card">
                        <div class="card-image">
                            <img src="static/image/background3.jpg" style="height: 300px;">
                            <span class="card-title"><%=User.getCurUser().getUsername()%>的个人简历</span>
                        </div>
                        <div class="card-content">
                            <div class="row">
                                <form id="list_form" class="col s12" method="post">
                                    <h5>个人信息</h5>
                                    <div class="row">
                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">account_circle</i>
                                            <input id="name" type="text" class="validate">
                                            <label for="name">姓名</label>
                                        </div>

                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">person</i>
                                            <select id="gender">
                                                <option value="" disabled selected>性别</option>
                                                <option value="男">男</option>
                                                <option value="女">女</option>
                                                <option value="其它">其它</option>
                                            </select>
                                            <script>
                                                document.addEventListener('DOMContentLoaded', function() {
                                                    var elems = document.getElementById('gender');
                                                    var instances = M.FormSelect.init(elems);
                                                });
                                            </script>
                                        </div>


                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">phone</i>
                                            <input id="phone" type="tel" class="validate">
                                            <label for="phone">电话</label>
                                        </div>


                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">email</i>
                                            <input id="email" type="email" class="validate">
                                            <label for="email">邮箱</label>
                                        </div>

                                        <div class="input-field col s6" name="birthday">
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

                                        <div class="input-field col s6">
                                            <i class="material-icons prefix">house</i>
                                            <input id="city" type="text" class="validate">
                                            <label for="city">城市</label>
                                        </div>

                                        <div class="input-field col s12">
                                            <i class="material-icons prefix">account_circle</i>
                                            <input id="website" type="text" class="validate">
                                            <label for="website">个人主页</label>
                                        </div>


                                    </div>

                                    <h5>教育信息</h5>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <i class="material-icons prefix">school</i>
                                            <input id="school" type="text" class="validate">
                                            <label for="school">学校</label>
                                        </div>

                                        <div class="input-field col s12">
                                            <i class="material-icons prefix">building</i>
                                            <input id="major" type="text" class="validate">
                                            <label for="major">专业</label>
                                        </div>
                                    </div>

                                    <h5>技能信息</h5>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <select multiple id="language">
                                                <option value="Python">Python</option>
                                                <option value="Java">Java</option>
                                                <option value="Swift">Swift</option>
                                                <option value="Go">Go</option>
                                                <option value="Go">JavaScript</option>
                                                <option value="Go">Ruby</option>
                                            </select>
                                            <label>编程语言</label>

                                        </div>

                                        <div class="input-field col s12">
                                            <select multiple id="frameworks">
                                                <option value="Django">Django</option>
                                                <option value="Flask">Flask</option>
                                                <option value="React">React</option>
                                                <option value="Vue">Vue</option>
                                                <option value="Spring">Spring</option>
                                            </select>
                                            <label>编程框架</label>
                                            <script>
                                                document.addEventListener('DOMContentLoaded', function() {
                                                    var elems = document.getElementById('frameworks');
                                                    var instances = M.FormSelect.init(elems);
                                                });
                                            </script>
                                        </div>
                                    </div>

                                    <h5>获奖情况</h5>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <i class="material-icons prefix">books</i>
                                            <input id="award" type="text" class="validate">
                                            <label for="award">奖项</label>
                                        </div>
                                    </div>

                                    <h5>个人评价</h5>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <textarea id="introduce" class="materialize-textarea" data-length="300"></textarea>
                                            <label for="introduce">个人评价</label>
                                        </div>
                                    </div>

                                    <h5>其它</h5>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <textarea id="others" class="materialize-textarea" data-length="300"></textarea>
                                            <label for="others">其它</label>
                                        </div>
                                    </div>


                                </form>
                            </div>
                        </div>
                        <div class="card-action">
                            <button class="btn" style="margin-left: 43%;" onclick="info_submit()">提交</button>
                            <script src="static/js/info_submit.js"></script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>



<!--  Scripts-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="static/js/materialize.js"></script>
<script src="static/js/init.js"></script>

</body>
</html>