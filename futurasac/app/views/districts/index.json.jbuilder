json.array!(@districts) do |district|
  json.extract! district, :id, :description, :status
  json.url district_url(district, format: :json)
end
