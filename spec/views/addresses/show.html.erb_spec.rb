require 'spec_helper'

describe "addresses/show" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :street => "Street",
      :number => "Number",
      :complement => "Complement",
      :postal_code => "Postal Code",
      :city => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Street/)
    rendered.should match(/Number/)
    rendered.should match(/Complement/)
    rendered.should match(/Postal Code/)
    rendered.should match(//)
  end
end
