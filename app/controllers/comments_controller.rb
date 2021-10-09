class CommentsController < ApplicationController
    def index
#        comments = Comment.all
#        render json: comments
        if params[:ticket_id]
            ticket = Ticket.find(params[:ticket_id])
            comments = ticket.comments
        else
            tickets = Ticket.all
        end
        render json: comments, include: :ticket
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment
    end

    def create
        comment = Comment.create!(comment_params)
        render json: comment, status: :created
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        if comment
          comment.destroy
          head :no_content
        else
          render json: { error: "Comment not found" }, status: :not_found
        end
    end       

    def comment_params
        params.permit(:comment, :users_id, :tickets_id, :created_at)
    end
end
