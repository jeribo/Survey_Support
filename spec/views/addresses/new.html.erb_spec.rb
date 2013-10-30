require 'spec_helper'

describe "addresses/new" do
  before(:each) do
    assign(:address, stub_model(Address,
      :street => "MyString",
      :number => "MyString",
      :complement => "MyString",
      :postal_code => "MyString",
      :city => nil
    ).as_new_record)
  end

  it "renders new address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", addresses_path, "post" do
      assert_select "input#address_street[name=?]", "address[street]"
      assert_select "input#address_number[name=?]", "address[number]"
      assert_select "input#address_complement[name=?]", "address[complement]"
      assert_select "input#address_postal_code[name=?]", "address[postal_code]"
      assert_select "input#address_city[name=?]", "address[city]"
    end
  end
end
