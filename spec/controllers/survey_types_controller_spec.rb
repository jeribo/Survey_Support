require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SurveyTypesController do

  # This should return the minimal set of attributes required to create a valid
  # SurveyType. As you add validations to SurveyType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "description" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SurveyTypesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all survey_types as @survey_types" do
      survey_type = SurveyType.create! valid_attributes
      get :index, {}, valid_session
      assigns(:survey_types).should eq([survey_type])
    end
  end

  describe "GET show" do
    it "assigns the requested survey_type as @survey_type" do
      survey_type = SurveyType.create! valid_attributes
      get :show, {:id => survey_type.to_param}, valid_session
      assigns(:survey_type).should eq(survey_type)
    end
  end

  describe "GET new" do
    it "assigns a new survey_type as @survey_type" do
      get :new, {}, valid_session
      assigns(:survey_type).should be_a_new(SurveyType)
    end
  end

  describe "GET edit" do
    it "assigns the requested survey_type as @survey_type" do
      survey_type = SurveyType.create! valid_attributes
      get :edit, {:id => survey_type.to_param}, valid_session
      assigns(:survey_type).should eq(survey_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SurveyType" do
        expect {
          post :create, {:survey_type => valid_attributes}, valid_session
        }.to change(SurveyType, :count).by(1)
      end

      it "assigns a newly created survey_type as @survey_type" do
        post :create, {:survey_type => valid_attributes}, valid_session
        assigns(:survey_type).should be_a(SurveyType)
        assigns(:survey_type).should be_persisted
      end

      it "redirects to the created survey_type" do
        post :create, {:survey_type => valid_attributes}, valid_session
        response.should redirect_to(SurveyType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved survey_type as @survey_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        SurveyType.any_instance.stub(:save).and_return(false)
        post :create, {:survey_type => { "description" => "invalid value" }}, valid_session
        assigns(:survey_type).should be_a_new(SurveyType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SurveyType.any_instance.stub(:save).and_return(false)
        post :create, {:survey_type => { "description" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested survey_type" do
        survey_type = SurveyType.create! valid_attributes
        # Assuming there are no other survey_types in the database, this
        # specifies that the SurveyType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SurveyType.any_instance.should_receive(:update_attributes).with({ "description" => "MyString" })
        put :update, {:id => survey_type.to_param, :survey_type => { "description" => "MyString" }}, valid_session
      end

      it "assigns the requested survey_type as @survey_type" do
        survey_type = SurveyType.create! valid_attributes
        put :update, {:id => survey_type.to_param, :survey_type => valid_attributes}, valid_session
        assigns(:survey_type).should eq(survey_type)
      end

      it "redirects to the survey_type" do
        survey_type = SurveyType.create! valid_attributes
        put :update, {:id => survey_type.to_param, :survey_type => valid_attributes}, valid_session
        response.should redirect_to(survey_type)
      end
    end

    describe "with invalid params" do
      it "assigns the survey_type as @survey_type" do
        survey_type = SurveyType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SurveyType.any_instance.stub(:save).and_return(false)
        put :update, {:id => survey_type.to_param, :survey_type => { "description" => "invalid value" }}, valid_session
        assigns(:survey_type).should eq(survey_type)
      end

      it "re-renders the 'edit' template" do
        survey_type = SurveyType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SurveyType.any_instance.stub(:save).and_return(false)
        put :update, {:id => survey_type.to_param, :survey_type => { "description" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested survey_type" do
      survey_type = SurveyType.create! valid_attributes
      expect {
        delete :destroy, {:id => survey_type.to_param}, valid_session
      }.to change(SurveyType, :count).by(-1)
    end

    it "redirects to the survey_types list" do
      survey_type = SurveyType.create! valid_attributes
      delete :destroy, {:id => survey_type.to_param}, valid_session
      response.should redirect_to(survey_types_url)
    end
  end

end
