<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>
	Dashboard
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="assets/css/material-dashboard.css?v=3.0.4" rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
   integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />    
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
   crossorigin="anonymous"></script>
</head>
<body class="g-sidenav-show bg-gray-200">
  <!-- side nav -->
  <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
      <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
      <a class="navbar-brand m-0" href="homeController">
        <img src="assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo">
        <span class="ms-1 font-weight-bold text-white">Administrator page</span>
      </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto " id="sidenav-collapse-main">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link text-white active bg-gradient-primary" href="Controller">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">dashboard</i>
            </div>
            <span class="nav-link-text ms-1">Dashboard</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="Controller">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">table_view</i>
            </div>
            <span class="nav-link-text ms-1">Lottery</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="../controllerUserManage">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="material-icons opacity-10">person</i>
            </div>
            <span class="nav-link-text ms-1">User</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white " href="controllerHistory">
            <div class="text-white text-center me-2 d-flex align-items-center justify-content-center">
              <i class="fa fa-history" aria-hidden="true"></i>
            </div>
            <span class="nav-link-text ms-2">History</span>
          </a>
        </li>
      </ul>   
    </div>    
    <div class="sidenav-footer position-absolute w-100 bottom-0 ">
      <div class="mx-3">
      
      </div>
    </div>
  </aside>
  <main class="main-content position-relative max-height-vh-100 vh-100 border-radius-lg ">
    <!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" data-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark">Pages</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Dashboard</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">Edit User</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
              <a href="controllerSign?logOut=1" class="nav-link text-body font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>
                <span class="d-sm-inline d-none">LogOut</span>
              </a>
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </a>
            </li>
            <li class="nav-item px-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0">
                <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <div class="container-fluid py-4">
      <form action="controllerUserManage" method="post" id="delForm">
		<input type="hidden" value="${user.id}" name="idDel1">
		<input type="hidden" value ="${notDel}" name="check">
	  </form>
      <form action="controllerUserManage" method="post" class="container" onsubmit="return Validate()">
		<input type="hidden" value ="${notDel}" name="check">
		<input type="hidden" value="${user.id}" name="id">
	        <div class="border border-primary p-2 mb-3">
	            <h5>Service Register</h5>
	            <button type="submit" class="btn btn-primary">Save</button>
	            <button type="button" class="btn btn-primary" id="sub">Close</button>
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
	                <input class="form-control" type="text" value="${user.user_nickname}"  name="nickname">     
	                <c:if test="${exitNick!=null}">
	                	<div class="text-danger">User name already exit!</div>
	                </c:if>      
	                <div class="text-danger d-none fail">Please enter user!</div>   
	            </div>
	            <div class="col-sm-6">
	                <div class="row">  
	                    <div class="col-sm-4">
	                        Password
	                        <button type="button" class="btn btn-sm btn-outline-secondary material-symbols-outlined resetPass">
								casino
							</button>
	                    </div>
	                    <div class="col-sm-8 mb-2">
	                     	<input class="form-control password" type="text" placeholder="Enter new pass"name="pass">     
	                    </div>
	                </div>
	            </div>
	            <div class="col-sm-6">
	                <div class="row">
	                    <div class="col-sm-4">
	                        Role
	                    </div>
	                    <div class="col-sm-8 mb-2">
	                        <select class="form-control" name="role">
			                    <option value="1" ${user.role eq 1 ? 'selected' : ''}>Subscriber</option>
			                    <option value="2" ${user.role eq 2 ? 'selected' : ''}>Administrator</option>
			                </select>
	                    </div>
	                </div>
	            </div>
	            <div class="col-sm-6">
	                <div class="row">  
	                    <div class="col-sm-4">
	                        User fullname
	                    </div>
	                    <div class="col-sm-8 mb-2">
	                     	<input class="form-control" type="text" value ="${user.user_name}" name="name">     
	                    </div>
	                </div>
	            </div>
	            <div class="col-sm-6">
	                <div class="row">
	                    <div class="col-sm-4">
	                        User address
	                    </div>
	                    <div class="col-sm-8 mb-2">
	                        <input class="form-control" type="text" value ="${user.address}" name="address">     
	                    </div>
	                </div>
	            </div>
	            <div class="col-sm-6">
	                <div class="row">  
	                    <div class="col-sm-4">
	                        Phone number
	                    </div>
	                    <div class="col-sm-8 mb-2">
	                     	<input class="form-control" type="text" value ="${user.user_number}" name="phone">     
	                    </div>
	                </div>
	            </div>
	            <div class="col-sm-6">
	                <div class="row">  
	                    <div class="col-sm-4">
	                        E-mail
	                    </div>
	                    <div class="col-sm-8 mb-2">
	                     	<input class="form-control email" type="text" value ="${user.user_mail}" name="mail"> 
	                     	<c:if test="${exitEmail!=null}">
	                     		<div class="text-danger">Email already exit!</div>
	                     	</c:if>
	                     	<div class="invalid-show-email d-none text-danger">Please input the correct mail!!</div>   
	                    </div>
	                </div>
	            </div>
	            <div class="col-sm-6">
	                <div class="row">
	                    <div class="col-sm-4">
	                        Account status
	                    </div>
	                    <div class="col-sm-8 mb-2">
	                        <select class="form-control status" name="status">
			                    <option value="N" ${user.status eq 'normal' ? 'selected' : ''}>Normal</option>
			                    <option value="S" ${user.status eq 'suspend' ? 'selected' : ''}>Suspend</option>
			                    <option value="B" ${user.status eq 'ban' ? 'selected' : ''}>Ban</option>
			                </select>   
	                    </div>
	                </div>
	            </div>
	            <div class="col-sm-6 dayBan d-none">
		                <div class="row">
		                    <div class="col-sm-4">
		                        Date Ban
		                    </div>
		                    <div class="col-sm-8 mb-2">
		                        <input id="startDate" class="form-control" type="date" value="${user.date_suspend}" name="day_sus"/>
		                        <div class="invalid-show-D text-danger d-none">Choose Date!</div>
		                    </div>
		                </div>
		        </div>
		        <div class="col-sm-6 dayBan d-none">
		            <div class="row">  
		                <div class="col-sm-4">
		                    Day Unban
		                </div>
		                <div class="col-sm-8 mb-2">
		                    <input id="startDate" class="form-control" type="date" value="${user.date_unSuspend}" name="day_unsus"/>
		                    <div class="invalid-show-D text-danger d-none">Choose Date!</div>
		                </div>
		            </div>
		        </div>
		        <div class="col-sm-6">
		        </div>
	            <div class="col-sm-2 dayBan d-none">
	                Reason
	            </div>
	            <div class="col-sm-10 dayBan d-none">
	                <textarea class="form-control" rows="3" name="reason">${user.reason}</textarea>
	            </div>
	    	</div>
	    </form>
   	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>   
   	<c:if test="${user.user_pass==null }">
   		
   	</c:if>       
    <script>
        $(document).ready(function(){ 
        	$(".resetPass").click(function(){
        		var randomstring = Math.random().toString(36).slice(-8);
        		$(".password").val(randomstring);
        	})
        	$("#sub").click(function(){
        		$("#delForm").submit();
        	})
        	if($(".status").val()=='S'){
        		$(".dayBan").removeClass("d-none");
        	}
        	$(".status").change(function(){
        		if($(this).val()=='S'){
        			$(".dayBan").removeClass("d-none");
        		}else{
        			$(".dayBan").addClass("d-none");
        		}
        	})
        })
        function Validate(){
	        	if($("input[name='nickname']").val()==""){
	        		$(".fail").removeClass("d-none");
	        		 return false;
	       		}else{
	    			$(".fail").addClass("d-none");
	    		}
                var regexMail= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                var mail= $(".email").val();
                $(".test").val(mail);
                if(!regexMail.test(mail)){
                    $(".invalid-show-email").removeClass("d-none");
                    $(".email").addClass("border border-danger");
                    return false;
                }else{
                    $(".invalid-show-email").addClass("d-none");
                    $(".email").removeClass("border border-danger");
                    
                } 
                return true;
            }   
    </script>  
    </div>
      <footer class="footer pt-3 fixed-bottom position-relative">
      <div class="container-fluid text-center">
        <div class="row">
          <div class="col-12">
          	<hr class="horizontal dark my-1">
            <h5 class="text-uppercase">Lottery Web</h5>
            <p>©2022 Lottery web by hynAK. All Right Reserved. Read Our <a href="#">Privacy Policy</a> and <a href="#">Terms of Service</a></p>
          </div>
        </div>
      </div>
    </footer>
  </main>
  <div class="fixed-plugin">
    <div class="card shadow-lg">
      <div class="card-header pb-0 pt-3">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Material UI Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="material-icons">clear</i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0">
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Sidenav Type</h6>
          <p class="text-sm">Choose between those different sidenav types.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-dark px-3 mb-2 active text-capitalize" data-class="bg-gradient-dark" onclick="sidebarType(this)">Dark</button>
          <button class="btn bg-gradient-dark px-3 mb-2 ms-2 text-capitalize" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
          <button class="btn bg-gradient-dark px-3 mb-2 ms-2 text-capitalize" data-class="bg-white" onclick="sidebarType(this)">White</button>
        </div>
        <!-- Navbar Fixed -->
        <hr class="horizontal dark my-3">
        <div class="mt-2 d-flex">
          <h6 class="mb-0">Light / Dark</h6>
          <div class="form-check form-switch ps-0 ms-auto my-auto">
            <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="assets/js/core/popper.min.js"></script>
  <script src="assets/js/core/bootstrap.min.js"></script>
  <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="assets/js/plugins/chartjs.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="assets/js/material-dashboard.min.js?v=3.0.4"></script>
</body>
</html>