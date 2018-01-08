<?php
session_start();
?>
<html lang = "en">
   <head>
      <meta charset = "utf-8">
      <title>Tourist Guider</title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel = "stylesheet" 
         href = "//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>

      <style>
         #sortable { list-style-type: none; margin: 0; padding: 0; width: 60%; }
         #sortable li { margin: 0 3px 3px 3px; padding: 0.4em;
            padding-left: 1.5em; font-size: 1.4em; height: 18px; }
         #sortable li span { position: absolute; margin-left: -1.3em; }

         #belowmiddle{
            text-align: center;
            font-style: lobster;
            font-size: 20px;
            
         }
		 
		 #fai{
			 color:white;
			 padding-right:20px;
			 padding-top:15px;
			 
		 }
		 #cl{
			 padding-right:5px;
		 }
        @-webkit-keyframes anim{
            0%{background-color:LightSeaGreen;}
            25%{background-color:Coral; }
            50%{background-color:DeepSeaBlue;}
            75%{background-color:Coral;}
            100%{background-color:LightSeaGreen;}
         } 
         @-webkit-keyframes anim2{
            0%{transform: scale(1.2);}
            25%{transform: scale(1.4); }
            50%{transform: scale(1.6);}
            75%{transform: scale(1.4);}
            100%{transform: scale(1.2);}
         } 
         @-webkit-keyframes example {
     {font-size: 24px}
    to {background-color: 40px;}
    }
         .heading{
            width:100%;
            height: 100px;
            -webkit-animation: anim 4s ease-in 2s infinite;
            text-align: center;
            font-size: 24px;
            font-family:Raleway;
            padding:15px;
            
         }
         .title{
            -webkit-animation: example 4s ease-in 2s infinite;
         }
         .h1{
            -webkit-animation: anim2 4s ease-in 2s infinite;
         }
         #panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: lightblue;
    border: solid 1px black;
   }

    #panel {
    padding: 50px;
    display: none;
   }
body{
display:none;
}
      </style>
		
      <script>
         $(document).ready(function(){
            $( "#sortable" ).sortable();
            $( "#sortable" ).disableSelection();
         });
         $(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow");
    });
});
         $(document).ready(function(){
    $("button").click(function(){
       
        $("#belowmiddle2").fadeIn("17000");
        
    });
});
         
$(document).ready(function()
{
$("body").fadeIn(2000);
});
      </script>
   </head>
	
   <body>
   <div class="fullpage">
<div class="heading">
<div class="title">
<h1 class="h1">Total Tourist guider</h1>
</div>
</div>
<div class="header">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Tourist Guider</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
	  <li><a href="http://localhost/train/rpm/index.html">Train</a></li>
      <li><a href="http://localhost/flight/index.html">Flights</a></li>
      <li><a href="http://localhost/hotel/index.php">Hotel</a></li>
    </ul>
    <script>
 
var domainroot=""
function Gsitesearch(curobj){ curobj.q.value=""+domainroot+" "+curobj.qfront.value }
</script> 
<form class="search navbar-form navbar-left" action="http://www.google.com/search" method="get"role="search" onSubmit="Gsitesearch(this)">
<div class="input-group"> <input name="q" type="hidden" />
<input class="form-control" name="qfront" type="search" required class="searchField" placeholder="Google Site Search" maxlength="50"/>
<span class="input-group-btn"> <button type="submit" class="search-button btn btn-primary"> 
<span class="glyphicon glyphicon-search"></span> 
</button>
</span>
</div>
</form>
     <ul class="nav navbar-nav navbar-right">
      
      <li id="fai"> <span id="cl" class="glyphicon glyphicon-user"></span><?php echo "Welcome ";?></li>
	  <li><a href="http://localhost/tourist_guide/signout.php"> Sign Out</a></li>
    </ul>
  </div>
</nav>
</div>
<div class="middle">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="mumbai.jpg" alt="delhi" width="100%" height="200px" >
      <div class="carousel-caption">
        <h3>Goa</h3>
        <p>The party capital of the country</p>
      </div> 
    </div>

    <div class="item">
      <img src="bangalore.jpg" alt="bang" width="100%" height="200px;">
      <div class="carousel-caption">
        <h3>Bangalore</h3>
        <p>The Silicon valley of india</p>
      </div> 
    </div>

    <div class="item">
      <img src="mumbai.jpg" alt="Mumbai" height="200px";>
      <div class="carousel-caption">
        <h3>Mumbai</h3>
        <p>The Film city of india</p>
      </div> 
    </div>
  </div>

 
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
<hr>
 <div id="belowmiddle" >
 <div style="width:30% ;float:left; border-right:2px solid black;height: 270px;background-color: pink;">
 <button>So Many places to travel in less time?</button><br>
 <p id="belowmiddle2" style="display: none;">There's nothing worse than being the person who can't make friends at work or talk to people at parties. However, when you travel you become a story teller and stories you will have to tell. When you travel you have something in common with everyone and it's easy to find common ground</p>

 </div>
 <div style="width: 70%; float: right; background-color: pink; height: 270px;">
 <h1>Pick Your Top Places To visit</h1>
      <ul id = "sortable">
         <li class = "ui-state-default"><span 
            class = "ui-icon ui-icon-arrowthick-2-n-s"></span>Delhi</li>
         <li class = "ui-state-default"><span 
            class = "ui-icon ui-icon-arrowthick-2-n-s"></span>Mumbai</li>
         <li class = "ui-state-default"><span 
            class = "ui-icon ui-icon-arrowthick-2-n-s"></span>Kota</li>
         <li class = "ui-state-default"><span 
            class = "ui-icon ui-icon-arrowthick-2-n-s"></span> Chennai</li>
         <li class = "ui-state-default"><span 
            class = "ui-icon ui-icon-arrowthick-2-n-s"></span>Jaipur</li>
         <li class = "ui-state-default"><span 
            class = "ui-icon ui-icon-arrowthick-2-n-s"></span>Bangalore</li>
         <li class = "ui-state-default"><span 
            class = "ui-icon ui-icon-arrowthick-2-n-s"></span>Kolkata</li>
      </ul>
      
</div>
</div>
<hr>
<div id="flip" style="font-size: 20px;">what to do when you feel very boring?</div>
<div id="panel">
<p>Learning is a strong reason why people love to travel.  They want to experience something unfamiliar and leave with new skills or knowledge.</p>

<p>Seeing the world is more educational than a high school or college class. This condensed crash course in discovering how the rest of the world lives actually will cover subjects like history, geography and sociology. Every destination has something unique to teach visitors, and immersing themselves in a completely different world is the best learning experience.</p>
<p>And because you’re actually experiencing this learning in real life, not reading it in a textbook, it will stay with you for a long time. You’ll gain a deep sense of satisfaction with the new skills you’ve learned </p>
</div>
<div class="container-fluid bg-2 text-center" style="background-color: aqua">
  <h3>So how to plan the Trips?</h3>
  <p>It is always cool to plan your trips at the earliest but you can be spontaneous sometimes make your trip immediately and just travel and enjoy the life</p>
  <a href="https://www.makemytrip.com/" class="btn btn-default btn-lg">Search</a>
</div>
<footer class="container-fluid bg-4 text-center" style="background-color: indianred; height:50px; padding:10px; ">
  <p>This website is developed By <a href="#"> &copy; DK Inc. </a></p> 
</footer>
</div>
   </body>
</html>