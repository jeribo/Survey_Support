require 'spec_helper'

describe "examinations/new" do
  before(:each) do
    assign(:examination, stub_model(Examination,
      :person => nil,
      :survey => nil
    ).as_new_record)
  end

  it "renders new examination form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", examinations_path, "post" do
      assert_select "input#examination_person[name=?]", "examination[person]"
      assert_select "input#examination_survey[name=?]", "examination[survey]"
    end
  end
end
