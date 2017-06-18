<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/menu.css" type="text/css" />
    <title>YACHT RENTING</title>
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

<div> LOG IN  </div>
<form action="/login" method="post">
    <div><label for="username">Login: <input type="text" id="username" name="username"/></label></div>
    <div><label for="password">Hasło: <input type="password" id="password" name="password"/></label></div>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <div><input type="submit" value="Log in"/></div>
</form>
<br> <br>

<div> CREATE ACCOUNT  </div>
<form action="/create" method="post">
    <div>Login: <input type="text" name="login"/></div>
    <div>Hasło: <input type="password" name="password"/></div>
    <div>Typ: <input type="text" name="role"/></div>
    <div><input type="submit" value="Create"/></div>
</form>

<div>
    <div id="footer">Thanks for being with us !  @All rights reserved </div>
</div>
</body>

</html>






