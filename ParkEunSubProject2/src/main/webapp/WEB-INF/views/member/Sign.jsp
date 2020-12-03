<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<script>
	$(function(){

		$('#inputId').focus(function() { 
			
			console.log("focus input id");			
			$('#inputId').keypress(function(){
				console.log("keypress");
				console.log($('#inputId').val());
			});			
			
			
		});
		
		$('#inputId').blur(function() { 
			
			console.log("blur input id");
			console.log("blur: "+$('#inputId').val());
			
			var data = $('#inputId').serializeArray();	
			console.log(data);
			obj = {};
			$.each(data,function(index,element){
				obj[element.name]=element.value;				
			});
			console.log(obj);
			$.ajax({
				type:'post',
				url:"<c:url value='/json/sign/idCheck'/>",
				dataType:'text',
				data:JSON.stringify(obj),
				contentType:'application/json',
				success:function(data){
					console.log('서버로 부터 받은 데이타 : ',data);
					$('#spanIdCheck').html(data);
				}				
			});	
			
			
		});
		
		
	});





</script>

<div class="container">
		<!-- 점보트론(Jumbotron) -->
		<div class="jumbotron" style="color: black; background-color: #5FEE9E">
			<h1>
				회원가입 <small>회원가입 페이지(아이디 중복/길이/형식/비밀번호8글자이상)</small>
			</h1>
		</div>
		<div class="row" style="color: #828282">
			<div class="col-md-12">
				<form class="form-horizontal" method="post" action="<c:url value='/DataRoom/Sign.kosmo'/>">
					<div class="form-group"><!-- <div class="row">와 같다 -->
						<!--  label에 control-label도 함께:가운데 정렬 -->
						<label  class="col-sm-2 control-label">Tell/E-mail</label>
						
						<div id="check" class="col-sm-4">						
										
							<input id="inputId" type="text" class="form-control" name="tel_email" placeholder="휴대폰 번호 또는 이메일을 입력하세요?">
							
						</div>						
							<span id ="spanIdCheck" style="color:red"></span>
						<div>
						
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">password</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="pass" placeholder="비밀번호를 입력하세요?" >
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">password check</label>
						<div class="col-sm-4">
							<input type="password" class="form-control" name="pass_check" placeholder="다시한번 비밀번호를 입력하세요?" >
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">name</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요?" >
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">address</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" name="addr" placeholder="주소를 입력하세요?" >
						</div>
					</div>							
							
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">가입</button>
						</div>
					</div>
				</form>
			</div>		
		</div>
	</div><!-- container -->






