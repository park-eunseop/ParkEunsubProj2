<%@ page contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">Who Am I?</h3>
  <img src="<c:url value="/resources/images/user.jpg"/>" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
  <h3>I'm an adventurer</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">What Am I?</h3>
  <p>당신의 일상을 공유해요 </p>
  <a href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> Search
  </a>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Where To Find Me?</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <p>부다페스트에서 어부의 집을 갔어요... <br/> 예쁜 하늘이랑 하얀 성이 아름다웠어요.</p>
      <img src="<c:url value="/resources/images/bg1.jpg"/>" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <p>프라하 광장에는 사람들이 엄청 많았아요.<br/>성당에서는 작은 오페라를 보았어요.</p>
      <img src="<c:url value="/resources/images/bg6.jpg"/>" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <p>부다페스트 궁전에서 보는 야경은 이뻤어요 <br/>  부다페스트의 야경은 3대 야경 중 하나에요.</p>
      <img src="<c:url value="/resources/images/bg2.jpg"/>" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
  </div>
</div>



 