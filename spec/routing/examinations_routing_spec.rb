require "spec_helper"

describe ExaminationsController do
  describe "routing" do

    it "routes to #index" do
      get("/examinations").should route_to("examinations#index")
    end

    it "routes to #new" do
      get("/examinations/new").should route_to("examinations#new")
    end

    it "routes to #show" do
      get("/examinations/1").should route_to("examinations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/examinations/1/edit").should route_to("examinations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/examinations").should route_to("examinations#create")
    end

    it "routes to #update" do
      put("/examinations/1").should route_to("examinations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/examinations/1").should route_to("examinations#destroy", :id => "1")
    end

  end
end
