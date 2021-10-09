class StatusesController < ApplicationController
    def index
        statuses = Status.all
        render json: statuses
    end

    def show
        status = Status.find(params[:id])
        render json: status
    end

    def create
        status = Status.create!(status_params)
        render json: status, status: :created
    end

    def destroy
        status = Status.find_by(id: params[:id])
        if status
          status.destroy
          head :no_content
        else
          render json: { error: "Status not found" }, status: :not_found
        end
    end       

    def status_params
        params.permit(:status_level)
    end
end
