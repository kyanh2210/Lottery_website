<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/jquery.simplePagination.min.js"></script>
    <link rel="stylesheet" href="style/styleHP.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/simplePagination.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3739971237023480"
     crossorigin="anonymous"></script>
<title>
	Lottery Web
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
  <link id="pagestyle" href="assets/css/material-kit.css?v=3.0.4" rel="stylesheet" />
</head>

<body class="about-us bg-gray-200">
  <!-- Navbar Transparent -->
  <nav class="navbar navbar-expand-lg position-absolute top-0 z-index-3 w-100 shadow-none my-3 navbar-transparent ">
    <div class="container">
      <a class="navbar-brand " href="homeController" rel="tooltip" title="Designed and Coded by Creative Tim" data-placement="bottom" target="_blank">
        <h3 class=" text-white text-bold">Lottery Website</h3>
      </a>
        <ul class="navbar-nav navbar-nav-hover ms-auto">
          <li class="nav-item dropdown dropdown-hover mx-2">
            <div class="d-flex flex-row-reverse ">
		        <c:if test="${user!=null}">
		        	<div class="nav-item dropdown">
			          <a class="nav-link dropdown-toggle text-bold" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            ${user}
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
		        	<a href="loginPage.jsp" class="text-decoration-none text-light pe-4 text-bold">LogIn </a>
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
          <div class="col-lg-8 text-center mx-auto my-auto pb-6 pt-5">
            <h1 class="text-white">Welcome Customer</h1>
            <p class="lead mb-4 text-white opacity-8">
            	We provide lottery related services.
            </p>
            <c:if test="${user==null}">
            	<button type="button" class="btn bg-white text-dark " onclick="location.href='signupPage.jsp'">Create Account</button>
            	<p class="lead mb-4 text-white opacity-8">
	            	Login/Register for better experience.
	            </p>
            </c:if>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- -------- END HEADER 7 w/ text and video ------- -->
  <div class="card card-body shadow-xl mx-3 mx-md-4 mt-n6">
    <!-- Section with four info areas left & one card right with image and waves -->
    <section class="pb-7 pt-3">
      <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light bg-light border-top border-bottom me-4">
          <div class="container-fluid">
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="navbar-toggler-icon mt-2">
		          <span class="navbar-toggler-bar bar1"></span>
		          <span class="navbar-toggler-bar bar2"></span>
		          <span class="navbar-toggler-bar bar3"></span>
		        </span>
		    </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="homeController">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="homeController?c=MB">Miền Bắc</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="homeController?c=MT">Miền Trung</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="homeController?c=MN">Miền Nam</a>
                </li>
                </ul>
            </div>
          </div>
        </nav>
        <div class="row align-items-center">
        	<div class="row">
		<div class="col-lg-2 d-lg-block d-none mt-3" >
			<nav class="navbar navbar-light bg-light border-top border-bottom">
	          <div class="container-fluid">
					<a href=""class="text-decoration-none text-dark"data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						Miền Bắc
					</a>
	            <div class="collapse show navbar-collapse" id="navbarSupportedContent1">
	                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MB&p=BN">BẮC NINH</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MB&p=HN">HÀ NỘI</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MB&p=HP">HẢI PHÒNG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MB&p=ND">NAM ĐỊNH</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MB&p=QN">QUẢNG NINH</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MB&p=TB">THÁI BÌNH</a>
	                </li>
	                </ul>
	
	            </div>
	          </div>
        	</nav>
			<nav class="navbar navbar-light bg-light border-top border-bottom">
	          <div class="container-fluid">
					<a href=""class="text-decoration-none text-dark"data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						Miền Trung
					</a>
	            <div class="collapse navbar-collapse" id="navbarSupportedContent2">
	                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=BD">BÌNH ĐỊNH</a>
	                </li><li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=DN">ĐÀ NẴNG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=DL">ĐẮK LẮK</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=DN">ĐẮK NÔNG</a>
	                </li>
	                 <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=GL">GIA LAI</a>
	                </li>
	                 <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=H">HUẾ</a>
	                </li>
	                 <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=KH">KHÁNH HÒA</a>
	                </li>
	                 <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=KT">KOM TUM</a>
	                </li>
	                 <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=NT">NINH THUẬN</a>
	                </li>
	                 <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=PY">PHÚ YÊN</a>
	                </li>
	                 <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=QB">QUẢNG BÌNH</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=QNM">QUẢNG NAM</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=QNI">QUẢNG NGẢI</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MT&p=QT">QUẢNG TRỊ</a>
	                </li>
	                </ul>
	            </div>
	          </div>
        	</nav>
        	<nav class="navbar navbar-light bg-light border-top border-bottom">
	          <div class="container-fluid">
					<a href=""class="text-decoration-none text-dark"data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent3" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						Miền Nam
					</a>
	            <div class="collapse navbar-collapse" id="navbarSupportedContent3">
	                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=AG">AN GIANG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=BL">BẠC LIÊU</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=BTE">BẾN TRE</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=BDN">BÌNH DƯƠNG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=BP">BÌNH PHƯỚC</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=BTN">BÌNH THUẬN</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=CM">CÀ MAU</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=CT">CẦN THƠ</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=DL">ĐÀ LẠT</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=DNI">ĐỒNG NAI</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=DT">ĐỒNG THÁP</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=HG">HẬU GIANG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=KG">KIÊN GIANG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=LA">LONG AN</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=ST">SÓC TRĂNG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=TN">TÂY NINH</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=TG">TIỀN GIANG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=HCM">TP.HCM</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=TV">TRÀ VINH</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=VL">VĨNH LONG</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link" href="homeController?cp=MN&p=VT">VŨNG TÀU</a>
	                </li>
	                </ul>
	
	            </div>
	          </div>
        	</nav>
		</div>
		<div class="col-lg-3 col-md-12 order-lg-1 ">
		  <form class="row bg-primary bg-gradient rounded shadow-lg ms-lg-1 mt-3 me-lg-1 sreach-form" action="homeController" method="get" onsubmit="return check()">
		    <div class="col-6 mt-1 ">
		      <input class="shadow-lg" type="radio" name="c" id="MB" value="MB">
		      <label for="MB" class="text-light">M. Bắc</label><br>
		      <input class="shadow-lg" type="radio" name="c" id="MT" value="MT">
		      <label for="MT" class="text-light">M. Trung</label><br>
		      <input class="shadow-lg" type="radio" name="c" id="MN" value="MN">
		      <label for="MN" class="text-light">M. Nam</label><br>
		      <button class="btn btn-secondary mt-2 shadow"type="submit">Search</button>
		    </div>
		    <div class="col-6">
		    	<label class="text-light pt-1" >Ngày</label>
		      	<input type="date" class="form-control day bg-light ps-2 shadow" id="day" name="date">
		      	<label class="text-light" >Vé Số</label>
		      	<input type="text" class="form-control my-1 bg-light ps-2 shadow" id="number" name="lot" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1').replace(/^0[^.]/, '0');" />	    	
		    </div>
		    <div class="text-light error d-none text-end">(Between 2-6 number)</div>
		 </form>
		 <div class="fs-5 text-danger">Today's lucky number: ${random}</div>
	  	</div>
  	  	<div class="col-lg-7 col-md-12 order-lg-12 mt-3 ">
	  	  	<c:if test="${rs!=null}">
	  	  		<p class="text-danger ps-3 mt-3">Here are prize we found (${rs.size()})</p>
	  	  		<div class="row me-1 ps-3">
	  	  			<div class="col-2 border bg-warning">
	  	  				ID
	  	  			</div>	
	  	  			<div class="col-3 border bg-warning">
	  	  				Prize
	  	  			</div>
	  	  			<div class="col-3 border bg-warning">
	  	  				Place/City
	  	  			</div>	
	  	  			<div class="col-4 border bg-warning">
	  	  				Date
	  	  			</div>		
	  	  		<c:forEach var="result" items="${rs}">
	  	  			<div class="col-2 border">
	  	  				<a href="homeController?id=${result.id}" class="link-secondary">${result.id}</a>
	  	  			</div>	
	  	  			<div class="col-3 border">
	  	  				${result.prize}
	  	  			</div>
	  	  			<div class="col-3 border">
	  	  				${result.city}
	  	  			</div>	
	  	  			<div class="col-4 border">
	  	  				${result.ngay}
	  	  			</div>
	  	  		</c:forEach>
  	  			</div>
  	  		</c:if>
  	  		<c:if test="${his!=null}">
  	  		  <div class="ps-3">
  	  			<div class="row bg-secondary me-1 ">
  	  				<div class="col-3 border text-light text-center">
  	  					Số
  	  				</div>
  	  				<div class="col-3 border text-light text-center">
  						Ngày kiểm
  	  				</div> 
  	  				<div class="col-3 border text-light text-center">
  	  					Ngày xổ Số
  	  				</div>
  	  				<div class="col-3 border text-light text-center mien">
  	 					Miền
  	  				</div>
  	  			</div>
  	  			<div class="wrapper">
  	  			<c:forEach items="${his}" var="history">
  	  				<div class="row me-1 item1">
	  	  				<div class="col-3 border text-center">
	  	  					${history.number}
	  	  				</div>
	  	  				<div class="col-3 border text-center">
	  						${history.day_check}
	  	  				</div>
	  	  				<div class="col-3 border text-center">
	  	  					${history.day}
	  	  				</div>
	  	  				<div class="col-3 border text-center mien">
		  	  				<c:if test="${history.place=='null'}">
		  	  					
		  	  				</c:if>
		  	 				<c:if test="${history.place!='null'}">
		  	  					${history.place}
		  	  				</c:if>	
	  	  				</div>
  	  				</div>
  	  			</c:forEach>
  	  			</div>
  	  			<c:if test="${his.size()>10}">
					<div class="pt-2"id="pagination1"></div>
				</c:if>
			  </div>	
  	  		</c:if>
	  		<c:if test="${lot.size() == 0 && his==null}">
	  		<br>
	  			Sorry we not found the items you need
	  		</c:if>
	  		<c:if test="${lot.size() != 0  && his==null}">
	  		<div class="wrapper mx-lg-3">
		        <c:forEach var="lottery" items="${lot}">
		       	  <c:if test="${lottery.city=='MB'}">
			        <div class="item mb-5">
			          <div class="lottery">
			           	<div class="row">
			           		<div class="col border bg-warning">${lottery.city}: ${lottery.city1} - ${lottery.date()}</div>
			          	</div>
			            <div class="row">
			                <div class="col-edit border">
			                    ĐB
			                </div>
			                <div class="col border">
			                    <h4 class="text-danger">${lottery.gDB}</h4>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 1
			                </div>
			                <div class="col border">
			                    ${lottery.g1}
			                </div>
			            </div>
			            <div class="row bg-custom">
			                <div class="col-edit border d-flex">
			                    Giải 2
			                </div>
			                <c:set var="g2" value="${fn:split(lottery.g2,' ')}"/>
			                <div class="col border">
			                    ${g2[0]}
			                </div>
			                <div class="col border">
			                    ${g2[1]}
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 3
			                </div>
			                <c:set var="g3" value="${fn:split(lottery.g3,' ')}"/>
			                <div class="row col">
			                    <div class="col-4 border">
			                        ${g3[0]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g3[1]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g3[2]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g3[3]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g3[4]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g3[5]}
			                    </div>
			                </div>
			            </div>
			            <div class="row bg-custom">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 4
			                </div>
			                <c:set var="g4" value="${fn:split(lottery.g4,' ')}"/>
			                <div class="row col">
			                    <div class="col-3 border">
			                        ${g4[0]}
			                    </div>
			                    <div class="col-3 border">
			                        ${g4[1]}
			                    </div>
			                    <div class="col-3 border">
			                        ${g4[2]}
			                    </div>
			                    <div class="col-3 border">
			                        ${g4[3]}
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 5
			                </div>
			                <c:set var="g5" value="${fn:split(lottery.g5,' ')}"/>
			                <div class="row col">
			                    <div class="col-4 border">
			                        ${g5[0]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g5[1]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g5[2]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g5[3]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g5[4]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g5[5]}
			                    </div>
			                </div>
			            </div>
			            <div class="row bg-custom">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 6
			                </div>
			                <c:set var="g6" value="${fn:split(lottery.g6,' ')}"/>
			                <div class="row col">
			                    <div class="col-4 border">
	                        		${g6[0]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g6[1]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g6[2]}
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 7
			                </div>
			                <c:set var="g7" value="${fn:split(lottery.g7,' ')}"/>
			                <div class="row col">
			                    <div class="col-3 border">
			                        ${g7[0]}
			                    </div>
			                    <div class="col-3 border">
			                        ${g7[1]}
			                    </div>
			                    <div class="col-3 border">
			                        ${g7[2]}
			                    </div>
			                    <div class="col-3 border">
			                        ${g7[3]}
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>  
			 </c:if>
			 <c:if test="${lottery.city!='MB'}">
			 	<div class="item mb-5">
			          <div class="lottery">
			           	<div class="row">
			           		<div class="col border bg-warning"> ${lottery.city}: ${lottery.city1} - ${lottery.date()}</div>
			          	</div>
			            <div class="row">
			                <div class="col-edit border">
			                    ĐB
			                </div>
			                <div class="col border">
			                    <h4 class="text-danger">${lottery.gDB}</h4>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 1
			                </div>
			                <div class="col border">
			                    ${lottery.g1}
			                </div>
			            </div>
			            <div class="row bg-custom">
			                <div class="col-edit border  d-flex align-items-center">
			                    Giải 2
			                </div>
			                <div class="col border">
			                    ${lottery.g2}
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 3
			                </div>
			                <c:set var="g3" value="${fn:split(lottery.g3,' ')}"/>
			                <div class="row col">
			                    <div class="col-6 border">
			                        ${g3[0]}
			                    </div>
			                    <div class="col-6 border">
			                        ${g3[1]}
			                    </div>
			                </div>
			            </div>
			            <div class="row bg-custom">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 4
			                </div>
			                <c:set var="g4" value="${fn:split(lottery.g4,' ')}"/>
			                <div class="row col">
			                    <div class="col-4 border">
			                        ${g4[0]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g4[1]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g4[2]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g4[3]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g4[4]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g4[5]}
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 5
			                </div>
			                <div class="row col">
			                    <div class="col-12 border">
			                        ${lottery.g5}
			                    </div>
			                </div>
			            </div>
			            <div class="row bg-custom">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 6
			                </div>
			                <c:set var="g6" value="${fn:split(lottery.g6,' ')}"/>
			                <div class="row col">
			                    <div class="col-4 border">
	                        		${g6[0]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g6[1]}
			                    </div>
			                    <div class="col-4 border">
			                        ${g6[2]}
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 7
			                </div>
			                <div class="row col">
			                    <div class="col border">
			                       ${lottery.g7}
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-edit border d-flex align-items-center">
			                    Giải 8
			                </div>
			                <div class="row col">
			                    <div class="col border">
			                       ${lottery.g8}
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div> 
			 </c:if>
			</c:forEach>
			</div>
		<c:if test="${lot.size()>5}">
			<div class="pt-3"id="pagination"></div>
		</c:if>
   		</c:if>
	  	</div>
	  	</div>
        </div>
      </div>
    </section>
  </div>
  <footer class="footer pt-5 mt-5">
    <div class="container">
      <div class=" row">
        <div class="col-md-3 col-sm-6 mb-4 ms-auto">
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
  <script>
        const all=$('.item').length;
        const show =5;
        $(".item").slice(show).hide();
        $('#pagination').pagination({
  
            // Total number of items present
            // in wrapper class
            items: all,
  
            // Items allowed on a single page
            itemsOnPage: show, 
            onPageClick: function (noofele) {
                $(".item").hide()
                    .slice(show*(noofele-1),
                    show+ show* (noofele - 1)).show();
            }
        });
        //pagination2
        const all1=$('.item1').length;
        const show1 =10;
        $(".item1").slice(show1).hide();
        $('#pagination1').pagination({
  
            // Total number of items present
            // in wrapper class
            items: all1,
  
            // Items allowed on a single page
            itemsOnPage: show1, 
            onPageClick: function (noofele) {
                $(".item1").hide().slice(show1*(noofele-1),show1+ show1* (noofele - 1)).show();
            }
        });
    </script>
    
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(".del-btn").click(function(){
	var a=[];
	var StringList="";
		$("[name='del']:checked").each(function(){
			a.push($(this).val());
		}) 
		var StringList="";
		for(let i=0;i<a.length;i++){
			StringList+=(a[i]+" ");
		}
		$(".in").val(StringList);
		$(".forDel").submit();
})
</script>
<script type="text/javascript">
function show(){
	$("#myModal").modal('show');
}
function check(){
	if($("#number").val().length>=2 && $("#number").val().length<=6||$("#number").val().length=0){
		$(".error").addClass("d-none");
		return true;
	}
	$(".error").removeClass("d-none");
	return false;
};
</script>
<c:if test="${bd!=null}">
<script type="text/javascript">
$(document).ready(function(){
	window.alert("Sorry your account has been ban/suspended");
})
</script>
</c:if>
</body>
</html>