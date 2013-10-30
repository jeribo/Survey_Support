require 'spec_helper'

describe "survey_types/new" do
  before(:each) do
    assign(:survey_type, stub_model(SurveyType,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new survey_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", survey_types_path, "post" do
      assert_select "input#survey_type_description[name=?]", "survey_type[description]"
    end
  end
end
