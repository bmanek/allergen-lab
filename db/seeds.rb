# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "Peanut Butter") # ID: 1
Ingredient.create(name: "Bread") # ID 2
Ingredient.create(name: "Chicken") # ID 3

User.create(name: "Jeff") # ID 1
User.create(name: "Marlin") # ID 2
User.create(name: "Mary") # ID 3

Allergen.create(user_id: 1, ingredient_id: 1)
Allergen.create(user_id: 2, ingredient_id: 1)
Allergen.create(user_id: 2, ingredient_id: 2)
Allergen.create(user_id: 3, ingredient_id: 3)
