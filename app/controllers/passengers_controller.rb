class PassengersController < ApplicationController


    def new
        @booking = Booking.find(params[:booking_id])
    end

    def create
        @booking = Booking.find(params[:booking_id])

        (0..(params[:name].size - 1)).each do |i|
            new_user = Passenger.new(:name => params[:name][i], :age => params[:age][i], :booking => @booking)
            if !new_user.valid?
                flash[:new_passenger_error] = "Invalid Passengers"
                render :new
                break
            end
            new_user.save
        end

        redirect_to booking_path(@booking)
    end



end
