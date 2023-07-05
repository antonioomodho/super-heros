class HerosController < ApplicationController
    
    def index
        hero = Hero.all 
        render json: hero, status: :ok
    end

    def show
        hero = Hero.find_by(id: params[:id])
        if hero
        render json: hero, serializer:HeroandpowersSerializer
        else  
            render json: {error: "Hero not found"}, status: :not_found
        end
    end
end
