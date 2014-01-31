class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :recipe_servings
      t.float :ingredient_size
      t.string :ingredient_unit

      t.timestamps
    end
  end
end
