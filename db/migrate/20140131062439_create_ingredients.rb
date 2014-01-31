class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :lactose
      t.boolean :nut
      t.boolean :shellfish
      t.boolean :wheat
      t.boolean :vegetarian
      t.boolean :vegan

      t.timestamps
    end
  end
end
