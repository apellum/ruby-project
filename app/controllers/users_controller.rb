class UsersController < ApplicationController
    get "/users" do
        users = User.all
        users.to_json
    end
# look at this one
    get "/users/:username" do
        user = User.find_by_username(params[:username])
        user.to_json
    end

    get "/users/:username/recipes" do
        user = User.find_by_username(params[:username])
        user.to_json(include: [:recipes])
    end
    
    post "/users" do
        user = User.create(params)
        user.to_json
    end

    private
    def user_finder
        @user = User.find_by_username(params[:username])
    end
end