<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
          <h6 class="font-weight-bolder mb-0">Lottery result</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group input-group-outline">
              <form action="Controller" class="p-2" method="post">
		            <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" name="idSearch" placeholder="Search here">
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
                <h6 class="text-white text-capitalize ps-3">Lottery Result Management</h6>
              </div>
            </div>
            <div class="card-body px-0 pb-2 mx-3">
              <div class="float-start">
	              <button type ="button" class="button btn btn-secondary">Quick Delete</button>
				  <button type ="button" class="button2 btn btn-secondary d-none">Quick Delete</button>
				  <button type="button" class="button-id btn btn-danger d-none">Delete</button>
			  </div>
			  <div class=" float-end">
				<form action="AddUpdateController" method="post">
					<button class="btn btn-secondary  text-light" type="submit">
						Create New Lottery
					</button>
					<input type="hidden" value="newLott" name="newLott">
				</form>
			  </div>
			</div>
              <div class="table-responsive ">
              	<display:table name="listLottery" sort="list" pagesize="7" id="table1" export="false" requestURI="Controller">
					<display:column title="Edit">
						<form action="AddUpdateController" method="post">
							<div class="link-dark"><button class="material-symbols-outlined">edit_note</button></div>
							<input type="hidden" value ="${table1.getLotteryID()}" name="idEdit">
						</form>
					</display:column>
					<display:column title="Delete">
						<div  class=" d-flex align-items-center">
						<form action="AddUpdateController" method="post" id="delform-2"  class="sh d-none" >
							<input type="checkbox" name = "check[]"<c:if test="${table1.getUsed()!=null}">disabled</c:if> value="${table1.getLotteryID()}" class="float-start sh mb-2">
						</form>
						<form action="AddUpdateController" method="post" id="delform" class="float-start">
							<div class="link-dark">
								<button type="button"<c:if test="${table1.getUsed()!=null}">disabled</c:if> class="mt-1 material-symbols-outlined text-danger btn-smt"data-bs-toggle="modal" data-bs-target="#modal${table1.getLotteryID()}">
									delete
								</button>
								<div class="modal fade" id="modal${table1.getLotteryID()}" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
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
						                        <button type="button" class="text-light text-bold btn btn-secondary" data-bs-dismiss="modal">Close</button>
						                        <button type="submit" class="text-light text-bold btn-submit btn-sub btn btn-primary">Save changes</button>
						                    </div>
						                </div>
						            </div>
						        </div>
							</div>
							<input type="hidden" value ="${table1.getLotteryID()}" name="idDel">
						</form>
						</div>
					</display:column>
				 	<display:column property="lotteryID" title="lottID"/>
				 	<display:column  property="ngay" title="Date"/>
				 	<display:column property="place" title="Place"/>
				  	<display:column property="status" title="Status"/>
				  	<display:column property="description" title="Description"/>
				 </display:table>
				 <form action= "AddUpdateController" method="post" id="temp">
					<input type="hidden" id="list" name="listDel">
				 </form>
				 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
				 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
				 <script type="text/javascript">
				 	$("table").addClass('table align-items-center mb-0');
				 	$("thead tr").addClass('text-uppercase text-secondary font-weight-bolder opacity-7 text-start border');
				 	$("tbody td").addClass('ps-3');
				 	$(".pagebanner").addClass('m-3');
				 	$("tbody td").addClass('px-5 border-start');
				 	$("td button").addClass('btn btn-link text-decoration-none');
				 </script>
				 <script type="text/javascript">
					var a=1;
					$(".button").click(function(){
						  $(".sh").removeClass("d-none");
						  $(".button").addClass("d-none");
						  $(".button2").removeClass("d-none");
						  $(".button-id").removeClass("d-none");
					});
					$(".button2").click(function(){
						  $(".sh").toggle();
						  $(".button-id").toggle();
					});
					$('.button-id').click(function(){
						var a=[];
						$(".sh[name='check[]']:checked").each(function(){
							a.push($(this).val());
						}) 
						var StringList="";
						for(let i=0;i<a.length;i++){
							StringList+=(a[i]+"a");
						}
						$("#list").val(StringList);
						$("#temp").submit();
							
					});
				 </script>

				 <c:if test="${success=='1'}">
				 <script type="text/javascript">
					$(document).ready(function(){ 
						alert("Success!!!");})
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
            <p>�2022 Lottery web by hynAK. All Right Reserved. Read Our <a href="#">Privacy Policy</a> and <a href="#">Terms of Service</a></p>
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