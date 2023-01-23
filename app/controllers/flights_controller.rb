class FlightsController < ApplicationController

    def index
        from = Airport.find_by(name: get_params[:from])
        to = Airport.find_by(name: get_params[:to])
        @passengers = get_params[:passengers]
        @results = Flight.where("departure_time >= ? and (from_id = ? or to_id = ?)", get_params[:date].to_time, from.id, to.id)
    end

    private

    def get_params
        params[:flight]
    end

end
