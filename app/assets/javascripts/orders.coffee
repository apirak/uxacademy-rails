ready = ->
  OmiseCard.configure
    publicKey: 'YOUR_PUBLIC_KEY'
    image: 'https://c1.staticflickr.com/5/4220/34090378444_fc5b319741_t.jpg'
    amount: 99500

  OmiseCard.configureButton '#checkout-button-1',
    frameLabel: 'UX Academy'
    submitLabel: 'PAY NOW :'

  OmiseCard.attach()

$(document).ready(ready)
$(document).on('page:load', ready)