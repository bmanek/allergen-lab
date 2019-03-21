class Recipe < ApplicationRecord
  has_many :ingredients, through: :recipe_ingredients
  belongs_to :user
end
