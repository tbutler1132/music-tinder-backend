class DemosController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]
    
    def index
        demos = Demo.all
        render json: demos, except: [:updated_at, :created_at] 
    end
end
