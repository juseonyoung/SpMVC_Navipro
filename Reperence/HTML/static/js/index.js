$(function () {
  $("section#login_modal").hide();

  $("#login_pop").click(function () {
    $("section#login_modal").show();
  });

  $("#btn_login").click(function () {
    location.href = "index.html";
  });
  $("#btn_join").click(function () {
    location.href = "join.html";
  });

  $("#modal_close").click(function () {
    $("section#login_modal").hide();
  });
});
