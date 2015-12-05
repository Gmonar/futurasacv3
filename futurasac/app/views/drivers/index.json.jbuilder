json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name, :identitydocument, :license, :status
  json.url driver_url(driver, format: :json)
end
