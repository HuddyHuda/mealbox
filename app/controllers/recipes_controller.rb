class RecipesController < ApplicationController
  def create
    recipe = Recipe.new()
    recipe.cookbook = Cookbook.find(params[:cookbook_id])
    recipe.ingredient = Ingredient.find(params[:recipe][:ingredient_id])
    recipe.quantity = params[:recipe][:quantity]
    recipe.save
    redirect_to cookbook_path((params[:cookbook_id]))
  end

  def destroy
    @recipe = Recipe.find((params[:id]))
    @recipe.destroy
    redirect_to cookbook_path((params[:cookbook_id]))
  end

  # private
  #   def recipe_params
  #     params.require(:recipe).permit(:ingredient, :quantity)
  #   end
end
