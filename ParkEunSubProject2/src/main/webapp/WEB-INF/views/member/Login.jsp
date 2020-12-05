<%@ page contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


	<!-- 
	<div class="container">
	 -->
		<!-- 점보트론(Jumbotron) 
		<div class="jumbotron" style="color: black; background-color: #5FEE9E">
			<h1>
				로그인 페이지   <small>로그인</small>
			</h1>
		</div>
		<c:if test="${not empty param.NotLogin }">
			<div class="row">
				<div class="col-sm-5 alert alert-warning fade in">
					<button class="close" data-dismiss="alert">
						<span>&times;</span>
					</button>
					  인증이 안된 사용자입니다.
				</div>
			</div>
		</c:if>
		<div class="row">
			
			<sec:authorize access="isAuthenticated()">
				<div class="col-sm-5 alert alert-success"><sec:authentication property="principal.username"/>님
					즐감하세요</div>
			</sec:authorize>
			<sec:authorize access="isAnonymous()">
				<div class="col-sm-12">
					<form class="form-horizontal" id="form" method="post" 
						action="<c:url value='/Member/Auth/LoginProcess.do'/>">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<div class="form-group" style="color: black">
							<label for="id" class="col-sm-3  control-label">전화번호/E-mail</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="tel_email" id="tel_email"
									placeholder="전화번호/E-mail을 입력하세요">
							</div>
						</div>
						<div class="form-group" style="color: black">
							<label for="pwd" class="col-sm-3  control-label">비밀번호</label>
							<div class="col-sm-4">
								<input type="password" class="form-control" id="password" name="password"
									placeholder="비밀번호를 입력하세요">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-6 col-sm-10">
								<input type="submit" value="로그인" class="btn btn-danger" id="btn"/>
							</div>
						</div>
					</form>
				</div>				
			</sec:authorize>
		</div>
	</div>
	-->		
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/vendor/bootstrap/css/bootstrap.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/vendor/animate/animate.css"/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/vendor/css-hamburgers/hamburgers.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/vendor/animsition/css/animsition.min.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/vendor/select2/select2.min.css"/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/vendor/daterangepicker/daterangepicker.css"/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/css/util.css"/>">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/login/css/main.css"/>">
<!--===============================================================================================-->
	
	
	
	
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53">
						Sign In With
					</span>

					<a href="#" class="btn-face m-b-20">
						<i class="fa fa-facebook-official"></i>
						KakaoTalk
					</a>

					<a href="#" class="btn-google m-b-20">
						<img src="images/icons/icon-google.png" alt="GOOGLE">
						Google
					</a>
					
					<div class="p-t-31 p-b-9">
						<span class="txt1">
							Username
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Username is required">
						<input class="input100" type="text" name="username" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Password
						</span>

						<a href="#" class="txt2 bo1 m-l-5">
							Forgot?
						</a>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" >
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Sign In
						</button>
					</div>

					<div class="w-full text-center p-t-55">
						<span class="txt2">
							Not a member?
						</span>

						<a href="#" class="txt2 bo1">
							Sign up now
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

<!--===============================================================================================-->
	<script src="<c:url value="/resources/login/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/login/vendor/animsition/js/animsition.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/login/vendor/bootstrap/js/popper.js"/>"></script>
	<script src="<c:url value="/resources/login/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/login/vendor/select2/select2.min.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/login/vendor/daterangepicker/moment.min.js"/>"></script>
	<script src="<c:url value="/resources/login/vendor/daterangepicker/daterangepicker.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/login/vendor/countdowntime/countdowntime.js"/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/login/js/main.js"/>"></script>
		
		



 