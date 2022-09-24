<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
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
          <a class="nav-link text-white active bg-gradient-primary" href="Controller?dashboard=1">
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
          <a class="nav-link text-white " href="controllerUserManage">
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
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Dashboard</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">User</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group input-group-outline">
	            <form action="controllerUserManage" method="post" class="float-end">
	              <input type="text" class="form-control" name="search" placeholder="Search here">
			  	</form>
            </div>
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
      <div class="row">
        <div class="col-12">
          <div class="card my-4 mt-5">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h6 class="text-white text-capitalize ps-3">User Management</h6>
              </div>
            </div>
            <div class="card-body px-0 pb-2 mx-3">
	            <button class="btn btn-secondary btn-sm action mt-2 me-1 mb-1 float-start p-2">Quick Actions</button>
		        <button class="btn btn-secondary btn-sm  me-1 mt-2 float-start hide-load button-users-del p-2">Remove Users</button>
		        <div class="hide-load">
		            <select class="select-change form-select mt-2 form-select-sm d-inline me-1 float-start p-2 pe-4" aria-label="Default select example"style="width:auto">
		                <option>Change Role</option>
		                <option value="2">Administrator</option>
		                <option value="1">Subscriber</option>
		            </select>
		        </div>
		        <form class="float-end"action="controllerUserManage" method="post">
		        	<button class="btn btn-secondary btn-sm action me-1 mb-1 mt-2 float-start p-2">New User</button>
		        	<input type="hidden" value ="newUser" name="newUser">
		        </form>
		        <form class="forUsers" action="controllerUserManage" method="post">
		        	<input type="hidden" class="users-del" name="users-del" value="">
		        	<input type="hidden" class="users-role" name="users-role" value="">
		        	<input type="hidden" class="role" name="role" value="">
		        </form>
		        <br>
			</div>
			<div class="bg-secondary bg-gradient rounded mx-3">
				<a class="text-decoration-none float-start text-light pt-2 ps-3" href="controllerUserManage">All</a>
                <p class="float-start text-light pt-2">&ensp;(${status.all})&ensp;</p>
                <a class="text-decoration-none float-start text-light pt-2"href="controllerUserManage?listUserStatus=admin">Administrator</a>
                <p class="float-start text-light pt-2">&ensp;(${status.admin})&ensp;</p>
                <a class="text-decoration-none float-start text-light pt-2" href="controllerUserManage?listUserStatus=subscriber">Subscriber</a>
                <p class="float-start text-light pt-2">&ensp;(${status.subs})&ensp;</p>
                <a class="text-decoration-none float-start text-light pt-2" href="controllerUserManage?listUserStatus=suspend">Suspended</a>
                <p class="float-start text-light pt-2">&ensp;(${status.sus})&ensp;</p>
                <a class="text-decoration-none float-start text-light pt-2" href="controllerUserManage?listUserStatus=ban">Banned</a>
                <p class="float-start text-light pt-2">&ensp;(${status.ban})&ensp;</p>
            </div>
              <div class="table-responsive p-0">
              	<display:table class="table" name="listUser" sort="list" pagesize="7" id="table" export="false" requestURI="controllerUserManage">
		       		<display:column title="">
						<input type="checkbox" name="check" id="check" value="${table.id}">
					</display:column>
					<display:column property="id" title="User ID"></display:column>
					<display:column title="User name">
					  	<form class="forUser" action="controllerUserManage" method="post">
					  		<input type="hidden" name="change-id" value="${table.getId()}">
					  		<input class="type-change" type="hidden" name="change-type" value="">
							<a href="#" onclick="return false" class="text-dark float-start d-none d-lg-block show me-1">
			                   <span class="material-symbols-outlined" style="font-size:30px;">
			                        account_circle
			                   </span>
			                </a>
							<a href="#" onclick="return false" class="text-decoration-none text-dark m-0 d-block show" >${table.user_name}</a>
			                <div class="hide-load-1 changeUser">
			                	<a href="#" onclick="return false" class="text-decoration-none text-primary m-0 edit">Edit|</a>
			                	<c:if test="${table.getUsed()!='U'}"><a href="#" onclick="return false" class="text-decoration-none text-danger m-0 del" data-bs-toggle="modal" data-bs-target="#modal${table.getId()}">Delete|</a></c:if>
			                	<c:if test="${table.getUsed()=='U'}"><a href="#" onclick="return false" class="text-decoration-none text-danger opacity-50 m-0">Delete|</a></c:if>
			                	<div class="modal fade" id="modal${table.getId()}" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="false">
						            <div class="modal-dialog">
						                <div class="modal-content">
						                    <div class="modal-header">
						                        <h5 class="modal-title" id="modalLabe">Confirm</h5>
						                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						                    </div>
						                    <div class="modal-body">
						                        Are you sure ?
						                    </div>
						                    <div class="modal-footer">
						                        <button type="button" class=" btn btn-secondary btn-link text-decoration-none text-bold text-light" data-bs-dismiss="modal">Close</button>
						                        <button type="submit" class="btn-sub btn btn-primary btn-link text-decoration-none text-bold text-light">Save changes</button>
						                    </div>
						                </div>
						            </div>
						        </div>
			                	<c:if test="${table.status!='suspend'}">
			                		<a href="#" onclick="return false" class="text-decoration-none text-warning m-0 sus">Suspend|</a>
			                	</c:if>
			                	<c:if test="${table.status =='suspend'}">
			                		<a href="#" onclick="return false" class="text-decoration-none text-warning m-0 unsus">Unsuspend|</a>
			                	</c:if>
			                	<c:if test="${table.status!='ban'}">
			                		<a href="#" onclick="return false" class="text-decoration-none text-info m-0 ban">Ban</a>
			                	</c:if>
			                	<c:if test="${table.status=='ban'}">
			                		<a href="#" onclick="return false" class="text-decoration-none text-info m-0 unban">Unban</a>
			                	</c:if>
			                </div>		        
            			</form>
					</display:column>
					<display:column property="user_number" title="Phone number"/>
					<display:column property="user_mail" title="E-Mail"/>
					<display:column title="Role">
						<c:if test="${table.role==1}">Subscriber</c:if>
						<c:if test="${table.role==2}">Administrator</c:if>
					</display:column>
				</display:table>
				 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
				 <script type="text/javascript">
				 	$("table").addClass('table align-items-center mb-0');
				 	$("thead tr").addClass('text-uppercase text-secondary font-weight-bolder opacity-7 text-start border');
				 	$("tbody td").addClass('ps-3');
				 	$(".pagebanner").addClass('m-3');
				 	$("tbody td").addClass('px-5 border-start');
				 	$("td button").addClass('btn btn-link text-decoration-none');
				 </script>
				 <script>
			        $(document).ready(function(){
			            $("td:first-child, th:first-child").hide();
			            $(".hide-load, .hide-load-1, .hide-load-2").hide();
			            $(".action").click(function(){
			                $("td:first-child, th:first-child").toggle();
			                $(".hide-load").toggle();
			            })
			            $(".show").click(function(){
			                $(this).siblings().toggle();
			            })
			            $('.select-change').change(function(){
			    			var a=[];
			    			$("[name='check']:checked").each(function(){
			    				a.push($(this).val());
			    			}) 
			    			var StringList="";
			    			for(let i=0;i<a.length;i++){
			    				StringList+=(a[i]+" ");
			    			}
			    			$(".users-role").val(StringList);
			    			$(".role").val($(this).val());
			    			$(".forUsers").submit();
			    		});
			            $('.button-users-del').click(function(){
			    			var a=[];
			    			$("[name='check']:checked").each(function(){
			    				a.push($(this).val());
			    			}) 
			    			var StringList="";
			    			for(let i=0;i<a.length;i++){
			    				StringList+=(a[i]+" ");
			    			}
			    			$(".users-del").val(StringList);
			    			$(".forUsers").submit();
			    		});
			            $(".edit").click(function(){
			            	$(".type-change").val("edit");
			    			$(this).parent().parent().submit();
			            })
			            $(".del").click(function(){
			            	$(".type-change").val("del");
			            })
			            $(".sus").click(function(){
			            	$(".type-change").val("sus");
			    			$(this).parent().parent().submit();
			            })
			            $(".unsus").click(function(){
			            	$(".type-change").val("unsus");
			    			$(this).parent().parent().submit();
			            })
			            $(".ban").click(function(){
			            	$(".type-change").val("ban");
			    			$(this).parent().parent().submit();
			            })
			            $(".unban").click(function(){
			            	$(".type-change").val("unban");
			    			$(this).parent().parent().submit();
			            })
			        })
			    </script>
				 <c:if test="${success=='1'}">
					 <script type="text/javascript">
						$(document).ready(function(){ 
							alert("Success!!!");})
					 </script>
				  </c:if>
				  <c:if test="${tb!=null}">
					 <script type="text/javascript">
						$(document).ready(function(){ 
							alert("You cannot delete admin !!!");})
					 </script>
				  </c:if>
				  <c:if test="${success == '2'}">
					<script type="text/javascript">
					$(document).ready(function(){ 
						alert("Something went wrong!!!");})
					</script>
				  </c:if>
              </div>
            </div>
          </div>
        </div>
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