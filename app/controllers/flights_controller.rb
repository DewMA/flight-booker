class FlightsController < ApplicationController

    def index
        @results = Flight.all
    end

end
