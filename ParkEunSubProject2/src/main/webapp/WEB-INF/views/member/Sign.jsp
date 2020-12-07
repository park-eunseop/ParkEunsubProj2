<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>



<!-- 
<div class="container-login100" style="background-image: url('<c:url value="/resources/assets/images/bg8.jpg"/>')">		 
	
</div>
 -->
<div class="page-wrapper p-t-180 p-b-100 font-robo"
	style="background-image: url('<c:url value="/resources/assets/images/bg8.jpg"/>')">
	<div class="wrapper wrapper--w960">
		<div class="card card-2">
			<div class="card-heading"></div>
			<div class="card-body">
				<h2 class="title">Sign up</h2>
				<form method="POST" action="<c:url value="/Member/UserSignUp.do"/>" enctype="multipart/form-data">
					<div class="input-group">
						<input class="input--style-2" type="text" placeholder="ID"
							name="id">
					</div>
					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input class="input--style-2" type="password"
									placeholder="Password" name="password">
							</div>
						</div>
						<div class="col-2">
							<div class="input-group">
								<input class="input--style-2" type="password"
									placeholder="Repeat Password" name="re_password">
							</div>
						</div>
					</div>
					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input class="input--style-2" type="text" placeholder="Name"
									name="name">
							</div>
						</div>
						<div class="col-2">
							<div class="input-group">
								<input class="input--style-2" type="text" placeholder="Nickname"
									name="nickname">
							</div>
						</div>
					</div>
					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input class="input--style-2 js-datepicker" type="text"
									placeholder="Birthdate" name="birthday"> <i
									class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
							</div>
						</div>
						<div class="col-2">
							<div class="input-group">
								<div class="rs-select2 js-select-simple select--no-search">
									<select name="gender">
										<option disabled="disabled" selected="selected">Gender</option>
										<option>Male</option>
										<option>Female</option>
										<option>Other</option>
									</select>
									<div class="select-dropdown"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="input-group">
						<input class="input--style-2" type="file"
							 name="upload">
					</div>
					<div class="input-group">
						<input class="input--style-2" type="text"
							placeholder="Address" name="addr">
					</div>
					<div class="input-group">
						<textarea cols="30" rows="10" class="input--style-2"
							placeholder="let me know you!" name="self_intro"></textarea>
					</div>

					<div class="p-t-30">
						<button class="btn btn--radius btn--green" type="submit">Sign up</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>



<!-- Jquery JS-->
<script
	src="<c:url value="/resources/sign/vendor/jquery/jquery.min.js"/>"></script>
<!-- Vendor JS-->
<script
	src="<c:url value="/resources/sign/vendor/select2/select2.min.js"/>"></script>
<script
	src="<c:url value="/resources/sign/vendor/datepicker/moment.min.js"/>"></script>
<script
	src="<c:url value="/resources/sign/vendor/datepicker/daterangepicker.js"/>"></script>

<!-- Main JS-->
<script src="<c:url value="/resources/sign/js/global.js"/>"></script>