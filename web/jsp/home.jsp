<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/26
  Time: 下午12:36
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/20
  Time: 下午6:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>home</title>
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/aos.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/theme.css" rel="stylesheet" type="text/css" media="all" />

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400|Roboto:300,400,500" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Kirang+Haerang" rel="stylesheet">
</head>
<body>
<%@ include file="/jsp/navbar.jsp"%>

<section class="controls-inside controls-light p-0 bg-primary-3" data-flickity='{ "imagesLoaded": true, "wrapAround": true }'>
    <c:forEach items="${requestScope.hottestImages}" var="image">
        <div class="carousel-cell py-5">
            <img src="/SoftwareDeveloping_PJ_war_exploded/images/${image.path}" alt="Image" class="bg-image opacity-50">
            <div class="container">
                <div class="row justify-content-center min-vh-70 align-items-center">
                    <div class="col-lg-10 col-xl-9">
                        <div class="text-center text-light">
                            <h4 class="display-3">${image.title}</h4>
                            <h3 class="lead">${image.description}</h3>
                            <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${image.imageId}" class="btn btn-primary btn-lg">Detail</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</section>



<section>
    <div class="container">
        <div class="row mb-4">
            <c:forEach items="${requestScope.latestImages}" var="image">
            <div class="col-md-6 col-lg-4 d-flex" data-aos="fade-up" data-aos-delay="200">
                <div class="card">
                    <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${image.imageId}">
                        <img src="/SoftwareDeveloping_PJ_war_exploded/images/${image.path}" alt="Image" class="card-img-top">
                    </a>
                    <div class="card-body d-flex flex-column">
                        <div class="d-flex justify-content-between mb-3">
                            <div class="text-small d-flex">
                                <div class="mr-2">
                                    <a href="#">${image.content}</a>
                                </div>
                                <span class="text-muted">${image.dateLastModified}</span>
                            </div>
                            <span class="badge bg-primary-alt text-primary">
                        <svg class="icon icon-sm bg-primary" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z" fill="#212529" />
                        </svg>

                                ${image.heat}
                      </span>
                        </div>
                        <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${image.imageId}">
                            <h4 >${image.title}</h4>
                        </a>
                        <p class="flex-grow-1" >
                            ${image.description}
                        </p>
                        <div class="d-flex align-items-center mt-3">
                            <div class="ml-1">
                                <span class="text-small text-muted">By</span>
                                <span class="text-small" >${image.author}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>


<%--<a href="jsp/login.jsp">login</a>--%>
<%--<br/>--%>
<%--<a href="jsp/register.jsp">register</a>--%>
<%--<br/>--%>
<%--<a href="jsp/search.jsp">search</a>--%>
<%--<br/>--%>
<%--<a href="/SoftwareDeveloping_PJ_war_exploded/image/queryCollectedImages">collection</a>--%>
<%--<br/>--%>
<%--<a href="jsp/upload.jsp">upload</a>--%>
<%--<br/>--%>
<%--<a href="/SoftwareDeveloping_PJ_war_exploded/image/queryUploadedImages">profile</a>--%>
<%--<br/>--%>
<%--<a href="/SoftwareDeveloping_PJ_war_exploded/friend/jumpToFriendPage">friend</a>--%>
<%--<br/>--%>
<%--<a href="jsp/navbar.jsp">navbar</a>--%>

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



<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquerysession.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/flickity.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/aos.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/theme.js"></script>

<script>
    $(function () {
        let status = '${requestScope.loginStatus}';
        if(status==="true"){
            $.session.set("loginStatus", "true");
            $(location).attr('href', "${requestScope.pageBeforeLogin}");
        }

        function handler(){
            AOS.init();
            document.removeEventListener('scroll', handler);
        }
        document.addEventListener('scroll', handler)
    })
</script>
</body>
</html>
