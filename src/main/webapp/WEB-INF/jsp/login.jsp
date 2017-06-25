<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../css/styleForAllPages.css" type="text/css" />
    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/login.css" type="text/css" />

    <title>YACHT RENTING</title>
</head>

<body>
<!-- MENU-->
    <nav class="navbar navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/home">YachtRental</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li><a href="/search">Search Yacht</a></li>
                    <li><a href="#">About</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="/owner"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
<!-- /MENU-->


<div class="container-fluid">

    <h2 id="login"> LOG IN </h2>
    <form action="/login" method="post" class="form-horizontal">
        <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        <%--<label class="control-label col-sm-2" for="username">Login:</label>--%>
            <input class="form-control" type="text" id="username" name="username" placeholder="username"/>
        </div>
        <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input class="form-control" type="password" name="password" placeholder="password"/>
        </div>
        <span class="help-block">Enter your login and password.</span>

    <!--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> -->
    <div><input type="submit" value="Log in"/></div>
</form>

<c:if test="${param.error ne null}">
    <div>Wrong Password ! </div>
</c:if>
</div>
<br> <br>

    <footer class="container-fluid">
        <div>Thanks for being with us !  @All rights reserved </div>
        <p>
            <span class="glyphicon glyphicon-map-marker"></span> City, Country
            <span class="glyphicon glyphicon-phone"></span> Phone: +00 1111111111
            <span class="glyphicon glyphicon-envelope"></span> Email: mail@mail.com</p>
    </footer>
</div>
</body>

</html>






