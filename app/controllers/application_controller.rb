class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name_business, :first_name_owner, :last_name_owner, :middle_name_owner, :address_business, :Province_id, :city_business, :postal_code_business, :phone_number_business])
  end
end
