json.array!(@rates) do |rate|
  json.extract! rate, :id, :price, :district_start, :district_end, :status
  json.url rate_url(rate, format: :json)
end
