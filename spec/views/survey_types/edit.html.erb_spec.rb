require 'spec_helper'

describe "survey_types/edit" do
  before(:each) do
    @survey_type = assign(:survey_type, stub_model(SurveyType,
      :description => "MyString"
    ))
  end

  it "renders the edit survey_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", survey_type_path(@survey_type), "post" do
      assert_select "input#survey_type_description[name=?]", "survey_type[description]"
    end
  end
end
