class RemoveCaloriesFromDishes < ActiveRecord::Migration[5.1]
  def change
    remove_column :dishes, :calories, :integer
  end
end
