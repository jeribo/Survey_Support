require 'spec_helper'

describe "survey_types/show" do
  before(:each) do
    @survey_type = assign(:survey_type, stub_model(SurveyType,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
