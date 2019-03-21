class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    # byebug
    @recipe = Recipe.create!(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:user_id, :ingredient_ids => [])
  end
end
