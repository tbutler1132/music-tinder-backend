class FavoriteTracksController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :create, :destroy]

    def index
        favorite_tracks = FavoriteTrack.all
        render json: favorite_tracks, except: [:updated_at, :created_at] 
    end

    def create
        @favorite_track = FavoriteTrack.create!(favorite_track_params)
        if @favorite_track.save!
            render json: @favorite_track, status: :created
          else
            render json: { error: 'failed to create song' }, status: :not_acceptable
        end
    end

    def create
        @favorite_track = FavoriteTrack.create!(favorite_track_params)
        if @favorite_track.save!
            render json: @favorite_track, status: :created
          else
            render json: { error: 'failed to create favorite track' }, status: :not_acceptable
        end
    end

    def destroy
        @favorite_track = FavoriteTrack.find(params[:id])
        @favorite_track.destroy

        render json: {}
    end

    private

    def favorite_track_params
        params.require(:favorite_track).permit(:user_id, :name, :artist, :image, :spotify_id, :preview)
    end

end
