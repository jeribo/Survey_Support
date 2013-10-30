require 'spec_helper'

describe "survey_types/index" do
  before(:each) do
    assign(:survey_types, [
      stub_model(SurveyType,
        :description => "Description"
      ),
      stub_model(SurveyType,
        :description => "Description"
      )
    ])
  end

  it "renders a list of survey_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
