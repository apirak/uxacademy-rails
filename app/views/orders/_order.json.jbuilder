json.extract! order, :id, :name, :email, :phone, :condition, :wht, :company_name, :company_address, :company_tax_id, :ticket_early_bird, :ticket_regular, :ticket_last_ticket, :payment_status, :payment_id, :payment_total, :payment_method, :payment_description, :payment_date, :created_at, :updated_at
json.url order_url(order, format: :json)
