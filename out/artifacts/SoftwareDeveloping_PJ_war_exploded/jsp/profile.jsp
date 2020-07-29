<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/22
  Time: 下午4:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>profile</title>
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

<div class="m-1" id="modal">
</div>

<section>
    <div class="container" id="uploadedImages">
    </div>
    <div class="container" id="uploadedPages">
    </div>
</section>




<%--<c:forEach items="${requestScope.uploadedImages}" var="images">--%>
<%--    id: ${images.imageId}--%>
<%--    <br/>--%>
<%--    title: ${images.title}--%>
<%--    <br/>--%>
<%--    description: ${images.description}--%>
<%--    <br/>--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${images.imageId}">detail</a>--%>
<%--    <br/>--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/jumpToEditUploadedImage?imageId=${images.imageId}">edit</a>--%>
<%--    <br/>--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/removeUploadedImage?imageId=${images.imageId}">remove</a>--%>
<%--    <br/>--%>
<%--    image: <img src="/SoftwareDeveloping_PJ_war_exploded/images/${images.path}">--%>
<%--    <br/>--%>
<%--    <br/>--%>
<%--    <br/>--%>
<%--</c:forEach>--%>
<%@ include file="footer.jsp"%>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/ajaxUploadedImages.js"></script>
<!-- 解决ajax请求无法重定向的问题 -->
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/redirect.js"></script>

<script>
    $(function () {
        ajaxPage(1);
    })
</script>
</body>
</html>
