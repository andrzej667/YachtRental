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
    <title>YACHT RENTING</title>
</head>

<body>
<div class="container-fluid">
<div id="menu">
    <ol>
        <li><a href="/home/">Home</a></li>
        <li><a href="/search">Search Yacht</a></li>
        <li><a href="/user">User Account</a></li>
        <li><a href="/owner">Owner Account</a></li>

    </ol>
</div>

<div> LOG IN  </div>
<form action="/login" method="post">
    <div><label for="username">Login: <input type="text" id="username" name="username"/></label></div>
    <div><label for="password">Password: <input type="password" id="password" name="password"/></label></div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <div><input type="submit" value="Log in"/></div>
</form>
<br> <br>

<div>
    <div id="footer">Thanks for being with us !  @All rights reserved </div>
</div>
</div>
</body>

</html>






