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
</head>
<body>
<c:forEach items="${requestScope.uploadedImages}" var="images">
    id: ${images.imageId}
    <br/>
    title: ${images.title}
    <br/>
    description: ${images.description}
    <br/>
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${images.imageId}">detail</a>
    <br/>
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/jumpToEditUploadedImage?imageId=${images.imageId}">edit</a>
    <br/>
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/removeUploadedImage?imageId=${images.imageId}">remove</a>
    <br/>
    image: <img src="../images/${images.path}">
    <br/>
    <br/>
    <br/>
</c:forEach>
</body>
</html>
