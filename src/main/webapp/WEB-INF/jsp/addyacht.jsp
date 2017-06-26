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

    <div style="margin-top: 70px;"> ADD NEW YACHT </div>
    <form action="/addyacht" method="post" enctype="multipart/form-data" class="form-horizontal">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">Name:</label>
            <input type="text" class="col-sm-4" name="name" id="name" placeholder="Yacht name"/>
        </div>
        <div class="form-group">
            <label for="price" class="col-sm-2 control-label">Price:</label>
            <input type="number" class="col-sm-4" name="price" id="price" placeholder="Price"/>
        </div>
        <div class="form-group">
            <label for="person" class="col-sm-2 control-label">Number Of Persons:</label>
            <input type="number" class="col-sm-4" step=any name="numberOfPersons" id="person" placeholder="0"/>
        </div>

        <div class="form-group">
            <label for="propulsion" class="col-sm-2 control-label">Propulsion:</label>
            <input type="text" class="col-sm-4" name="propulsion" id="propulsion"/>
        </div>

        <div class="form-group">
            <label for="hull" class="col-sm-2 control-label">Hull Type:</label>
            <input type="text" class="col-sm-4" name="hullType" id="hull"/>
        </div>
        <div class="form-group" class="col-sm-2 control-label">
            <label for="fileupload">File to upload:</label>
            <input type="file" name="file" id="fileupload" />
            <input type="submit" value="Upload" />
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
   </body>

</html>