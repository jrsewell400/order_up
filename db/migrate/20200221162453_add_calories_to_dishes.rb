class AddCaloriesToDishes < ActiveRecord::Migration[5.1]
  def change
    add_column :dishes, :calories, :integer
  end
end
