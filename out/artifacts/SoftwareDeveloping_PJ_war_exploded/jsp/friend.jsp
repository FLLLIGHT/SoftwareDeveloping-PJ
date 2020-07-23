<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/22
  Time: 下午7:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>friend</title>
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

<form action="/SoftwareDeveloping_PJ_war_exploded/friend/searchUser" method="post">
    username: <input type="text" name="userName">
    <input type="submit" value="submit">
</form>

<c:if test="${requestScope.userFound!=null}">
    username: ${requestScope.userFound.userName}
    <br/>
    <a href="/SoftwareDeveloping_PJ_war_exploded/friend/sendOrAcceptFriendInvitation?uid2=${requestScope.userFound.uid}">add</a>
</c:if>
<br/>
--------------------
<br/>
friend:
<br/>
<c:forEach items="${requestScope.friends}" var="friend">
    username: ${friend.userName}
    <br/>
    <a href="/SoftwareDeveloping_PJ_war_exploded/image/queryCollectedImages?friendId=${friend.uid}">collection</a>
    <br/>
</c:forEach>
<br/>
--------------------
<br/>
invitation:
<br/>
<c:forEach items="${requestScope.friendInvitations}" var="invitation">
    username: ${invitation.userName}
    <br/>
    <a href="/SoftwareDeveloping_PJ_war_exploded/friend/sendOrAcceptFriendInvitation?uid2=${invitation.uid}">accept</a>
</c:forEach>


<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>

</body>
</html>
