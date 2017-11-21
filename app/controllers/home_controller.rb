class HomeController < ApplicationController
  def index
    @enquiry = Enquiry.includes(:business, :category).all.page(params[:page]).per(4)
    @category = Category.all
  end

  def show
    @one = Enquiry.includes(:business, :category).find(params[:id])
    @category = Category.all
  end

  def about
    @info = Info.all
    @category = Category.all
  end

  def contacts
    @info = Info.all
    @category = Category.all
  end

  def search_results
    @category = Category.all

    if params[:category_m] == ''
      @enquiry_found = Enquiry.includes(:category, :business).keyword_search(params[:search_keywords]).page(params[:page]).per(3)
    else
      @enquiry_found = Enquiry.includes(:category, :business).where("Category_id LIKE ?", params[:category_m]).keyword_search(params[:search_keywords]).page(params[:page]).per(3)
    end
  end
end
