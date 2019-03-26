class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def show 
        @user = User.find(params[:id])
        render json: @user, status: :ok
    end 
    
    def create 
        @user = User.create(user_params)
        if @user
            render json: @user, status: :ok
        else
            render json: {errors: @user.errors.full_messages},
            status: :unprocessable_entity
        end 
    end 

    private

    def user_params
        params.permit(:username)
    end 
end
