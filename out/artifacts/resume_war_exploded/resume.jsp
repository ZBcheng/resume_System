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
    <link href="https://font.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="static/css/style.css" type="text/css" rel="stylesheet" />
</head>


<body style="font-family: 'Roboto', sans-serif">
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
                                    <input id="name" type="text" class="validate" name="name" value="<%=User.cur_user.info_list.getName()%>">
                                    <label for="name">姓名</label>
                                </div>

                                <div class="input-field col s6">
                                    <i class="material-icons prefix">email</i>
                                    <input id="gender" type="gender" class="validate" name="gender" value="<%=User.cur_user.info_list.getGender()%>">
                                    <label for="gender">邮箱</label>

                                </div>


                                <div class="input-field col s6">
                                    <i class="material-icons prefix">phone</i>
                                    <input id="phone" type="tel" class="validate" name="phone" value="<%=User.cur_user.info_list.getPhone()%>">
                                    <label for="phone">电话</label>
                                </div>


                                <div class="input-field col s6">
                                    <i class="material-icons prefix">email</i>
                                    <input id="email" type="email" class="validate" name="email" value="<%=User.cur_user.info_list.getEmail()%>">
                                    <label for="email">邮箱</label>
                                </div>

                                <div class="input-field col s6" name="birthday">
                                    <i class="material-icons prefix">cake</i>
                                    <input id="birthday" type="tel" class="datepicker" name="birthday" value="<%=User.cur_user.info_list.getBirthday()%>">
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
                                    <input id="city" type="text" class="validate" name="city" value="<%=User.cur_user.info_list.getCity()%>">
                                    <label for="city">城市</label>
                                </div>

                                <div class="input-field col s12">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input id="website" type="text" class="validate" name="website" value="<%=User.cur_user.info_list.getWebsite()%>">
                                    <label for="website">个人主页</label>
                                </div>


                            </div>
                        </div>
                        <div id="test5">
                            <h5>教育信息</h5>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">school</i>
                                    <input id="school" type="text" class="validate" name="school" value="<%=User.cur_user.info_list.getSchool()%>">
                                    <label for="school">学校</label>
                                </div>

                                <div class="input-field col s12">
                                    <i class="material-icons prefix">building</i>
                                    <input id="major" type="text" class="validate" name="major" value="<%=User.cur_user.info_list.getMajor()%>">
                                    <label for="major">专业</label>
                                </div>
                            </div>
                            <h5>技能</h5>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">code</i>
                                    <input id="language" type="text" class="validate" name="language" value="<%=User.cur_user.info_list.getFrameworks()%>">
                                    <label for="frameworks">编程语言</label>

                                </div>

                                <div class="input-field col s12">
                                    <i class="material-icons prefix">bug_report</i>
                                    <input id="frameworks" type="text" class="validate" name="frameworks" value="<%=User.cur_user.info_list.getFrameworks()%>">
                                    <label for="frameworks">编程框架</label>

                                </div>
                            </div>
                        </div>
                        <div id="test6">
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">books</i>
                                    <input id="award" type="text" class="validate" name="award" value="<%=User.cur_user.info_list.getAwards()%>">
                                    <label for="award">奖项</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">accessibility</i>
                                    <input id="introduce" type="text" class="validate" name="introduce" value="<%=User.cur_user.info_list.getIntroduce()%>">
                                    <label for="introduce">个人评价</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">chat</i>
                                    <input id="others" type="text" class="validate" name="others" value="<%=User.cur_user.info_list.getOthers()%>">
                                    <%--                                        <input id="others"  name="others" value="<%=User.cur_user.info_list.getOthers()%>"></input>--%>
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