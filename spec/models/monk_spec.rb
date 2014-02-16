require 'spec_helper'

describe Monk do
    it 'ordained_datetime' do
        m = Monk.create!;
        m.ordained_date = '2013-12-01'
        m.ordained_time = '13:00'
        expect( m.ordained_datetime ).to eq( DateTime.new(2013,12,1,13) )
    end
end
