class PassengerMailer < ApplicationMailer
    default from: 'flight@booker.com'

    def welcome_email
        # @url = ""
        # mail(to: 'nathaniel@bootyard.com', subject: 'welcome')
    end
end
