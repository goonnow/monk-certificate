require 'spec_helper'

describe "monks/edit" do
  before(:each) do
    @monk = assign(:monk, stub_model(Monk,
      :cert_no => 1,
      :firstname => "MyString",
      :surname => "MyString",
      :monkname => "MyString",
      :height => 1.5,
      :skin => "MyString",
      :ordainer => "MyString",
      :pair_monk_1 => "MyString",
      :pair_monk_2 => "MyString",
      :approval_name => "MyString",
      :approval_position => "MyString"
    ))
  end

  it "renders the edit monk form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", monk_path(@monk), "post" do
      assert_select "input#monk_cert_no[name=?]", "monk[cert_no]"
      assert_select "input#monk_firstname[name=?]", "monk[firstname]"
      assert_select "input#monk_surname[name=?]", "monk[surname]"
      assert_select "input#monk_monkname[name=?]", "monk[monkname]"
      assert_select "input#monk_height[name=?]", "monk[height]"
      assert_select "input#monk_skin[name=?]", "monk[skin]"
      assert_select "input#monk_ordainer[name=?]", "monk[ordainer]"
      assert_select "input#monk_pair_monk_1[name=?]", "monk[pair_monk_1]"
      assert_select "input#monk_pair_monk_2[name=?]", "monk[pair_monk_2]"
      assert_select "input#monk_approval_name[name=?]", "monk[approval_name]"
      assert_select "input#monk_approval_position[name=?]", "monk[approval_position]"
    end
  end
end
