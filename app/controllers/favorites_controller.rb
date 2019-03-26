class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites, status: :ok
    end

    def show 
        @favorite = Favorite.find(params[:id])
        render json: @favorite, status: :ok
    end 
    
    def create 
        @favorite = Favorite.new(fav_params)
        if @favorite
            render json: @favorite, status: :ok
        else
            render json: {errors: @favorite.errors.full_messages},
            status: :unprocessable_entity
        end 
    end 

    private

    def fav_params
        params.permit(:user_id, :smoothie_id)
    end 
end
