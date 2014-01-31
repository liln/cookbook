class EditFields < ActiveRecord::Migration
  def change
    remove_column :measurements, :recipe_servings
    remove_column :recipes, :rating
    add_column :recipes, :directions, :text
    add_column :recipes, :servings, :integer
  end
end
