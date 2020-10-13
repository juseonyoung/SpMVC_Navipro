 // 지도영역
 var mapContainer = document.getElementById('map'), 
 mapOption = { 
     center: new kakao.maps.LatLng(35.160438, 126.909911), 
     level: 3
 };
 
 var map = new kakao.maps.Map(mapContainer, mapOption); 
 
 map.addOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);
 
 var latlngList = [];
 // 로드뷰영역
 var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
 var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
 var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

 // 좌표변화 이벤트
 kakao.maps.event.addListener(map, 'center_changed', function() {
 
     var level = map.getLevel();
 
     var latlng = map.getCenter(); 
     var message = '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 ' + latlng.getLng() + '입니다</p>';
 
     var resultDiv = document.getElementById('result');
     resultDiv.innerHTML = message;
     latlngList.push({Ga : latlng.getLat(), Ha : latlng.getLng()});
 });

 console.log(latlngList)

 // 출력버튼 이벤트
 document.addEventListener("DOMContentLoaded", function(){
     const btn_print = document.querySelector("#btn-print");
     btn_print.addEventListener("click",function(){
         document.querySelector("div#roadview").style.display = "block";
         latlngList.forEach(function(data){
         var position = new kakao.maps.LatLng(data.Ga, data.Ha);

         roadviewClient.getNearestPanoId(position, 50, function(panoId) {
             roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
         });            
     })
 })
})