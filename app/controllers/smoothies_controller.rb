class SmoothiesController < ApplicationController

    def index
        @smoothies = Smoothie.all
        render json: @smoothies, status: :ok
    end

    def show 
        @smoothie = Smoothie.find(params[:id])
        render json: @smoothie, status: :ok
    end 
    
    def create 
        @smoothie = Smoothie.create(smoothie_params)
        if @smoothie
            render json: @smoothie, status: :ok
        else
            render json: {errors: @smoothie.errors.full_messages},
            status: :unprocessable_entity
        end 
    end 

    def update 
        @smoothie = Smoothie.find(params[:id])
        @smoothie.update(smoothie_params)
    end 

    private

    def smoothie_params
        params.permit(:name, :ingredients, :likes, :category, :created_by, :image)
    end 
    
end 
