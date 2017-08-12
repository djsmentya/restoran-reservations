json.extract! reservation, :id, :name, :from, :to, :table_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
