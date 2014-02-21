require 'spec_helper'

describe "monks/index" do
  before(:each) do
    assign(:monks, [
      stub_model(Monk,
        :cert_no => 1,
        :firstname => "Firstname",
        :surname => "Surname",
        :monkname => "Monkname",
        :height => 1.5,
        :skin => "Skin",
        :ordainer => "Ordainer",
        :pair_monk_1 => "Pair Monk 1",
        :pair_monk_2 => "Pair Monk 2",
        :approval_name => "Approval Name",
        :approval_position => "Approval Position"
      ),
      stub_model(Monk,
        :cert_no => 1,
        :firstname => "Firstname",
        :surname => "Surname",
        :monkname => "Monkname",
        :height => 1.5,
        :skin => "Skin",
        :ordainer => "Ordainer",
        :pair_monk_1 => "Pair Monk 1",
        :pair_monk_2 => "Pair Monk 2",
        :approval_name => "Approval Name",
        :approval_position => "Approval Position"
      )
    ])
  end

  it "renders a list of monks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Firstname Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Monkname".to_s, :count => 2
  end
end
