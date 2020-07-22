<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/22
  Time: 下午12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>upload</title>
</head>
<body>
<form action="/SoftwareDeveloping_PJ_war_exploded/image/uploadImage" method="post" enctype="multipart/form-data">

    title: <input type="text" name="title" value="${requestScope.image.title}">
    <br/>
    description: <input type="text" name="description" value="${requestScope.image.description}">
    <br/>
    subject: <input type="text" name="subject" value="${requestScope.image.content}">
    <br/>
    country: <input type="text" name="country" value="${requestScope.image.country}">
    <br/>
    city: <input type="text" name="city" value="${requestScope.image.city}">
    <br/>
    author: <input type="text" name="author" value="${requestScope.image.author}">
    <br/>
    image: <input type="file" name="image">
    <br/>
    <c:if test="${requestScope.image == null}"><input type="submit" value="submit"></c:if>
    <c:if test="${requestScope.image != null}">
        <input type="hidden" name="imageId" value="${requestScope.image.imageId}">
        <input type="submit" value="edit">
    </c:if>
    <br/>

</form>
</body>
</html>
