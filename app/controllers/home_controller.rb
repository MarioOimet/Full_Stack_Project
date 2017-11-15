class HomeController < ApplicationController
  def index
    @enquiry = Enquiry.includes(:business, :category).all.page(params[:page]).per(3)
  end

  def show
    @one = Enquiry.includes(:business, :category).find(params[:id])
  end

  def about
    @info = Info.all
  end

  def contacts
    @info = Info.all
  end

  def search_results
    @enquiry_found = Enquiry.includes(:category, :business).keyword_search(params[:search_keywords]).page(params[:page]).per(3)
  end
end
