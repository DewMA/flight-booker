class PassengerMailer < ApplicationMailer
    default from: 'flight@booker.com'

    def BookingConfirmationEmail
        @booking = Booking.find(params[:booking_id])
        mail(to: @booking.passenger.first.email, cc: @booking.passenger.pluck(:email), subject: "Here's your free ticket")
    end
end
