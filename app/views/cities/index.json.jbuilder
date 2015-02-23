json.array!(@cities) do |city|
  json.extract! city, :id, :name, :image, :description, :bootcamps
  json.url city_url(city, format: :json)
end
