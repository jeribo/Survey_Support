require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name",
        :federal_id => "Federal",
        :regional_id => "Regional",
        :social_security => "Social Security",
        :mothers_name => "Mothers Name",
        :fathers_name => "Fathers Name",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :email => "Email"
      ),
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name",
        :federal_id => "Federal",
        :regional_id => "Regional",
        :social_security => "Social Security",
        :mothers_name => "Mothers Name",
        :fathers_name => "Fathers Name",
        :phone1 => "Phone1",
        :phone2 => "Phone2",
        :email => "Email"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Federal".to_s, :count => 2
    assert_select "tr>td", :text => "Regional".to_s, :count => 2
    assert_select "tr>td", :text => "Social Security".to_s, :count => 2
    assert_select "tr>td", :text => "Mothers Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fathers Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone1".to_s, :count => 2
    assert_select "tr>td", :text => "Phone2".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
