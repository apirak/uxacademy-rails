ready = ->
  console.log("d");
  $('.ticket-select').change 'ticket-selected', ->
    console.log("a");
    if ticket_selected()
      console.log("b");
      $('#preview-order-button').removeAttr("disabled")
    else
      console.log("c");
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
