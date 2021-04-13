class ConversationsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index
        conversations = Conversation.all
        render json: conversations, except: [:updated_at, :created_at] 
    end

end
