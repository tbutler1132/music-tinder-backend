class MatchesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    
    def index
        matches = Match.all
        render json: matches, except: [:updated_at, :created_at] 
    end

    def create
        @match = Match.create!(match_params)
        if @match.save!
            render json: @match, status: :created
          else
            render json: { error: 'failed to create match' }, status: :not_acceptable
        end
    end

    private

    def match_params
        params.require(:match).permit(:first_id, :second_id)
    end
end
