require 'date'

class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    def index
    end

    #def certificate
        #@info = params

        #$birthdate_year_AD = params['birthdate-year'].to_i - 543;
        #$ordained_year_AD = params['ordained-year'].to_i - 543;

        #@info[:birthdate] = "#{$birthdate_year_AD}-#{params['birthdate-month']}-#{params['birthdate-date']}"
        #@info['ordained_datetime'] = "#{$ordained_year_AD}-#{params['ordained-month']}-#{params['ordained-date']} #{params['ordained-hour']}:#{params['ordained-minues']}"
        #puts '>>>> '+@info['ordained_datetime'];

        #render  :pdf => "monk-certificate",
                #:encoding => 'UTF-8',
                #:show_as_html => ( params[:format] != 'pdf' ),
                #:template => 'application/certificate.html.erb'

    #end
    #
end
