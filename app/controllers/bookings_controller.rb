class BookingsController < ApplicationController

    def index
        @airports = Airport.all
        @flight = Flight.new
        @flights = Flight.all
    end

end
