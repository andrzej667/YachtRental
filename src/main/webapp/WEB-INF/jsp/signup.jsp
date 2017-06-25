<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../css/styleForAllPages.css" type="text/css" />
    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
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

<div> CREATE ACCOUNT  </div>
<form action="/signup" method="post">
    <div> Login: <input type="text" name="login"/></div>
    <div> Password: <input type="password" name="password"/></div>
    <div> Typ: <input type="text" name="roles"/></div>
    <div> Name: <input type="text" name="firstName"/></div>
    <div> Last Name: <input type="text" name="lastName"/></div>
    <div> Email: <input type="text" name="email"/></div>


    <div><input type="submit" value="Signup"/></div>
</form>

<footer class="container-fluid">
    <div>Thanks for being with us !  @All rights reserved </div>
    <p>
        <span class="glyphicon glyphicon-map-marker"></span> City, Country
        <span class="glyphicon glyphicon-phone"></span> Phone: +00 1111111111
        <span class="glyphicon glyphicon-envelope"></span> Email: mail@mail.com</p>
</footer>
</body>

</html>