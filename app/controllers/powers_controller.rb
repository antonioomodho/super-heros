class PowersController < ApplicationController


    def index
        render json: Power.all
    end

    def show
        power = p_params
        if power
            render json: power
        else
            e_power
        end
    end

    def update
        power = p_params
        if power
            power.update!(power_params)
            render json: power
        else
             e_power
        end
    end

    private
    def p_params
        Power.find_by(id: params[:id])
    end

    def power_params
        params.permit(:name, :description)
    end

    def e_power
     return render json: {error: "Power not found"}, staus: :not_found
    end
end
