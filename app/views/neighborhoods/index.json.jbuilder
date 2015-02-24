json.array!(@neighborhoods) do |nbh|
  json.extract! nbh, :name, :image, :description
end
