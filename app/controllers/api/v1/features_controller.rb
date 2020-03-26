class Api::V1::FeaturesController < ApplicationController
    before_action :find_feature, only: [:show, :edit, :update, :destroy]
    
    def index
        @features = Feature.all
        render json: @features
      end
    
      def show
        render json: @feature
      end
    
      def new
        @feature = Feature.new
      end
    
      def create
        @feature = Feature.new(feature_params)
        #  byebug
        if @feature.save
        render json: @feature
        else
          @feature.errors.full_messages
        end
      end
    
      def destroy
        @feature.destroy
      end
    
      def update
        @feature.update(feature_params)
        render json: @feature
      end
    
      private
    
      def find_feature
        @feature = Feature.find(params[:id])
      end
    
      def feature_params
        params.require(:feature).permit(:map_id, :feature_data)
      end
end
