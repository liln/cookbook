json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :servings, :directions
  json.url recipe_url(recipe, format: :json)
end
