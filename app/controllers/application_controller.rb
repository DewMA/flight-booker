class ApplicationController < ActionController::Base


    def date_in_words(date)
        date.strftime("%B %d %Y, %I:%M %P")
    end

    helper_method :date_in_words

end
