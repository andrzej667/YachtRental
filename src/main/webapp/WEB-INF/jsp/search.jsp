<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/menu.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>SEARCH FOR YACHT</title>
</head>

<body>
<div class="container-fluid">
<div id="menu">
    <ol>
        <li><a href="/home">Home</a></li>
        <li><a href="/search">Search Yacht</a></li>
        <li><a href="/user">User Account</a></li>
        <li><a href="/owner">Owner Account</a></li>
    </ol>
</div>

<c:forEach items="${listOfYachts}" var="yacht">
    <div> Yacht Name: <c:out value="${yacht.name}" />
          Yacht Owner: <c:out value="${yacht.user.login}"/>
          Yacht BookedDates:
        <c:forEach items="${yacht.yachtBooking}" var="booked">
            <c:out value="${booked.getDateBooked()}"/>
        </c:forEach>
        <br>
    <br>
    </div>
</c:forEach>

    <div id="footer">Thanks for being with us !  @All rights reserved </div>
</div>
</body>

</html>