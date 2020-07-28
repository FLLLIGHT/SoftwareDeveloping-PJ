<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/21
  Time: 下午3:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>search</title>
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/aos.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/theme.css" rel="stylesheet" type="text/css" media="all" />

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,400|Roboto:300,400,500" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Kirang+Haerang" rel="stylesheet">
</head>
<body>
<%@ include file="navbar.jsp"%>
<div style="margin-top: 80px"></div>

<section class="bg-primary-3 text-light has-divider" data-overlay>
    <img src="../images/inner-11.jpg" alt="Image" class="bg-image opacity-50">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10 col-xl-8">
                <h1 class="h2">Search Images</h1>
                <form onsubmit="return submitForm()">
                    <div class="input-group input-group-lg mb-3">
                        <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon-1">
                    <svg class="icon" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                      <title>Icon For Search</title>
                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <rect opacity="0" x="0" y="0" width="24" height="24"></rect>
                        <path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
                              fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                        <path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
                              fill="#000000" fill-rule="nonzero"></path>
                      </g>
                    </svg>
                  </span>
                        </div>
                        <input type="search" id='search' name="search" class="form-control" placeholder="Search for images" aria-label="Search" aria-describedby="basic-addon-1">
                    </div>

                    <div class="d-flex text-small" style="height: 30px">
                        <span class="text-muted">Search:</span>
                        <ul class="list-unstyled d-flex ml-2 flex-wrap">
                            <li class="mx-1">
                                <div class="custom-control custom-radio mb-2">
                                    <input type="radio" id="title" name="select" value="title" class="custom-control-input" checked>
                                    <label class="custom-control-label" for="title">title</label>
                                </div>
                            </li>
                            <li class="mx-1">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="subject" name="select" value="subject" class="custom-control-input">
                                    <label class="custom-control-label" for="subject">subject</label>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="d-flex text-small">
                        <span class="text-muted">Sort:</span>
                        <ul class="list-unstyled d-flex ml-2 flex-wrap">
                            <li class="mx-1">
                                <div class="custom-control custom-radio mb-2">
                                    <input type="radio" id="heat" name="sort" value="heat" class="custom-control-input" checked>
                                    <label class="custom-control-label" for="heat">heat</label>
                                </div>
                            </li>
                            <li class="mx-1">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="time" name="sort" value="time" class="custom-control-input">
                                    <label class="custom-control-label" for="time">time</label>
                                </div>
                            </li>
                        </ul>
                    </div>
                </form>

            </div>
        </div>
    </div>
    <div class="divider">
        <svg width="100%" height="96px" viewBox="0 0 100 100" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="none">
            <path d="M0,0 C16.6666667,66 33.3333333,99 50,99 C66.6666667,99 83.3333333,66 100,0 L100,100 L0,100 L0,0 Z"></path>
        </svg>
    </div>
</section>



<!--
<form action="/SoftwareDeveloping_PJ_war_exploded/image/queryImage" method="post">
    search: <input type="text" name="search">
    <br/>
    标题<input type="radio" name="select" value="title" checked>
    主题<input type="radio" name="select" value="subject">
    <br/>
    热度<input type="radio" name="sort" value="heat" checked>
    时间<input type="radio" name="sort" value="time">
    <input type="submit" value="submit">
</form>
-->


<section>
    <div class="container" id="searchResults">
<%--        <div class="row mb-4">--%>
<%--            <div class="col-md-6 col-lg-4 d-flex" data-aos="fade-up" data-aos-delay="200">--%>
<%--                <div class="card">--%>
<%--                    <a href="#">--%>
<%--                        <img id="img0" src="../images/${requestScope.images.get(0).path}" alt="Image" class="card-img-top">--%>
<%--                    </a>--%>
<%--                    <div class="card-body d-flex flex-column">--%>
<%--                        <div class="d-flex justify-content-between mb-3">--%>
<%--                            <div class="text-small d-flex">--%>
<%--                                <div class="mr-2">--%>
<%--                                    <a href="#" id="content0">${requestScope.images.get(0).content}</a>--%>
<%--                                </div>--%>
<%--                                <span class="text-muted" id="dateLastModified0">${requestScope.images.get(0).dateLastModified}</span>--%>
<%--                            </div>--%>
<%--                            <span class="badge bg-primary-alt text-primary" id="heat0">--%>
<%--                    <svg class="icon icon-sm bg-primary" width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">--%>
<%--                      <path d="M16.5 5C14.8905 5 13.0082 6.82463 12 8C10.9918 6.82463 9.1095 5 7.5 5C4.651 5 3 7.22218 3 10.0504C3 13.1835 6 16.5 12 20C18 16.5 21 13.25 21 10.25C21 7.42177 19.349 5 16.5 5Z" fill="#212529" />--%>
<%--                    </svg>--%>
<%--                                --%>
<%--                                --%>
<%--                  </span>--%>
<%--                        </div>--%>
<%--                        <a href="#">--%>
<%--                            <h4 id="title0">${requestScope.images.get(0).title}</h4>--%>
<%--                        </a>--%>
<%--                        <p class="flex-grow-1" id="description0">--%>
<%--                            ${requestScope.images.get(0).description}--%>
<%--                        </p>--%>
<%--                        <div class="d-flex align-items-center mt-3">--%>
<%--                            <div class="ml-1">--%>
<%--                                <span class="text-small text-muted">By</span>--%>
<%--                                <span class="text-small" id="author0">${requestScope.images.get(0).author}</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
    <div class="container" id="pageResults">
<%--        <div class="row justify-content-between align-items-center">--%>
<%--            <div class="col-auto">--%>
<%--                <a href="#" class="btn btn-outline-white" onclick="ajaxPage('ar', 'heat', 'title', 1)">Previous</a>--%>
<%--            </div>--%>
<%--            <div class="col-auto">--%>
<%--                <nav>--%>
<%--                    <ul class="pagination mb-0">--%>
<%--                        <li class="page-item active"><a class="page-link" href="#" onclick="ajaxPage('ar', 'heat', 'title', 1)">1</a>--%>
<%--                        </li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#" onclick="ajaxPage('ar', 'heat', 'title', 2)">2</a>--%>
<%--                        </li>--%>
<%--                        <li class="page-item"><a class="page-link" href="#" onclick="ajaxPage('ar', 'heat', 'title', 3)">3</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </nav>--%>
<%--            </div>--%>
<%--            <div class="col-auto">--%>
<%--                <a href="#" class="btn btn-outline-white" onclick="ajaxPage('ar', 'heat', 'title', 1)">Next</a>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
</section>



<%--<c:forEach items="${requestScope.images}" var="images">--%>
<%--    id: ${images.imageId}--%>
<%--    <br/>--%>
<%--    title: ${images.title}--%>
<%--    <br/>--%>
<%--    description: ${images.description}--%>
<%--    <br/>--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${images.imageId}">detail</a>--%>
<%--    <br/>--%>
<%--    image: <img src="../images/${images.path}">--%>
<%--    <br/>--%>
<%--    <br/>--%>
<%--    <br/>--%>
<%--</c:forEach>--%>


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
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/aos.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/ajaxPage.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/theme.js"></script>

<script>
    $(function () {
        AOS.init();
        let status = '${requestScope.loginStatus}';
        if(status==="true"){
            $.session.set("loginStatus", "true");
            $(location).attr('href', "${requestScope.pageBeforeLogin}");
        }
    })
</script>
</body>
</html>
