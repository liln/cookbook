class RemoveFieldTypeFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :type
  end
end
