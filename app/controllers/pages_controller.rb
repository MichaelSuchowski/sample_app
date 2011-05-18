class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
  
  def news
    @title = "News"
  end
  
  def help
    @title = "Help"
  end

end
