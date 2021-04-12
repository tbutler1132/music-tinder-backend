class MessagesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index
        messages = Message.all
        render json: messages, except: [:updated_at, :created_at] 
    end

    def create
        @message = Message.create!(message_params)
        if @message.save!
            render json: @message, status: :created
          else
            render json: { error: 'failed to create message' }, status: :not_acceptable
        end
    end

    private

    def message_params
        params.require(:message).permit(:content, :user_id, :conversation_id)
    end

end
