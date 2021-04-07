class LikesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    
    def index
        likes = Like.all
        render json: likes, except: [:updated_at, :created_at] 
    end

    def create
        @like = Like.create!(like_params)
        if @like.save!
            render json: @like, status: :created
          else
            render json: { error: 'failed to create like' }, status: :not_acceptable
        end
    end

    private

    def like_params
        params.require(:like).permit(:liker_id, :liked_id)
    end
end
