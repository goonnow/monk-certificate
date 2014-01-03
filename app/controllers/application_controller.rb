class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    def index
    end

    def certificate
        @info = params

        render  :pdf => "monk-certificate",
                :page_size => 'A5',
                :encoding => 'UTF-8',
                :show_as_html => ( params[:format] != 'pdf' ),
                :dpi => '72',
                :template => 'application/certificate.html.erb',
                :margin => {
                    :top    => 0, # default 10 (mm)
                    :bottom => 0,
                    :left   => 0,
                    :right  => 0
                }

    end
end
