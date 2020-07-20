<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/20
  Time: 下午8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
</head>
<body>
<form action="/SoftwareDeveloping_PJ_war_exploded/registerServlet" method="post">
    email: <input type="text" name="email">
    username: <input type="text" name="userName">
    password: <input type="text" name="pass">
    <input type="submit" value="submit">
</form>
</body>
</html>
