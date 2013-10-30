require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :description => "MyString",
      :activated => false,
      :survey => nil
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", question_path(@question), "post" do
      assert_select "input#question_description[name=?]", "question[description]"
      assert_select "input#question_activated[name=?]", "question[activated]"
      assert_select "input#question_survey[name=?]", "question[survey]"
    end
  end
end
