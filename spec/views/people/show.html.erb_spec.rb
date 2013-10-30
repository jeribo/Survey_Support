require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Federal/)
    rendered.should match(/Regional/)
    rendered.should match(/Social Security/)
    rendered.should match(/Mothers Name/)
    rendered.should match(/Fathers Name/)
    rendered.should match(/Phone1/)
    rendered.should match(/Phone2/)
    rendered.should match(/Email/)
  end
end
