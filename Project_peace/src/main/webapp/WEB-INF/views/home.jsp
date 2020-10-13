<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        

    <script src="http://code.jquery.com/jquery-latest.js"></script>    
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script
    src="https://kit.fontawesome.com/2d323a629b.js"
    crossorigin="anonymous"
  ></script>
  <script>
  
  var rootPath = "${rootPath}"
  </script>

    <link href="${rootPath}/static/css/main.css?ver=2020-10-12-004" rel="stylesheet"/>
    <link href="${rootPath}/static/css/login_modal.css?ver=2020-10-12-002" rel="stylesheet"/>
    
    <script src="${rootPath}/static/js/nav.js?ver=2020-10-12-003" defer></script>
    <script src="${rootPath}/static/js/modal-index.js?ver=2020-10-12-04	" defer></script>


    <title>환영합니다</title>
  </head>
  <style>
	#login_body h4 {
		width: 260px;
		margin: 10px auto;
		background-color: orange;
		color: black;
		padding: 8px 20px;
		
		display: none;
		text-align:center;
		border-radius: 25px;
	
	}
</style>
  <script>
$(function(){
		if("${MSG}" !=""){
			$("#msg").css("display","block")	
		}
	
		if("${LOGIN}" != "" ) {
			$("section#login_modal").hide()
		}


})
</script>
  <body>
  <section id="login_modal">
    <article id="login_body">
    <div class="hero" >
      <div id="form-box" class="form-box">
        <div class="button-box">
            <div id="btn"></div>
                <button type="button" class="toggle-btn" onclick="login()">
                Log In
                </button>
                <button type="button" class="toggle-btn" onclick="register()">
                 Register
                </button>
        </div>
        <div class="icon">
          <ul>
               <p><i class="fab fa-twitter"></i></p>
               <p><i class="fab fa-facebook-f"></i></p>
                <p><i class="fab fa-google"></i></p>
              </ul>
        </div>
      <form:form modelAttribute="MEM_VO" id="login" class="input-group" method="POST" action="${rootPath}/login">
            <form:input path="n_userid"  type="text" class="input-field" placeholder="아이디를 입력하세요"  />
            <form:input
            path="n_password"
          type="password"
          class="input-field"
          placeholder="비밀번호를 입력하세요"
          
        />
        <input type="checkbox" class="check-box" />
        <span>아이디 저장하기</span>
        
        <button id ="btn_login" type="button" class="submit-btn" href="${rootPath}/map">Log in</button>
        
         <h4 id="msg">${MSG}</h4>
      </form:form>
      
      
      <form:form modelAttribute="MEM_VO" id="register" class="input-group">
       <form:input path="seq" type="hidden" />
        <form:input path="n_userid" type="text" class="input-field" placeholder="가입하실 아이디를 적어주세요"  />
        <form:input path="n_email" type="email" class="input-field" placeholder="이메일을 적어주세요"  />
        <form:input
        	path="n_password"
          type="password"
          class="input-field"
          placeholder="비밀번호를 적어주세요"
        />
        <input type="checkbox" class="check-box" /><span
          >회원가입에 동의합니다</span
        >
        <button id="btn_resister" type="submit" class="submit-btn">Register</button>
      </form:form>
    </div>
  </article>
  </section>



    <script>
      var x = document.getElementById("login");
      var y = document.getElementById("register");
      var z = document.getElementById("btn");

      function register() {
        x.style.left = "-400px";
        y.style.left = "50px";
        z.style.left = "110px";
      }
      function login() {
        x.style.left = "50px";
        y.style.left = "450px";
        z.style.left = "0px";
      }
    </script>
    <div class="hoverbox">
        <div class="screen">
        <div class="hud01"><img src="static/images/hover01.png" /></div>
        <div class="hud02"><img src="static/images/hover02.png" /></div>
        <div class="hud03"><img src="static/images/hover03.png" /></div>
        <div class="hud04"><img src="static/images/hover04.png" /></div>
        <div class="hud05"><img src="static/images/hover05.png" /></div>
        <div class="hud06"><img src="static/images/background-deco01.png" /></div>
        <div class="hud07"><a href="${rootPath}/map"><img src="static/images/start.png" /></a></div>
        </div>
    </div>
  
  </body>
</html>