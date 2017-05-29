class Order < ApplicationRecord
  belongs_to :event

  validates :name,  :phone, presence: true
  validates :email, :email_format => { :message => 'is not looking good' }
  validates :event, presence: true

  def total
    total = event.price_early_bird * ticket_early_bird
    total += event.price_regular * ticket_regular
    total += event.price_last_ticket * ticket_last_ticket
  end
end
