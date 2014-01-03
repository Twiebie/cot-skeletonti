$(function () {
  var pollMax   = 50;
  var pollCount = $("div#pollcontainer div.polloption").length;

  $("button[name=delpollopt]").attr('disabled', pollCount <= 2);
  $("button[name=addpollopt]").attr('disabled', pollCount >= pollMax);

  $(document).on("click", "button[name=addpollopt]", function () {
    if (pollCount < pollMax) {
      $("div.polloption:last").clone().appendTo("div#pollcontainer");
      pollCount++;
    }
    $("button[name=delpollopt]").attr('disabled', pollCount <= 2);
    $("button[name=addpollopt]").attr('disabled', pollCount >= pollMax);
    return false;
  });

  $(document).on("click", "button[name=delpollopt]", function () {
    if (pollCount > 2) {
      $(this).closest("div.polloption").remove();
      pollCount--;
    }
    $("button[name=delpollopt]").attr('disabled', pollCount <= 2);
    $("button[name=addpollopt]").attr('disabled', pollCount >= pollMax);
    return false;
  });
});
