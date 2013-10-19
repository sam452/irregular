module Api
  module V1
    class TasksController < ApplicationController
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

    end
  end
end