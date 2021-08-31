class UsersController < ApplicationController
    get "/users" do
        users = User.all
        users.to_json
    end

    get "/users/:id/recipes" do
        user_finder
        @user.to_json
    end
    
    post "/users" do
        user = User.create(params)
        user.to_json
    end

    patch "/users/:id" do
        user_finder
        @user.update(params)
        @user/to_json
    end

    delete "/users/:id" do
        user_finder
        @user.destroy
        @user.to_json
    end

    private
    def user_finder
        @user = User.find_by_id(params[:id])
    end
end