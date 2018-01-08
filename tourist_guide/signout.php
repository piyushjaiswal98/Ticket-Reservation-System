<?php
session_start();
unset($_SESSION['uid']);
session_destroy();
?>
<html>
<head>
<style>
body{
	background-color:rgb(54,79,121);
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
	div.container{
	background-color:rgb(80,100,150);
	padding-top:50px;
    width: 760px;
    height: 450px;
    margin:40px 00px 0px 400px;
    font-family: Raleway;
    position:relative;

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
		 
</style>
</head>

<body>

<div class="heading">
<div class="title">
<h1 class="h1">Total Tourist guider</h1>
<div class="container">
<h4> YOU HAVE BEEN SUCCESSFULLY LOGGED OUT!!</h4>
<a href="http://localhost/tourist_guide/login_page.html"> Click here to login again </a>
</div>
</div>
</div>
</body>
</html>
