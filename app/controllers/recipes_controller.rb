class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:ingredient_ids)
  end
end
