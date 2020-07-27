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

<section class="header-inner">
    <div class="container">
        <div class="row my-3">
            <div class="col">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Home</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#">Customer Stories</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">Customer Story</li>
                    </ol>
                </nav>
            </div>
        </div>
        <div class="row justify-content-center my-4">
            <div class="col-auto">
                <img src="#" alt="Logo" class="icon icon-lg">
            </div>
        </div>
        <div class="row justify-content-center text-center">
            <div class="col-lg-9 col-xl-8">
                <h4>${requestScope.image.title}</h4>
            </div>
            <div class="col-lg-3 col-xl-4">
                <c:if test="${!requestScope.isCollected}">
                <a class="badge bg-primary-alt text-primary" href="/SoftwareDeveloping_PJ_war_exploded/image/authority/collectImage?imageId=${requestScope.image.imageId}">
                    <svg class="icon bg-primary" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z" fill="#212529"></path></svg>
                ${requestScope.image.heat}
                </a>
                </c:if>
                <c:if test="${requestScope.isCollected}">
                    <a class="badge bg-primary-alt text-primary" href="/SoftwareDeveloping_PJ_war_exploded/image/authority/removeCollectedImageWithoutAjax?imageId=${requestScope.image.imageId}">
                        <svg class="icon bg-primary" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z" fill="#212529"></path></svg>
                            ${requestScope.image.heat}
                    </a>
                </c:if>
            </div>
        </div>
        <div class="row my-6 justify-content-between">
            <div class="col-lg-7 col-xl-8 mb-3 mb-lg-0 pr-0 pl-0" id="zoom">
                <img src="/SoftwareDeveloping_PJ_war_exploded/images/${requestScope.image.path}" alt="Image" class="rounded">
            </div>
            <div class="col-lg-4 col-xl-3">
                <div class="mb-3">
                    <h3 class="mb-1">Description</h3>
                    <span>
                        ${requestScope.image.description}
                    </span>
                </div>
                <div class="mb-3">
                    <h3 class="mb-1">Subject</h3>
                    <span>
                        ${requestScope.image.content}
                    </span>
                </div>
                <div class="mb-3">
                    <h3 class="mb-1">Author</h3>
                    <span>${requestScope.image.author}</span>
                </div>
                <div class="mb-3">
                    <h3 class="mb-1">Country</h3>
                    <span>${requestScope.image.country}</span>
                </div>
                <div class="mb-3">
                    <h3 class="mb-1">City</h3>
                    <span>${requestScope.image.city}</span>
                </div>
                <div class="mb-3">
                    <h3 class="mb-1">Time</h3>
                    <span>${requestScope.image.dateLastModified}</span>
                </div>

            </div>
        </div>
    </div>
    <div class="divider">
        <svg width="100%" height="100%" version="1.1" viewbox="0 0 100 100" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="none">
            <path d="M0,0 C40,33 66,52 75,52 C83,52 92,33 100,0 L100,100 L0,100 L0,0 Z" fill="#ffffff"></path>
        </svg>
    </div>
</section>




<%--id: ${requestScope.image.imageId}--%>
<%--<br/>--%>
<%--title: ${requestScope.image.title}--%>
<%--<br/>--%>
<%--description: ${requestScope.image.description}--%>
<%--<br/>--%>
<%--<br/>--%>
<%--image: <img src="../images/${requestScope.image.path}">--%>
<%--<br/>--%>
<%--<c:if test="${!requestScope.isCollected}">--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/authority/collectImage?imageId=${requestScope.image.imageId}">collect</a>--%>
<%--</c:if>--%>
<%--<c:if test="${requestScope.isCollected}">--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/authority/removeCollectedImage?imageId=${requestScope.image.imageId}">remove</a>--%>
<%--</c:if>--%>
<%--<br/>--%>
<%--<br/>--%>


<div aria-live="polite" aria-atomic="true" style="position: fixed; top: 120px; right: 20px; min-height: 200px; width: 20%">
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
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.zoom.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/theme.js"></script>

<script>
    $(function () {
        let status = '${requestScope.loginStatus}';
        if(status==="true"){
            $.session.set("loginStatus", "true");
            $(location).attr('href', "${requestScope.pageBeforeLogin}");
        }
        $("#zoom").zoom();
    })
</script>

</body>
</html>
