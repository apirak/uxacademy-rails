# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('.order-wht').on 'change', ->
    console.log("super")
    if $(this).is(':checked')
      console.log("bank")
      $('.wht').show()
    else
      console.log("land")
      $('.wht').hide()
    return

$(document).ready(ready)
$(document).on('page:load', ready)
