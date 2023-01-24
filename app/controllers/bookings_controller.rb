class BookingsController < ApplicationController

    def index
        @airports = Airport.all
        @flight = Flight.new
        @flights = Flight.all
        @dates = []
        
        @flights.pluck(:departure_time).each do |d|
            @dates << date_in_words(d)
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def create
        @booking = Booking.new(flight_id: params[:flight], number_of_passengers: params[:passengers])
        if @booking.save
            redirect_to new_booking_passenger_path(@booking.id)
        else
            fail
        end
    end
end
