class Order < ApplicationRecord
  belongs_to :event

  validates :name,  :phone, presence: true
  validates :email, :email_format => { :message => 'is not looking good' }
  validates :event, presence: true

  validates :company_name, :company_address, :company_tax_id, presence: true, if: 'wht.present?'

  def total
    total = event.price_early_bird * ticket_early_bird
    total += event.price_regular * ticket_regular
    total += event.price_last_ticket * ticket_last_ticket
  end

  def calculate_wht
    (total / 100) * 3
  end

  def grand_total
    if wht
      total - calculate_wht
    else
      total
    end
  end

  def grand_total_satang
    grand_total * 100
  end
end
