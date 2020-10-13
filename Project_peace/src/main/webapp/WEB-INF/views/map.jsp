<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="${rootPath}/static/css/index.css?ver=2020-10-12-001" rel="stylesheet" />
    <link href="${rootPath}/static/css/login_modal.css?ver=2020-10-12-001" rel="stylesheet" />
    <link href="${rootPath}/static/css/main_section.css?ver=2020-10-12-001" rel="stylesheet" />
    <link href="${rootPath}/static/css/nav.css?ver=2020-10-12-001" rel="stylesheet" />
    

  <script src="https://code.jquery.com/jquery-latest.min.js"></script>
  <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
  <script src="https://kit.fontawesome.com/4f95742a0c.js" crossorigin="anonymous"></script>

  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
  rel="stylesheet"/>

  <script src="${rootPath}/static/js/index.js?ver=2020-10-12-002"></script>
  <script src="${rootPath}/static/js/nav.js?ver=2020-10-12-002" defer></script>


  <script
    type="text/javascript"
    src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=39483247dd0dab53202fa8d1b4262b2f&libraries=services"
  ></script>
    
    
    <title>검색창입니다</title>
  </head>
  <body>
    <nav class="navbar">
      <div class="navbar__logo">
        <i class="fab fa-accusoft"></i>
        <a href="">SHORT NAVI</a>
      </div>

      <ul class="navbar__menu">
        <li><a href="${rootPath}/">Home</a></li>
        <li><a href="${rootPath}/mypage">MyPage</a></li>
        <li><a href="${rootPath}/">Logout</a></li>
        <li><a href="">Contact Us</a></li>
      </ul>

      <ul class="navbar__icons">
        <li><i class="fab fa-twitter"></i></li>
        <li><i class="fab fa-facebook-f"></i></li>
        <li><i class="fab fa-google"></i></li>
      </ul>

      <a href="#" class="navbar__toggleBtn">
        <i class="fas fa-bars"></i>
      </a>
    </nav>

    

  </article>
  <div id="map"></div>
  <p id="result"></p>
  <button id="btn-print">버튼</button>
  
  <hr>
  <div id="roadview" ></div>
  
<script src="${rootPath}/static/js/main_section.js?ver=2020-10-12-001"></script>
</body>
</html>
