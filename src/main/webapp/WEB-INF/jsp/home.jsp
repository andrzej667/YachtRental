<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/menu.css" type="text/css" />
    <title>YACHT RENTING</title>
</head>
<body>
<div class="container-fluid">
 <div class="page-header">
<h1>YachtRental</h1>
</div>
<div id="menu">
    <ol>
        <li><a href="/home">Home</a></li>
        <li><a href="/search">Search Yacht</a></li>
        <li><a href="/user">User Account</a></li>
        <li><a href="/owner">Owner Account</a></li>
    </ol>
</div>
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">YachtRental</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="/home">Home</a></li>
                <li><a href="/search">Search Yacht</a></li>
                <li><a href="#">About</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/user"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="/owner"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
    </nav>



    <blockquote class="blockquote-reverse">
        <p>Welcome to our website. We are here to help you ......</p>
        <footer>YachtRental crew</footer>
    </blockquote>
<div class="row">
    <div class="col-sm-4">
        <img class="img-responsive" src="img/santorini.jpg" class="img-thumbnail" alt="Santorini" />
        <div class="description">Santorini</div>
    </div>
    <div class="col-sm-4">
        <img class="img-responsive" src="img/malta.jpg" class="img-thumbnail" alt="Malta" />
        <div class="description">Malta</div>
    </div>
    <div class="col-sm-4">
        <img class="img-responsive" src="img/minorka.jpg" class="img-thumbnail" alt="Minorka" />
        <div class="description">Minorka</div>
    </div>
</div>
</div>

<div id="footer">
    <div>Thanks for being with us !  @All rights reserved </div>
</div>
</div>
</body>

</html>