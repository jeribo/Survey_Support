require 'spec_helper'

describe "examinations/edit" do
  before(:each) do
    @examination = assign(:examination, stub_model(Examination,
      :person => nil,
      :survey => nil
    ))
  end

  it "renders the edit examination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", examination_path(@examination), "post" do
      assert_select "input#examination_person[name=?]", "examination[person]"
      assert_select "input#examination_survey[name=?]", "examination[survey]"
    end
  end
end
