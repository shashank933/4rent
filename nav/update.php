  
      <?php
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


   <style >
    body{
      background-color: white;
    }
  

.formstyle{
  margin-top: 2%;
  background-image: url("./img/bg.jpg");
  background-repeat: no-repeat;
  background-size: 800px ;

  background-position: center; 
   
  font-size: 0.7rem;
  display: flex;
  justify-content: space-around;
  flex-direction: column; 
  align-items: center;
  color: white;
  opacity: 0.8;

}
  </style>

 </head>
  <body>

  

    
       <header class="">
        <nav class="nava">
         <h1 class="ilogo">SHASHANK</h1>
          
          
          <span class="menu" id="menu"><i class="fas fa-bars fa-2x" ></i></span>
          
          
        <ul class="navlinks " id="#ul">
            <li class="navitem" ><a id="service" href="dashboard.php"   title="">Show Products</a></li>
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
               <li class="logout" ><a  href="logout.php"  >logout</a></li>
               <?php
            }
           
              else{
                echo "guest";
              }   ?>
              
       
          </li>
          
        </nav>
      </header>


       <div >
          
          <form action="" method="post" class="formstyle"  >
            

           <label>Product id</label>
          <input type="text"  value="<?php  $id=$_GET['id']; echo $id; ?>" >
          <label>Product name</label>
          <input type="text/submit/hidden/button/etc" name="pname" value="" required="Provide Product name ">
          
          <label>Price</label>
          <input type="number"  name="price" id="price" value="" required="provide a valid price">
          
        <label>Category</label>
        <select name="cat" required="select a category">

          <optgroup>
            <option hidden>select</option>
            <option value="cloths">Cloths</option>
          <option value="eletronics">Eletronics</option>
            <option value="grosery">Grosery</option>
          </optgroup>
      
        </select> 
        <br>
        <button type="submit" name="done" class="submit" id="submit">Submit</button>


        </form>
          
        </div>

   <?php 
    include 'conn.php';

   
        
    if(isset($_POST['done']))
    {
      $id=$_GET['id'];
      $pname=$_POST['pname'];
      $price=$_POST['price'];
      $cat=$_POST['cat'];
      $q=" UPDATE `product_list` SET id=$id,p_name='$pname',p_price='$price',p_catagory='$cat' WHERE id=$id ";

      $query=mysqli_Query($con,$q);
      if($query)
      {
        
        ?>
         <script src="./js/sweetalert.min.js" ></script>
        <script type="text/javascript">
          swal({
  title: "Successfully",
  text: "Data Updated",
  icon: "success",
});
        </script>

        <?php
      }
     

    }
      
     
       ?>


       
        

      </body>
      </html>