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
            <h5 class="card-title text-center mb-5 fw-light fs-5 fw-bold text-uppercase">Sign Up</h5>
            <form action ="controllerSign" method="post" onsubmit="return check()">
              <div class="form-floating mb-3">
                <input type="text" class="form-control user-1" value ="${user}" name="user-1" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">UserName</label>
              </div>
              <div class="d-none text-danger error-U">
              	Please enter Username!
              </div>
              <c:if test="${validUser !=null}">
              		<div class="text-danger">
              			Username already been used!
              		</div>
              </c:if>
              <div class="form-floating mb-3">
                <input type="email" class="form-control email-1" name="email-1" value="${mail}" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
              </div>
              <c:if test="${validMail !=null}">
              		<div class="text-danger">
              			Email already been used!
              		</div>
              </c:if>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" name="pass-1" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">Password</label>
              </div>
              <div class="form-floating mb-3">
                <input type="password" class="form-control" id="floatingPassword2" placeholder="Password">
                <label for="floatingPassword">Re-enter Password</label>
                <div class="text-danger d-none error">password must match!!!</div>
                <div class="text-danger d-none error-1">Password between 8-12 characters and contain atleast 1 number.</div>
              </div>
              
              <div class="d-grid">
                <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">
                    Sign up
                </button>
              </div>
              <div class="d-grid  position-relative for-or">
                <h5 class="or px-2" >OR</h5>
              </div>
              <hr class="my-4">
              <div class="d-grid mb-2">
                <a class="btn btn-google btn-login text-uppercase fw-bold bg-danger text-white" type="button" href=
                "https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/LotteryWeb/controllerSignGoogle&response_type=code
    			&client_id=572290729287-s0kd54stkjnlu79butccumuoul45k3kb.apps.googleusercontent.com&approval_prompt=force">
                  <i class="bi bi-google me-2"></i> Sign in with Google
                </a>
              </div>
              <div class="d-grid">
                <a class="btn btn-facebook btn-login text-uppercase fw-bold bg-primary text-white" type="button" href=
                "https://www.facebook.com/dialog/oauth?client_id=1645830805778659&redirect_uri=http://localhost:8080/LotteryWeb/login-facebook">
                  <i class="bi bi-facebook me-2"></i> Sign in with Facebook
                </a>
              </div>
            </form>
            <p>Already have an account?<a href="loginPage.jsp" onclick="return fasle" >click here</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script type="text/javascript">
  	function check(){
  		if($(".email-1").val()!=""){
  			$(".error-U").addClass("d-none");
		}else{
			$(".error-U").removeClass("d-none"); 
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