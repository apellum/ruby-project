class RecipesController < ApplicationController

    get "/recipes" do
        recipe = Recipe.all
        recipe.to_json( include: [:users])
    end

    get "/recipes/:id" do
        recipe_finder
        @recipe.to_json
    end

    post "/recipes" do
        recipe = Recipe.create(params)
        recipe.to_json
    end

    patch "/recipes/:id" do
        recipe_finder
        @recipe.update(params)
        @recipe.to_json
    end

    delete "/recipes/:id" do
        recipe_finder
        @recipe.destroy
        @recipe.to_json
    end

    private
        def recipe_finder
            @recipe = Recipe.find_by_id(params[:id])
        end
end