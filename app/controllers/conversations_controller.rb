class ConversationsController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

end
