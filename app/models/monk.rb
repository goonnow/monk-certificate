require 'date'

class Monk < ActiveRecord::Base
    has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

    def ordained_datetime
        d = self.ordained_date
        t = self.ordained_time
        dt = DateTime.new( d.year, d.month, d.day, t.hour, t.min )
        return dt
    end

end
