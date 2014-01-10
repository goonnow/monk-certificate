class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    def index
    end

    def certificate
        @info = params

        render  :pdf => "monk-certificate",
                :encoding => 'UTF-8',
                :show_as_html => ( params[:format] != 'pdf' ),
                :template => 'application/certificate.html.erb'

    end
end
