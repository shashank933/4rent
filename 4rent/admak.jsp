<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>AD Posting</title>

<link rel="stylesheet" href="style.css" >
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></script>
</head>
<body style="background-image:url('./image/br.jpg');background-size: cover;background-repeat: no-repeat;">
<div class="d-flex p-2 flex-row">
  <div class="mt-0 bg-white" style="z-index: 9"><a  href="#"><img src="./image/logo1.png" class=" mt-2"></a></div>
  
  <div class="flex-grow-1 flex-row-reverse">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top position-sticky bg-white" style="z-index:9; height:100px" >
  <a class="navbar-brand"></a>
  <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon "></span>
  </button>

  <div class="collapse navbar-collapse bg-white" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto justify-content-center" >
  <li class="nav-item active "><a class="nav-link" href="index.jsp" >Home</a></li>
      <li class="nav-item active ml-0 mr-0 ">
        <a class="nav-link" href="<% 
     try{
       String data=session.getAttribute("user").toString();
       out.println("yourpage.jsp");
       }  catch(Exception e)
          {
   out.println("email2.jsp");
                  
          }%>
       "><i class="fas fa-house-damage fa-lg"></i>YourPage<span class="sr-only">(current)</span></a>
      </li>
        <li class="nav-item active ml-0 mr-0">
        <a class="nav-link " href="<% 
     try{
       String data=session.getAttribute("user").toString();
       out.println("admak.jsp");
       }  catch(Exception e)
          {
   out.println("email2.jsp");
                 
          }%>
       "><i class="fab fa-adversal fa-lg"></i>PostAd</a>
      </li>
      <li class="nav-item active"><a class="nav-link" href="contact.jsp" >About</a></li>
      <li class="nav-item active">
        <a class="nav-link " href="#"><i class="fa fa-user fa-lg"></i><%
 try{
   String data=session.getAttribute("user").toString();
   
 out.println(data);
 if(data!=null){
 %>  
 <li class="nav-item active"><a class="nav-link active" href="logout.jsp" color="white">Logout</a></li>
 <%
 
            }
 }
 catch(Exception e)
          {
   out.println("guest");
                  
          }
%></a>
      </li>
    </ul>
   </div>
  </nav>
  </div>
</div>
<div class"d-flex flex-row">
<div><%
 try{
   String data=session.getAttribute("msg2").toString();
   if(data=="pass")
   {
   %><div class="alert alert-success container" role="alert">
  <h4 class="alert-heading">DATA UPLOADED</h4>
  <p>Check <a href="yourpage.jsp">Yourpage</a> to visit all your ads</p>
 </div>
 <%
 session.removeAttribute("msg2");
   }
   if(data=="fail")
   {
	   %><div class="alert alert-success container" role="alert">
	   <h4 class="alert-heading">DATA FAILED TO UPLOADED</h4>
	   
	  </div>
	  <%
	  session.removeAttribute("msg2");
   }
   
	   
}
 catch(Exception e)
     			{
                 
                	System.out.println("msg attribute for update alert not set yet");
     			}

%></div>
</div>
<div class="d-flex flex-row align-items-stretch font-weight-bold mt-auto mb-5" style="height:auto;width:auto;">

    
    <div class="  p-2 ml-auto mr-auto align-self-center form-con2  " style="width: 1000px">
    <div class="row ">
    <div class="col-lg-9">
    <h1><span class="badge badge-secondary text-center text-capitalize">ad details</span></h1>
<form action="adserver.jsp" name="form" id="postform" method="post" >
 <div class="form-group">
    <label for="Title">Title</label>
    <input type="text" name="title" class="form-control" id="title" placeholder="" autocomplete="off">
    <small id="text-err" class="font-weight-bold text-uppercase text-danger"></small>
   </div>
   <div class="form-group">
    <select  name="category" id="category" class="form-control" required>
                  <option  value="">Categories</option>
	        <option value="Electronics">Electronics</option>
	        <option value="furniture">furniture</option>
	        <option value="Property">Property</option>
	          <option value="cars">cars</option>
	        <option value="Motercycles">Motercycles</option>
	        <option value="Services">Services</option>
	         <option value=" Scooters"> Scooters</option>
	        <option value="utensils">utensils</option>
	        </select>
	        <small id="category-err" class="font-weight-bold text-uppercase text-danger"></small>
	        
   </div>
   <div class="form-group">
   <select name="loc" id="loc" class="form-control" >
              <option >location</option>
              <option value="Sarni">Sarni</option>
              <option value="Betul">Betul</option>
                <option value="Bhopal">Bhopal</option>
              <option value="Indore">Indore</option>
            </select>
            </div>
   <div class="form-group">
    <label for="price">price</label>
    <input type="text" name="price" class="form-control" id="price" placeholder="&#8377;" >
    <small id="price-err" class="font-weight-bold text-uppercase text-danger"></small> 
   </div>
   <div class="form-group">
    <label for="message">Discription</label>
    <textarea name="message" class="form-control" id="message" placeholder="" required></textarea>
    <small id="des-err" class="font-weight-bold text-uppercase text-danger"></small> 
   </div>
   
     <div class="form-group text-center">
     <button type="submit" value="submit" id="save_data" class="btn btn-success ">Submit</button>
   </div>
  </form>
  </div>
  <!-- new col for upload -->
  <div class="col-sm-2">
<div class="mt-5">
<h6 class="font-weight-bold ">Upload Image:</h6>

<form id="m" action="upload.jsp" method="post" enctype="multipart/form-data">

<input id="uploadImage" type="file" accept="image/*" name="image" required/>
<small id="new" class="font-weight-bold text-uppercase text-danger"></small>
<div id="preview"><img id="img" src="./image/file.jpg" width="80px"/></div><br>

</form>
 </div>
 </div>
 <!-- end of image upload col-->
</div>
</div>
</div>

<footer class="py-0 bg-dark sticky-bottom fixed-bottom">
    <div class="container">
      <p class="m-0 text-center text-white">All rights are reserved &copy;2020 -Designed by Shashank talapelliwar
   <a href="email2.jsp" class="badge badge-pill badge-info">Login</a>
<a href="reg.jsp"   class="badge badge-pill badge-light">Sign-Up</a>
<a href="contact.jsp"   class="badge badge-pill badge-success">Contact-Us</a>
   </p>
   </div>
   <div class="d-flex flex-row">
    <div class="btn-group-horizontal btn-group-sm mx-auto justify-content-center  ">
    <button type="button" class="btn rounded-circle " style="background: #3B5998"><a href="https://m.facebook.com" class="text-white" ><i class="fab fa-facebook"></i></a></button>
    <button type="button" class="btn rounded-circle" style="background: #55ACEE"><a href="https://twitter.com" class="text-white" ><i class="fab fa-twitter"></i></a></button>
    <button type="button" class="btn rounded-circle " style="background: #dd4b39"> <a href="https://google.com" class="text-white" ><i class="fab fa-google"></i></a></button>
    <button type="button" class="btn rounded-circle" style=" background: #007bb5"><a href="https://linkedin.com" class="text-white" ><i class="fab fa-linkedin"></i></a></button>
    <button type="button" class="btn rounded-circle" style="background: #bb0000"><a href="https://m.youtube.com" class="text-white" ><i class="fab fa-youtube"></i></a></button>
    </div >
    </div>
     <!-- /.container -->
  </footer>
  
<script type="text/javascript">
  $(document).ready(function (e) {
 $("#m").on('change',(function(e) {
  e.preventDefault();
  $.ajax({
         url: "upload.jsp",
   type: "POST",
   data:  new FormData(this),
   contentType: false,
         cache: false,
   processData:false,
   beforeSend : function()
   {
    //$("#preview").fadeOut();
    $("#err").fadeOut();
   },
   success: function(data)
      {
    if(data=='invalid')
    {
     // invalid file format.
     $("#preview").html("Invalid File !").fadeIn();
    }
    else
    {
     // view uploaded file.
     $("#preview").html(data).fadeIn();
     $("#form")[0].reset(); 
    }
      },
     error: function(e) 
      {
    $("#err").html(e).fadeIn();
      }          
    });
 }));
});
</script>
<script type="text/javascript">
  
$(document).ready(function() {
  $('#save_data').click(function() {
    /* Act on the event */
    var test=$('#uploadImage').val();
    if (test=="") 
      {
        $('#new').html('provide a image');
        return false;
      }
    
    var title=$('#title').val();
    if (title=="") 
      {
        $('#text-err').html('provide a title');
        return false;
      }
    var category=$('#category').val();
    if (category=="") 
      {
        $('#category-err').html('provide a category');
        return false;
      }
      if ((title.length<5)||(title.length>30))
      {
        $('#text-err').html('provide a title with letters between 6 to 30');
        return false;

      } 

    var price=$('#price').val()  
      if($.isNumeric(price)==false)
      {
        $('#price-err').html('provide a numeric value');
        return false;

      }
      var des=$('#message').val();
      if ((des.length<10)||(des.length>100))
      {
        $('#des-err').html('provide a Description with letters between 10 to 100');
        return false;

      } 
    
  });
  
});

</script>
<script type="text/javascript">
 
$(document).ready(function() {
$("#uploadImage").change(function () {
    filePreview(this);
});
  
});
 function filePreview(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#img').remove();
            $('#preview').after('<img id="img" src="'+e.target.result+'" width="200" height="200"/>');
        };
        reader.readAsDataURL(input.files[0]);
    }
}
</script>

</body>
</html>

