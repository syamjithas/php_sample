var isSelectAll = false;

$(document).ready(function() {
  $("#select-all").on("click", function() {
    $(".cs-4").each(function() {
      if (!$(this).is(':checked')) {
        isSelectAll = false;
        return false;
      }
    });
    if (!isSelectAll) {
      isSelectAll = true;
      $(".cs-4").each(function() {
        $(this).prop("checked", true);
      });
    }
    else {
      isSelectAll = false;
      $(".cs-4").each(function() {
        $(this).prop("checked", false);
      });
    }
  });
});