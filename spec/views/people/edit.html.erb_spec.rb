require 'spec_helper'

describe "people/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first_name => "MyString",
      :last_name => "MyString",
      :federal_id => "MyString",
      :regional_id => "MyString",
      :social_security => "MyString",
      :mothers_name => "MyString",
      :fathers_name => "MyString",
      :phone1 => "MyString",
      :phone2 => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", person_path(@person), "post" do
      assert_select "input#person_first_name[name=?]", "person[first_name]"
      assert_select "input#person_last_name[name=?]", "person[last_name]"
      assert_select "input#person_federal_id[name=?]", "person[federal_id]"
      assert_select "input#person_regional_id[name=?]", "person[regional_id]"
      assert_select "input#person_social_security[name=?]", "person[social_security]"
      assert_select "input#person_mothers_name[name=?]", "person[mothers_name]"
      assert_select "input#person_fathers_name[name=?]", "person[fathers_name]"
      assert_select "input#person_phone1[name=?]", "person[phone1]"
      assert_select "input#person_phone2[name=?]", "person[phone2]"
      assert_select "input#person_email[name=?]", "person[email]"
    end
  end
end
