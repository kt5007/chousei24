class PagesController < ApplicationController
  def index
    @helds = Held.where("? < held_time", DateTime.now)
  end
  
  def help
  end
end
