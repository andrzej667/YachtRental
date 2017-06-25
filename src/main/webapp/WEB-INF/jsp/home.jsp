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
                     <li class="active"><a href="/home">Home</a></li>
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
<!-- / MENU-->



<div class="container-fluid">
    <div class="page-header">
        <h1>YachtRental</h1>
    </div>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/yacht1.jpg" alt="Yacht" style="width:80%;height:450px">
        <div class="carousel-caption">
          <h3>Relax</h3>
          <p>Simply enjoy your holiday!</p>
        </div>
      </div>

      <div class="item">
        <img src="img/yacht2.jpg" alt="Yacht" style="width:100%;height:450px">
        <div class="carousel-caption">
          <h3>Freedom</h3>
          <p>Have fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="img/yacht3.jpg" alt="Yacht" style="width:100%;height:450px">
        <div class="carousel-caption">
          <h3>Chill</h3>
          <p>Have romantic moments!</p>
        </div>
      </div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="container text-center">
  <h3>Where We Are </h3><br>
    <div class="row">
    <div class="col-sm-4">
        <img class="img-responsive" src="img/santorini.jpg" class="img-thumbnail" alt="Santorini" />
        <div class="description"><h3>Santorini</h3>
            This is an amaizing island<br />
            Where you can spend great time</div>
    </div>
    <div class="col-sm-4">
        <img class="img-responsive" src="img/malta.jpg" class="img-thumbnail" alt="Malta" />
        <div class="description"><h3>Malta</h3>
            This is an amaizing island<br />
            Where you can spend great time</div>
    </div>
    <div class="col-sm-4">
        <img class="img-responsive" src="img/minorka.jpg" class="img-thumbnail" alt="Minorka" />
        <div class="description"><h3>Minorka</h3>
            This is an amaizing island<br />
            Where you can spend great time</div></div>
</div>
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