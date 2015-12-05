json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :sourceaddress, :servicehour, :targetaddress, :rate_id, :servicedate, :passengernumber, :vehicle_id, :paymenttype, :registrationdate, :registrationhour, :rating, :commentservice, :status
  json.url order_url(order, format: :json)
end
