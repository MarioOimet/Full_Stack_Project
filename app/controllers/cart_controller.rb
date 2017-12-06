class CartController < ApplicationController
  before_action :initialize_session

  def index
    @mycart = session[:cart]
    @enquiry = Enquiry.includes(:business, :category)
    @students = Student.all
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

  def checkout
    @mycart = session[:cart]
    @enquiry = Enquiry.includes(:business, :category)

    if business_signed_in?
      @students = Student.all
      @business = current_business
      @business_info = Business.where('id LIKE ?', @business.id).first
      @province = Province.where('id LIKE ?', @business_info.Province_id).first

      @gst = @province.gst
      @pst = @province.pst

      @subtotal = session[:subtotal]

      @finalpst = @pst.to_f * @subtotal.to_f
      @finalgst = @gst.to_f * @subtotal.to_f
      @grandtotal = @finalgst + @finalpst + @subtotal.to_f
      session[:grandtotal] = @grandtotal
    else
      redirect_to business_session_path
    end
  end

  def initialize_session
    session[:cart] ||= []
  end
end
