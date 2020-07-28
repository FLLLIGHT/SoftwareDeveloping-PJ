<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/20
  Time: 下午8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>login</title>
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/theme.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/bootstrapValidator.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/async-google-recaptcha-all.css" rel="stylesheet" type="text/css" media="all" />

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400|Roboto:300,400,500" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Kirang+Haerang" rel="stylesheet">
</head>
<body>
<%@ include file="navbar.jsp"%>
<div style="margin-top: 100px"></div>

<!--
<form action="/SoftwareDeveloping_PJ_war_exploded/account/login" method="post">
    username: <input type="text" name="userName" value="${param.userName}">
    password: <input type="text" name="pass">
    <input type="submit" value="submit">
</form>
-->
<div class="container">
    <section class="min-vh-100 py-5">
        <div class="container">
            <div class="row justify-content-center mb-md-6">
                <div class="col-auto">
                    <a href="/SoftwareDeveloping_PJ_war_exploded/index.jsp">
                        <img src="#" alt="Leap">
                    </a>
                </div>
            </div>
            <div class="row justify-content-center pt-6">
                <div class="col-xl-4 col-lg-5 col-md-6">
                    <div class="text-center mb-4">
                        <h1 class="mb-1">Welcome back</h1>
                        <span>Enter your account details below</span>
                    </div>
                    <form action="/SoftwareDeveloping_PJ_war_exploded/account/login" method="post" id="formLogin" onsubmit="return submitForm()">
                        <div class="form-group">
                            <input type="text" name="userName" id="userName" placeholder="User Name" class="form-control" value="${param.userName}">
                        </div>
                        <div class="form-group">
                            <input type="password" name="pass" id="pass" placeholder="Password" class="form-control">
                        </div>
                        <div class="form-group">
                            <div class="g-recaptcha" data-callback="robotVerified" data-sitekey="6LdbvbYZAAAAAAOW7frQ-yQF0HHebGDTPMTyyoLJ"></div>
                        </div>
                        <div class="form-group">
                            <button class="btn-block btn btn-primary" type="submit">Sign in</button>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="login-remember">
                            <label class="custom-control-label text-small text-muted" for="login-remember">Keep me signed in</label>
                        </div>
                        <hr>
                        <div class="text-center text-small text-muted">
                <span>Don't have an account yet? <a href="/SoftwareDeveloping_PJ_war_exploded/jsp/register.jsp">Create one</a>
                </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>


<div aria-live="polite" aria-atomic="true" style="position: fixed; top: 120px; right: 20px; min-height: 200px; width: 20%">
    <div style="position: absolute; top: 0; right: 0;">
        <div id="toast-1" class="toast" role="alert" data-delay="5000">
            <div class="toast-header">
                <strong class="mr-auto">Login Fail</strong>
                <small>Just now</small>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="toast-body">
                ${requestScope.message}
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/async-google-recaptcha.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/md5.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/myEncrypt.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/login.js"></script>

<script>
    $(function(){
        let status = '${requestScope.loginStatus}';
        if(status==="false"){
            $('#toast-1').toast('show');
        }
        $('.g-recaptcha').asyncReCAPTCHA({
        })

        $('#formLogin').submit(function (e) {
            if (e.isDefaultPrevented()) return false;
            submitForm();
        })

    })
    function robotVerified(token){
        console.log(token);
    }
</script>
</body>
</html>
