empty_text_siblings = (el) ->
  form = $(el).closest "form"
  form.find "input[type=text]:empty:visible, textarea:empty:visible"

pinkify = (els) ->
  els.each ->
    $(this).css "background-color", "pink"

$ ->
  $('#post_submit').click ->
    empties = empty_text_siblings(this)
    pinkify empties
    return false if empties.length
