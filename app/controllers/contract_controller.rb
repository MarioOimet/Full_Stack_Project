class ContractController < ApplicationController
  def services
    @students = Student.includes(:category).all
    @category = Category.all
    @provinces = Province.includes(:business).all
    @finances = Business.includes(:finance).all
  end
end
