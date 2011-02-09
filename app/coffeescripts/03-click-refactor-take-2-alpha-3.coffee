empty_text_siblings = (el, selector = null) ->
  search_container = $(el).closest "form"
  search_container = search_container.find(selector) if selector
  search_container.find "input[type=text]:empty:visible, textarea:empty:visible"

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
  $('.verifiable').click ->
    empties = empty_text_siblings(this, ".required")
    pinkify empties
    starify empties
    ! empties.length
