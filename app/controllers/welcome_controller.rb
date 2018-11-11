class WelcomeController < ApplicationController

  def index
    @news = News.order("created_at desc").limit(3)
    @gemposts = Gempost.all.limit(1)
  end

  def gems
   @gemposts = Gempost.all
  end

  def about
  end

  def contact
  end

end
