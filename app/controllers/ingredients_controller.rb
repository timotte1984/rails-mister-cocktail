class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.All
  end
end
