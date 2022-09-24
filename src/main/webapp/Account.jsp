<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
     <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
	  <!-- Nucleo Icons -->
	  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
	  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
	  <!-- Font Awesome Icons -->
	  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
	  <!-- Material Icons -->
	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
	  <!-- CSS Files -->
	  <link id="pagestyle" href="assets/css/material-kit.css?v=3.0.4" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body class="about-us bg-gray-200 min-vh-100">
  <!-- Navbar Transparent -->
  <nav class="navbar navbar-expand-lg position-absolute top-0 z-index-3 w-100 shadow-none my-3 navbar-transparent ">
    <div class="container">
      <a class="navbar-brand  text-white text-bold" href="homeController" rel="tooltip" title="Designed and Coded by Creative Tim" data-placement="bottom" target="_blank">
        <h3 class=" text-white text-bold">Lottery Website</h3>
      </a>
        <ul class="navbar-nav navbar-nav-hover ms-auto">
          <li class="nav-item dropdown dropdown-hover mx-2">
            <div class="d-flex flex-row-reverse ">
		        <c:if test="${user!=null}">
		        	<div class="nav-item dropdown">
			          <a class="nav-link dropdown-toggle text-bold" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            ${user.user_nickname}
			          </a>
			          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			            <li><a class="dropdown-item" href="controllerSign?logOut=1" class="text-decoration-none">LogOut</a></li>
			            <li><a class="dropdown-item" href="controllerSign?ResetPassword=1">ResetPassword</a></li>
			            <li><a class="dropdown-item" href="controllerSign?Account=1" class="text-decoration-none">Account</a></li>
			            <li><a class="dropdown-item" href="homeController?History=1" class="text-decoration-none">History</a></li>
			            <li><hr class="dropdown-divider"></li>
			            <li><a class="dropdown-item" href="Controller?dashboard=1">To Admin Page</a></li>
			          </ul>
	        		</div>
		        </c:if>
		        <c:if test="${user==null}">
		        	<a href="loginPage.jsp" class="text-decoration-none text-light pe-4 pt-2 text-bold">LogIn </a>
		        </c:if>   
			</div>
          </li>
        </ul>
      </div>
  </nav>
  <!-- End Navbar -->
  <!-- -------- START HEADER 7 w/ text and video ------- -->
  <header class="bg-gradient-dark">
    <div class="page-header min-vh-50 pt-5" style="background-image: url('assets/img/imager_43330.jpg');">
      <span class="mask bg-gradient-dark opacity-6"></span>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center mx-auto my-auto pb-6">
            <h1 class="text-white">Welcome back ${user.user_nickname}</h1>
            <p class="lead mb-4 text-white opacity-8"></p>
            <c:if test="${user==null}">
            	<button type="button" class="btn bg-white text-dark " onclick="location.href='signupPage.jsp'">Create Account</button>
            </c:if>
          </div>
        </div>
      </div>
    </div>
  </header>
  <div class="card card-body shadow-xl mx-3 mx-md-4 mt-n6">
    <!-- Section with four info areas left & one card right with image and waves -->
    <section class="pb-7 pt-3">
      <div class="container">
		<form action="controllerSign" method="post" class="container" onsubmit="return check()">
			<input type="hidden" value="${user.id}" name="idUser">
		        <div class="border border-primary p-2 mb-3">
		            <h5>User Information</h5>
		            <button type="submit" class="btn btn-primary">Save</button>
		            <button type="button" class="btn btn-primary" onclick="location.href='homeController'">Close</button>
		            <button type="reset" class="btn btn-primary">Reset</button>
		        </div>
		        <div class="row mb-2">
		            <div class="col-sm-2">
		                User ID
		            </div>
		            <div class="col-sm-4">
		                <p>${user.id}</p>
		            </div>
		            <div class="col-sm-2">
		                User name
		            </div>
		            <div class="col-sm-4  mb-2">
		                <input class="form-control user border ps-3" type="text" value="${user.user_nickname}"  name="nicknameUser">          
		                <div class="d-none error text-danger">
		            		Please enter UserName!
		            	</div>    
		            	 <div class="text-danger error3">
							<c:out value="${error}"></c:out>
						</div>
		            </div>
		           
		            <div class="col-sm-6">
		                <div class="row">  
		                    <div class="col-sm-4">
		                        User fullname
		                    </div>
		                    <div class="col-sm-8 mb-2">
		                     	<input class="form-control name border ps-3" type="text" value ="${user.user_name}" name="fullnameUser">     
		                    </div>
		                </div>
		                <div class="d-none error2 text-danger">
		            		Please enter Your Name
		            	</div>
		            </div>
		            <div class="col-sm-6">
		                <div class="row">
		                    <div class="col-sm-4">
		                        User address
		                    </div>
		                    <div class="col-sm-8 mb-2">
		                        <input class="form-control border ps-3" type="text" value ="${user.address}" name="addressUser">     
		                    </div>
		                </div>
		            </div>
		            <div class="col-sm-6">
		                <div class="row">  
		                    <div class="col-sm-4">
		                        Phone number
		                    </div>
		                    <div class="col-sm-8 mb-2">
		                     	<input class="form-control border ps-3" type="text" value ="${user.user_number}" name="phoneUser">     
		                    </div>
		                </div>
		            </div>
		    </form>
		</div>
	</section>  
   </div>
     <footer class="footer pt-5 mt-5">
		    <div class="container">
		      <div class=" row">
		        <div class="col-md-3 mb-4 ms-auto">
		          <div>
		            <h6 class="font-weight-bolder mb-4">Lottery Website</h6>
		          </div>
		          <div>
		            <ul class="d-flex flex-row ms-n3 nav">
		              <li class="nav-item">
		                <a class="nav-link pe-1" href="https://www.facebook.com" target="_blank">
		                  <i class="fab fa-facebook text-lg opacity-8"></i>
		                </a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link pe-1" href="https://twitter.com" target="_blank">
		                  <i class="fab fa-twitter text-lg opacity-8"></i>
		                </a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link pe-1" href="https://github.com" target="_blank">
		                  <i class="fab fa-github text-lg opacity-8"></i>
		                </a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link pe-1" href="https://www.youtube.com" target="_blank">
		                  <i class="fab fa-youtube text-lg opacity-8"></i>
		                </a>
		              </li>
		            </ul>
		          </div>
		        </div>
		        <div class="col-md-2 col-sm-6 col-6 mb-4">
		        </div>
		        <div class="col-md-2 col-sm-6 col-6 mb-4">
		          <div>
		            <h6 class="text-sm">Help & Support</h6>
		            <ul class="flex-column ms-n3 nav">
		              <li class="nav-item">
		                <a class="nav-link" href="#">
		                  Contact Us
		                </a>
		              </li>
		              <li class="nav-item">
						<a class="nav-link" href="#">                  
							Customer Services
		                </a>
		              </li>
		              <li class="nav-item">
						<a class="nav-link" href="#">                  
		                  Sponsorships
		                </a>
		              </li>
		            </ul>
		          </div>
		        </div>
		        <div class="col-md-2 col-sm-6 col-6 mb-4">
		          <div>
		            <h6 class="text-sm">Company</h6>
		            <ul class="flex-column ms-n3 nav">
		              <li class="nav-item">
		                <a class="nav-link" href="#">
		                  About Us
		                </a>
		              </li>
		              <li class="nav-item">
		                <a class="nav-link" href="#">
		                  Blog
		                </a>
		              </li>
		            </ul>
		          </div>
		        </div>
		        <div class="col-md-2 col-sm-6 col-6 mb-4 me-auto">
		          <div>
		            <h6 class="text-sm">Legal</h6>
		            <ul class="flex-column ms-n3 nav">
		              <li class="nav-item">
						<a class="nav-link" href="#">                  
		                  Terms & Conditions
		                </a>
		              </li>
		              <li class="nav-item">
						<a class="nav-link" href="#">                  
		                  Privacy Policy
		                </a>
		              </li>
		              <li class="nav-item">
						<a class="nav-link" href="#">                  
		                  Licenses
		                </a>
		              </li>
		            </ul>
		          </div>
		        </div>
		        <div class="col-12">
		          <div class="text-center">
		            <p class="text-dark my-4 text-sm font-weight-normal">
		              All rights reserved. Copyright © 2022 by hynAK.
		            </p>
		          </div>
		        </div>
		      </div>
		    </div>
		  </footer>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
     function check(){
    	 $(".error3").addClass("d-none");
    	 if($(".user").val()==""){
    		 $(".error").removeClass("d-none");
    		 return false;
    	 }else{
    		 $(".error").addClass("d-none");
    	 }
    	 if($(".name").val()==""){
    		 $(".error2").removeClass("d-none");
    		 return false;
    	 }else{
    		 $(".error2").addClass("d-none");
    		 return true;
    	 }
     }
    </script>
</body>
</html>