ready = ->
  $('.wht').hide()
  $('.order-wht').on 'change', ->
    if $(this).is(':checked')
      $('.wht').show()
    else
      $('.wht').hide()
    return

$(document).ready(ready)
$(document).on('page:load', ready)