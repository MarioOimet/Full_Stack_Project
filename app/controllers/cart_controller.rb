class CartController < ApplicationController
  before_action :initialize_session

  def index

    @mycart = session[:cart]
    @enquiry = Enquiry.all

  end

  def create
    @id = params[:id].to_i

    unless session[:cart].any? { |value| value == @id }
    session[:cart] << @id
    end 
    redirect_to :action => :index
  end

  def destroy
  end

  def initialize_session
    session[:cart] ||= []
  end
end
