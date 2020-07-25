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
    <link href="/SoftwareDeveloping_PJ_war_exploded/css/bootstrap-imageupload.css" rel="stylesheet" type="text/css" media="all" />

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
        <div class="row justify-content-center mb-md-6">
            <div class="col-auto">
                <a href="#">
                    <img src="#" alt="Leap">
                </a>
            </div>
        </div>
        <div class="row justify-content-center pt-6">
            <div class="col-xl-4 col-lg-5 col-md-6">
                <div class="text-center mb-4">
                    <h1 class="mb-1">Upload image</h1>
                    <span>Enter your image information below</span>
                </div>
                <form action="/SoftwareDeveloping_PJ_war_exploded/image/uploadImage" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" name="title" placeholder="Title" class="form-control" value="${requestScope.image.title}" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="description" placeholder="Description" class="form-control" value="${requestScope.image.description}" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="subject" placeholder="Subject" class="form-control" value="${requestScope.image.content}" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="author" placeholder="Author" class="form-control" value="${requestScope.image.author}" required>
                    </div>
                    <div class="form-group">
                        <select name="country" class="countries order-alpha custom-select" id="countryId" required>
                            <option value="">Select Country</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <select name="city" class="states order-alpha custom-select" id="stateId" required>
                            <option value="">Select City</option>
                        </select>
                    </div>



                    <div class="form-group">
                        <div class="imgupload panel panel-default">
                            <div class="file-tab panel-body">

                                <div class="custom-file">
                                    <button type="button" class="btn btn-default btn-file">
                                        <input type="file" class="custom-file-input" name="file-input" id="validatedCustomFile" required>
                                    </button>
                                    <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
                                </div>
<%--                                <button type="button" class="btn-block btn btn-primary">Remove</button>--%>
                            </div>
                        </div>
                    </div>



                    <c:if test="${requestScope.image == null}">
                        <div class="form-group">
                            <button class="btn-block btn btn-primary" type="submit">Submit</button>
                        </div>
                    </c:if>
                    <c:if test="${requestScope.image != null}">
                        <input type="hidden" name="imageId" value="${requestScope.image.imageId}">
                        <div class="form-group">
                            <button class="btn-block btn btn-primary" type="submit">Edit</button>
                        </div>
                    </c:if>
                </form>
            </div>
        </div>
    </div>
</section>





<%--<form action="/SoftwareDeveloping_PJ_war_exploded/image/uploadImage" method="post" enctype="multipart/form-data">--%>

<%--    title: <input type="text" name="title" value="${requestScope.image.title}">--%>
<%--    <br/>--%>
<%--    description: <input type="text" name="description" value="${requestScope.image.description}">--%>
<%--    <br/>--%>
<%--    subject: <input type="text" name="subject" value="${requestScope.image.content}">--%>
<%--    <br/>--%>
<%--    country: <input type="text" name="country" value="${requestScope.image.country}">--%>
<%--    <br/>--%>
<%--    city: <input type="text" name="city" value="${requestScope.image.city}">--%>
<%--    <br/>--%>
<%--    author: <input type="text" name="author" value="${requestScope.image.author}">--%>
<%--    <br/>--%>
<%--    image: <input type="file" name="image">--%>
<%--    <br/>--%>
<%--    <c:if test="${requestScope.image == null}"><input type="submit" value="submit"></c:if>--%>
<%--    <c:if test="${requestScope.image != null}">--%>
<%--        <input type="hidden" name="imageId" value="${requestScope.image.imageId}">--%>
<%--        <input type="submit" value="edit">--%>
<%--    </c:if>--%>
<%--    <br/>--%>

<%--</form>--%>

<%--<select name="country" class="countries order-alpha" id="countryId">--%>
<%--    <option value="China">Select Country</option>--%>
<%--</select>--%>
<%--<select name="state" class="states order-alpha" id="stateId">--%>
<%--    <option value="">Select State</option>--%>
<%--</select>--%>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="//geodata.solutions/includes/countrystate.js"></script>

<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/jquery.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/popper.min.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap.js"></script>
<script type="text/javascript" src="/SoftwareDeveloping_PJ_war_exploded/js/bootstrap-imageupload.js"></script>

<script>
    $(function () {
        $('.imgupload').imageupload();
    })
</script>
</body>
</html>
