<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/menu.css" type="text/css" />
    <title>SEARCH FOR YACHT</title>
</head>

<body>
<div id="menu">
    <ol>
        <li><a href="/home/">Home</a></li>
        <li><a href="/search">Search Yacht</a></li>
        <li><a href="/user">User Account</a></li>
        <li><a href="/owner">Owner Account</a></li>
    </ol>
</div>

<c:forEach items="${listOfYachts}" var="yacht">
    <div> Yacht Name: <c:out value="${yacht.name}" />
          Yacht Owner: <c:out value="${yacht.user.login}" />
        <br>
    <br>
    </div>
</c:forEach>


    <div id="footer">Thanks for being with us !  @All rights reserved </div>
</body>


</html>