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
</head>
<body>

id: ${requestScope.image.imageId}
<br/>
title: ${requestScope.image.title}
<br/>
description: ${requestScope.image.description}
<br/>
<br/>
image: <img src="../images/${requestScope.image.path}">
<br/>
<a href="/SoftwareDeveloping_PJ_war_exploded/image/collectImage?imageId=${requestScope.image.imageId}">collect</a>
<br/>
<br/>

</body>
</html>
