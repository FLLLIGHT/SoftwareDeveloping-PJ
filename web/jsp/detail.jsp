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
        <div class="row justify-content-center mt-5 mb-5">
            <div class="col-3">
                <a href="/SoftwareDeveloping_PJ_war_exploded/index.jsp">
                    <img src="/SoftwareDeveloping_PJ_war_exploded/images/LOGO.png" alt="Logo">
                </a>
            </div>
        </div>
        <div class="row justify-content-center text-center">
            <div class="col-lg-9 col-xl-8">
                <h4>${requestScope.image.title}</h4>
            </div>
            <div class="col-lg-3 col-xl-4 bgcolor4">
                <c:if test="${!requestScope.isCollected}">
                <a class="badge bg-primary-alt text-primary" href="/SoftwareDeveloping_PJ_war_exploded/image/authority/collectImage?imageId=${requestScope.image.imageId}" style="font-size: 1.2rem; font-weight: 500;">
                    <svg class="icon-lg bg-light uncollected" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z" fill="white"></path></svg>
                ${requestScope.image.heat}
                </a>
                </c:if>
                <c:if test="${requestScope.isCollected}">
                    <a class="badge bg-primary-alt text-primary" href="/SoftwareDeveloping_PJ_war_exploded/image/authority/removeCollectedImageWithoutAjax?imageId=${requestScope.image.imageId}" style="font-size: 1.2rem; font-weight: 500;">
                        <svg class="icon-lg bg-primary" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" style="background: transparent !important;">
                            <path class="collected" d="M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z" fill="rgb(104, 88, 91)"></path></svg>
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
</section>

<section class="has-divider">
    <div class="container pt-3">
        <div class="row justify-content-center">
            <div class="col-xl-7 col-lg-8 col-md-10">
                <hr>
                <div class="d-flex"><h5 class="my-4">Comments</h5>
                    <ul class="my-4 list-unstyled d-flex ml-2 flex-wrap" style="padding-top: 26px !important; padding-bottom: 8px !important; margin-left: auto !important;">
                        <span class="text-muted">Sort:</span>
                        <li class="mx-1">
                            <div class="custom-control custom-radio mb-2">
                                <input type="radio" id="time" name="sort" value="time" class="custom-control-input" checked="">
                                <label class="custom-control-label" for="time">time</label>
                            </div>
                        </li>
                        <li class="mx-1">
                            <div class="custom-control custom-radio">
                                <input type="radio" id="heat" name="sort" value="heat" class="custom-control-input">
                                <label class="custom-control-label" for="heat">heat</label>
                            </div>
                        </li>
                    </ul>
                </div>


                <ol class="comments" id="comments">
                </ol>


                <hr>
                <h5 class="my-4">Post a comment</h5>
                <form action="/SoftwareDeveloping_PJ_war_exploded/post/authority/submitPost?imageId=${requestScope.image.imageId}" method="post">
                    <div class="form-group">
                        <textarea class="form-control" name="post" id="post" rows="10" placeholder="Comment" required></textarea>
                    </div>
                    <div class="d-flex align-items-center justify-content-between bgcolor3">
                        <button class="btn btn-primary ml-auto" type="submit">Submit</button>
                    </div>
                </form>
            </div>
        </div>
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
<%@ include file="footer.jsp"%>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquerysession.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.zoom.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/ajaxPosts.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/redirect.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/theme.js"></script>

<script>
    $(function () {
        let status = '${requestScope.loginStatus}';
        if(status==="true"){
            $.session.set("loginStatus", "true");
            $(location).attr('href', "${requestScope.pageBeforeLogin}");
        }
        $("#zoom").zoom();
        ajaxPost("time", ${requestScope.image.imageId});

        $("#time").click(function(){
            ajaxPost("time", ${requestScope.image.imageId});
        });

        $("#heat").click(function(){
            ajaxPost("heat", ${requestScope.image.imageId});
        });
    })
</script>

</body>
</html>
