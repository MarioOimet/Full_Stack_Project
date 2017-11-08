class HomeController < ApplicationController
  def index
    @busy = Business.all
  end
end
