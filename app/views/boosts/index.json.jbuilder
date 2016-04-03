json.array!(@boosts) do |boost|
  json.extract! boost, :id, :name, :description, :price
  json.url boost_url(boost, format: :json)
end
