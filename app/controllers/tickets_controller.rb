class TicketsController < ApplicationController
    def index
        tickets = Ticket.all
        render json: tickets
    end

    def show
        ticket = Ticket.find(params[:id])
        render json: ticket
    end

    def create
        ticket = Ticket.create!(ticket_params)
        render json: ticket, status: :created
    end

    def destroy
        ticket = Ticket.find_by(id: params[:id])
        if ticket
          ticket.destroy
          head :no_content
        else
          render json: { error: "Ticket not found" }, status: :not_found
        end
    end       

    def ticket_params
        params.permit(:ticket_title, :ticket_details, :created_at, :updated_at, :owners_id, :statuses_id, :stations_id, :devices_id, :comments_id)
    end
end
