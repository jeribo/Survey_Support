require "spec_helper"

describe SurveyTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/survey_types").should route_to("survey_types#index")
    end

    it "routes to #new" do
      get("/survey_types/new").should route_to("survey_types#new")
    end

    it "routes to #show" do
      get("/survey_types/1").should route_to("survey_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/survey_types/1/edit").should route_to("survey_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/survey_types").should route_to("survey_types#create")
    end

    it "routes to #update" do
      put("/survey_types/1").should route_to("survey_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/survey_types/1").should route_to("survey_types#destroy", :id => "1")
    end

  end
end
