<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../../css/styleForAllPages.css" type="text/css" />
    <link rel="stylesheet" href="../../css/home.css" type="text/css" />
    <link rel="stylesheet" href="../../css/addyacht.css" type="text/css" />
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


 <%--<div id="addyacht">--%>
    <%--<h2 style="margin-top: 70px; text-align:center;"> ADD NEW YACHT </h2>--%>
    <%--<form action="/addyacht" method="post" enctype="multipart/form-data" class="form-horizontal">--%>
        <%--<div class="form-group inline">--%>
            <%--<label for="name" class="col-2 col-form-label">Name:</label>--%>
            <%--<div class="col-6">--%>
            <%--<input type="text" name="name" id="name" placeholder="Yacht name"/>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-inline">--%>
            <%--<label for="price" class="control-label">Price:</label>--%>
            <%--<input type="number" class="form-control" name="price" id="price" placeholder="Price"/>--%>
        <%--</div>--%>
        <%--<div class="form-inline">--%>
            <%--<label for="person" class="control-label">Number Of Persons:</label>--%>
            <%--<input type="number" class="form-control" step=any name="numberOfPersons" id="person" placeholder="0"/>--%>
        <%--</div>--%>
        <%--&lt;%&ndash;<div class="form-group">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<label for="propulsion" class="col-sm-2 control-label">Propulsion:</label>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<input type="text" class="col-sm-4" name="propulsion" id="propulsion"/>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
        <%--<div class="form-inline">--%>
        <%--<div class="form-group">--%>

            <%--<label for="hull" class="col-sm-2 control-label">Hull Type:</label>--%>
             <%--<select id="hull" class="form-control" name="hullType">--%>
                <%--<option value="monohull">Monohull</option>--%>
                <%--<option value="multihull">Multihull</option>--%>
        <%--</select>--%>
        <%--</div></div>--%>
        <%--<div class="form-inline">--%>
        <%--<div class="form-group">--%>
            <%--<label for="fileupload" class="col-sm-2 control-label">File to upload:</label>--%>
            <%--<input type="file" name="file" id="fileupload" />--%>
        <%--</div>--%>
        <%--</div>--%>
         <%--&lt;%&ndash;<p> Fill Your Yacht Description: </p>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<textarea maxlength="500" name="description" cols="50" rows="10" placeholder="class="col-sm-2 control-label">&ndash;%&gt;--%>
        <%--&lt;%&ndash;</textarea>&ndash;%&gt;--%>

        <%--<div class="form-group">--%>
            <%--<label for="yachtTextarea">Description: </label>--%>
            <%--<textarea class="form-control" id="yachtTextarea" maxlength="500" name="description" rows="10"--%>
                      <%--placeholder="Write here yacht description"></textarea>--%>
        <%--</div>--%>
        <%--<div><input type="submit" value="Add" /></div>--%>
    <%--</form>--%>
 <%--</div>--%>
 <div class="container" style="margin-top: 70px;">
     <h2>Add new yacht</h2>
     <form class="form-horizontal" action="/addyacht" enctype="multipart/form-data" method="post">
         <div class="form-group">
             <label class="control-label col-sm-2" for="name">Name:</label>
             <div class="col-sm-6">
                 <input type="text" class="form-control" id="name" placeholder="Yacht name" name="email">
             </div>
         </div>
         <div class="form-group">
             <label class="control-label col-sm-2" for="price">Price:</label>
             <div class="col-sm-6">
                 <input type="name" step=any class="form-control" id="price" placeholder="0" name="price">
             </div>
         </div>
         <div class="form-group">
             <label class="control-label col-sm-2" for="person">Number Of Persons:</label>
             <div class="col-sm-6">
                 <input type="number" class="form-control" id="person" placeholder="0" name="numberOfPersons">
             </div>
         </div>
         <div class="form-group">
             <label class="control-label col-sm-2" for="propulsion">Propulsion:</label>
             <div class="col-sm-6">
                 <select id="propulsion" class="form-control" name="propulsion">
                     <option value="engine">Engine</option>
                     <option value="sail">Sail</option>
                     <option value="hybrid">Hybrid</option>
                 </select></div>
         </div>
         <div class="form-group">
             <label for="hull" class="col-sm-2 control-label">Hull Type:</label>
             <div class="col-sm-6">
             <select id="hull" class="form-control" name="hullType">
                 <option value="monohull">Monohull</option>
                 <option value="multihull">Multihull</option>
             </select></div>
         </div>
         <div class="form-group">
             <label for="fileupload" class="col-sm-2 control-label" multiple class="file-loading">File to upload:</label>
            <div class="col-sm-2">
             <input type="file" name="file" id="fileupload">
            </div></div>
         <div class="form-group">
             <label for="yachtTextarea" class="control-label col-sm-2">Description: </label>
             <div class="col-sm-6">
             <textarea class="form-control" id="yachtTextarea" maxlength="500" name="description"
                       placeholder="Write here yacht description" rows="8"></textarea>
             </div></div>

         <div class="form-group">
             <div class="col-sm-offset-2 col-sm-10">
                 <button type="submit" class="btn btn-default">Submit</button>
             </div></div>
         <div>
             <div class="col-sm-offset-2 col-sm-10"><input type="submit" value="Add" /></div>
         </div>
     </form>
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