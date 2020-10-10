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
       <link href="https://fonts.googleapis.com/css2?family=Euphoria+Script&display=swap" rel="stylesheet">

     <link href="https://fonts.googleapis.com/css2?family=David+Libre&display=swap" rel="stylesheet">
   
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" rel="stylesheet">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
     

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
<style type="text/css" media="screen">
  .t{background-image: url("./img/bg2.jpg");
  background-repeat: no-repeat;
  background-size: 1300px ;
  background-position: center; }
  
  
</style>


 </head>
  <body>

   

    
       <header class="">
        <nav class="nava">
          <h1 class="ilogo">SHASHANK</h1>
          
          
          <span class="menu" id="menu"><i class="fas fa-bars fa-2x" ></i></span>
          
          
        <ul class="navlinks" id="#ul">
            <li class="navitem" ><a id="service" href="add.php"   title="">Add Products</a></li>
            <li class="navitem"><a href=""   title="">Products</a></li>
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
               <li class="logout" ><a href="logout.php"  >logout</a></li>
               <?php
            }
           
              else{
                echo "guest";
              }   ?>
              
       
          </li>
        </nav>
      </header>

      
      <main class="container">
        <div>
          
        </div>
         <div class="t">
            <table  class="tdesign">
      
      <thead>

        <tr>
           <th>Id</th>
          <th>Product name</th>
          <th>Price</th>
          <th>Category</th>
          <th>Update</th>
          <th>Delete</th>

        </tr>
        <?php 
        $q="SELECT * FROM `product_list`";
        $query=mysqli_query($con,$q);

        while ($res=mysqli_fetch_array($query))
         { ?>

          <tr>
            <td><?php echo $res['id'] ;  ?></td>
            <td><?php echo  $res['p_name'] ;  ?></td>
            <td><?php echo  $res['p_price'] ;  ?></td>
            <td><?php echo  $res['p_catagory'] ;  ?></td>
            <td><a class="btn btn-outline-warning" href="update.php?id=<?php echo $res['id']; ?>" role="button">Update</a></td>
            <td><a class="btn btn-danger" href="delete.php?id=<?php echo $res['id']; ?>" role="button">Delete</a></td>
          </tr>


          <?php
          
        }



         ?>
      </thead>
      <tbody>
        <tr>
         
        </tr>
      </tbody>
    </table>
           
         </div>
         <div>
           
         </div>
       

        
      </main>

   
    
  </body>
</html>