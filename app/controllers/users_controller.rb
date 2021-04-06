class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
        users = User.all
        render json: users, except: [:updated_at, :created_at]
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
        render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private
    
    def user_params
      params.require(:user).permit(:name, :password, :bio, :artist_name, :role, :genre, :location, :tags, :email)
    end
end
