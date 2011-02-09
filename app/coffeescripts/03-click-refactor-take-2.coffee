empty_text_siblings = (el) ->
  form = $(el).closest "form"
  form.find "input[type=text]:empty:visible, textarea:empty:visible"

pinkify = (els) ->
  els.each ->
    $(this).css "background-color", "pink"

starify = (els) ->
  find_star = /[*]\s*$/
  els.each ->
    label = $(this).siblings('label')
    label_text = label.html()
    unless find_star.exec label_text
      label.html "#{label_text}*"

$ ->
  $('#post_submit').click ->
    empties = empty_text_siblings(this)
    pinkify empties
    starify empties
    ! empties.length
