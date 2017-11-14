class HomeController < ApplicationController
  def index
    @busy = Business.all
  end

  def about
  end

  def contacts
  end
end
