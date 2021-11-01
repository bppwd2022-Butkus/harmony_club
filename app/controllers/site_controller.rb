class SiteController < ApplicationController
  def home
  end

  def page
    @page = Page.find(params[:id])
  end
  
  def event
    @events = Event.all
  end

  def photo
    @albums = Album.all
  end

  def sponsor
    @sponsors = Sponsor.all
  end

  def contact
    
  end
end
