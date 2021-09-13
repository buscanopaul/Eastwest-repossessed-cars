json.extract! offer, :id, :payment_type, :offer_amount, :source_of_funds, :created_at, :updated_at
json.url offer_url(offer, format: :json)
