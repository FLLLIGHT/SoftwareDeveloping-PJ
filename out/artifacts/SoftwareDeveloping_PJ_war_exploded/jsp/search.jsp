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
</head>
<body>
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

<c:forEach items="${requestScope.images}" var="images">
    id: ${images.imageId}
    <br/>
    title: ${images.title}
    <br/>
    description: ${images.description}
    <br/>
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${images.imageId}">detail</a>
    <br/>
    image: <img src="../images/${images.path}">
    <br/>
    <br/>
    <br/>
</c:forEach>
</body>
</html>
