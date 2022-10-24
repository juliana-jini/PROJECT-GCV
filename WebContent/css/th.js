$(document).ready(function(){
	
	//탭
	$("#tabTitle li").click(function(){
		$("#tabTitle li").removeClass("current");
		$(".tab-con").removeClass("current");
		
		$(this).addClass("current");
		var tab_id=$(this).attr("data-tab");
		$("#"+tab_id).addClass("current");
	});
	
	//카카오맵
/*	var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.50166280455814, 127.02637308429648 ),
			level: 3
		};
	//위도, 경도값 변수로 바꾸고 값 받아오기
		var map = new kakao.maps.Map(container, options);*/
});