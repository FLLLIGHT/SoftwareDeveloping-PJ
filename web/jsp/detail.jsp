<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/21
  Time: 下午5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>detail</title>
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

id: ${requestScope.image.imageId}
<br/>
title: ${requestScope.image.title}
<br/>
description: ${requestScope.image.description}
<br/>
<br/>
image: <img src="../images/${requestScope.image.path}">
<br/>
<c:if test="${!requestScope.isCollected}">
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/authority/collectImage?imageId=${requestScope.image.imageId}">collect</a>
</c:if>
<c:if test="${requestScope.isCollected}">
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/authority/removeCollectedImage?imageId=${requestScope.image.imageId}">remove</a>
</c:if>
<br/>
<br/>


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
                Enjoy your journey in our website!
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquerysession.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/theme.js"></script>

<script>
    $(function () {
        let status = '${requestScope.loginStatus}';
        if(status==="true"){
            $.session.set("loginStatus", "true");
            $(location).attr('href', "${requestScope.pageBeforeLogin}");
        }
    })
</script>

</body>
</html>
