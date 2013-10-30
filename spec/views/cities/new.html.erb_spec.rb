require 'spec_helper'

describe "cities/new" do
  before(:each) do
    assign(:city, stub_model(City,
      :description => "MyString",
      :state => nil
    ).as_new_record)
  end

  it "renders new city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cities_path, "post" do
      assert_select "input#city_description[name=?]", "city[description]"
      assert_select "input#city_state[name=?]", "city[state]"
    end
  end
end
