###
# turn empty text fields pink
###
$ ->
  $('#post_submit').click ->
    self = $(this)
    form = self.closest "form"
    empties = form.find "input[type=text]:empty:visible, textarea:empty:visible"
    if empties.length
      empties.each ->
        $(this).css "background-color", "pink"
      false
