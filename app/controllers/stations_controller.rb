class StationsController < ApplicationController
    def index
        stations = Station.all
        render json: stations
    end

    def show
        station = Station.find(params[:id])
        render json: station
    end

    def create
        station = Station.create!(station_params)
        render json: station, status: :created
    end

    def destroy
        station = Station.find_by(id: params[:id])
        if station
          station.destroy
          head :no_content
        else
          render json: { error: "Station not found" }, status: :not_found
        end
    end       

    def station_params
        params.permit(:station_type)
    end
end
