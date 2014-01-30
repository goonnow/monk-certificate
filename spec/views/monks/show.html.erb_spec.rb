require 'spec_helper'

describe "monks/show" do
  before(:each) do
    @monk = assign(:monk, stub_model(Monk,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Firstname/)
    rendered.should match(/Surname/)
    rendered.should match(/Monkname/)
    rendered.should match(/1.5/)
    rendered.should match(/Skin/)
    rendered.should match(/Ordainer/)
    rendered.should match(/Pair Monk 1/)
    rendered.should match(/Pair Monk 2/)
    rendered.should match(/Approval Name/)
    rendered.should match(/Approval Position/)
  end
end
