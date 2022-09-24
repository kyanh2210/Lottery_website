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
  <form action ="controllerSign" method="post" class="fail">
  <input type="hidden" name="user-1" value="${user}">
  <input type="hidden" name="email-1" value="${email}">
  <input type="hidden" name="pass-1" value="${pass}">
  <input type="hidden" name="text" value="a">
  </form>
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card border-0 shadow rounded-3 my-5">
          <div class="card-body p-4 p-sm-5">
            <h5 class="card-title text-center mb-5 fw-light fs-5 fw-bold text-uppercase">Validate Email</h5>
            <c:out value="${text}"></c:out>
            <input type="hidden" class="code" value="${confirmCode}">
            <form action ="controllerSign" method="post" onsubmit="return check()" >
              <p>Enter Code</p>
              <input type="hidden" name="user-4" value="${user}">
			  <input type="hidden" name="email-4" value="${email}">
			  <input type="hidden" name="pass-4" value="${pass}">
              <div class="form-floating mb-3">
                <input type="text" class="form-control email-3" name="email-3" id="floatingInput">
              </div>
              <div class="d-none text-danger error">Wrong Code!!! <p class="remain d-inline"></p></div>
              <div class="d-grid">
                <button class="submit-f btn btn-primary btn-login text-uppercase fw-bold" type="submit">
                    Confirm
                </button>
              </div>
            </form>
            <p>Don't have an account? <a href="signupPage.jsp">click here</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
    var b=3;
    function check(){
    	if($(".code").val()==$(".email-3").val()){
    		$(".error").addClass("d-none");
    		return true;
    	}else{
    		$(".error").removeClass("d-none");
    		b--;
    		$(".remain").text(" Remain "+(b));
        	return false;
    	}
    }
    $(".submit-f").click(function(){
    	if(b<=0){
        	$(".fail").submit();	
    	}
    })
    </script>
</body>
</html>