require 'spec_helper'

describe "surveys/new" do
  before(:each) do
    assign(:survey, stub_model(Survey,
      :description => "MyText",
      :activated => false
    ).as_new_record)
  end

  it "renders new survey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", surveys_path, "post" do
      assert_select "textarea#survey_description[name=?]", "survey[description]"
      assert_select "input#survey_activated[name=?]", "survey[activated]"
    end
  end
end
