<html>
<head>
<link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/menu.css" type="text/css" />
    <title>ADD NEW YACHT</title>


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
                 <li><a href="/about">About</a></li>
             </ul>
             <ul class="nav navbar-nav navbar-right">
                 <li><a href="/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                 <li><a href="/owner"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
             </ul>
         </div>
     </div>
 </nav>
 <!-- /MENU-->

    <div>
    <div> ADD NEW YACHT </div>
    <form action="/addyacht" method="post" enctype="multipart/form-data">
        <div>Name: <input type="text" name="name"/></div>
        <div>Price: <input type="number" name="price"/></div>
        <div>Number Of Persons: <input type="number" step= any name="numberOfPersons"/></div>
        <div>Propulsion: <input type="text" name="propulsion"/></div>
        <div>Hull Type: <input type="text" name="hullType"/></div>

        <div>File to upload:</td><td><input type="file" name="file" /></td></tr>
                    <tr><td></td><td><input type="submit" value="Upload" /></td></tr>
        </div>

     <p> Fill Your Yacht Description: </p>
    <textarea maxlength="500" name="description" cols="50" rows="10">Please use this space to write description...
    </textarea>

    <div><input type="submit" value="Add" /></div>
    </form>

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