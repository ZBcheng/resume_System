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

    <form class="col s12" id="info_form" action="${pageContext.request.contextPath}/infolist" method="post">
        <div id="log_card" class="login-card" style="width: 800px; margin: auto; margin-top: 100px; background: white">
            <div class="row">
                <div class="col s12 m12">
                    <div class="card">
                        <div class="card-image">
                            <img src="static/image/background3.jpg" style="height: 300px;">
                            <span class="card-title"><%=User.getCurUser().getUsername()%>的个人简历</span>
                        </div>
                        <div class="card-tabs">
                            <ul id="tb_card" class="tabs tabs-fixed-width">
                                <li class="tab"><a class="active" href="#test4">个人信息</a></li>
                                <li class="tab"><a class="active" href="#test5">教育&技能</a></li>
                                <li class="tab"><a href="#test6">其它</a></li>
                            </ul>
                        </div>
                        <div class="card-content">
                            <div id="test4">
                                <h5>基本信息</h5>
                                <div class="row">
                                    <div class="input-field col s6">
                                        <i class="material-icons prefix">account_circle</i>
                                        <input id="name" type="text" class="validate" name="name">
                                        <label for="name">姓名</label>
                                    </div>

                                    <div class="input-field col s6">
                                        <i class="material-icons prefix">person</i>
                                        <select id="gender" name="gender">
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
                                        <input id="phone" type="tel" class="validate" name="phone">
                                        <label for="phone">电话</label>
                                    </div>


                                    <div class="input-field col s6">
                                        <i class="material-icons prefix">email</i>
                                        <input id="email" type="email" class="validate" name="email">
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
                                        <input id="city" type="text" class="validate" name="city">
                                        <label for="city">城市</label>
                                    </div>

                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">account_circle</i>
                                        <input id="website" type="text" class="validate" name="website">
                                        <label for="website">个人主页</label>
                                    </div>


                                </div>
                            </div>
                            <div id="test5">
                                <h5>教育信息</h5>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">school</i>
                                        <input id="school" type="text" class="validate" name="school">
                                        <label for="school">学校</label>
                                    </div>

                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">building</i>
                                        <input id="major" type="text" class="validate" name="major">
                                        <label for="major">专业</label>
                                    </div>
                                </div>
                                <h5>技能</h5>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">code</i>
                                        <select multiple id="language" name="language">
                                            <option value="Python">Python</option>
                                            <option value="Java">Java</option>
                                            <option value="Swift">Swift</option>
                                            <option value="Go">Go</option>
                                            <option value="Go">JavaScript</option>
                                            <option value="Go">Ruby</option>
                                        </select>
                                        <label>编程语言</label>
                                        <script>
                                            document.addEventListener('DOMContentLoaded', function() {
                                                var elems = document.getElementById('language');
                                                var instances = M.FormSelect.init(elems);
                                            });
                                        </script>
                                    </div>

                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">bug_report</i>
                                        <select multiple id="frameworks" name="frameworks">
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
                            </div>
                            <div id="test6">
                                <div class="row">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">books</i>
                                        <input id="award" type="text" class="validate" name="award">
                                        <label for="award">奖项</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">accessibility</i>
                                        <textarea id="introduce" class="materialize-textarea" data-length="300" name="introduce"></textarea>
                                        <label for="introduce">个人评价</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">chat</i>
                                        <textarea id="others" class="materialize-textarea" data-length="300" name="others"></textarea>
                                        <label for="others">其它</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-action">
                            <button data-target="modal1" class="btn modal-trigger" style="weidth: 300px;margin-left: 43%" onclick="info_submit()">提交</button>
                            <script src="static/js/info_submit.js"></script>
                        </div>
                    </div>
                    <script>
                        document.addEventListener('DOMContentLoaded', function() {
                            var elems = document.querySelectorAll('.tabs');
                            var instances = M.Tabs.init(elems);
                        });
                    </script>
                </div>
            </div>
        </div>
    </form>

    <div id="modal1" class="modal">
        <div class="modal-content">
            <h4>请检查信息</h4>
            <p>您有信息未填写，请返回继续填写</p>
        </div>
        <div class="modal-footer">
            <a href="#!" class="modal-close waves-effect waves-green btn-flat">是</a>
        </div>
    </div>



<!--  Scripts-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="static/js/materialize.js"></script>
<script src="static/js/init.js"></script>

</body>
</html>