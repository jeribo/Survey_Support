require 'spec_helper'

describe "states/index" do
  before(:each) do
    assign(:states, [
      stub_model(State,
        :description => "Description",
        :abbreviated => "Abbreviated"
      ),
      stub_model(State,
        :description => "Description",
        :abbreviated => "Abbreviated"
      )
    ])
  end

  it "renders a list of states" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Abbreviated".to_s, :count => 2
  end
end
