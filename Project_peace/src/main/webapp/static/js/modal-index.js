$(function () {
  $("section#login_modal").click();

  $("#login_pop").click(function () {
    $("section#login_modal").show();
  });

  $("#btn_login").click(function (e) {
    // $("section#login_modal").submit(function (e) {
      e.preventDefault();
      $.ajax({
        url: `${rootPath}/login`,
        type: "POST",
        data: {
          n_userid: $("#n_userid").val(),
          n_password: $("#n_password").val(),
        },
        
 
        success: function (response) {
          if (response == 1) {
            alert('로그인 성공');
            // $("#form-box").modal("hide");
            $("section#login_modal").hide();
            location.reload(); //
          } else {
            alert("로그인 실패");
          }
        },
        error: function () {
          alert("ajax 문제발생");
        },
      });
    // });
  });

  $("#btn_resister").click(function () {
    alert("Short Navi에 오신 것을 환영합니다!");
    location.href = "main-login.html";
  });
});
