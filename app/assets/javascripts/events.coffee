ready = ->
  $('.ticket-select').change 'ticket-selected', ->
    if ticket_selected()
      $('#preview-order-button').removeAttr("disabled")
    else
      $('#preview-order-button').attr("disabled", "true")


ticket_selected = ->
  early_bird = $('#order_ticket_early_bird').val()
  regular = $('#order_ticket_regular').val()
  last_ticket = $('#order_ticket_last_ticket').val()

  return true if early_bird > 0
  return true if regular > 0
  return true if last_ticket > 0


$(document).ready(ready)
$(document).on('turbolinks:load', ready)
