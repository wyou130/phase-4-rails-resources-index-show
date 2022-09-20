class BirdsController < ApplicationController

    def index
        render json: Bird.all 
    end

    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: { error: "bird not found" }, status: :not_found
        end
    end

end
