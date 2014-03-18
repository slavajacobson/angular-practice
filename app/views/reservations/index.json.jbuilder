json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :number, :origin, :destination
  json.url reservation_url(reservation, format: :json)
end
