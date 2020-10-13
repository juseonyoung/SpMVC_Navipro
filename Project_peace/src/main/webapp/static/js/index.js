$(function () {
  $("div.form-box").click();

  $("form#input-group").click(function () {
    //any로 바꾸면 x클릭안됨
    $("div.form-box").hide();
  });
  $("#btn_join").click(function () {
    location.href = "join.html";
  });
});
