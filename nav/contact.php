<?php 
   include 'conn.php';
   session_start();

        
    
    ?>
 
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <link href="./css/style.css" rel="stylesheet">
      <link href="./css/contact.css" rel="stylesheet">

     <link href="https://fonts.googleapis.com/css2?family=David+Libre&display=swap" rel="stylesheet">
   
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" rel="stylesheet">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
     <link href="https://fonts.googleapis.com/css2?family=Euphoria+Script&display=swap" rel="stylesheet">

<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>




   <script src="./js/sweetalert.min.js" ></script>
   <script type="text/javascript">
	$(document).ready(function() {
		$('#menu').click(function() {
			/* Act on the event */
			$('.navlinks').toggleClass('show');
			});

		$('#search').click(function() {
			/* Act on the event */
			$('.insearch').toggleClass('show1');

		});
	});
</script>



 </head>
  <body>

   

    
       <header class="">
        <nav class="nava" style="background-color: #CEFFF4;">
          <h1 class="ilogo">SHASHANK</h1>
          
          
          <span class="menu" id="menu"><i class="fas fa-bars fa-2x" ></i></span>
          
          
        <ul class="navlinks" id="#ul">
          <li class="navitem"><a href="index.php"   title="">Home</a></li>
            
            <li class="navitem"><a href=""   title="">Products</a></li>
            
            <li class="navitem"><a href=""   title="">feedback</a></li>
            
        </ul>
          <form style="display:flex">
            <input type="text" name="" placeholder="search" class="insearch" id="insearch"><span id="search"><i class="fas fa-search " ></i></span>
          </form>
          
              <li  style="margin: 0 30px 0 30px;display: flex;"><span id="user"><i class="fas fa-user fa-2x " ></i></span>
            <?php  
            if(isset($_SESSION["log"]))
            {
              
               $user=$_SESSION["log"];
               echo $user;
               ?>
               <li class="logout" ><a href="logout.php"  >logout</a></li>
               <?php
            }
           
              else{
                echo "guest";
              }   ?>
              
       
          </li>
        </nav>
      </header>
<main >
<div class="contactmain">
		<h1>MEET OUR TEAM</h1>
<p>We are all very different. We were born in different cities, at different times, we love different music, food, movies. But we have something that unites us all. It is our company. We are its heart. We are not just a team, we are a family.</p>
	
</div>
<div class="icondiv">
  <div>
   
    <img src="./img/cr.png" alt="cr" style="height:20vh;">
     <h4>Creativity</h4>
    <p style="text-align: center;">It's the ability to think outside the box. We make decisions, create something new and generate a lot of ideas.</p>
    
  </div>
  <div>
     
     <img src="./img/earth.png" alt="cr" style="height:20vh;">
     <h4>Worldwide</h4>
    <p  style="text-align: center;">All sites you make with Shashank are mobile-friendly. You don't have to create a special mobile version of your site.</p>
  </div>
  <div>

     <img src="./img/smile.png" alt="cr" style="height:20vh;">
      <h4>Unique Styles</h4>
    <p  style="text-align: center;">
      Shashank offers many site blocks in several themes, and though these blocks are pre-made, they are flexible.
    </p>
  </div>
</div>


<div class="formdiv">
  <H1>CONTACT US</H1>
  <form class="conform">
    <div style="display:flex;justify-content:space-around;" class="conformdiv1">
    <label for="" style="display: flex;flex-direction: column;">Name<input type="" name="" style="margin: 20px 20px 0px 0px"></label>
    
    <label for="" style="display: flex;flex-direction: column;">Email<input type="email" name="" style="margin: 20px 20px 0px 0px"></label>
    
    <label for="" style="display: flex;flex-direction: column;">Phone<input type="" name="" style="margin: 20px 0px 0px 0px"></label>
      
    </div>
  
    
    <label for="">Message</label>
    <textarea name=""></textarea>
    <button type="button"  style="margin: 20px 0px 0px 0px" class="btn-grad1">SEND FORM</button>

  </form>
  
</div>
	
</main>
</body>
</html>
