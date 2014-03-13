if @airport
    json.extract! @airport, :code, :name, :city, :destinations
else
    json.missing "true"
end
