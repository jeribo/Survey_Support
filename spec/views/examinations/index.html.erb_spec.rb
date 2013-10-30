require 'spec_helper'

describe "examinations/index" do
  before(:each) do
    assign(:examinations, [
      stub_model(Examination,
        :person => nil,
        :survey => nil
      ),
      stub_model(Examination,
        :person => nil,
        :survey => nil
      )
    ])
  end

  it "renders a list of examinations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
