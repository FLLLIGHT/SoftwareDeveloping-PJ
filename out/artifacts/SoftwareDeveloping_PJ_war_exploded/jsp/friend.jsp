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




<section class="min-vh-100 py-5">
    <div class="container">
        <div class="row justify-content-center pt-6">
            <div class="col-xl-4 col-lg-5 col-md-6">
                <div class="text-center mb-4">
                    <h1 class="mb-1">Search friends</h1>
                    <span>Enter user name below</span>
                </div>
                <form onsubmit="return submitForm()">
                    <div class="input-group input-group-lg mb-3">
                        <div class="input-group-prepend">
                  <span class="input-group-text" id="basic-addon-1">
                    <svg class="icon" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                      <title>Icon For Search</title>
                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <rect opacity="0" x="0" y="0" width="24" height="24"></rect>
                        <path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
                              fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                        <path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
                              fill="#000000" fill-rule="nonzero"></path>
                      </g>
                    </svg>
                  </span>
                        </div>
                        <input type="search" id='search' name="search" class="form-control" placeholder="Search for user" aria-label="Search" aria-describedby="basic-addon-1">
                    </div>
                </form>
            </div>
            <table class="table table-striped" id="searchUserResults">
            </table>

            <div class="text-center mb-4">
                <h1 class="mb-1">Friends</h1>
                <span>Enter user name below</span>
            </div>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">username</th>
                    <th scope="col">email</th>
                    <th scope="col">date joined</th>
                </tr>
                </thead>
                <tbody>
<c:forEach items="${requestScope.friends}" var="friend" varStatus="status">
                <tr>
                    <th scope="row">${status.index+1}</th>
                    <td><a href="/SoftwareDeveloping_PJ_war_exploded/image/authority/queryCollectedImages?friendId=${friend.uid}">${friend.userName}</a></td>
                    <td><a href="/SoftwareDeveloping_PJ_war_exploded/image/authority/queryCollectedImages?friendId=${friend.uid}">${friend.email}</a></td>
                    <td>${friend.dateJoined}</td>
                </tr>
</c:forEach>
                </tbody>
            </table>



            <div class="text-center mb-4">
                <h1 class="mb-1">Friend Invitations</h1>
                <span>Enter user name below</span>
            </div>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">username</th>
                    <th scope="col">email</th>
                    <th scope="col">operation</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.friendInvitations}" var="invitation" varStatus="status">
                    <tr>
                        <th scope="row">${status.index+1}</th>
                        <td>${invitation.userName}</td>
                        <td>${invitation.email}</td>
                        <td><a href="/SoftwareDeveloping_PJ_war_exploded/friend/sendOrAcceptFriendInvitation?uid2=${invitation.uid}">accept</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>





<%--<form action="/SoftwareDeveloping_PJ_war_exploded/friend/searchUser" method="post">--%>
<%--    username: <input type="text" name="userName">--%>
<%--    <input type="submit" value="submit">--%>
<%--</form>--%>

<%--<c:if test="${requestScope.userFound!=null}">--%>
<%--    username: ${requestScope.userFound.userName}--%>
<%--    <br/>--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/friend/sendOrAcceptFriendInvitation?uid2=${requestScope.userFound.uid}">add</a>--%>
<%--</c:if>--%>
<%--<br/>--%>
<%------------------------%>
<%--<br/>--%>
<%--friend:--%>
<%--<br/>--%>
<%--<c:forEach items="${requestScope.friends}" var="friend">--%>
<%--    username: ${friend.userName}--%>
<%--    <br/>--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/image/authority/queryCollectedImages?friendId=${friend.uid}">collection</a>--%>
<%--    <br/>--%>
<%--</c:forEach>--%>
<%--<br/>--%>
<%------------------------%>
<%--<br/>--%>
<%--invitation:--%>
<%--<br/>--%>
<%--<c:forEach items="${requestScope.friendInvitations}" var="invitation">--%>
<%--    username: ${invitation.userName}--%>
<%--    <br/>--%>
<%--    <a href="/SoftwareDeveloping_PJ_war_exploded/friend/sendOrAcceptFriendInvitation?uid2=${invitation.uid}">accept</a>--%>
<%--</c:forEach>--%>


<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/ajaxFriend.js"></script>

</body>
</html>
