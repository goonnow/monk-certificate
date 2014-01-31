class CertificateController < ApplicationController
    def index
        ids = params[:ids]
        @monks = []
        ids.each do | id |
            monk = Monk.find(id)
            @monks.push monk
        end
        render  :pdf => "monk-certificate",
                :show_as_html => params[:debug],
                :encoding => 'UTF-8',
                :orientation                    => 'Landscape',
                :template => 'certificate/index.html.erb',
                :page_size => 'A4',
                :dpi => 300,
                :margin           => {:top    => 0, # default 10 (mm)
                          :bottom => 0,
                          :left   => 0,
                          :right  => 0}
    end
end
