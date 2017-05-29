ready = ->
  $('.ticket-select').change 'ticket-selected', ->
    a = $('#order_ticket_early_bird').val()
    console.log a

$(document).ready(ready)
$(document).on('page:load', ready)
