class FlightsController < ApplicationController

    def index
        from = Airport.find_by(name: get_params[:from])
        to = Airport.find_by(name: get_params[:to])

        @results = Flight.where("from_id = ? or to_id = ?", from.id, to.id)
    end

    private

    def get_params
        params[:flight]
    end

end
