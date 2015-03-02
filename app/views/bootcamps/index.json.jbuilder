json.array!(@bootcamps) do |bootcamp|
  json.extract! bootcamp, :name, :description, :bootcampimgs
end
