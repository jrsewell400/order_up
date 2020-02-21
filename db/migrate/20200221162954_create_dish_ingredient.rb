class CreateDishIngredient < ActiveRecord::Migration[5.1]
  def change
    create_table :dish_ingredients do |t|
      t.references :dishes, foreign_key: true
      t.references :ingredients, foreign_key: true
    end
  end
end
