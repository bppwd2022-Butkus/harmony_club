class SiteController < ApplicationController
  def home
  end

  def page
    @page = Page.find(params[:id])
  end
  
  def event
    @events = Event.all
  end
end
