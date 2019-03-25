class SmoothiesController < ApplicationController

    def index
        @smoothies = Smoothie.all
        render json: @smoothies, status: :ok
    end
    #tested above in postman

    def show 
        @smoothie = Smoothie.find(params[:id])
        render json: @smoothie, status: :ok
    end 
end 
