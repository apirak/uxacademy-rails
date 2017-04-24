json.extract! event, :id, :name, :start_date, :period, :max_price, :low_price, :url, :created_at, :updated_at
json.url event_url(event, format: :json)
