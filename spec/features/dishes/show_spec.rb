require 'rails_helper'

RSpec.describe "As a visitor,", type: :feature do
    
    describe "when I visit a dish's show page" do 

        it "I see the name of the chef that made the dish, and a list of the dish's ingredients." do

            chef1 = Chef.create(name: 'Jordan Sewell')
            chef2 = Chef.create(name: 'Hilary Sewell')

            dish1 = Dish.create(name: 'Spaghetti')
            dish2 = Dish.create(name: 'Grilled Cheese')

            ingredient1 = Ingredient.create(name: 'Noodles', calories: 100)
            ingredient2 = Ingredient.create(name: 'Tomato Sauce', calories: 50)
            ingredient3 = Ingredient.create(name: 'Bread', calories: 150)
            ingredient4 = Ingredient.create(name: 'Cheese', calories: 200)
            
            DishIngredient.create(dish: dish1, ingredient: ingredient1) 
            DishIngredient.create(dish: dish1, ingredient: ingredient2)
            DishIngredient.create(dish: dish2, ingredient: ingredient3) 
            DishIngredient.create(dish: dish2, ingredient: ingredient4)

            visit "/dishes"

            expect(page).to have_content('Spaghetti')
            expect(page).to have_content('Jordan Sewell')
            expect(page).to have_content('Noodles')
            expect(page).to have_content('Tomato Sauce')

            expect(page).to have_content('Grilled Cheese')
            expect(page).to have_content('Hilary Sewell')
            expect(page).to have_content('Bread')
            expect(page).to have_content('Cheese')
        end 
    end 
end 