<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>

	function isLogin(){
	//ajax로 요청-로그인 여부 판단
	$.ajax({
		url:"<c:url value='/Member/Auth/IsLogin.do'/>",
		dataType:'json',
		success:function(data){
			if(data.isLogin =='YES')//로그인 되었다면
				//목록페이지로 이동
				location.replace("<c:url value='/BBS/List.do'/>");
			else{//로그인 안되었다면
				alert("로그인 후 이용하세요");
				location.replace("<c:url value="/Member/Auth/Login.do"/>");
				
			}
				
		},
		error:function(e){console.log(e);}
		
	});
	
	}///////////


	function logout(){
		//location.replace("<c:url value="/OneMemo/Auth/Logout.do"/>");
		$('#logoutForm').submit();//스프링 씨큐리티의 csrf공격 사용시
	}/////////////////

</script>



<!-- 로그아웃 GET->POST방식으로 변경하기 위한 폼 추가 -->
<form id="logoutForm" method="post" action="<c:url value="/Member/Auth/Logout.do"/>">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="<c:url value="/"/>">Me</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <sec:authorize access="isAnonymous()">
			<li><a href="<c:url value="/Member/Auth/Login.do"/>">Login</a></li>
			<li><a href="<c:url value="/Member/SignUp.do"/>">Sign up</a></li>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<li><a href="javascript:logout()">Logout</a></li>
		</sec:authorize>
        <li><a href="javascript:isLogin()">Picture</a></li>
        <li><a href="#">Notice</a></li>
      </ul>
    </div>
  </div>
</nav>
<!--  상단 메뉴 끝 -->