<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="style/style2.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body class="bg-city">
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card border-0 shadow rounded-3 my-5">
          <div class="card-body p-4 p-sm-5">
            <h5 class="card-title text-center mb-5 fw-light fs-5 fw-bold text-uppercase">New Password</h5>
            <form action ="controllerSign" method="post" onsubmit="return check()">
              <div class="form-floating mb-3">
                <input type="password" class="form-control pass" id="floatingInput" name="oldPass" placeholder="name@example.com">
                <label for="floatingInput">Password</label>
              </div>
              <c:if test="${errorP!=null}">
              	<p class="text-danger">Wrong Pass</p>
              </c:if>
              <div class="error-P text-danger d-none">Enter password!</div>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" name="newPass" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">New Password</label>
              </div>
              <div class="text-danger d-none error-1">Password between 8-12 characters and contain atleast 1 number.</div>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" id="floatingPassword2" placeholder="Password">
                <label for="floatingPassword">Re-enter new Password</label>
                <div class="text-danger d-none error">password must match!!!</div>
              </div>
              
              <div class="d-grid">
                <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">
                    Reset Password
                </button>
              </div>
            </form>
            <div class="float-end">Forgot password? <a href="resetPass.jsp">Click here</a></div> 
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script type="text/javascript">
  	function check(){
  		if($(".pass").val()!=""){
  			$(".error-P").addClass("d-none");
		}else{
			$(".error-P").removeClass("d-none"); 
			return false;	
		}
  		if($('#floatingPassword2').val()!=$('#floatingPassword').val()){
  			$('#floatingPassword2').addClass("border border-primary");
  			$('.error').removeClass("d-none");
  			return false;
  		}
  		if($('#floatingPassword2').val()==$('#floatingPassword').val()){
  			$('#floatingPassword2').removeClass("border border-primary");
  			$('.error').addClass("d-none");
  			$('.error-1').addClass("d-none");
  		}
  		var a= $('#floatingPassword').val();
  		var passRegex=/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,12}$/;
  		if(!passRegex.test(a)){
  			$('.error-1').removeClass("d-none");
  			return false;
  		}else{
  			$('.error-1').addClass("d-none");
  			return true;
  		}
  	}
  </script>	
</body>
</html>