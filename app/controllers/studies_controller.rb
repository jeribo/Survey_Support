class StudiesController < ApplicationController
  def index
    @surveys = Survey.find(:all, :conditions => {:activated => true})

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @surveys }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @survey = Survey.find(params[:id])
    
  end
  def edit
    @survey = Survey.find(params[:id])
  end
  def examinations
    @survey = Survey.find(params[:id])
    @examination = Examination.new
    @examination.survey_id = @survey.id
    @survey.questions.each do |q|
      @examination.answers.build(question_id: q.id)
                   
    end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @examination }
    end    
  end
  # GET /people/new
  # GET /people/new.json
end
