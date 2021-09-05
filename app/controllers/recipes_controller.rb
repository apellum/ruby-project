require 'pry'
class RecipesController < ApplicationController

    get "/recipes" do
        recipes = Recipe.all
        recipes.to_json
    end

    get "/recipes/:username" do
        recipe_finder
        @recipe.to_json
    end

    post "/recipes" do
        recipes = Recipe.create(params)
        recipes.to_json
    end

    delete "/recipes/:id" do
        recipe = Recipe.find_by_id(params[:id])
        recipe.destroy
        @ecipe.to_json
    end

    private
        def recipe_finder
            @recipe = Recipe.find_by_username(params[:username])
        end
end