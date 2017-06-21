<html>
<head>
<link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/menu.css" type="text/css" />
    <title>ADD NEW YACHT</title>

    <div id="menu">
        <ol>
            <li><a href="/home">Home</a></li>
            <li><a href="/search">Search Yacht</a></li>
            <li><a href="/user">User Account</a></li>
            <li><a href="/owner">Owner Account</a></li>
        </ol>
        </div>
</head>
 <body>

    <div>
    <div> ADD NEW YACHT </div>
    <form action="/addyacht" method="post">
        <div>Name: <input type="text" name="name"/></div>
        <div>Price: <input type="text" name="price"/></div>
        <div>Number Of Persons: <input type="text" name="price"/></div>
        <div>Propulsion: <input type="text" name="propulsion"/></div>
        <div>Hull Type: <input type="text" name="hulltype"/></div>
    </form>
    </div>

     <p> Fill Your Yacht Description: </p>
    <textarea maxlength="500" name="Yacht Description" cols="50"
    rows="10">Please use this space to write description...</textarea>
    <br /><br /><br />
    <!-- SEND -->
    <input type="submit" value="Send Description" />
    </div>

    <div>
        <div id="footer">Thanks for being with us !  @All rights reserved </div>
    </div

   </body>

</html>