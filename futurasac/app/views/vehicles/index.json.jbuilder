json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :color, :plaque, :brand, :category, :status, :driver_id
  json.url vehicle_url(vehicle, format: :json)
end
