require 'spec_helper'

describe "examinations/show" do
  before(:each) do
    @examination = assign(:examination, stub_model(Examination,
      :person => nil,
      :survey => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
