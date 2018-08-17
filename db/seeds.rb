# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# require 'json'
# require 'open-uri'



url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

json_document = open(url).read
data = JSON.parse(json_document)
data_ingredients = data["drinks"];
data_ingredients.each do |d|
  Ingredient.create(name: "#{d["strIngredient1"]}")
end


# Cocktail.create(name: "Cocktail 1")
# Cocktail.create(name: "Cocktail 2")
# Cocktail.create(name: "COcktail 3")


#
#
# Dose.create(description: "1cl",cocktail_id: 1, ingredient_id: 1)
# Dose.create(description: "2cl",cocktail_id: 1, ingredient_id: 2)
# Dose.create(description: "3cl",cocktail_id: 1, ingredient_id: 3)
# Dose.create(description: "4cl",cocktail_id: 1, ingredient_id: 4)
# Dose.create(description: "1cl",cocktail_id: 2, ingredient_id: 6)
# Dose.create(description: "2cl",cocktail_id: 2, ingredient_id: 8)
# Dose.create(description: "3cl",cocktail_id: 2, ingredient_id: 14)
# Dose.create(description: "4cl",cocktail_id: 2, ingredient_id: 4)
