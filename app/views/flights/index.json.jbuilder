json.array!(@flights) do |flight|
  json.extract! flight, :id, :number, :origin, :destination, :price
  json.url flight_url(flight, format: :json)
end
