json.array!(@airports) do |airport|
  json.extract! airport, :code, :name, :city


  json.destinations airport.destinations do |destination|
  	json.code destination.code
  end

  json.url airport_url(airport, format: :json)
end
