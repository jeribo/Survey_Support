class HomeController < ApplicationController
  #before_filter :set_activated
  def index
    @events = Event.all
  end
  
end
