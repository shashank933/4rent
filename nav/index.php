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
  
  <script  type="text/javascript" >


    $(document).ready(()=>{
       
      
      $("#submit").click((e)=>{
        
        let username=$("#username").val();
         console.log(` username is ${username}`);
     let password=$("#password").val();
     console.log(` password is ${password}`);
    
 
  
   if(username=="")
   {
    $(".useralert").show();
    e.preventDefault();
    return false;

   }

   if(password=="")
   {
    $(".passalert").show();
    e.preventDefault();
     return false;

   }

         $.ajax({
          url:"login.php",
          type:'post',
          data:{
            
            username:username,
            password:password
          },
          success:function(result){
                    console.log(result);
                      if(result){
                       swal("Successfully logged in","","success")
                        .then((value) => {
                             location.reload(true);
                             });
                     
                             } 
                         else{
                            swal({
                               title: "login",
                               text: "logged failed",
                              icon: "warning",
                             });
                             

                              }

                            
                            reload();
                                 }

             });

                     
        
                  function reload() {
                          

                        }



       
        
      });
      
    });

  </script>

    

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
<body >
   <header class="" id="bd">
        <nav class="nava" >
          <h1  class="ilogo">SHASHANK</h1>
          
          
          <span class="menu" id="menu"><i class="fas fa-bars fa-2x" ></i></span>
          
          
        <ul class="navlinks" id="#ul">
           
            <li class="navitem"><a id="service"  href="
              <?php
             
             if(isset($_SESSION["log"]))
             {
              echo "dashboard.php";
             }
              


             ?>"   title="">Products</a></li>
            <li class="navitem"><a href="contact.php"   title="">Contact</a></li>
            
            
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
               <li class="logout" ><a  href="logout.php"  >logout</a></li>
               <?php
            }
           
              else{
                echo "guest";
              }   ?>
              
       
          </li>
          
        </nav>
      </header>
        <main class="main"> 

       <form action="" method="post" accept-charset="utf-8" class="loginform" id="form">
         
         <label>Username</label>
         <input type="text" name="username"  id="username"  value="">
         <small color="red" class="useralert">enter username</small>
         <br>

         <label for="">Password</label>
         <input type="text" id="password" name="password">
          <small color="red" class="passalert">enter password</small>
         <button type="button" class="btn-grad" id="submit" >login </button>
         <a href="signup.php"><small>New user! Signup</small></a>
       </form>


        
      </main>

</body>
</html>
