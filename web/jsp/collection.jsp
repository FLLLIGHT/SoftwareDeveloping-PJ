<%--
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
</head>
<body>
<c:if test="${requestScope.friend!=null}">
    friend ${requestScope.friend.userName}'s collection
    <br/>
</c:if>
<c:forEach items="${requestScope.collectedImages}" var="images">
    id: ${images.imageId}
    <br/>
    title: ${images.title}
    <br/>
    description: ${images.description}
    <br/>
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryImageDetail?imageId=${images.imageId}">detail</a>
    <br/>
    <c:if test="${requestScope.friend==null}">
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/removeCollectedImage?imageId=${images.imageId}">remove</a>
    </c:if>
    <br/>
    image: <img src="../images/${images.path}">
    <br/>
    <br/>
    <br/>
</c:forEach>
</body>
</html>
