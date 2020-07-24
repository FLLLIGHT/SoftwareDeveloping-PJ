<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/20
  Time: 下午8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/theme.css" rel="stylesheet" type="text/css" media="all" />

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400|Roboto:300,400,500" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Kirang+Haerang" rel="stylesheet">
</head>
<body>
<%@ include file="navbar.jsp"%>
<div style="margin-top: 100px"></div>
<!--
<form action="/SoftwareDeveloping_PJ_war_exploded/account/register" method="post">
    email: <input type="text" name="email">
    username: <input type="text" name="userName">
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
                        <h1 class="mb-1">Create Account</h1>
                        <span>No credit card required</span>
                    </div>
                    <form action="/SoftwareDeveloping_PJ_war_exploded/account/register" method="post" id="formRegister">
                        <div class="form-group">
                            <input type="text" name="userName" id="userName" placeholder="User Name" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="text" name="email" id="email" placeholder="Email Address" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" name="pass" id="pass" placeholder="Password" class="form-control">
                            <small class="text-muted">Must be at least 8 characters</small>
                        </div>
                        <div class="form-group">
                            <input type="password" name="passwordConfirm" id="passwordConfirm" placeholder="Confirm Password" class="form-control">
                        </div>
                        <div class="form-group">
                            <button class="btn-block btn btn-primary" type="submit">Sign in</button>
                        </div>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="signup-agree">
                            <label class="custom-control-label text-small text-muted" for="signup-agree">I agree to the <a href="#">Terms &amp;
                                Conditions</a>
                            </label>
                        </div>
                        <hr>
                        <div class="text-center text-small text-muted">
                <span>Already have an account yet? <a href="/SoftwareDeveloping_PJ_war_exploded/jsp/login.jsp">Sign In</a>
                </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

</div>


<div aria-live="polite" aria-atomic="true" style="position: fixed; top: 120px; right: 20px; min-height: 200px; width: 100%">
    <div style="position: absolute; top: 0; right: 0;">
        <div id="toast-2" class="toast" role="alert" data-delay="5000">
            <div class="toast-header">
                <strong class="mr-auto">Login Success</strong>
                <small>Just now</small>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="toast-body">
                There is something wrong with your username or password, please check again!
            </div>
        </div>
    </div>
</div>

<div aria-live="polite" aria-atomic="true" style="position: fixed; top: 120px; right: 20px; min-height: 200px; width: 100%">
    <div style="position: absolute; top: 0; right: 0;">
        <div id="toast-3" class="toast" role="alert" data-delay="5000">
            <div class="toast-header">
                <strong class="mr-auto">Register Fail</strong>
                <small>Just now</small>
                <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="toast-body">
                User name has been registered, please change your user name and try again.
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquerysession.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/register.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/theme.js"></script>

<script>
    $(function () {
        let status = '${requestScope.loginStatus}';
        if(status==="true"){
            $.session.set("loginStatus", "true");
            $(location).attr('href', "${requestScope.pageBeforeLogin}");
        }
        let message = '${requestScope.message}';
        if(message==="userNameRepeated"){
            $('#toast-3').toast('show');
        }
    })
</script>
</body>
</html>
