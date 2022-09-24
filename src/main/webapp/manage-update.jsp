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
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark">Pages</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Dashboard</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">Edit Lottery result</h6>
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
      <c:forEach items="${eLottery}" var="temp"> 
		<c:set var = "id" value="${temp.getLotteryID()}"/>
		<c:set var = "user" value="${temp.getUser()}"/>
		<c:set var = "status" value="${temp.getStatus()}"/>
		<c:set var = "ngay" value="${temp.getNgay()}"/>
		<c:set var = "place" value="${temp.getPlace()}"/>
		<c:set var = "city" value="${temp.getCity()}"/>
		<c:set var = "g8" value="${temp.getG8()}"/>
		<c:set var = "g7" value="${temp.getG7()}"/>
		<c:set var = "g6" value="${temp.getG6()}"/>
		<c:set var = "g5" value="${temp.getG5()}"/>
		<c:set var = "g4" value="${temp.getG4()}"/>
		<c:set var = "g3" value="${temp.getG3()}"/>
		<c:set var = "g2" value="${temp.getG2()}"/>
		<c:set var = "g1" value="${temp.getG1()}"/>
		<c:set var = "gdb" value="${temp.getgDB()}"/>
		<c:set var = "description" value="${temp.getDescription()}"/>
	</c:forEach>
	
	<form action="AddUpdateController" method="get" id="delForm">
		<input type="hidden" value="${id}" name="idDel1">
		<input type="hidden" value ="${notDel}" name="check">
	</form>

	<form action="AddUpdateController" method="post" onsubmit="return Validate()" class="container">
	<input type="hidden" value="${id}" name="id">
        <div class="border border-primary p-2 mb-3">
            <h5>Service Register</h5>
            <button type="submit" class="btn btn-primary">Save</button>
            <button type="button" class="btn btn-primary" id="sub">Close</button>
            <button type="reset" class="btn btn-primary">Reset</button>
        </div>
        <div class="row mb-2">
            <div class="col-sm-2">
                Lottery ID
            </div>
            <div class="col-sm-4">
                <p>${id}</p>
            </div>
            <div class="col-sm-2">
                Region
            </div>
            <div class="col-sm-4  mb-2">
                <select class="form-control place invalid-show-region" name="place">
                    <option value="">Please select</option>
                    <option value="MB" ${city eq 'MB' ? 'selected' : ''}>MIEN BAC</option>
                    <option value="MT" ${city eq 'MT' ? 'selected' : ''}>MIEN TRUNG</option>
                    <option value="MN" ${city eq 'MN' ? 'selected' : ''}>MIEN NAM</option>
                </select>
                <div class="invalid-show-R text-danger d-none">Please select!</div>
            </div>
            <div class="col-sm-6">
                <div class="row">  
                    <div class="col-sm-4">
                        City/Province
                    </div>
                    <div class="col-sm-8 mb-2">
                        <select class="form-control MB PMB d-none"name="city"> 
                            <option value="">Please select</option>
                            <option value="BN" ${place eq 'BN' ? 'selected' : ''}>Bắc Ninh</option>
                            <option value="HN" ${place eq 'HN' ? 'selected' : ''}>Hà Nội</option>
                            <option value="HP"${place eq 'HP' ? 'selected' : ''}>Hải Phòng</option>
                            <option value="ND"${place eq 'ND' ? 'selected' : ''}>Nam Định</option>
                            <option value="QN"${place eq 'QN' ? 'selected' : ''}>Quảng Ninh</option>
                            <option value="TB"${place eq 'TB' ? 'selected' : ''}>Thái Bình</option>
                        </select>
                        <select class="form-control MT PMT d-none" name="city">
                            <option value="">Please select</option>
                            <option value="BD" ${place eq 'BD' ? 'selected' : ''}>Bình Định</option>
                            <option value="DN" ${place eq 'DN' ? 'selected' : ''}>Đà Nẵng</option>
                            <option value="DL" ${place eq 'DL' ? 'selected' : ''}>Đắk Lắk</option>
                            <option value="DNG" ${place eq 'DN' ? 'selected' : ''}>Đắk Nông</option>
                            <option value="GL" ${place eq 'GL' ? 'selected' : ''}>Gia Lai</option>
                            <option value="H"  ${place eq 'H'  ? 'selected' : ''}>Huế</option>
                            <option value="KH" ${place eq 'KH' ? 'selected' : ''}>Khánh Hòa</option>
                            <option value="KT" ${place eq 'KT' ? 'selected' : ''}>Kon Tum</option>
                            <option value="NT" ${place eq 'NT' ? 'selected' : ''}>Ninh Thuận</option>
                            <option value="PY" ${place eq 'PY' ? 'selected' : ''}>Phú Yên</option>
                            <option value="QB" ${place eq 'QB' ? 'selected' : ''}>Quảng Bình</option>
                            <option value="QNM" ${place eq 'QNM' ? 'selected' : ''}>Quảng Nam</option>
                            <option value="QNI" ${place eq 'QNI' ? 'selected' : ''}>Quảng Ngãi</option>
                            <option value="QT" ${place eq 'QT' ? 'selected' : ''}>Quảng Trị</option>
                        </select>
                        <select class="form-control MNam PMN d-none" name="city">
                            <option value="">Please select</option>
                            <option value="AG" ${place eq 'AG' ? 'selected' : ''}>An Giang</option>
                            <option value="BL" ${place eq 'BL' ? 'selected' : ''}>Bạc Liêu</option>
                            <option value="BTE" ${place eq 'BTE' ? 'selected' : ''}>Bến Tre</option>
                            <option value="BDN" ${place eq 'BDN' ? 'selected' : ''}>Bình Dương</option>
                            <option value="BP" ${place eq 'BP' ? 'selected' : ''}>Bình Phước</option>
                            <option value="BTN" ${place eq 'BTN' ? 'selected' : ''}>Bình Thuận</option>
                            <option value="CM" ${place eq 'CM' ? 'selected' : ''}>Cà Mau</option>
                            <option value="CT" ${place eq 'CT' ? 'selected' : ''}>Cần Thơ</option>
                            <option value="DL" ${place eq 'DL' ? 'selected' : ''}>Đà Lạt</option>
                            <option value="DNI" ${place eq 'DNI' ? 'selected' : ''}>Đồng Nai</option>
                            <option value="DT" ${place eq 'DT' ? 'selected' : ''}>Đồng Tháp</option>
                            <option value="HG" ${place eq 'HG' ? 'selected' : ''}>Hậu Giang</option>
                            <option value="KG" ${place eq 'KG' ? 'selected' : ''}>Kiên Giang</option>
                            <option value="LA" ${place eq 'LA' ? 'selected' : ''}>Long An</option>
                            <option value="ST" ${place eq 'ST' ? 'selected' : ''}>Sóc Trăng</option>
                            <option value="TN" ${place eq 'TN' ? 'selected' : ''}>Tây Ninh</option>
                            <option value="TG" ${place eq 'TG' ? 'selected' : ''}>Tiền Giang</option>
                            <option value="HCM" ${place eq 'HCM' ? 'selected' : ''}>TP.HCM</option>
                            <option value="TV" ${place eq 'TV' ? 'selected' : ''}>Trà Vinh</option>
                            <option value="VL" ${place eq 'VL' ? 'selected' : ''}>Vĩnh Long</option>
                            <option value="VT" ${place eq 'VT' ? 'selected' : ''}>Vũng Tàu</option>
                        </select>
                        <div class="invalid-show-CP text-danger d-none">Please select!</div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-4">
                        Date
                    </div>
                    <div class="col-sm-8 mb-2">
                        <input name="date" id="startDate" class="form-control" type="date" value="${ngay}"/>
                        <div class="invalid-show-D text-danger d-none">Choose Date!</div>
                    </div>
                </div>
            </div>
            <div class="col-sm-2">
                Description
            </div>
            <div class="col-sm-10">
                <textarea class="form-control" rows="3" name="des">${description}</textarea>
            </div>
        </div> 
        <div class="row mb-2">
            <div class="col-sm-2">
                Agreement Type
            </div>
            <div class="col-sm-3">
                <select class="form-control" name="status">
                    <option value="P" ${status eq 'P' ? 'selected' : ''}>Pending</option>
                    <option value="A" ${status eq 'A' ? 'selected' : ''}>Accept</option>
                    <option value="D" ${status eq 'D' ? 'selected' : ''}>Deny</option>
                </select>
            </div>
        </div>
        <div class="row mb-2">
            <div class="col-sm-2">
                Users
            </div>
            <div class="col-sm-3">
            	${user}
                <input type="hidden" class="form-control email" value="${user}" name="user">
            </div>
        </div>
        <div class="row mb-2">
            <div class="col-sm-2">
                Select input type
            </div>
            <div class="col-sm-3">
                <select class="select" name="typeInput">
                    <option>Choose type input</option>
                    <option value="1">File Input</option>
                    <option value="2" <c:if test="${not empty user}">selected</c:if>>Direct Input</option>
                </select>
            </div>
        </div>
        <div class="form-group file row mb-2 d-none">
            <label for="exampleFormControlFile1" class="col-sm-2">Choose a file</label>
            <input type="file" class="form-control-file col-sm-4" name="file">
        </div>
        <div class="MN-MT-input d-none">
            <div class="row mb-2">
                <div class="col-sm-1">
                    8th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g8}" name="g8">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    7th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control"  value="${g70}" name="g70">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    6th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control"value="${g60}" name="g60">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control"value="${g61}" name="g61">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control"value="${g62}" name="g62">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    5th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control"value="${g50}" name="g50">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    4th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g40}" name="g40">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g41}" name="g41">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g42}" name="g42">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g43}" name="g43">
                </div>
                <div class="col-sm-2 mb-2">
                    <input type="text" class="form-control" value="${g44}" name="g44">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g45}" name="g45">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g46}" name="g46">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    3rd
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g30}" name="g30">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g31}" name="g31">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    2nd
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g2}" name= "g2">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    1st
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control"value="${g1}" name="g1">
            	</div>	
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    ĐB
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control"value="${gdb}" name="gdb">
                </div>
            </div>
        </div>
        <div class="MB-input d-none">
            <div class="row mb-2">
                <div class="col-sm-1">
                    7th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g70}" name="g701">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g71}" name="g71">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g72}" name="g72">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g73}" name="g73">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    6th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g60}" name="g601">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g61}" name="g611">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g62}" name="g621">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    5th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g50}" name="g501">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g51}" name="g51">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g52}" name="g52">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g53}" name="g53">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g54}" name="g54">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2 mt-2">
                    <input type="text" class="form-control" value="${g55}" name="g55">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    4th
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g40}" name="g401">
                </div>
                <div class="col-sm-2 mb-2">
                    <input type="text" class="form-control" value="${g41}" name="g411">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g42}" name="g421">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g43}" name="g431">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    3rd
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g30}" name="g301">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g31}" name="g311">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g32}" name="g32">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g33}" name="g33">
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g34}" name="g34">
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-1"></div>
                <div class="col-sm-2 mt-2">
                    <input type="text" class="form-control" value="${g35}" name="g35">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    2nd
                </div>
                <div class="col-sm-2 mt-2">
                    <input type="text" class="form-control"value="${g20}" name="g20">
                </div>
                <div class="col-sm-2 mt-2">
                    <input type="text" class="form-control"value="${g21}" name="g21">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    1st
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${g1}" name="g11">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-sm-1">
                    ĐB
                </div>
                <div class="col-sm-2">
                    <input type="text" class="form-control" value="${gdb}" name="gdb1">
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">                       
        function Validate(){
            var place= $(".place").val();
            var CP=".P"+place;
            if(place==""){  
                $(".place").addClass("border border-danger");
                $(".invalid-show-R").removeClass("d-none");
                return false;
            }else{
                $(".place").removeClass("border border-danger");
                $(".invalid-show-R").addClass("d-none");
            }

            if($(CP).val()==""){  
                $(CP).addClass("border border-danger");
                $(".invalid-show-CP").removeClass("d-none");
                return false;
            }else{
                $(".MB").removeClass("border border-danger");
                $(".invalid-show-CP").addClass("d-none");
            }

            if($("#startDate").val()==""){  
                $("#startDate").addClass("border border-danger");
                $(".invalid-show-D").removeClass("d-none");
                return false;
            }else{
                $("#startDate").removeClass("border border-danger");
                $(".invalid-show-D").addClass("d-none");
            }
            return true;
        }   
    </script>            
    <script>
        $(document).ready(function(){ 
        	$("#sub").click(function(){
        		$("#delForm").submit();
        	})
            var a=0;
            var b=0;
            if ($(".place").val() == 'MB') {
                $(".MB").removeClass("d-none");
                $(".MT").addClass("d-none");
                $(".MNam").addClass("d-none");
                b=1;        
            }
            if ($(".place").val() == 'MT') {
                $(".MT").removeClass("d-none");
                $(".MB").addClass("d-none");
                $(".MNam").addClass("d-none");
                b=2;       
            }
            if ($(".place").val() == 'MN') {
                $(".MNam").removeClass("d-none");
                $(".MB").addClass("d-none");
                $(".MT").addClass("d-none");
                b=2;        
            }
            if( b==2){
                $(".MN-MT-input").removeClass("d-none");
                $(".MB-input").addClass("d-none");
            }
            if(b==1){
                $(".MB-input").removeClass("d-none");
                $(".MN-MT-input").addClass("d-none");
            }
            $(".select").on("change", function(){       
                if ($(this).val() == 1) {
                    $(".file").removeClass("d-none");
                    $(".direct").addClass("d-none");
                    a=0;      
                }

                if ($(this).val() == 2 ) {
                    $(".file").addClass("d-none");
                    $(".direct").removeClass("d-none");
                    a=1;           
                }
            })
            $(".place").on("change", function(){      
                if ($(this).val() == 'MB') {
                    $(".MB").removeClass("d-none");
                    $(".MT").addClass("d-none");
                    $(".MNam").addClass("d-none");
                    $(".MT option").attr("selected", false);
                    $(".MNam option").attr("selected", false);
                    b=1;        
                }

                if ($(this).val() == 'MT') {
                    $(".MT").removeClass("d-none");
                    $(".MB").addClass("d-none");
                    $(".MNam").addClass("d-none");
                    $(".MB option").attr("selected", false);
                    $(".MNam option").attr("selected", false);
                    b=2;       
                }
                
                if ($(this).val() == 'MN') {
                    $(".MNam").removeClass("d-none");
                    $(".MB").addClass("d-none");
                    $(".MT").addClass("d-none");
                    $(".MB option").attr("selected", false);
                    $(".MT option").attr("selected", false);
                    b=2;        
                }
            })
            $(".place, .select").on("change", function(){
                if(a==1 && b==2){
                    $(".MN-MT-input").removeClass("d-none");
                    $(".MB-input").addClass("d-none");
                }
                if(a==1 && b==1){
                    $(".MB-input").removeClass("d-none");
                    $(".MN-MT-input").addClass("d-none");
                }
                if(a==0){
                    $(".MB-input").addClass("d-none"); 
                    $(".MN-MT-input").addClass("d-none");
                }
            })
        })
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