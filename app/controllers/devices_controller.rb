class DevicesController < ApplicationController
    def index
        devices = Device.all
        render json: devices
    end

    def show
        devices = Device.find(params[:id])
        render json: devices
    end

    def create
        device = Device.create!(device_params)
        render json: device, status: :created
    end

    def destroy
        device = Device.find_by(id: params[:id])
        if device
          device.destroy
          head :no_content
        else
          render json: { error: "Device not found" }, status: :not_found
        end
    end       

    def device_params
        params.permit(:device_type)
    end
end
