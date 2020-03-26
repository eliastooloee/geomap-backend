class Api::V1::MapsController < ApplicationController
    before_action :find_map, only: [:show, :edit, :update, :destroy]
  
    def index
      @maps = Map.all
      render json: @maps
    end
  
    def show
      render json: @map
    end
  
    def new
      @map = Map.new
    end
  
    def create
      @map = Map.new(map_params)
      # byebug
      if @map.save
      render json: @map
      else
        @map.errors.full_messages
      end
    end
  
    def destroy
      @map.destroy
    end
  
    def update
      @map.update(map_params)
      render json: @map
    end
  
    private
  
    def find_map
      @map = Map.find(params[:id])
    end
  
    def map_params
      params.require(:map).permit(:user_id, :name, :latitude, :longitude, :zoom, :tile_url)
    end
  end
