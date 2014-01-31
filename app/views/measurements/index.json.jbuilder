json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :recipe_id, :ingredient_id
  json.url measurement_url(measurement, format: :json)
end
