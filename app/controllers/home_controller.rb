class HomeController < ApplicationController
  def index
    @busy = Business.all.page(params[:page]).per(2)
  end

  def about
      @info = Info.all
  end

  def contacts
      @info = Info.all
  end
end
