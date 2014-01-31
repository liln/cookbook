json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :lactose, :nut, :shellfish, :wheat, :vegetarian, :vegan
  json.url ingredient_url(ingredient, format: :json)
end
