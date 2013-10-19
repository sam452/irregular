module Api
  module V1
    class TasksController < ApplicationController
      before_filter :restrict_access
      respond_to :json

      def index
        respond_with Task.all
      end

      def show
        respond_with Task.find(params[:id])
      end

      def create
        respond_with Task.create(params[:task])
      end
      
      def update
        respond_with Task.update(params[:id], params[:tasks])
      end
      
      def destroy
        respond_with Task.destroy(params[:id])
      end

      private

      def restrict_access
      	api_key = ApiKey.find_by_access_token(params[:access_token])
      	head :unauthorized unless api_key
      end

    end
  end
end