class ContractController < ApplicationController
  def services
    @students = Student.includes(:category).all
    @category = Category.all
  end
end
