require 'spec_helper'

describe "addresses/edit" do
  before(:each) do
    @address = assign(:address, stub_model(Address,
      :street => "MyString",
      :number => "MyString",
      :complement => "MyString",
      :postal_code => "MyString",
      :city => nil
    ))
  end

  it "renders the edit address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", address_path(@address), "post" do
      assert_select "input#address_street[name=?]", "address[street]"
      assert_select "input#address_number[name=?]", "address[number]"
      assert_select "input#address_complement[name=?]", "address[complement]"
      assert_select "input#address_postal_code[name=?]", "address[postal_code]"
      assert_select "input#address_city[name=?]", "address[city]"
    end
  end
end
