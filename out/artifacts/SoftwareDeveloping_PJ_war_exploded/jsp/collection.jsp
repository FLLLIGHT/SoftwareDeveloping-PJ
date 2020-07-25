<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/21
  Time: 下午11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>collection</title>
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

<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <h2>Footprint</h2>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
<c:forEach items="${sessionScope.footprint}" var="image">
                        <li class="breadcrumb-item">
                            <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${image.imageId}">${image.title}</a>
                        </li>
</c:forEach>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
</section>


<section>
    <div class="container" id="collectedImages">
    </div>
    <div class="container" id="collectedPages">
    </div>
</section>

<%--<c:if test="${requestScope.owner!=null}">--%>
<%--    ${requestScope.owner.userName}'s collection--%>
<%--    <br/>--%>
<%--</c:if>--%>
<%--<c:forEach items="${requestScope.owner}" var="images">--%>
<%--    id: ${images.imageId}--%>
<%--    <br/>--%>
<%--    title: ${images.title}--%>
<%--    <br/>--%>
<%--    description: ${images.description}--%>
<%--    <br/>--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${images.imageId}">detail</a>--%>
<%--    <br/>--%>
<%--    <c:if test="${requestScope.owner==null}">--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/removeCollectedImage?imageId=${images.imageId}">remove</a>--%>
<%--    </c:if>--%>
<%--    <br/>--%>
<%--    image: <img src="../images/${images.path}">--%>
<%--    <br/>--%>
<%--    <br/>--%>
<%--    <br/>--%>
<%--</c:forEach>--%>


<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/ajaxCollectedImages.js"></script>

<script>
    $(function () {
        ajaxPage(${requestScope.owner.uid}, 1);
    })
</script>
</body>
</html>
