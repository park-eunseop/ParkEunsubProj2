<%@ page contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


	
	<div class="container">
		<!-- 점보트론(Jumbotron) -->
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
			
	


		
		



 