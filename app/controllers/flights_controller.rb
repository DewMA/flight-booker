class FlightsController < ApplicationController

    def index
        from = Airport.find_by(name: get_params[:from])
        to = Airport.find_by(name: get_params[:to])

        @results = Flight.find_by(from_id: from.id)
    end

    private

    def get_params
        params[:flight]
    end

end
