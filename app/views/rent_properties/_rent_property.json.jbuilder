json.extract! rent_property, :id, :Property_name, :rent, :address, :age, :note, :created_at, :updated_at
json.url rent_property_url(rent_property, format: :json)