require 'spec_helper'

describe "SurveyTypes" do
  describe "GET /survey_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get survey_types_path
      response.status.should be(200)
    end
  end
end
