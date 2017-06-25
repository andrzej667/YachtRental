<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../css/styleForAllPages.css" type="text/css" />
    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/loginSignup.css" type="text/css" />
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
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/home">YachtRental</a></li>
                <li><a href="/search">Search Yacht</a></li>
                <li><a href="/about">About</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="/owner"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- / MENU-->
<div class="container-fluid">
    <h2>Hello</h2>
    <h3><em>The project has been created by four group members while Java programming course.</em></h3>

        <img id="helloPic"src="img/hello.gif" alt="hello everyone" >
</div>
<footer class="container-fluid">
    <div>Thanks for being with us !  @All rights reserved </div>
    <p>
        <span class="glyphicon glyphicon-map-marker"></span> City, Country
        <span class="glyphicon glyphicon-phone"></span> Phone: +00 1111111111
        <span class="glyphicon glyphicon-envelope"></span> Email: mail@mail.com</p>
</footer>
</body>

</html>