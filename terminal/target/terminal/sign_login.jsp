<%--
  Created by IntelliJ IDEA.
  User: yfuxzpskbr
  Date: 2021/6/6
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <link rel="shortcut icon" href="./res/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./css/sweetalert.css">
    <script src="./js/jquery-3.2.1.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./js/sweetalert-dev.js"></script>
    <title>欢迎登录</title>
    <style>
        body {
            margin: 0;
            color: #6a6f8c;
            background-image: url(./res/background.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            font: 600 16px/18px 'Open Sans', sans-serif;
        }

        *,
        :after,
        :before {
            box-sizing: border-box
        }

        .clearfix:after,
        .clearfix:before {
            content: '';
            display: table
        }

        .clearfix:after {
            clear: both;
            display: block
        }

        a {
            color: inherit;
            text-decoration: none
        }

        .login-wrap {
            width: 100%;
            margin: auto;
            margin-top: 100px;
            max-width: 525px;
            min-height: 670px;
            position: relative;
            background: url(./res/background-login.jpg) no-repeat center;
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19);
        }

        .login-html {
            width: 100%;
            height: 100%;
            position: absolute;
            padding: 90px 70px 50px 70px;
            background: rgba(40, 57, 101, .9);
        }

        .login-html .sign-in-htm,
        .login-html .sign-up-htm,
        .login-html .forgot-htm {
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            position: absolute;
            transform: rotateY(180deg);
            backface-visibility: hidden;
            transition: all .4s linear;
        }

        .login-html .sign-in,
        .login-html .sign-up,
        .login-html .forgot,
        .login-form .group .check {
            display: none;
        }

        .login-html .tab,
        .login-form .group .label,
        .login-form .group .button {
            text-transform: uppercase;
            outline: none;
        }

        .login-form .group .button:hover {
            background-color: #1161ee77;
        }

        .login-html .tab {
            font-size: 22px;
            margin-right: 15px;
            padding-bottom: 5px;
            margin: 0 15px 10px 0;
            display: inline-block;
            border-bottom: 2px solid transparent;
        }

        .login-html .sign-in:checked + .tab,
        .login-html .sign-up:checked + .tab,
        .login-html .forgot:checked + .tab {
            color: #fff;
            border-color: #1161ee;
        }

        .login-form {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }

        .login-form .group {
            margin-bottom: 15px;
        }

        .login-form .group .label,
        .login-form .group .input,
        .login-form .group .button {
            width: 100%;
            color: #fff;
            display: block;
        }

        .login-form .group .input,
        .login-form .group .button {
            border: none;
            padding: 15px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, .1);
        }

        .login-form .group input[data-type="password"] {
            text-security: circle;
            -webkit-text-security: circle;
        }

        .login-form .group .label {
            color: #aaa;
            font-size: 12px;
        }

        .login-form .group .button {
            background: #1161ee;
        }

        .login-form .group label .icon {
            width: 15px;
            height: 15px;
            border-radius: 2px;
            position: relative;
            display: inline-block;
            background: rgba(255, 255, 255, .1);
        }

        .login-form .group label .icon:before,
        .login-form .group label .icon:after {
            content: '';
            width: 10px;
            height: 2px;
            background: #fff;
            position: absolute;
            transition: all .2s ease-in-out 0s;
        }

        .login-form .group label .icon:before {
            left: 3px;
            width: 5px;
            bottom: 6px;
            transform: scale(0) rotate(0);
        }

        .login-form .group label .icon:after {
            top: 6px;
            right: 0;
            transform: scale(0) rotate(0);
        }

        .login-form .group .check:checked + label {
            color: #fff;
        }

        .login-form .group .check:checked + label .icon {
            background: #1161ee;
        }

        .login-form .group .check:checked + label .icon:before {
            transform: scale(1) rotate(45deg);
        }

        .login-form .group .check:checked + label .icon:after {
            transform: scale(1) rotate(-45deg);
        }

        .login-html .sign-in:checked + .tab + .forgot + .tab + .sign-up + .tab + .login-form .sign-in-htm {
            transform: rotate(0);
        }

        .login-html .forgot:checked + .tab + .sign-up + .tab + .login-form .forgot-htm {
            transform: rotate(0);
        }

        .login-html .sign-up:checked + .tab + .login-form .sign-up-htm {
            transform: rotate(0);
        }

        .hr {
            height: 2px;
            margin: 15px 0 15px 0;
            background: rgba(255, 255, 255, .2);
        }

        .foot-lnk {
            text-align: center;
        }

        .foot-lnk > label {
            cursor: pointer;
        }

        #sign-sendCode {
            background: rgba(255, 255, 255, .3);
        }

        #sign-sendCode:hover {
            background: rgba(255, 255, 255, .2);
        }

        .navbar a:hover {
            background-image: -webkit-linear-gradient(bottom, red, #fd8403, yellow);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
    <script>
        var checkCode;
        var valid = false;
        var time = 120;
        var interval;
        //入口函数
        $(function () {
            //修改alert的源代码
            window.alert = swal; //sweetalert
            //发送验证码按钮的点击事件
            //发送验证码按钮点击事件
            $("#sign-sendCode").click(sendCode);
            //注册按钮的点击事件
            $("#sign").click(sign);
            //注册按钮点击事件
            $("#login").click(login);
        });

        /*检测协议框*/
        function checkAgree() {
            return $("#sign-agree").prop("checked");
        }

        /*检测邮箱和手机*/
        function checkEmail_phone() {
            let sign_ep_tag = false;
            let email_phone = $("#sign-email-phone").val();
            //先检测是不是电话
            let reg = /^1[3458]\d{9}$/;
            sign_ep_tag = reg.test(email_phone);
            if (sign_ep_tag) return sign_ep_tag;
            //再检测是不是邮箱
            reg = /^\w+@[a-zA-Z0-9]{2,10}(?:\.[a-z]{2,4}){1,3}$/;
            return reg.test(email_phone);
        }

        /*检测密码*/
        function checkPwd() {
            //获取密码
            let password = $("#sign-password").val();
            if (password.length < 8) { //密码小于八位不合格
                return false;
            }
            //密码是否为纯数字
            for (let i = 0; i < password.length; i++) {
                if (password[i] < '0' || password[i] > '9') {
                    return true;
                }
            }
            return false;
        }

        /**发送验证码按钮*/
        function sendCode() {
            //先检测是否勾选协议
            if (!checkAgree()) {
                alert("请勾选同意协议");
                $("#sign-sendCode").html("发送验证码");
                return;
            }
            //再检测邮箱是否合格
            if (!checkEmail_phone()) {
                // $("#emailInfo").css("display", "block");
                alert("邮箱或手机号格式不正确!");
                $("#sign-sendCode").html("发送验证码");
                return;
            }

            //其次检测密码是否合格
            if (!checkPwd()) {
                // $("#passwordInfo").css("display", "block");
                alert("密码不能低于八位,不能为纯数字");
                $("#sign-sendCode").html("发送验证码");
                return;
            }
            //最后检测密码是否一致
            if ($("#sign-password").val() != $("#sign-password_").val()) {
                // $("#password_Info").css("display", "block");
                alert("密码不一致");
                $("#sign-sendCode").html("发送验证码");
                return;
            }
            /*提示信息*/
            valid = true;
            interval = setInterval(function () {
                time--;
                $("#sign-sendCode").html(time + "s后重新发送");
                if (time == 0) {
                    time = 120;
                    clearTimeout(interval);
                    valid = false;
                    $("#sign-sendCode").html("重新发送");
                }
            }, 1000);
            //最后一个检测--邮箱是否被注册过
            $.post("checkEmailServlet", {
                email_phone: $("#sign-email-phone").val()
            }, function (date) {
                //回调函数
                if (date == "false") {
                    $.post("sendCodeServlet", {
                        email_phone: $("#sign-email-phone").val()
                    }, function (date) {
                        //回调函数
                        checkCode = date;
                        // alert(checkCode);
                    }, "text");
                } else {
                    alert("该手机或邮箱已被注册,请直接登录或者找回密码");
                }
            }, "text");
        }

        /*注册按钮的事件*/
        function sign() {
            //获取邮箱或手机号
            let email_phone = $("#sign-email-phone").val();
            //获取密码
            let password = $("#sign-password").val();
            //获取用户输入的验证码
            let checkCode_ = $("#sign-checkCode").val();
            if (valid && checkCode_ == checkCode) {
                //关闭按钮的点击事件
                document.getElementById("sign").disabled = true;
                //发送注册请求
                $.post("signServlet", {
                    email_phone: email_phone,
                    password: password
                }, function (date) {
                    if (date == "true") {
                        alert("注册成功!");
                    } else {
                        alert("服务器错误,代码8214");
                    }
                }, "text");
                document.getElementById("sign").disabled = false;
            } else if (valid) {
                alert("验证码错误");
            } else {
                alert("验证码过期");
            }
        }

        /*登录按钮*/
        function login() {
            //获取账号
            let user = $("#login-user").val();
            //获取密码
            let password = $("#login-password").val();
            //获取记住我
            let remember = $("#login-remember").prop("checked");
            //检测账号不能为空
            if (user == '') {
                alert("用户名不能为空");
                return;
            }
            if (password == '') {
                alert("密码不能为空");
                return;
            }
            $("#login").disabled = true;
            $("#login").html("正在登录,请稍后...");
            $.post("loginServlet", {
                email_phone: user,
                password: password,
                remember:remember
            }, function (date) {
                if (date == "用户名不存在") {
                    alert("用户不存在");
                } else if (date == "密码错误") {
                    alert("密码错误");
                } else {
                    location.href = "index.jsp";
                }
                $("#login").disabled = false;
                $("#login").html("登录");
            }, "text");
        }
    </script>
</head>

<body>
<%
    request.setAttribute("tag", Integer.parseInt(request.getParameter("tag")));
%>
<c:if test="${tag==0}">
    <script>
        $(function () {
            document.getElementById("tab-1").checked = true;
        });
    </script>
</c:if>
<c:if test="${tag==1}">
    <script>
        $(function () {
            document.getElementById("tab-3").checked = true;
        });
    </script>
</c:if>
<!-- 导航条 -->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Brand</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/index.jsp">小黑市首页<span class="sr-only">(current)</span></a></li>
                <li><a href="#">hi,来到小黑市</a></li>
                <c:if test="${isLogin!=true}">
                    <li><a href="sign_login.jsp?tag=0">请登录</a></li>
                    <li><a href="sign_login.jsp?tag=1">免费注册</a></li>
                </c:if>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${isLogin==true}">
                    <li><img src="./res/headimg/${user.user_id}.jpg" alt="" width="50" height="50"
                             style="border-radius: 25px;"></li>
                </c:if>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">我的小黑市<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="user.jsp">我的主页</a></li>
                        <li><a href="${pageContext.request.contextPath}/orders.jsp">我的订单</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="./sign_login.jsp?tag=0">切换账号</a></li>
                    </ul>
                </li>
                <li><a href="purchaseCart.jsp">购物车</a></li>
                <li><a href="sale.jsp">我要当卖家</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="login-wrap">
    <div class="login-html">
        <input id="tab-1" type="radio" name="tab" class="sign-in">
        <label for="tab-1" class="tab">登录</label>
        <input id="tab-2" type="radio" name="tab" class="forgot">
        <label for="tab-2" class="tab">忘记密码</label>
        <input id="tab-3" type="radio" name="tab" class="sign-up">
        <label for="tab-3" class="tab">注册</label>
        <div class="login-form">
            <div class="sign-in-htm">
                <div class="group">
                    <label for="login-user" class="label">账号</label>
                    <input id="login-user" type="text" class="input" placeholder="用户名,邮箱,手机号">
                </div>
                <div class="group">
                    <label for="login-password" class="label">密码</label>
                    <input id="login-password" type="password" class="input" placeholder="请输入密码">
                </div>
                <div class="group">
                    <input id="login-remember" type="checkbox" class="check" checked="checked">
                    <label for="login-remember" style="font-size: 15px;"><span class="icon"></span>&nbsp记住我</label>
                </div>
                <div class="group">
                    <button id="login" class="button">登录</button>
                </div>
                <div class="hr"></div>
                <div class="foot-lnk">
                    <label for="tab-2">忘记密码?</label>
                </div>
            </div>
            <div class="forgot-htm">
                <div class="group">
                    <label for="forget-user" class="label">手机号或邮箱</label>
                    <input id="forget-user" type="text" class="input" placeholder="已绑定的邮箱,手机号">
                </div>
                <div class="group" style="width: 48%;float: left;">
                    <label for="forget-checkCode" class="label ">验证码</label>
                    <input id="forget-checkCode" type="text " class="input" placeholder="请输入验证码">
                </div>
                <div class="group" style="width: 48%;float: left;margin-left: 4%;">
                    <label for="forgot-sendCode" class="label ">&nbsp</label>
                    <button id="forgot-sendCode" class="button" style="text-align: center;">发送验证码</button>
                </div>
                <div class="group">
                    <button id="forget" class="button">验证</button>
                </div>
                <div class="hr"></div>
                <div class="foot-lnk">
                    <label for="tab-1">去登录</label>
                </div>
            </div>
            <div class="sign-up-htm">
                <div class="group">
                    <label for="sign-email-phone" class="label">手机号或邮箱</label>
                    <input id="sign-email-phone" type="text" class="input" placeholder="请输入手机号或邮箱">
                </div>
                <div class="group">
                    <label for="sign-password" class="label">设置密码</label>
                    <input id="sign-password" type="password" class="input" placeholder="请设置密码,要求不能为纯数字,至少8位">
                </div>
                <div class="group">
                    <label for="sign-password_" class="label">确认密码</label>
                    <input id="sign-password_" type="password" class="input" placeholder="请再次输入密码">
                </div>
                <div class="group" style="width: 48%;float: left;">
                    <label for="sign-checkCode" class="label ">验证码</label>
                    <input id="sign-checkCode" type="text " class="input" placeholder="请输入验证码">
                </div>
                <div class="group" style="width: 48%;float: left;margin-left: 4%;">
                    <label for="sign-sendCode" class="label ">&nbsp</label>
                    <button id="sign-sendCode" class="button" style="text-align: center;">发送验证码</button>
                </div>
                <div class="group">
                    <input id="sign-agree" type="checkbox" class="check" checked="checked">
                    <label for="sign-agree" style="font-size: 15px;"><span class="icon"></span>&nbsp同意协议</label>
                </div>
                <div class="group">
                    <button id="sign" class="button " style="text-align: center;">立即注册</button>
                </div>
                <div class="hr "></div>
                <div class="foot-lnk">
                    <label for="tab-1">已经注册,立即登录</label>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>

</html>
