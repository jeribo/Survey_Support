require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :person => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", event_path(@event), "post" do
      assert_select "input#event_person[name=?]", "event[person]"
      assert_select "textarea#event_description[name=?]", "event[description]"
    end
  end
end
