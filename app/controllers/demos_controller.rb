class DemosController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :update]
    
    def index
        demos = Demo.all
        render json: demos, except: [:updated_at, :created_at] 
    end

    def create
        @demo = Demo.create!(demo_params)
        if @demo.save!
            render json: @demo, status: :created
          else
            render json: { error: 'failed to create demo' }, status: :not_acceptable
        end
    end

    def update
        demo = Demo.find(params[:id])
    
        demo.update(audio_data: params[:audio_data])
        audio_data_url = rails_blob_path(demo.audio_data)

        render json: {demo: demo, audio_data_url: audio_data_url}
    end

    private

    def demo_params
        params.require(:demo).permit(:title, :user_id, :audio_data)
    end

end
