<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/menu.css" type="text/css" />
    <title>YACHT RENTING</title>
</head>

body>
<div id="menu">
    <ol>
        <li><a href="/home/">Home</a></li>
        <li><a href="/search">Search Yacht</a></li>
        <li><a href="/user">User Account</a></li>
        <li><a href="/owner">Owner Account</a></li>
    </ol>
</div>

<div> CREATE ACCOUNT  </div>
<form action="/signup" method="post">
    <div>Login: <input type="text" name="login"/></div>
    <div>Hasło: <input type="password" name="password"/></div>
    <div>Typ: <input type="text" name="role"/></div>
    <div><input type="submit" value="Signup"/></div>
</form>

<div>
    <div id="footer">Thanks for being with us !  @All rights reserved </div>
</div>
</body>

</html>