class HeroPowersController < ApplicationController
    def create
        heropower = HeroPower.create!(attributes)
        render json: heropower.hero, serializer: Heroandpowers::Serializer
    end

    private
    def attributes
        params.permit(:strength, :power_id, :hero_id)
    end
end
