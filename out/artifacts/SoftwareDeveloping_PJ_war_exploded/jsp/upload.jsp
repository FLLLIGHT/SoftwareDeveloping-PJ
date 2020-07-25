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

<select name="country" class="countries order-alpha" id="countryId">
    <option value="China">Select Country</option>
</select>
<select name="state" class="states order-alpha" id="stateId">
    <option value="">Select State</option>
</select>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//geodata.solutions/includes/countrystate.js"></script>

<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>

</body>
</html>
