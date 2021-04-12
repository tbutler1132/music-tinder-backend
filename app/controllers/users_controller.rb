class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show, :update]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
        users = User.all
        shuffledUsers = users.shuffle
        selected_users = shuffledUsers.slice(0, 25)
        render json: selected_users
    end

    def show
        user = User.find(params[:id])
    
        render json: user
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

    def edit 
        @user = User.find(params[:id])
        
        render json: @user
    end
    
    def update
        user = User.find(params[:id])
        user.update(user_params)
    
        render json: user
    end

    private
    
    def user_params
      params.require(:user).permit(:name, :password, :bio, :artist_name, :role, :genre, :location, :tags, :email)
    end
end
