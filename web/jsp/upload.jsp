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
    <br/>
    description: <input type="text" name="description">
    <br/>
    subject: <input type="text" name="subject">
    <br/>
    country: <input type="text" name="country">
    <br/>
    city: <input type="text" name="city">
    <br/>
    author: <input type="text" name="author">
    <br/>
    image: <input type="file" name="image">
    <br/>
    <input type="submit" value="submit">
    <br/>

</form>
</body>
</html>
