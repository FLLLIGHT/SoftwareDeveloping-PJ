<%--
  Created by IntelliJ IDEA.
  User: xuanzitao
  Date: 2020/7/22
  Time: 下午12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload</title>
</head>
<body>
<form action="/SoftwareDeveloping_PJ_war_exploded/image/uploadImage" method="post" enctype="multipart/form-data">

    title: <input type="text" name="title">
    description: <input type="text" name="description">
    subject: <input type="text" name="subject">
    country: <input type="text" name="country">
    city: <input type="text" name="city">
    author: <input type="text" name="author">
    image: <input type="file" name="image">
    <input type="submit" value="submit">

</form>
</body>
</html>
