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
</head>
<body>
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

</body>
</html>
