  
  <?php
 
  include 'conn.php';
  session_start();
  unset($_SESSION['log']);
session_destroy();
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
 <script src="./js/sweetalert.min.js" ></script>
  

<script type="text/javascript">
	$(document).ready(function() {
		$("#done").click(function(event) {

			let name=$("#name").val();
			let email=$("#email").val();
			let phone=$("#phone").val();
			let username=$("#username").val();
			let password=$("#cpassword").val();
			let address=$("#address").val();
			$.ajax({
				url:"sign.php",
				type:"post",
				data:{
					name:name,
					email:email,
					phone:phone,
					username:username,
					password:password,
					address:address,
				},
				success:function(data)
				{
                  console.log(data);
                    swal({
                               title: "Accout created",
                               text: "done",
                              icon: "success",
                             });
                             
				}	

				

			});
		});
	});
</script>






 </head>
  <body>

  

    
       <header class="">
        <nav class="nava">
        <h1 class="ilogo">SHASHANK</h1>
          
          
          <span class="menu" id="menu"><i class="fas fa-bars fa-2x" ></i></span>
          
          
        <ul class="navlinks " id="#ul">
            <li class="navitem" ><a id="service" href="dashboard.php"   title="">Products</a></li>
         
           <li class="navitem"><a href="contact.php"   title="">Contact</a></li>
           <li class="navitem"><a href="index.php"   title="">Login</a></li>
            
        </ul>
          <form style="display:flex">
            <input type="text" name="" placeholder="search" class="insearch" id="insearch"><span id="search"><i class="fas fa-search " ></i></span>
          </form>
      

        </nav>
      </header>

      <main>
      	<div class="formdiv">
  <H1>Sign up</H1>
  <form class="conform" id="conform" name="conform">
    <div style="display:flex;justify-content:space-around;" class="conformdiv1">
     <label for="" style="display: flex;flex-direction: column;">Full Name<input type="text" name="name" id="name" style="margin: 20px 20px 0px 0px"><small style="display: none;color: red" id="alname">Enter your name</small></label>
    
    <label for="" style="display: flex;flex-direction: column;">Email<input type="email" name="email" id="email" style="margin: 20px 20px 0px 0px"><small style="display: none;color: red" id="alemail">Enter your email</small></label>
    
    <label for="" style="display: flex;flex-direction: column;">Phone<input type="text" name="phone" id="phone" style="margin: 20px 0px 0px 0px"><small style="display: none;color: red" id="alphone">Enter your phone number</small></label>
    </div>


    <div style="display:flex;justify-content:space-around;" class="conformdiv1">

    <label for="" style="display: flex;flex-direction: column;">Username<input type="text" name="username" id="username" style="margin: 20px 20px 0px 0px"><small style="display: none;color: red" id="alusername">Enter your username</small></label>
    
    <label for="" style="display: flex;flex-direction: column;"> Password<input type="password" name="password" id="password" style="margin: 20px 20px 0px 0px"><small style="display: none;color: red" id="alpassword">Enter your password</small></label>
    <label for="" style="display: flex;flex-direction: column;">Confirm Password<input type="password" name="cpassword" id="cpassword" style="margin: 20px 0px 0px 0px"><small style="display: none;color: red" id="alcpassword">Enter your password again</small><small style="display: none;color: red" id="alcpassword">Your Password do not match</small></label>

    	
    </div>
   
      
    <label for="">Address</label>
    <textarea name="addr" id="address"></textarea>

    <small style="display: none;color: red" id="aladdr">Enter your address</small>
    <button type="button"  style="margin: 20px 0px 0px 0px" class="btn-grad1" id="done">CONFIRM</button>



  <script  src="./js/jquery.validate.js"></script>
      <script  src="./js/jquery.validate.min.js"></script>
    
<script type="text/javascript">
$( document ).ready( function () {
  
      $( "#conform" ).validate( {
        rules: {
            
          name: "required",
          
           username: {
           	required:true,
           	minlength:5
           },
          addr: {
            required: true,
            minlength: 10
          },
          password: {
            required: true,
            minlength: 5
          },
          cpassword: {
            required: true,
            minlength: 5,
            equalTo: "#password"
          },
          email: {
            required: true,
            email: true
          },
          phone:{
            required:true,
            minlength: 10,
            maxlength: 10
          },
         
        },
        messages: {
       
         
          name: "Please enter your name",
           username:{
           	required:"Enter a username",
           	minlength:"least 5 character required"},
          
          addr: {
            required: "Please enter a Address",
            minlength: "Your Address must consist of at least 10 characters"
          },
          password: {
            required: "Please provide a password",
            minlength: "Your password must be at least 5 characters long"
          },
          cpassword: {
            required: "Please confirm  password",
            minlength: "Your password must be at least 5 characters long",
            equalTo: "Password not match"
          },
          email: "Please enter a valid email address",
          agree: "Please accept our policy",
          phone:{
            required:"Enter phone number",
            minlength:"invalid phone number ,should have 10 number",
            maxlength:"invalid phone number ,should have 10 number"
          },
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
          // Add the `invalid-feedback` class to the error element
          error.addClass( "invalid-feedback" );

          if ( element.prop( "type" ) === "checkbox" ) {
            error.insertAfter( element.next( "label" ) );
          } else {
            error.insertAfter( element );
          }
        },
        highlight: function ( element, errorClass, validClass ) {
          $( element ).addClass( "is-invalid" ).removeClass( "is-valid" );
        },
        unhighlight: function (element, errorClass, validClass) {
          $( element ).addClass( "is-valid" ).removeClass( "is-invalid" );
        }
           } );

  
} );
  </script>

  </form>
  
     </div>
      </main>
  </body>
  </html>
