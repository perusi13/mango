<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style type="text/css">
.body-container {
	max-width: 800px;
}

.mannerstar li{
	font-size:22px;
	letter-spacing:-1px;
	display:inline-block;
	color:#ccc;
	text-decoration:none;
	cursor:pointer;
}
.mannerstar li.on{
	color:#F2CB61;
}
.prdstar li{
	font-size:22px;
	letter-spacing:-1px;
	display:inline-block;
	color:#ccc;
	text-decoration:none;
	cursor:pointer;
}
.prdstar li.on{
	color:#F2CB61;
}
</style>

<script type="text/javascript">
$(function(){
	$(".mannerstar li").click(function(){
		var b = $(this).hasClass("on");
		
		$(this).parent().children("li").removeClass("on");
		$(this).addClass("on").prevAll("li").addClass("on");
		if(b) {
			$(this).removeClass("on");
		}
		
		var star = $(".mannerstar .on").length;
		$("#review").val(star);
		
	});
});

$(function(){
	$(".prdstar li").click(function(){
		var b2 = $(this).hasClass("on");
		
		$(this).parent().children("li").removeClass("on");
		$(this).addClass("on").prevAll("li").addClass("on");
		if(b2) {
			$(this).removeClass("on");
		}
		
		var star2 = $(".prdstar .on").length;
		$("#review2").val(star2);
		
	});
});

function sendOk() {
	var f = document.reviewForm;
	var st = f.review.value;
	var st2 = f.review2.value;
	
	if(st==='0') {
		alert("별점을 입력해주세요.");
		return;
	}
	console.log(st);
	
	if(st2==='0') {
		alert("별점을 입력해주세요.");
		return;
	}
	
	f.action = "${pageContext.request.contextPath}/product/writeReview?star="+st+"&star2="+st2;
	f.submit();
}

</script>

<div class="container">
	<div class="body-container">	
		<div class="body-title">
			<h3><i class="bi bi-app"></i> 리뷰 작성하기 </h3>
		</div>
		
		<div class="body-main">
			<span class="fw-bold">매너 별점</span><span> </span>
			<ul class="mannerstar">
				<li><span>★</span></li>
				<li><span>★</span></li>
				<li><span>★</span></li>
				<li><span>★</span></li>
				<li><span>★</span></li>
			</ul>
		</div>
		
		<div class="body-main">
			<span class="fw-bold">상품 별점</span><span> </span>
			<ul class="prdstar">
				<li><span>★</span></li>
				<li><span>★</span></li>
				<li><span>★</span></li>
				<li><span>★</span></li>
				<li><span>★</span></li>
			</ul>
		</div>
		
		
		<div class="p-1">
				<span class="fw-bold">중고매물 리뷰</span><span> </span>
			</div>
			<div class="p-1">
				<textarea name="grContent" id="grContent" class="form-control" placeholder="${empty sessionScope.member ? '로그인 후 등록 가능합니다.':''}"></textarea>
			</div>
			<div class="p-1 text-end">
				<button type="button" class="btnSend btn btn-dark"  onclick="sendOk();"> 등록하기 <i class="bi bi-check2"></i> </button>
			</div>
			<!-- 
			<div class="p-1 text-end">
				<button type="button" class="btnSend btn btn-dark" ${empty sessionScope.member ? "disabled='disabled'":""} onclick="sendOk();"> 등록하기 <i class="bi bi-check2"></i> </button>
			</div>
			 -->
		
		<div style="margin-top: 10px;">
		<form name="reviewForm">
			<input type="text" name="review" id="review" value="0" readonly="readonly">
			<input type="text" name="review2" id="review2" value="0" readonly="readonly">
		</form>
		</div>
		
		
		
	</div>
</div>