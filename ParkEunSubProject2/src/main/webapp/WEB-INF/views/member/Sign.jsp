<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<script>
$(function(){
	$('#inputid').blur(function(){
		console.log('아이디');
		var id = $('#inputid').val();
		if(id.length==0){		
			$('#spanid').attr('style','color:#ff0000').html('필수사항입니다.');
		}
		else if(id.length<5){			
			$('#spanid').attr('style','color:#ff0000').html('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다..');
		}
		else{
			$('#spanid').html('');
			var data = $('#inputid').serializeArray();			
			console.log(data);
			obj = {};
			$.each(data,function(index,element){
				obj[element.name]=element.value;				
			});
			console.log(obj);//{name: "가길동", age: "20", addr: "가산동"}
			$.ajax({
				type:'post',
				url:"<c:url value='/json/sign/idCheck'/>",
				dataType:'json',
				data:JSON.stringify(obj),
				contentType:'application/json',
				success:function(data){
					console.log('서버로 부터 받은 데이타 : ',data["flag"]);
					if(data["flag"]=='1')
						$('#spanid').attr('style','color:#00ff00').html(data["msg"]);
					else
						$('#spanid').attr('style','color:#ff0000').html(data["msg"]);
				}				
			});				
		}		
	});//아이디
	
	$('#inputpwd').blur(function(){
		var pwd = $('#inputpwd').val();
		if(pwd.length==0){			
			$('#spanpwd').attr('style','color:#ff0000').html('필수사항입니다.');
		}
		else if(pwd.length<8){			
			$('#spanpwd').attr('style','color:#ff0000').html('8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.');
		}
		else{
			$('#spanpwd').html('');							
		}		
	});//비밀번호
	$('#inputpwdcheck').blur(function(){
		var pwdck = $('#inputpwdcheck').val();
		if(pwdck.length==0){			
			$('#spanpwdcheck').attr('style','color:#ff0000').html('필수사항입니다.');
		}
		else if(pwdck != $('#inputpwd').val()){			
			$('#spanpwdcheck').attr('style','color:#ff0000').html('비밀번호가 일치하지 않습니다.');
		}
		else{
			$('#spanpwdcheck').html('');							
		}		
	});//비밀번호 확인
	
	
	
});

</script>

<div class="page-wrapper p-t-180 p-b-100 font-robo"
	style="background-image: url('<c:url value="/resources/assets/images/bg8.jpg"/>')">
	<div class="wrapper wrapper--w960">
		<div class="card card-2">
			<div class="card-heading"></div>
			<div class="card-body">
				<h2 class="title">Sign up</h2>
			
				<form id="form" method="post" action="<c:url value="/Member/UserSignUp.do"/>" enctype="multipart/form-data">
					<div class="input-group">
						 <input id="inputid" class="input--style-2" type="text" placeholder="ID"
							name="id">
					</div>
					<span id="spanid" style="color:red"></span>
					
					<div class="row row-space" style="padding-top: 5px">
						<div class="col-2">
							<div class="input-group">
								<input id="inputpwd" class="input--style-2" type="password"
									placeholder="Password" name="password">
							</div>
							<span id="spanpwd" style="color:red;"></span>
						</div>
						<div class="col-2">
							<div class="input-group">
								<input id="inputpwdcheck" class="input--style-2" type="password"
									placeholder="Repeat Password" name="re_password">
							</div>
							<span id="spanpwdcheck" style="color:red"></span>
						</div>
					</div>
					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input id="inputname" class="input--style-2" type="text" placeholder="Name"
									name="name">									
							</div>
							<span id="spanname" style="color:red"></span>
						</div>
						<div class="col-2">
							<div class="input-group">
								<input id="inputnickname" class="input--style-2" type="text" placeholder="Nickname"
									name="nickname">
							</div>
							<span id="spannickname" style="color:red"></span>
						</div>
					</div>
					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input id="inputbirth" class="input--style-2 js-datepicker" type="text"
									placeholder="Birthdate" name="birthday"> <i
									class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
							</div>
							<span id="spanbirth" style="color:red"></span>
						</div>
						<div class="col-2">
							<div class="input-group">
								<div class="rs-select2 js-select-simple select--no-search">
									<select name="gender" id="selectgender">
										<option disabled="disabled" selected="selected">Gender</option>
										<option>Male</option>
										<option>Female</option>
										<option>Other</option>
									</select>
									<div class="select-dropdown"></div>
									<span id="spangender" style="color:red"></span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="input-group">
						<input id="inputaddr" class="input--style-2" type="text"
							placeholder="Address" name="addr">
					</div>
					<span id="spanaddr" style="color:red"></span>
					<div class="input-group">
						<textarea id="textself" cols="30" rows="10" class="input--style-2"
							placeholder="let me know you!" name="self_intro"></textarea>
					</div>
					<span id="spanself style="color:red"></span>
					
					<div class="input-group">
						<input id="inputfile" class="input--style-2" type="file"
							 name="upload">
						<div class="select_img"><img src="" /></div>
					<script>
  						$("#inputfile").change(function(){
  						 if(this.files && this.files[0]) {
   						 var reader = new FileReader;
    					reader.onload = function(data) {
    					 $(".select_img img").attr("src", data.target.result).width(500);        
  						  }
    						reader.readAsDataURL(this.files[0]);
 						  }
 						 });
 					</script>	 
					</div>
					<span id="spanfile" style="color:red"></span>

					<div class="p-t-30">
						<button type="button" class="btn btn--radius btn--green"  onclick="javascript:Dosignup()">Sign up</button>
					</div>
				</form>
			
			</div>
		</div>
	</div>
</div>
<script>
function Dosignup(){
	console.log('here');
	var id = $('#inputid').val();
	var pwd = $('#inputpwd').val();
	var name = $('#inputname').val();
	var nickname = $('#inputnickname').val();
	var birth = $('#inputbirth').val();
	var gender = $("#selectgender option:selected").val();
	var file = $('#inputfile').val();
	var addr = $('#inputaddr').val();
	var self = $('#textself').val();
	console.log('id: ',id);
	console.log('pwd: ',pwd);
	console.log('name: ',name);
	console.log('nickname: ',nickname);
	console.log('birth: ',birth);
	console.log('gender: ',gender);
	console.log('file: ',file);
	console.log('addr: ',addr);
	console.log('self: ',self);
	
	if(id.length==0){		
		$('#spanid').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	if(pwd.length==0){		
		$('#spanpwd').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	if(name.length==0){		
		$('#spanname').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	else if(name.length!=0){		
		$('#spanname').html('');
		
	}
	if(nickname.length==0){		
		$('#spannickname').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	else if(nickname.length!=0){		
		$('#spannickname').html('');
		
	}
	if(birth.length==0){		
		$('#spanbirth').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	else if(birth.length!=0){		
		$('#spanbirth').html('');
		
	}
	if(gender =='Gender'){		
		$('#spangender').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	else if(gender !='Gender'){		
		$('#spangender').html('');
		
	}
	if(file.length==0){		
		$('#spanfile').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	else if(file.length!=0){		
		$('#spanfile').html('');
		
	}
	if(addr.length==0){		
		$('#spanaddr').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	else if(addr.length!=0){		
		$('#spanaddr').html('');
		
	}
	if(self.length==0){		
		$('#spanself').attr('style','color:#ff0000').html('필수사항입니다.');
		return false;
	}
	else if(self.length!=0){		
		$('#spanself').html('');
		
	}
	
	
	
	
	
	console.log('yes');
	$('#form').submit();
}
	
	
</script>




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