
$(document).ready ->
  $(".comment_form").on("ajax:success", (e, data, status, xhr) ->
    $(".comment_list").append xhr.responseText
  ).bind "ajax:error", (e, xhr, status, error) ->
    $("#new_post").append "<p>ERROR</p>"
    )};