class OwnersController < ApplicationController
    def index
        owners = Owner.all
        render json: owners
    end

    def show
        owner = Owner.find(params[:id])
        render json: owner
    end

    def create
        owner = Owner.create!(owner_params)
        render json: owner, status: :created
    end

    def destroy
        owner = Owner.find_by(id: params[:id])
        if owner
          owner.destroy
          head :no_content
        else
          render json: { error: "Owner not found" }, status: :not_found
        end
    end       

    def owners_params
        params.permit(:owner_name)
    end
end
