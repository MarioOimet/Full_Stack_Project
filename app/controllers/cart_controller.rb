class CartController < ApplicationController
  before_action :initialize_session

  def index
    @mycart = session[:cart]
    @enquiry = Enquiry.includes(:business, :category)
  end

  def create
    @id = params[:id].to_i

    unless session[:cart].any? { |value| value == @id }
    session[:cart] << @id
    end
    redirect_to :action => :index
  end

  def destroy
    @id_delete = params[:id].to_i
    if session[:cart].any? { |value| value == @id_delete }
      session[:cart].each do |contra|
        if contra.to_i == @id_delete
          session[:cart].delete(contra)
        end
      end
    end
    redirect_to :action => :index
  end

  def initialize_session
    session[:cart] ||= []
  end
end
